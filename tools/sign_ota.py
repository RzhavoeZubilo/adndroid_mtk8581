#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
AOSP Whole-File OTA Signer (SignApk whole-file spec implementation).

Signs an Android OTA ZIP archive using a whole-file PKCS#7 signature block
placed inside the ZIP end-of-central-directory (EOCD) comment.
Compatible with AOSP Recovery verifier.cpp (tested on Android 10 UIS8581A).

Usage:
    python sign_ota.py <input.zip> <output.zip> [cert.x509.pem] [private_key.key|pk8]
    python sign_ota.py --verify <signed.zip> [cert.x509.pem]
"""

import sys
import os
import shutil
import subprocess
import tempfile
import struct

HERE = os.path.dirname(os.path.abspath(__file__))
DEFAULT_KEYS_DIR = os.path.join(os.path.dirname(HERE), "keys")

def find_openssl():
    cmd = shutil.which("openssl")
    if cmd:
        return cmd
    candidates = [
        r"C:\Program Files\OpenSSL-Win64\bin\openssl.exe",
        r"C:\Program Files\Git\usr\bin\openssl.exe",
        "/opt/homebrew/bin/openssl",
        "/usr/bin/openssl"
    ]
    for c in candidates:
        if os.path.exists(c):
            return c
    return "openssl"

OPENSSL = find_openssl()

def sign_ota(in_zip, out_zip, cert_pem=None, key_file=None):
    if not cert_pem:
        cert_pem = os.path.join(DEFAULT_KEYS_DIR, "testkey.x509.pem")
    if not key_file:
        key_file = os.path.join(DEFAULT_KEYS_DIR, "testkey.key")
        if not os.path.exists(key_file):
            key_file = os.path.join(DEFAULT_KEYS_DIR, "testkey.pk8")

    if not os.path.exists(cert_pem):
        raise FileNotFoundError(f"Certificate not found: {cert_pem}")
    if not os.path.exists(key_file):
        raise FileNotFoundError(f"Key file not found: {key_file}")

    # Convert pk8 to pem if needed
    cleanup_temp_key = False
    if key_file.endswith(".pk8"):
        temp_key = tempfile.NamedTemporaryFile(delete=False, suffix=".pem")
        temp_key.close()
        subprocess.run([
            OPENSSL, "pkcs8", "-in", key_file, "-inform", "DER",
            "-nocrypt", "-out", temp_key.name
        ], check=True)
        key_pem = temp_key.name
        cleanup_temp_key = True
    else:
        key_pem = key_file

    try:
        with open(in_zip, "rb") as f:
            data = f.read()

        # Find EOCD marker 0x06054b50 (PK\x05\x06)
        eocd_pos = data.rfind(b"\x50\x4b\x05\x06")
        if eocd_pos == -1:
            raise ValueError("EOCD record (0x06054b50) not found in input zip")

        # Strip any existing comment from base zip data
        base_data = data[:eocd_pos + 20]

        # In SignApk whole-file spec:
        # comment layout:
        #   prefix: b"signed by SignApk\0" (18 bytes)
        #   pkcs7_der: raw ASN.1 DER signature (starts with 0x30)
        #   footer: 6 bytes struct.pack("<HHH", sig_block_len, 0xFFFF, total_comment_len)
        # Where:
        #   sig_block_len = len(pkcs7_der) + 6
        #   total_comment_len = len(prefix) + sig_block_len
        #
        # AOSP verifier.cpp locates DER at:
        #   p = comment + (comment_len - sig_len)
        # Because (comment_len - sig_len) = (len(prefix) + sig_block_len) - sig_block_len = 18,
        # p lands EXACTLY on byte 0 of pkcs7_der (0x30)!

        # 1. Generate dummy signature to obtain exact DER signature length
        dummy_in = tempfile.NamedTemporaryFile(delete=False)
        dummy_in.write(b"0" * 1024)
        dummy_in.close()

        dummy_sig = tempfile.NamedTemporaryFile(delete=False)
        dummy_sig.close()

        cmd = [
            OPENSSL, "smime", "-sign",
            "-in", dummy_in.name,
            "-out", dummy_sig.name,
            "-outform", "DER",
            "-binary",
            "-noattr",
            "-signer", cert_pem,
            "-inkey", key_pem,
            "-md", "sha1"
        ]
        subprocess.run(cmd, check=True)
        with open(dummy_sig.name, "rb") as f:
            dummy_der = f.read()
        os.unlink(dummy_in.name)
        os.unlink(dummy_sig.name)

        der_len = len(dummy_der)
        prefix = b"signed by SignApk\x00"
        sig_block_len = der_len + 6
        total_comment_len = len(prefix) + sig_block_len

        # 2. Compute final digest over base_data (AOSP verifier signed_len = length - comment_len - 2)
        file_to_sign = tempfile.NamedTemporaryFile(delete=False)
        file_to_sign.write(base_data)
        file_to_sign.close()

        real_sig = tempfile.NamedTemporaryFile(delete=False)
        real_sig.close()

        cmd_final = [
            OPENSSL, "smime", "-sign",
            "-in", file_to_sign.name,
            "-out", real_sig.name,
            "-outform", "DER",
            "-binary",
            "-noattr",
            "-signer", cert_pem,
            "-inkey", key_pem,
            "-md", "sha1"
        ]
        subprocess.run(cmd_final, check=True)
        with open(real_sig.name, "rb") as f:
            real_der = f.read()
        os.unlink(file_to_sign.name)
        os.unlink(real_sig.name)

        if len(real_der) != der_len:
            raise ValueError(f"Signature size changed unexpectedly: {len(real_der)} vs {der_len}")

        footer = struct.pack("<HHH", sig_block_len, 0xFFFF, total_comment_len)
        full_comment = prefix + real_der + footer

        with open(out_zip, "wb") as f:
            f.write(base_data)
            f.write(struct.pack("<H", total_comment_len))
            f.write(full_comment)

        print(f"[OK] Successfully signed {out_zip} ({os.path.getsize(out_zip)} bytes)")
        print(f"     Comment len: {len(full_comment)}, Sig block len: {sig_block_len}, DER offset: {len(prefix)}")
    finally:
        if cleanup_temp_key and os.path.exists(key_pem):
            os.unlink(key_pem)

def verify_ota(zip_path, cert_pem=None):
    if not cert_pem:
        cert_pem = os.path.join(DEFAULT_KEYS_DIR, "testkey.x509.pem")
    if not os.path.exists(cert_pem):
        raise FileNotFoundError(f"Certificate not found: {cert_pem}")

    with open(zip_path, "rb") as f:
        f.seek(-6, 2)
        footer = f.read(6)
        sig_len, marker, comment_len = struct.unpack("<HHH", footer)
        if marker != 0xFFFF:
            print(f"[FAIL] Footer marker is not 0xFFFF: {hex(marker)}")
            return False

        f.seek(-(comment_len + 2), 2)
        eocd_comment_len = struct.unpack("<H", f.read(2))[0]
        if eocd_comment_len != comment_len:
            print(f"[FAIL] EOCD comment len ({eocd_comment_len}) != footer comment len ({comment_len})")
            return False

        comment = f.read(comment_len)
        der_offset = comment_len - sig_len
        print(f"Checking {zip_path}: comment_len={comment_len}, sig_len={sig_len}, der_offset={der_offset}")
        if comment[der_offset] != 0x30:
            print(f"[FAIL] Expected ASN.1 SEQUENCE 0x30 at offset {der_offset}, got {hex(comment[der_offset])}")
            return False

        pkcs7_der = comment[der_offset:-6]
        file_signed_len = os.path.getsize(zip_path) - comment_len
        f.seek(0)
        signed_data = f.read(file_signed_len)

    sig_file = tempfile.NamedTemporaryFile(delete=False)
    sig_file.write(pkcs7_der)
    sig_file.close()

    data_file = tempfile.NamedTemporaryFile(delete=False)
    data_file.write(signed_data)
    data_file.close()

    cmd = [
        OPENSSL, "smime", "-verify",
        "-in", sig_file.name,
        "-inform", "DER",
        "-content", data_file.name,
        "-out", os.devnull,
        "-noverify", "-certfile", cert_pem
    ]
    r = subprocess.run(cmd, capture_output=True)
    os.unlink(sig_file.name)
    os.unlink(data_file.name)

    if r.returncode == 0:
        print("[SUCCESS] OTA whole-file signature verified cleanly against certificate!")
        return True
    else:
        print("[FAIL] OpenSSL signature verification failed:")
        print(r.stderr.decode("latin1", "ignore"))
        return False

if __name__ == "__main__":
    if len(sys.argv) >= 2 and sys.argv[1] == "--verify":
        target = sys.argv[2] if len(sys.argv) > 2 else ""
        cert = sys.argv[3] if len(sys.argv) > 3 else None
        if not target:
            print("Usage: python sign_ota.py --verify <signed.zip> [cert.pem]")
            sys.exit(1)
        ok = verify_ota(target, cert)
        sys.exit(0 if ok else 1)
    elif len(sys.argv) >= 3:
        in_z = sys.argv[1]
        out_z = sys.argv[2]
        c = sys.argv[3] if len(sys.argv) > 3 else None
        k = sys.argv[4] if len(sys.argv) > 4 else None
        sign_ota(in_z, out_z, c, k)
    else:
        print("Usage: python sign_ota.py <in.zip> <out.zip> [cert.pem] [key.key|pk8]")
        print("       python sign_ota.py --verify <signed.zip> [cert.pem]")
        sys.exit(1)
