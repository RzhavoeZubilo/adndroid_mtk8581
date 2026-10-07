# Unisoc UIS8581A Head Unit: Unbrick & Recovery Deep Dive (Agent's Guide)

> **Audience**: AI Agents (Antigravity, Claude, Codex), Reverse Engineers, and Embedded Android Developers.  
> **Target SoC**: Unisoc / Spreadtrum UIS8581A (8-core A55, `uis8581a2h10_Automotive`)  
> **OS Version**: Android 10 (Kernel 4.14.133, `userdebug/test-keys`)  
> **Head Unit**: ZONGHENGTD / ZLH BMW E90 1920x720 12.3" Android Display  

---

## 1. Incident Overview & Problem Statement

### The Symptom
The head unit is stuck in an infinite bootloop to **Fastboot Mode**:
* The screen displays the BMW logo and `fastboot mode` in small red/white text.
* Command line reports: `0123456789ABCDEF fastboot`.
* Normal reboot (`fastboot reboot` or power cycle) returns immediately to Fastboot Mode.

### Root Cause Analysis
1. **Bootloader Locking**:
   * The bootloader is locked (`androidboot.flash.locked=1`).
   * Bootloader verification checks Android Verified Boot (AVB 2.0).
   * In Fastboot, `fastboot flash system` or `fastboot flash super` fails because dynamic partitions reside inside `super` (`mmcblk0p33`), and fastboot does not support direct dynamic partition writing without custom tools.
2. **Dynamic Partitions Incomplete State**:
   * During an OTA 6.67 installation, the process was interrupted.
   * Dynamic partitions (`system`, `product`, `vendor`) inside `super` were left in an unbootable state.
   * `init` fails to verify or mount `/system`, tripping AVB slot verification (`init: [libfs_avb]avb_slot_verify failed, result: 6`), which forces an immediate fallback into Fastboot mode.

---

## 2. Hardware & Architecture Constraints (The "Gotchas")

### Gotcha #1: "Apply update from SD card" CANNOT work via USB flash drive
* **Symptom**: In Recovery, selecting "Apply update from SD card" immediately displays:
  `Couldn't mount /storage/sdcard0`.
* **Root Cause**:
  * In `recovery.fstab`, `/storage/sdcard0` is hardcoded to `/dev/block/platform/soc/soc:ap-ahb/20300000.sdio/mmcblk1p1` (a physical MicroSD card slot on the PCB, often unpopulated).
  * In Recovery, the Linux kernel sets the USB controller (`musb-hdrc.0.auto`) strictly to **Device / Peripheral mode** (`sys.usb.config=adb`, `extcon-gpio usb device true`).
  * The USB port **cannot act as a USB Host** while in Recovery mode. A USB flash drive will NEVER be detected or mounted in Recovery.
* **Solution**: You **MUST** use `adb sideload` over a USB-A to USB-A cable connected between PC and **USB Port 1** of the head unit.

