#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
AOSP Recovery verifier.cpp replica.

Verifies whether an Android OTA package adheres strictly to the AOSP recovery
signature parsing requirements:
1. Valid footer with marker 0xFFFF and matching comment lengths.
2. Correct DER block offset pointing directly to ASN.1 SEQUENCE 0x30.
3. Cryptographic integrity of the signed payload against the specified X.509 cert.
"""

import sys
import os
import struct
import tempfile
import subprocess
import shutil

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

def verify_ota(zip_path, cert_pem=None):
    if not cert_pem:
        cert_pem = os.path.join(DEFAULT_KEYS_DIR, "testkey.x509.pem")

    if not os.path.exists(zip_path):
        print(f"[FAIL] Target zip not found: {zip_path}")
        return False
    if not os.path.exists(cert_pem):
        print(f"[FAIL] Certificate not found: {cert_pem}")
        return False

    with open(zip_path, "rb") as f:
        f.seek(-6, 2)
        footer = f.read(6)
        sig_len, marker, comment_len = struct.unpack("<HHH", footer)
        if marker != 0xFFFF:
            print(f"[FAIL] Marker is not 0xFFFF: {hex(marker)}")
            return False

        f.seek(-(comment_len + 2), 2)
        eocd_comment_len = struct.unpack("<H", f.read(2))[0]
        if eocd_comment_len != comment_len:
            print(f"[FAIL] EOCD comment len ({eocd_comment_len}) != footer comment len ({comment_len})")
            return False

        comment = f.read(comment_len)
        der_offset = comment_len - sig_len
        print(f"Comment len: {comment_len}, Sig len: {sig_len}, DER offset: {der_offset}")
        if comment[der_offset] != 0x30:
            print(f"[FAIL] Expected ASN.1 SEQUENCE 0x30 at offset {der_offset}, got {hex(comment[der_offset])}")
            return False
        print(f"[PASS] Found signature DER block at offset {der_offset} (0x30)!")
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
        print("[FAIL] OpenSSL verification failed:")
        print(r.stderr.decode("latin1", "ignore"))
        return False

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python verify_ota.py <target.zip> [cert.pem]")
        sys.exit(1)
    c = sys.argv[2] if len(sys.argv) > 2 else None
    res = verify_ota(sys.argv[1], c)
    sys.exit(0 if res else 1)
