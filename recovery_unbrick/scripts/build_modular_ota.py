#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Modular OTA Package Builder for Unisoc UIS8581A (Android 10).

Splits the full ~1.9 GB factory OTA package into lightweight modular packages
(under ~250–850 MB) to avoid recovery RAM exhaustion / watchdog timeouts
during ADB sideloading and whole-file SHA-1 hashing.

Automatically generates valid dynamic_partitions_op_list, custom updater-script,
and applies whole-file PKCS#7 signing using testkey.

Usage:
    python build_modular_ota.py <source_update.zip> <output.zip> <partition1> [partition2 ...]
    
Pre-set shortcuts:
    python build_modular_ota.py <source_update.zip> --preset vendor_boot
    python build_modular_ota.py <source_update.zip> --preset product
    python build_modular_ota.py <source_update.zip> --preset system
    python build_modular_ota.py <source_update.zip> --preset all_modular
"""

import os
import sys
import zipfile
import subprocess
import shutil

HERE = os.path.dirname(os.path.abspath(__file__))
DEFAULT_KEYS_DIR = os.path.join(os.path.dirname(HERE), "keys")

import sign_ota
import verify_ota

PRESETS = {
    "vendor_boot": {
        "out": "vendor_boot_ota.zip",
        "partitions": ["vendor", "socko", "boot", "dtbo"],
        "desc": "Vendor + Kernel (boot) + SoC Modules (socko) + DTBO (~243 MB). Lightweight, passes all RAM limits."
    },
    "product": {
        "out": "product_ota.zip",
        "partitions": ["product"],
        "desc": "Product dynamic partition (~653 MB)."
    },
    "system": {
        "out": "system_ota.zip",
        "partitions": ["system"],
        "desc": "System dynamic partition (~826 MB)."
    }
}

def create_modular_ota(src_zip_path, out_zip_path, partitions_to_include, cert_pem=None, key_pem=None):
    if not cert_pem:
        cert_pem = os.path.join(DEFAULT_KEYS_DIR, "testkey.x509.pem")
    if not key_pem:
        key_pem = os.path.join(DEFAULT_KEYS_DIR, "testkey.key")
        if not os.path.exists(key_pem):
            key_pem = os.path.join(DEFAULT_KEYS_DIR, "testkey.pk8")

    print(f"=== Building Modular OTA: {os.path.basename(out_zip_path)} ===")
    print(f"Source : {src_zip_path}")
    print(f"Target : {out_zip_path}")
    print(f"Parts  : {', '.join(partitions_to_include)}")

    with zipfile.ZipFile(src_zip_path, "r") as src:
        files_to_copy = {}
        
        # Mandatory AOSP recovery metadata & binary tools
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
                files_to_copy[name] = src.read(name)

        # Selected partition images
        for p in partitions_to_include:
            if p == "boot" and "boot.img" in src.namelist():
                files_to_copy["boot.img"] = src.read("boot.img")
            elif p == "dtbo" and "dtbo.img" in src.namelist():
                files_to_copy["dtbo.img"] = src.read("dtbo.img")
            else:
                for name in src.namelist():
                    if name.startswith(f"{p}."):
                        files_to_copy[name] = src.read(name)

        # Dynamic partitions metadata handling
        dynamic_parts = [p for p in partitions_to_include if p in ["product", "vendor", "system"]]
        op_lines = []
        if dynamic_parts:
            src_op = src.read("dynamic_partitions_op_list").decode("latin1").splitlines()
            if set(dynamic_parts) == {"product", "vendor", "system"}:
                op_lines = src_op
            else:
                for dp in dynamic_parts:
                    op_lines.append(f"remove {dp}")
                    op_lines.append(f"add {dp} group_unisoc")
                for line in src_op:
                    for dp in dynamic_parts:
                        if line.startswith(f"resize {dp} "):
                            op_lines.append(line)

        if op_lines:
            files_to_copy["dynamic_partitions_op_list"] = "\n".join(op_lines).encode("latin1") + b"\n"

        # Generate updater-script
        script = []
        script.append('getprop("ro.product.device") == "uis8581a2h10" || abort("E3004: This package is for \\"uis8581a2h10\\" devices; this is a \\"" + getprop("ro.product.device") + "\\".");')
        script.append('ui_print("Target: SPRD/uis8581a2h10_Automotive/uis8581a2h10:10/QP1A.190711.020/21210:userdebug/test-keys");')

        if "dtbo" in partitions_to_include and "dtbo.img" in files_to_copy:
            script.append('ui_print("write dtbo.img to partition /dtbo ....");')
            script.append('package_extract_file("dtbo.img", "/dev/block/platform/soc/soc:ap-ahb/20600000.sdio/by-name/dtbo");')

        if op_lines:
            script.append('assert(update_dynamic_partitions(package_extract_file("dynamic_partitions_op_list")));')

        for dp in ["product", "vendor", "system"]:
            if dp in dynamic_parts:
                script.append(f'ui_print("Patching {dp} image unconditionally...");')
                script.append('show_progress(0.400000, 0);')
                script.append(f'block_image_update(map_partition("{dp}"), package_extract_file("{dp}.transfer.list"), "{dp}.new.dat.br", "{dp}.patch.dat") ||')
                script.append(f'  abort("Failed to update {dp} image.");')

        if "socko" in partitions_to_include:
            script.append('ui_print("Patching socko image unconditionally...");')
            script.append('show_progress(0.050000, 0);')
            script.append('block_image_update("/dev/block/platform/soc/soc:ap-ahb/20600000.sdio/by-name/socko", package_extract_file("socko.transfer.list"), "socko.new.dat.br", "socko.patch.dat") ||')
            script.append('  abort("Failed to update socko image.");')

        if "boot" in partitions_to_include:
            script.append('ui_print("Writing boot image...");')
            script.append('show_progress(0.050000, 5);')
            script.append('package_extract_file("boot.img", "/dev/block/platform/soc/soc:ap-ahb/20600000.sdio/by-name/boot");')

        script.append('set_progress(1.000000);')
        script.append('ui_print("Install completed successfully!");\n')

        files_to_copy["META-INF/com/google/android/updater-script"] = "\n".join(script).encode("latin1")

    unsigned_zip = out_zip_path + ".unsigned.zip"
    print(f"Creating intermediate unsigned package...")
    with zipfile.ZipFile(unsigned_zip, "w", compression=zipfile.ZIP_STORED) as dst:
        for fname, fcontent in files_to_copy.items():
            dst.writestr(fname, fcontent)

    print("Signing package with AOSP testkey...")
    sign_ota.sign_ota(unsigned_zip, out_zip_path, cert_pem, key_pem)
    if os.path.exists(unsigned_zip):
        os.unlink(unsigned_zip)

    print("Verifying generated package...")
    ok = verify_ota.verify_ota(out_zip_path, cert_pem)
    if not ok:
        raise RuntimeError(f"Package signature verification failed for {out_zip_path}")
    print(f"[READY] Package {out_zip_path} generated successfully! ({os.path.getsize(out_zip_path)} bytes)\n")

def main():
    if len(sys.argv) < 3:
        print(__doc__)
        sys.exit(1)

    src = sys.argv[1]
    if sys.argv[2] == "--preset":
        preset_name = sys.argv[3] if len(sys.argv) > 3 else ""
        out_dir = sys.argv[4] if len(sys.argv) > 4 else os.path.dirname(os.path.abspath(src))
        
        if preset_name == "all_modular":
            for k, p in PRESETS.items():
                target = os.path.join(out_dir, p["out"])
                create_modular_ota(src, target, p["partitions"])
        elif preset_name in PRESETS:
            p = PRESETS[preset_name]
            target = os.path.join(out_dir, p["out"])
            create_modular_ota(src, target, p["partitions"])
        else:
            print(f"Unknown preset: {preset_name}. Available: {list(PRESETS.keys())} or all_modular")
            sys.exit(1)
    else:
        out = sys.argv[2]
        partitions = sys.argv[3:]
        if not partitions:
            print("Error: Specify at least one partition to include (e.g. vendor, boot, socko, system, product)")
            sys.exit(1)
        create_modular_ota(src, out, partitions)

if __name__ == "__main__":
    main()
