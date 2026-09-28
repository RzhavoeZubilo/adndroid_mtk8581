#!/usr/bin/env python3
import sys
import os

BLOCK_SIZE = 4096

def rangeset(src):
    src_set = [int(item) for item in src.split(',')]
    num_set = src_set[0]
    range_set = src_set[1:]
    assert num_set == len(range_set), f"Range count mismatch: {num_set} vs {len(range_set)}"
    assert num_set % 2 == 0, f"Range count not even: {num_set}"
    return [(range_set[i], range_set[i + 1]) for i in range(0, num_set, 2)]

def main():
    if len(sys.argv) < 4:
        print(f"Usage: {sys.argv[0]} <transfer_list> <new_dat> <output_img>")
        sys.exit(1)

    transfer_list_file = sys.argv[1]
    new_dat_file = sys.argv[2]
    output_img_file = sys.argv[3]

    print(f"Reading transfer list: {transfer_list_file}")
    with open(transfer_list_file, 'r') as trans_list:
        version = int(trans_list.readline().strip())
        new_blocks = int(trans_list.readline().strip())
        print(f"Transfer list version: {version}, Total blocks: {new_blocks} ({new_blocks * BLOCK_SIZE / 1024 / 1024:.2f} MB)")
        if version >= 2:
            # line 3: stash entries
            trans_list.readline()
            # line 4: max stash
            trans_list.readline()

        max_block = new_blocks
        with open(new_dat_file, 'rb') as new_dat, open(output_img_file, 'wb') as out_img:
            commands_count = 0
            for line in trans_list:
                line = line.strip()
                if not line:
                    continue
                parts = line.split()
                cmd = parts[0]
                commands_count += 1
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
                else:
                    print(f"Unknown command: {cmd}")

            # Ensure final size matches max_block * BLOCK_SIZE
            out_img.seek(max_block * BLOCK_SIZE - 1)
            out_img.write(b'\0')

    print(f"Done! Created image: {output_img_file} (size: {os.path.getsize(output_img_file)} bytes)")

if __name__ == '__main__':
    main()
