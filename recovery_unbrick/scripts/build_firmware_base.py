#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Build firmware base OTA package (SPL, U-Boot, SML, TrustOS, TEECFG, DTBO).

Total size: ~2.5 MB.
Transfers in ~1 second via ADB Sideload.
Writes all hardware/firmware boot components from OTA 6.67 to primary and backup partitions.
"""

import os
import sys
import zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
REPO_ROOT = os.path.dirname(HERE)
KEYS_DIR = os.path.join(REPO_ROOT, "keys")

import sign_ota
import verify_ota

SRC_UPDATE = r"C:\platform-tools\update.zip"
OUT_UNSIGNED = r"C:\platform-tools\firmware_base_unsigned.zip"
OUT_SIGNED = r"C:\platform-tools\firmware_base_ota.zip"

CERT_PEM = os.path.join(KEYS_DIR, "testkey.x509.pem")
KEY_PEM = os.path.join(KEYS_DIR, "testkey.key")
if not os.path.exists(KEY_PEM):
    KEY_PEM = os.path.join(KEYS_DIR, "testkey.pk8")

def main():
    print("=== Building Firmware Base OTA (~2.5 MB) ===")
    
    with zipfile.ZipFile(SRC_UPDATE, "r") as src, zipfile.ZipFile(OUT_UNSIGNED, "w", zipfile.ZIP_DEFLATED) as dst:
        files = [
            "compatibility.zip",
            "META-INF/com/google/android/update-binary",
            "META-INF/com/google/android/nvmerge",
            "META-INF/com/google/android/nvmerge.cfg",
            "META-INF/com/android/metadata",
            "META-INF/com/android/otacert",
            "u-boot-spl-16k.bin",
            "u-boot.bin",
            "sml.bin",
            "tos.bin",
            "teecfg.bin",
            "dtbo.img"
        ]
        for f in files:
            dst.writestr(f, src.read(f))

        script = []
        script.append('getprop("ro.product.device") == "uis8581a2h10" || abort("E3004: Device mismatch.");')
        script.append('ui_print("Target: SPRD/uis8581a2h10_Automotive/uis8581a2h10:10/QP1A.190711.020/21210:userdebug/test-keys");')
        script.append('package_extract_file("META-INF/com/google/android/nvmerge", "/tmp/nvmerge");')
        script.append('package_extract_file("META-INF/com/google/android/nvmerge.cfg", "/tmp/nvmerge.cfg");')
        script.append('ui_print("Writing SPL to /spl and /spl_bk...");')
        script.append('package_extract_file("u-boot-spl-16k.bin", "/dev/block/mmcblk0boot0");')
        script.append('package_extract_file("u-boot-spl-16k.bin", "/dev/block/mmcblk0boot1");')
        script.append('ui_print("Writing U-Boot to /uboot and /uboot_bak...");')
        script.append('package_extract_file("u-boot.bin", "/dev/block/platform/soc/soc:ap-ahb/20600000.sdio/by-name/uboot");')
        script.append('package_extract_file("u-boot.bin", "/dev/block/platform/soc/soc:ap-ahb/20600000.sdio/by-name/uboot_bak");')
        script.append('ui_print("Writing SML to /sml and /sml_bak...");')
        script.append('package_extract_file("sml.bin", "/dev/block/platform/soc/soc:ap-ahb/20600000.sdio/by-name/sml");')
        script.append('package_extract_file("sml.bin", "/dev/block/platform/soc/soc:ap-ahb/20600000.sdio/by-name/sml_bak");')
        script.append('ui_print("Writing TrustOS to /trustos and /trustos_bak...");')
        script.append('package_extract_file("tos.bin", "/dev/block/platform/soc/soc:ap-ahb/20600000.sdio/by-name/trustos");')
        script.append('package_extract_file("tos.bin", "/dev/block/platform/soc/soc:ap-ahb/20600000.sdio/by-name/trustos_bak");')
        script.append('ui_print("Writing TEECFG to /teecfg and /teecfg_bak...");')
        script.append('package_extract_file("teecfg.bin", "/dev/block/platform/soc/soc:ap-ahb/20600000.sdio/by-name/teecfg");')
        script.append('package_extract_file("teecfg.bin", "/dev/block/platform/soc/soc:ap-ahb/20600000.sdio/by-name/teecfg_bak");')
        script.append('ui_print("Writing DTBO to /dtbo...");')
        script.append('package_extract_file("dtbo.img", "/dev/block/platform/soc/soc:ap-ahb/20600000.sdio/by-name/dtbo");')
        script.append('ui_print("Firmware boot base updated successfully!");\n')

        dst.writestr("META-INF/com/google/android/updater-script", "\n".join(script).encode("utf-8"))

    print(f"[*] Signing package -> {OUT_SIGNED}...")
    sign_ota.sign_ota(OUT_UNSIGNED, OUT_SIGNED, CERT_PEM, KEY_PEM)
    
    print("[*] Verifying package...")
    assert verify_ota.verify_ota(OUT_SIGNED, CERT_PEM)
    
    if os.path.exists(OUT_UNSIGNED):
        os.remove(OUT_UNSIGNED)
        
    print(f"[SUCCESS] Ready: {OUT_SIGNED} ({os.path.getsize(OUT_SIGNED):,} bytes)")

if __name__ == "__main__":
    main()
