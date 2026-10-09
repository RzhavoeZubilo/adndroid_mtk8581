#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Interactive Sideload Runner for Head Unit Recovery.

Automates the transition from Fastboot to Recovery, waits for the user
to select 'Apply update from ADB' on the screen, and executes `adb sideload`
with live progress display.

Usage:
    python sideload_runner.py [path_to_package.zip]
"""

import os
import sys
import time
import shutil
import subprocess

def find_tool(name):
    # Check PATH first
    w = shutil.which(name)
    if w and " " not in w:
        return w
    # Common locations without spaces to prevent 0xC0000142 on Windows
    candidates = [
        rf"D:\pt\{name}.exe",
        rf"C:\platform-tools\{name}.exe",
        rf"/usr/bin/{name}",
        rf"/opt/homebrew/bin/{name}",
    ]
    for c in candidates:
        if os.path.exists(c):
            return c
    return name

FASTBOOT = find_tool("fastboot")
ADB = find_tool("adb")

def check_devices():
    fb_out = subprocess.run([FASTBOOT, "devices"], capture_output=True, text=True).stdout
    adb_out = subprocess.run([ADB, "devices"], capture_output=True, text=True).stdout
    return fb_out, adb_out

def main():
    package_path = sys.argv[1] if len(sys.argv) > 1 else r"C:\platform-tools\vendor_boot_ota.zip"
    if not os.path.exists(package_path):
        print(f"[ERROR] Target package not found: {package_path}")
        print("Please provide a valid package path.")
        sys.exit(1)

    print("==================================================")
    print("   BMW HEAD UNIT RECOVERY SIDELOAD RUNNER         ")
    print("==================================================")
    print(f"Target Package: {package_path}")
    print(f"Size          : {os.path.getsize(package_path):,} bytes (~{os.path.getsize(package_path)/(1024*1024):.1f} MB)")
    print(f"Tools         : Fastboot={FASTBOOT}, ADB={ADB}\n")

    # Step 1: Detect current state
    print("[1/3] Detecting device state...")
    fb_out, adb_out = check_devices()

    if "fastboot" in fb_out:
        print("[FOUND] Device is in Fastboot mode.")
        print(">>> Sending command: fastboot reboot recovery...")
        r = subprocess.run([FASTBOOT, "reboot", "recovery"], capture_output=True, text=True)
        print(f"    Fastboot output: {r.stdout.strip() or r.stderr.strip()}")
    elif "sideload" in adb_out:
        print("[FOUND] Device is ALREADY in Sideload mode!")
    elif "recovery" in adb_out:
        print("[FOUND] Device is in Recovery main menu.")
        print(">>> Rebooting recovery to ensure 100% clean RAM / PageCache...")
        r = subprocess.run([ADB, "reboot", "recovery"], capture_output=True, text=True)
        print(f"    ADB output: {r.stdout.strip() or r.stderr.strip()}")
    else:
        print("[WAIT] Device not detected immediately. Waiting for connection...")

    # Step 2: Wait for Sideload mode
    print("\n[2/3] Waiting for SIDELOAD mode...")
    print("--------------------------------------------------")
    print(">>> НА ЭКРАНЕ МАГНИТОЛЫ ВЫБЕРИТЕ:              <<<")
    print(">>> 'Apply update from ADB'                     <<<")
    print(">>> (свайп вниз для выбора -> свайп вправо)    <<<")
    print("--------------------------------------------------")

    in_sideload = False
    start_time = time.time()
    while time.time() - start_time < 240:
        _, adb_out = check_devices()
        lines = adb_out.strip().splitlines()
        state = ""
        for line in lines[1:]:
            parts = line.split()
            if len(parts) >= 2:
                state = parts[1]
                break

        if state == "sideload":
            print(f"\n[OK] Device entered SIDELOAD mode!")
            in_sideload = True
            break
        elif state == "recovery":
            sys.stdout.write("R") # in recovery main menu
        else:
            sys.stdout.write(".") # waiting / booting
        sys.stdout.flush()
        time.sleep(1)

    if not in_sideload:
        print("\n[TIMEOUT] Device did not enter sideload mode within 240 seconds.")
        print("Please ensure the USB cable is firmly connected to USB 1.")
        sys.exit(1)

    # Step 3: Stream package
    print(f"\n[3/3] Starting: {ADB} sideload {package_path}")
    print("Streaming package blocks over USB...\n")

    proc = subprocess.Popen([ADB, "sideload", package_path], stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, bufsize=1)
    while True:
        char = proc.stdout.read(1)
        if not char and proc.poll() is not None:
            break
        if char:
            sys.stdout.write(char)
            sys.stdout.flush()

    proc.wait()
    print(f"\n[USB Stream complete] Process exit code: {proc.returncode}")
    if proc.returncode == 0:
        print("[CHECK SCREEN] File transfer finished. Check the head unit screen:")
        print("              - If it shows 'Installing update...', package is being written!")
        print("              - If it shows an error (e.g. signature error), installation failed.")
    else:
        print("[WARNING] Sideload ended with non-zero exit code. Check on-screen status.")

if __name__ == "__main__":
    main()
