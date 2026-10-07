#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Extract raw ext4/sparse partition images from OTA package.

Converts *.new.dat.br + *.transfer.list from update.zip into raw *.img files
suitable for direct flashing via fastbootd (userspace fastboot).

Usage:
    python extract_partition_img.py <path_to_update.zip> --partition vendor [out_dir]
    python extract_partition_img.py <path_to_update.zip> --all [out_dir]
"""

import os
import sys
import argparse
import zipfile
import shutil

try:
    import brotli
except ImportError:
    print("[ERROR] 'brotli' python package is required. Install via: pip install brotli")
    sys.exit(1)

# Import sdat2img logic
HERE = os.path.dirname(os.path.abspath(__file__))
REPO_ROOT = os.path.dirname(HERE)
TOOLS_DIR = os.path.join(REPO_ROOT, "tools")
if TOOLS_DIR not in sys.path:
    sys.path.insert(0, TOOLS_DIR)

try:
    import sdat2img
except ImportError:
    # If tools/sdat2img.py is not in repo root, define inline rangeset and conversion
    sdat2img = None

BLOCK_SIZE = 4096

def rangeset(src):
    src_set = [int(item) for item in src.split(',')]
    num_set = src_set[0]
    range_set = src_set[1:]
    assert num_set == len(range_set), f"Range count mismatch: {num_set} vs {len(range_set)}"
    assert num_set % 2 == 0, f"Range count not even: {num_set}"
    return [(range_set[i], range_set[i + 1]) for i in range(0, num_set, 2)]

def convert_sdat_to_img(transfer_list_path, new_dat_path, output_img_path):
    print(f"[*] Converting {new_dat_path} -> {output_img_path} ...")
    with open(transfer_list_path, 'r', encoding='utf-8') as trans_list:
        version = int(trans_list.readline().strip())
        new_blocks = int(trans_list.readline().strip())
        print(f"    Transfer list v{version}, total blocks: {new_blocks} ({new_blocks * BLOCK_SIZE / (1024*1024):.1f} MB)")
        if version >= 2:
            trans_list.readline()  # stash entries
            trans_list.readline()  # max stash

        max_block = new_blocks
        with open(new_dat_path, 'rb') as new_dat, open(output_img_path, 'wb') as out_img:
            for line in trans_list:
                line = line.strip()
                if not line:
                    continue
                parts = line.split()
                cmd = parts[0]
                if cmd == 'new':
                    ranges = rangeset(parts[1])
                    for start, end in ranges:
                        max_block = max(max_block, end)
                        count = end - start
                        out_img.seek(start * BLOCK_SIZE)
                        data = new_dat.read(count * BLOCK_SIZE)
                        if len(data) != count * BLOCK_SIZE:
                            raise IOError(f"Read underflow: expected {count * BLOCK_SIZE} bytes, got {len(data)}")
                        out_img.write(data)
                elif cmd == 'erase':
                    ranges = rangeset(parts[1])
                    for start, end in ranges:
                        max_block = max(max_block, end)
                elif cmd == 'zero':
                    ranges = rangeset(parts[1])
                    for start, end in ranges:
                        max_block = max(max_block, end)
                        count = end - start
                        out_img.seek(start * BLOCK_SIZE)
                        out_img.write(b'\0' * (count * BLOCK_SIZE))

            out_img.seek(max_block * BLOCK_SIZE - 1)
            out_img.write(b'\0')

    size_mb = os.path.getsize(output_img_path) / (1024 * 1024)
    print(f"[+] Successfully generated: {output_img_path} ({size_mb:.1f} MB)")

def extract_and_convert(zip_path, part_name, out_dir):
    os.makedirs(out_dir, exist_ok=True)
    tlist_name = f"{part_name}.transfer.list"
    br_name = f"{part_name}.new.dat.br"
    out_img = os.path.join(out_dir, f"{part_name}.img")
    tmp_tlist = os.path.join(out_dir, tlist_name)
    tmp_dat = os.path.join(out_dir, f"{part_name}.new.dat")

    print(f"\n=== Processing partition: '{part_name}' ===")
    with zipfile.ZipFile(zip_path, 'r') as z:
        namelist = set(z.namelist())
        if tlist_name not in namelist or br_name not in namelist:
            print(f"[ERROR] '{part_name}' files not found in {zip_path}")
            return False

        print(f"[*] Extracting {tlist_name}...")
        with z.open(tlist_name) as src, open(tmp_tlist, 'wb') as dst:
            shutil.copyfileobj(src, dst)

        print(f"[*] Extracting and decompressing {br_name} (brotli)...")
        with z.open(br_name) as src:
            compressed = src.read()
            decompressed = brotli.decompress(compressed)
            with open(tmp_dat, 'wb') as dst:
                dst.write(decompressed)

    try:
        convert_sdat_to_img(tmp_tlist, tmp_dat, out_img)
    finally:
        if os.path.exists(tmp_tlist):
            os.remove(tmp_tlist)
        if os.path.exists(tmp_dat):
            os.remove(tmp_dat)

    return True

def main():
    parser = argparse.ArgumentParser(description="Extract partition raw .img from OTA ZIP for fastbootd")
    parser.add_argument("zip_path", help="Path to update.zip")
    parser.add_argument("--partition", choices=["vendor", "product", "system"], help="Partition to extract")
    parser.add_argument("--all", action="store_true", help="Extract all dynamic partitions (vendor, product, system)")
    parser.add_argument("--out-dir", default=r"C:\platform-tools", help="Destination folder (default: C:\\platform-tools)")

    args = parser.parse_args()

    if not os.path.exists(args.zip_path):
        print(f"[ERROR] ZIP file not found: {args.zip_path}")
        sys.exit(1)

    if not args.partition and not args.all:
        print("[ERROR] Specify either --partition <name> or --all")
        sys.exit(1)

    targets = ["vendor", "product", "system"] if args.all else [args.partition]

    for part in targets:
        success = extract_and_convert(args.zip_path, part, args.out_dir)
        if not success:
            sys.exit(1)

    print("\n[ALL DONE] Images are ready for fastbootd!")

if __name__ == "__main__":
    main()
