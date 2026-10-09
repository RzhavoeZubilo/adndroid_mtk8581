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
        pkcs7_der = comment[der_offset:-6]
        # Check strict ASN.1 structure expected by AOSP recovery install/verifier.cpp (read_pkcs7)
        def check_read_pkcs7(der):
            class ASN1:
                kMaskConstructed = 0xE0; kMaskTag = 0x7F; kMaskAppType = 0x1F
                kTagOctetString = 0x04; kTagSequence = 0x30; kTagSet = 0x31; kTagConstructed = 0xA0
                def __init__(self, d): self.d = bytearray(d); self.p = 0; self.l = len(d)
                def peek(self): return self.d[self.p] if self.l > 0 else -1
                def get(self):
                    if self.l == 0: return -1
                    b = self.d[self.p]; self.p += 1; self.l -= 1
                    return b
                def skip(self, n):
                    if self.l < n: return False
                    self.p += n; self.l -= n
                    return True
                def dec_len(self):
                    b = self.get()
                    if b == -1: return None
                    if (b & 0x80) == 0: return b
                    num = b & self.kMaskAppType
                    l = 0
                    for _ in range(num):
                        ob = self.get()
                        if ob == -1: return None
                        l = (l << 8) | ob
                    return l
                def seq_get(self):
                    if (self.get() & self.kMaskTag) != self.kTagSequence: return None
                    l = self.dec_len()
                    if l is None or l > self.l: return None
                    sub = self.d[self.p:self.p+l]; self.skip(l)
                    return ASN1(sub)
                def constr_get(self):
                    t = self.get()
                    if t == -1 or (t & self.kMaskConstructed) != self.kTagConstructed: return None
                    l = self.dec_len()
                    if l is None or l > self.l: return None
                    sub = self.d[self.p:self.p+l]; self.skip(l)
                    return ASN1(sub)
                def seq_next(self):
                    if self.get() == -1: return False
                    l = self.dec_len()
                    return l is not None and self.skip(l)
                def constr_skip_all(self):
                    b = self.peek()
                    while b != -1 and (b & self.kMaskConstructed) == self.kTagConstructed:
                        self.skip(1)
                        l = self.dec_len()
                        if l is None or not self.skip(l): return False
                        b = self.peek()
                    return b != -1
                def set_get(self):
                    if (self.get() & self.kMaskTag) != self.kTagSet: return None
                    l = self.dec_len()
                    if l is None or l > self.l: return None
                    sub = self.d[self.p:self.p+l]; self.skip(l)
                    return ASN1(sub)
                def octet_str_get(self):
                    if self.get() != self.kTagOctetString: return None
                    l = self.dec_len()
                    if l is None or l == 0 or l > self.l: return None
                    sub = self.d[self.p:self.p+l]; self.skip(l)
                    return bytes(sub)

            ctx = ASN1(der)
            s1 = ctx.seq_get()
            if not s1 or not s1.seq_next(): return False, "pkcs7_seq"
            app = s1.constr_get()
            if not app: return False, "signed_data_app"
            s2 = app.seq_get()
            if not s2: return False, "signed_data_seq"
            for step in range(3):
                if not s2.seq_next(): return False, f"signed_data_seq.next step {step}"
            if not s2.constr_skip_all(): return False, "signed_data_seq.constr_skip_all"
            s_set = s2.set_get()
            if not s_set: return False, "sig_set"
            s_seq = s_set.seq_get()
            if not s_seq: return False, "sig_seq"
            for step in range(4):
                if not s_seq.seq_next(): return False, f"sig_seq.next step {step}"
            sig = s_seq.octet_str_get()
            if not sig: return False, "sig_seq.octet_str_get (Could not find signature DER block)"
            return True, len(sig)

        ok_der, res_der = check_read_pkcs7(pkcs7_der)
        if not ok_der:
            print(f"[FAIL] AOSP verifier.cpp read_pkcs7() rejected signature: {res_der}")
            return False
        print(f"[PASS] AOSP verifier.cpp read_pkcs7() parsed signature cleanly (sig len: {res_der})!")

        # AOSP verifier.cpp: signed_len = length - eocd_size + EOCD_HEADER_SIZE - 2 = length - comment_len - 2
        file_signed_len = os.path.getsize(zip_path) - comment_len - 2
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
