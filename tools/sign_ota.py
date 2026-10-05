#!/usr/bin/env python3
"""Whole-file sign an Android OTA zip with the AOSP testkey (what signapk -w does).

The head unit's CKXSystemInit calls RecoverySystem.verifyPackage() against
/system/etc/security/otacerts.zip (= AOSP testkey.x509.pem), and recovery checks
the same signature again, so an unsigned zip fails with
"Package verify failure. please check the package.".

Usage: sign_ota.py <in.zip> <out.zip> [testkey.pk8] [testkey.x509.pem]
       sign_ota.py --verify <signed.zip> [testkey.x509.pem]
"""
import os
import shutil
import struct
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
OPENSSL = shutil.which("openssl") or "/opt/homebrew/bin/openssl"
MESSAGE = b"signed by SignApk\x00"
FOOTER = 6
EOCD = 22
CHUNK = 16 * 1024 * 1024


def default_key(name):
    return os.path.join(HERE, "keys", name)


def sign(src, dst, pk8, pem):
    size = os.path.getsize(src)
    with open(src, "rb") as f:
        f.seek(size - EOCD)
        eocd = f.read(EOCD)
    if eocd[:4] != b"PK\x05\x06" or eocd[20:22] != b"\x00\x00":
        sys.exit("input must be a plain zip with an empty EOCD comment (already signed?)")

    # Signed region = whole file except the 2-byte EOCD comment length.
    body = dst + ".body"
    with open(src, "rb") as fi, open(body, "wb") as fo:
        remaining = size - 2
        while remaining:
            buf = fi.read(min(CHUNK, remaining))
            fo.write(buf)
            remaining -= len(buf)

    sig_der = dst + ".sig"
    subprocess.check_call([
        OPENSSL, "cms", "-sign", "-binary", "-noattr", "-md", "sha1",
        "-in", body, "-signer", pem, "-inkey", pk8, "-keyform", "DER",
        "-outform", "DER", "-out", sig_der,
    ])
    with open(sig_der, "rb") as f:
        pkcs7 = f.read()

    sig_start = len(pkcs7) + FOOTER
    comment = MESSAGE + pkcs7 + struct.pack("<HHH", sig_start, 0xFFFF, len(MESSAGE) + sig_start)
    if len(comment) > 0xFFFF:
        sys.exit("signature comment too large")
    os.replace(body, dst)
    with open(dst, "ab") as f:
        f.write(struct.pack("<H", len(comment)))
        f.write(comment)
    os.remove(sig_der)
    print("signed:", dst, os.path.getsize(dst), "bytes")


def verify(path, pem):
    size = os.path.getsize(path)
    with open(path, "rb") as f:
        f.seek(size - FOOTER)
        sig_start, ff, comment_size = struct.unpack("<HHH", f.read(FOOTER))
        assert ff == 0xFFFF, "bad footer marker"
        f.seek(size - comment_size - EOCD)
        eocd = f.read(comment_size + EOCD)
    assert eocd[:4] == b"PK\x05\x06", "EOCD not found where footer says"
    assert struct.unpack("<H", eocd[20:22])[0] == comment_size
    pkcs7 = eocd[len(eocd) - sig_start: len(eocd) - FOOTER]
    base = path + ".verify"
    with open(base + ".sig", "wb") as f:
        f.write(pkcs7)
    with open(path, "rb") as fi, open(base + ".body", "wb") as fo:
        remaining = size - comment_size - 2
        while remaining:
            buf = fi.read(min(CHUNK, remaining))
            fo.write(buf)
            remaining -= len(buf)
    try:
        subprocess.check_call([
            OPENSSL, "cms", "-verify", "-binary", "-inform", "DER", "-in", base + ".sig",
            "-content", base + ".body", "-certfile", pem, "-CAfile", pem,
            "-purpose", "any", "-no_check_time", "-out", os.devnull,
        ])
        print("signature OK against", pem)
    finally:
        for ext in (".sig", ".body"):
            os.remove(base + ext)


if __name__ == "__main__":
    a = sys.argv[1:]
    if a and a[0] == "--verify":
        verify(a[1], a[2] if len(a) > 2 else default_key("testkey.x509.pem"))
    elif len(a) >= 2:
        sign(a[0], a[1],
             a[2] if len(a) > 2 else default_key("testkey.pk8"),
             a[3] if len(a) > 3 else default_key("testkey.x509.pem"))
    else:
        sys.exit(__doc__)
