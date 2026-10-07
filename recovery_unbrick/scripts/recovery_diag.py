#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Non-destructive Recovery Diagnostic Tool.

Collects read-only telemetry from the head unit in Recovery / ADB mode:
- dmesg (kernel ring buffer)
- /proc/mounts and mount status
- getprop (all Android system properties)
- Directory listings of storage mountpoints
- Pulls /cache/recovery logs if available

Saves report and logs to a timestamped folder.
"""

import os
import sys
import time
import datetime
import subprocess
import shutil

HERE = os.path.dirname(os.path.abspath(__file__))
OUT_ROOT = os.path.join(os.path.dirname(HERE), "docs", "recovery_logs")

def find_tool(name):
    w = shutil.which(name)
    if w and " " not in w:
        return w
    candidates = [
        rf"D:\pt\{name}.exe",
        rf"C:\platform-tools\{name}.exe",
        rf"/usr/bin/{name}",
    ]
    for c in candidates:
        if os.path.exists(c):
            return c
    return name

FASTBOOT = find_tool("fastboot")
ADB = find_tool("adb")

STAMP = datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
OUT_DIR = os.path.join(OUT_ROOT, STAMP)
REPORT_FILE = os.path.join(OUT_DIR, "report.txt")

lines = []

def log(msg=""):
    print(msg)
    lines.append(str(msg))

def run_cmd(title, cmd, timeout=60):
    log("")
    log(f"===== {title} =====")
    log("$ " + " ".join(cmd))
    try:
        r = subprocess.run(cmd, capture_output=True, timeout=timeout)
        out = ""
        for buf in (r.stdout, r.stderr):
            if buf:
                out += buf.decode("utf-8", errors="replace")
        log(out.rstrip() or "(no output)")
        log(f"[exit code: {r.returncode}]")
        return r.returncode, out
    except subprocess.TimeoutExpired:
        log(f"[TIMEOUT after {timeout}s]")
        return -1, ""

def main():
    os.makedirs(OUT_DIR, exist_ok=True)
    log(f"=== RECOVERY DIAGNOSTIC REPORT ({STAMP}) ===")
    log(f"Tools: Fastboot={FASTBOOT}, ADB={ADB}")

    # Check fastboot
    fb_out = subprocess.run([FASTBOOT, "devices"], capture_output=True, text=True).stdout
    if "fastboot" in fb_out:
        log("\nDevice found in Fastboot mode.")
        run_cmd("Fastboot Variables", [FASTBOOT, "getvar", "all"], timeout=15)
        log("Rebooting to recovery for diagnostics...")
        subprocess.run([FASTBOOT, "reboot", "recovery"], capture_output=True)

    log("\nWaiting for device in Recovery (ADB mode)...")
    start = time.time()
    found = False
    while time.time() - start < 180:
        adb_out = subprocess.run([ADB, "devices"], capture_output=True, text=True).stdout
        if "recovery" in adb_out or "sideload" in adb_out or "device" in adb_out:
            found = True
            log(f"Device connected: {adb_out.strip()}")
            break
        sys.stdout.write(".")
        sys.stdout.flush()
        time.sleep(1)

    if not found:
        log("[ERROR] Device not found in ADB/Recovery within timeout.")
        with open(REPORT_FILE, "w", encoding="utf-8") as f:
            f.write("\n".join(lines))
        sys.exit(1)

    # Collect telemetry
    run_cmd("Kernel Log (dmesg)", [ADB, "shell", "dmesg"], timeout=30)
    run_cmd("Mounts (/proc/mounts)", [ADB, "shell", "cat", "/proc/mounts"], timeout=15)
    run_cmd("Mount Command", [ADB, "shell", "mount"], timeout=15)
    run_cmd("System Properties (getprop)", [ADB, "shell", "getprop"], timeout=30)
    run_cmd("Root Listing", [ADB, "shell", "ls", "-la", "/"], timeout=15)
    run_cmd("Storage Listing", [ADB, "shell", "ls", "-la", "/storage"], timeout=15)
    run_cmd("Mnt Listing", [ADB, "shell", "ls", "-la", "/mnt"], timeout=15)

    # Attempt to pull logs
    for src in ("/tmp/recovery.log", "/cache/recovery/last_log", "/cache/recovery/last_install"):
        dst = os.path.join(OUT_DIR, os.path.basename(src))
        run_cmd(f"Pull {src}", [ADB, "pull", src, dst], timeout=15)

    with open(REPORT_FILE, "w", encoding="utf-8") as f:
        f.write("\n".join(lines))

    print(f"\n[DONE] Diagnostic report saved to: {REPORT_FILE}")

if __name__ == "__main__":
    main()