### Gotcha #2: Fastboot/ADB Windows DLL Crash (`0xC0000142`)
* **Symptom**: Fastboot commands crash with `STATUS_DLL_INIT_FAILED (0xC0000142)`.
* **Root Cause**: Windows paths with spaces (e.g. `D:\BMW Dash\platform-tools`) break DLL dynamic loading for `AdbWinApi.dll`.
* **Solution**: Always use a space-free path: `C:\platform-tools\` or `D:\pt\`.

### Gotcha #3: Whole-File PKCS#7 Signature DER Offset Formula
* **Symptom**: Sideload immediately aborts at 0% with:
  `E:Could not find signature DER block`  
  `E:Signature verification failed`  
  `E:error: 21`
* **Root Cause**:
  In AOSP Recovery `verifier.cpp`, whole-file verification reads the 6-byte footer from the ZIP EOCD comment:
  ```cpp
  sig_len, marker, comment_len = unpack("<HHH", footer)
  ```
  It locates the start of the DER signature block at:
  ```cpp
  p = comment + (comment_len - sig_len);
  ```
  The first byte at `p` **must be `0x30`** (ASN.1 SEQUENCE).
  In SignApk:
  * `prefix` = `b"signed by SignApk\0"` (18 bytes).
  * `sig_block_len` = `der_len + 6`.
  * `total_comment_len` = `len(prefix) + sig_block_len`.
  * The footer stores `sig_block_len` in the `sig_len` field.
  * Therefore: `comment_len - sig_len = (18 + sig_block_len) - sig_block_len = 18`.
  * Byte at offset 18 is byte 0 of the DER block (`0x30`)!
  * If a script erroneously includes the prefix in `sig_len`, offset becomes 6 (landing on ASCII space `0x20`), causing instant verification rejection.
* **Solution**: Use [`recovery_unbrick/scripts/sign_ota.py`](file:///D:/BMW%20Dash/adndroid_mtk8581/recovery_unbrick/scripts/sign_ota.py) and verify with [`verify_ota.py`](file:///D:/BMW%20Dash/adndroid_mtk8581/recovery_unbrick/scripts/verify_ota.py).

### Gotcha #4: The 514 MB Verification Threshold (Why 1.9 GB Reboots at 27%)
* **Symptom**: When sideloading a full 1.9 GB OTA:
  * Screen displays `Verifying update package...`.
  * Terminal streams: `serving: 'update.zip' (~27%) adb: failed to read command: No error`.
  * Device abruptly reboots back into Fastboot Mode without printing any error.
* **Root Cause**:
  * In Android 10 Recovery `install.cpp`, packages are opened via `Package::CreateMemoryPackage("/sideload/package.zip")`.
  * `CreateMemoryPackage` uses `mmap` to map the FUSE-backed package.
  * During `verify_package()`, OpenSSL `SHA1_Update` reads sequentially through the `mmap` address space to compute the SHA-1 digest over the signed region.
  * Reading via `mmap` causes the Linux kernel to allocate and retain pages in the **page cache**.
  * The device RAM has ~2 GB available in `Normal zone`. At ~514 MB (27% of 1.9 GB):
    1. Kernel page cache pressure triggers Low-Memory Killer / OOM killer, killing `recovery`; OR
    2. The hardware Watchdog timer (Unisoc hardware watchdog ~45-60s) expires because the CPU is tied up in SHA-1 hashing without resetting `/dev/watchdog`.
  * In either case, the device undergoes an immediate hardware reboot into Fastboot Mode.
* **Solution**: The update package **MUST** be modularized into packages **under ~250–650 MB**.

---

## 3. Storage & Partition Topology

### Physical eMMC Layout (`/dev/block/platform/soc/soc:ap-ahb/20600000.sdio/by-name/`)
* `mmcblk0boot0` (4 MiB): `spl` (U-Boot Secondary Program Loader)
* `mmcblk0boot1` (4 MiB): `spl_bk` (Backup SPL)
* `mmcblk0rpmb` (4 MiB): RPMB secure storage
* `mmcblk0p31`: `boot` (22 MB kernel + ramdisk) — can be flashed directly via `fastboot flash boot boot.img`.
* `mmcblk0p33`: `super` (Dynamic partitions container).
* `mmcblk0p34`: `cache` (Recovery logs and wipe cache).
* Other physical partitions: `uboot`, `trustos`, `sml`, `teecfg`, `dtbo`, `socko` (kernel modules), `log`.

### Dynamic Partitions Layout (inside `super`)
* **Group**: `group_unisoc` (Maximum size: `4,299,161,600` bytes)
* **Partitions**:
  1. `system`: 1,650,896,896 bytes (Image: `system.new.dat.br` ~826 MB)
  2. `product`: 1,465,466,880 bytes (Image: `product.new.dat.br` ~653 MB)
  3. `vendor`: 429,965,312 bytes (Image: `vendor.new.dat.br` ~212 MB)

---

## 4. Unbrick Step-by-Step Procedure

### Prerequisites
* Connect PC to **USB Port 1** of the head unit via a reliable USB-A to USB-A cable.
* Ensure ADB/Fastboot are in `C:\platform-tools\` or `D:\pt\`.
* Ensure Python 3 with `openssl` in PATH.

### Phase 1: Boot Partition Baseline
If not already flashed:
```cmd
fastboot flash boot C:\platform-tools\boot.img
```
*(Verified OKAY: 22 MB flashed cleanly).*

### Phase 2: Stage 1 Modular Flash (`vendor_boot_ota.zip`)
1. Build & Verify package (if not already in `C:\platform-tools\`):
   ```cmd
   python D:\BMW Dash\adndroid_mtk8581\recovery_unbrick\scripts\build_modular_ota.py C:\platform-tools\update.zip --preset vendor_boot C:\platform-tools\
   ```
   * Result: `vendor_boot_ota.zip` (~233.6 MB).
   * Contains: `vendor` (212 MB), `socko` (8.3 MB), `boot` (22 MB), `dtbo` (2 KB).
2. Execute Sideload Runner:
   ```cmd
   python D:\BMW Dash\adndroid_mtk8581\recovery_unbrick\scripts\sideload_runner.py C:\platform-tools\vendor_boot_ota.zip
   ```
3. On the Head Unit screen:
   * Perform gesture: **Swipe Down** (move cursor) -> **Swipe Right** (select).
   * Select: **"Apply update from ADB"**.
4. Expected Outcome:
   * Verification completes in ~15 seconds without watchdog/RAM abort.
   * `vendor`, `socko`, `boot` flash unconditionally.
   * Display shows `Install completed successfully!`.

### Phase 3: Stage 2 & Stage 3 Modular Flash
Repeat Phase 2 for remaining dynamic partitions:
* **Stage 2**: `product_ota.zip` (`--preset product` -> 653 MB).
* **Stage 3**: `system_ota.zip` (`--preset system` -> 826 MB).

### Phase 4: Final First-Boot
* Select **"Reboot system now"** in Recovery, or run:
  ```cmd
  fastboot reboot
  ```
* First boot takes 2–4 minutes to build Dalvik/ART caches.

---

## 5. Script Inventory in `recovery_unbrick/scripts/`

| Script | Purpose |
| :--- | :--- |
| `sign_ota.py` | Signs any ZIP according to AOSP whole-file SignApk spec with testkey. Supports `--verify`. |
| `verify_ota.py` | Emulates AOSP `verifier.cpp` to validate footer, marker `0xFFFF`, DER offset `18`, and ASN.1 sequence `0x30`. |
| `build_modular_ota.py` | Extracts specified partitions from factory OTA and builds signed, memory-safe modular packages. |
| `sideload_runner.py` | Automates `fastboot reboot recovery` -> waits for `sideload` -> streams OTA package with progress bar. |
| `recovery_diag.py` | Read-only telemetry collector (dumps `dmesg`, `cat /proc/mounts`, `getprop`, storage listings). |
