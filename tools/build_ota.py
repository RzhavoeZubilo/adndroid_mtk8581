#!/usr/bin/env python3
"""Rebuild a signed OTA zip with a new system.img.

Takes a base OTA zip (all partitions except system), converts system.img into
system.new.dat.br + system.transfer.list, and signs the result with the testkey.

The transfer list and the data stream MUST come from the same image: the list
says "new 2,0,<blocks>", so system.new.dat is the raw image. A mismatch makes
recovery abort with "E1001: Failed to update system image (status 7)".

Usage: build_ota.py <base_ota.zip> <system.img> <out.zip>
"""
import hashlib
import os
import shutil
import subprocess
import sys
import tempfile
import zipfile

HERE = os.path.dirname(os.path.abspath(__file__))
BLOCK = 4096
CHUNK = 1 << 24


def main(base, img, out):
    size = os.path.getsize(img)
    with open(img, "rb") as f:
        f.seek(1024 + 56)
        if f.read(2) != b"\x53\xef":
            sys.exit("system.img must be a raw ext4 image (not Android sparse)")
    blocks = size // BLOCK
    if size % BLOCK:
        sys.exit("system.img size is not a multiple of 4096")

    work = tempfile.mkdtemp(prefix="build_ota_", dir=os.path.dirname(os.path.abspath(out)))
    try:
        br = os.path.join(work, "system.new.dat.br")
        subprocess.check_call(["brotli", "-q", "5", "-f", img, "-o", br])
        dec = subprocess.Popen(["brotli", "-dc", br], stdout=subprocess.PIPE)
        h_br, h_img = hashlib.sha1(), hashlib.sha1()
        for chunk in iter(lambda: dec.stdout.read(CHUNK), b""):
            h_br.update(chunk)
        with open(img, "rb") as f:
            for chunk in iter(lambda: f.read(CHUNK), b""):
                h_img.update(chunk)
        if h_br.digest() != h_img.digest():
            sys.exit("brotli round-trip mismatch")
        transfer = "4\n%d\n0\n0\nnew 2,0,%d\n" % (blocks, blocks)

        unsigned = os.path.join(work, "unsigned.zip")
        with zipfile.ZipFile(base) as zi, zipfile.ZipFile(unsigned, "w", zipfile.ZIP_STORED) as zo:
            for i in zi.infolist():
                if i.filename.startswith("META-INF/CERT") or i.filename == "META-INF/MANIFEST.MF":
                    continue
                zinfo = zipfile.ZipInfo(i.filename, (2009, 1, 1, 0, 0, 0))
                zinfo.external_attr = i.external_attr
                zinfo.compress_type = zipfile.ZIP_STORED
                if i.filename == "system.new.dat.br":
                    zinfo.file_size = os.path.getsize(br)
                    with open(br, "rb") as f, zo.open(zinfo, "w") as w:
                        shutil.copyfileobj(f, w, CHUNK)
                elif i.filename == "system.transfer.list":
                    zo.writestr(zinfo, transfer)
                else:
                    zinfo.file_size = i.file_size
                    with zi.open(i) as f, zo.open(zinfo, "w") as w:
                        shutil.copyfileobj(f, w, CHUNK)

        sign = os.path.join(HERE, "sign_ota.py")
        subprocess.check_call([sys.executable, sign, unsigned, out])
        subprocess.check_call([sys.executable, sign, "--verify", out])
    finally:
        shutil.rmtree(work, ignore_errors=True)


if __name__ == "__main__":
    if len(sys.argv) != 4:
        sys.exit(__doc__)
    main(*sys.argv[1:])
