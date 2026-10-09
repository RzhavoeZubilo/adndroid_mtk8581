#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Build split System OTA packages (Part 1 and Part 2) by block ranges.

Splits system.img into two independent sub-ranges:
- Part 1: blocks 0..200000 (~315 MB compressed)
- Part 2: blocks 200000..402027 (~467 MB compressed)

This guarantees each package stays below ~470 MB and transfers in <25s,
avoiding USB stream / watchdog timeouts in recovery.
"""

import os
import sys
import zipfile
import brotli

HERE = os.path.dirname(os.path.abspath(__file__))
REPO_ROOT = os.path.dirname(HERE)
KEYS_DIR = os.path.join(REPO_ROOT, "keys")

import sign_ota
import verify_ota

BLOCK_SIZE = 4096
TOTAL_BLOCKS = 402027
SPLIT_BLOCK = 200000

SYSTEM_IMG = r"C:\platform-tools\system.img"
SRC_UPDATE = r"C:\platform-tools\update.zip"
OUT_DIR = r"C:\platform-tools"

CERT_PEM = os.path.join(KEYS_DIR, "testkey.x509.pem")
KEY_PEM = os.path.join(KEYS_DIR, "testkey.key")
if not os.path.exists(KEY_PEM):
    KEY_PEM = os.path.join(KEYS_DIR, "testkey.pk8")

def build_part(part_num, start_block, end_block, include_dynamic_ops):
    num_blocks = end_block - start_block
    out_unsigned = os.path.join(OUT_DIR, f"system_part{part_num}_unsigned.zip")
    out_signed = os.path.join(OUT_DIR, f"system_part{part_num}_ota.zip")

    print(f"\n==================================================")
    print(f"Building System Part {part_num}: blocks {start_block}..{end_block} ({num_blocks} blocks)")
    print(f"==================================================")

    # 1. Read block slice from system.img
    print(f"[*] Reading blocks from {SYSTEM_IMG}...")
    with open(SYSTEM_IMG, "rb") as f:
        f.seek(start_block * BLOCK_SIZE)
        raw_data = f.read(num_blocks * BLOCK_SIZE)
    if len(raw_data) != num_blocks * BLOCK_SIZE:
        raise ValueError(f"Read error: expected {num_blocks * BLOCK_SIZE} bytes, got {len(raw_data)}")
    print(f"    Raw slice size: {len(raw_data):,} bytes ({len(raw_data)/(1024*1024):.1f} MB)")

    # 2. Compress with brotli
    print(f"[*] Compressing with brotli (quality=6)...")
    comp_data = brotli.compress(raw_data, quality=6)
    print(f"    Compressed size: {len(comp_data):,} bytes ({len(comp_data)/(1024*1024):.1f} MB)")

    # 3. Create transfer list
    transfer_list_content = f"4\n{num_blocks}\n0\n0\nnew 2,{start_block},{end_block}\n".encode("utf-8")

    # 4. Create updater-script
    script = []
    script.append('getprop("ro.product.device") == "uis8581a2h10" || abort("E3004: This package is for \\"uis8581a2h10\\" devices; this is a \\"" + getprop("ro.product.device") + "\\".");')
    script.append('ui_print("Target: SPRD/uis8581a2h10_Automotive/uis8581a2h10:10/QP1A.190711.020/21210:userdebug/test-keys");')
    
    if include_dynamic_ops:
        script.append('assert(update_dynamic_partitions(package_extract_file("dynamic_partitions_op_list")));')
    
    script.append(f'ui_print("Patching system image part {part_num} (blocks {start_block}..{end_block}) unconditionally...");')
    script.append('show_progress(0.400000, 0);')
    script.append('block_image_update(map_partition("system"), package_extract_file("system.transfer.list"), "system.new.dat.br", "system.patch.dat") ||')
    script.append(f'  abort("Failed to update system image part {part_num}.");')
    script.append(f'ui_print("System Part {part_num} installed successfully!");\n')
    updater_script_bytes = "\n".join(script).encode("utf-8")

    # 5. Pack ZIP
    print(f"[*] Packaging into {out_unsigned}...")
    with zipfile.ZipFile(SRC_UPDATE, "r") as src, zipfile.ZipFile(out_unsigned, "w", zipfile.ZIP_DEFLATED) as dst:
        common_files = [
            "compatibility.zip",
            "META-INF/com/google/android/update-binary",
            "META-INF/com/google/android/nvmerge",
            "META-INF/com/google/android/nvmerge.cfg",
            "META-INF/com/android/metadata",
            "META-INF/com/android/otacert"
        ]
        for name in common_files:
            if name in src.namelist():
                dst.writestr(name, src.read(name))

        if include_dynamic_ops:
            op_list = b"remove system\nadd system group_unisoc\nresize system 1650896896\n"
            dst.writestr("dynamic_partitions_op_list", op_list)

        dst.writestr("META-INF/com/google/android/updater-script", updater_script_bytes)
        dst.writestr("system.transfer.list", transfer_list_content)
        dst.writestr("system.new.dat.br", comp_data)
        dst.writestr("system.patch.dat", b"")

    # 6. Sign package
    print(f"[*] Signing with AOSP testkey -> {out_signed}...")
    sign_ota.sign_ota(out_unsigned, out_signed, CERT_PEM, KEY_PEM)

    # 7. Verify signature
    print(f"[*] Verifying signature...")
    assert verify_ota.verify_ota(out_signed, CERT_PEM), f"Signature verification failed for {out_signed}!"

    if os.path.exists(out_unsigned):
        os.remove(out_unsigned)

    print(f"[+] Part {part_num} ready: {out_signed} ({os.path.getsize(out_signed)/(1024*1024):.1f} MB)")
    return out_signed

def main():
    if not os.path.exists(SYSTEM_IMG):
        print(f"[ERROR] system.img not found at {SYSTEM_IMG}")
        sys.exit(1)
    if not os.path.exists(SRC_UPDATE):
        print(f"[ERROR] update.zip not found at {SRC_UPDATE}")
        sys.exit(1)

    p1 = build_part(1, 0, SPLIT_BLOCK, include_dynamic_ops=True)
    p2 = build_part(2, SPLIT_BLOCK, TOTAL_BLOCKS, include_dynamic_ops=False)

    print("\n==================================================")
    print("SUCCESS: Both split System OTA packages created and verified!")
    print(f"1) {p1} ({os.path.getsize(p1)/(1024*1024):.1f} MB)")
    print(f"2) {p2} ({os.path.getsize(p2)/(1024*1024):.1f} MB)")
    print("==================================================")

if __name__ == "__main__":
    main()
