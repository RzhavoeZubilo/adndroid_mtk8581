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

#### Root Cause Analysis
1. **Bootloader Locking**:
   * The bootloader is locked (`androidboot.flash.locked=1`).
   * Bootloader verification checks Android Verified Boot (AVB 2.0).
   * In Fastboot, `fastboot flash system` or `fastboot flash super` fails because dynamic partitions reside inside `super` (`mmcblk0p33`), and standard bootloader fastboot does not support direct dynamic partition writing without custom tools.
2. **AVB Metadata Error (Result 6)**:
   * During the OTA 6.67 installation, the process was interrupted while modifying dynamic partitions.
   * `init` fails: `init: [libfs_avb]avb_slot_verify failed, result: 6`.
   * Result 6 is `AVB_SLOT_VERIFY_RESULT_ERROR_INVALID_METADATA`.
   * **Crucial clarification**: This is caused by incomplete/invalid dynamic partition metadata (`system`, `product`, `vendor` inside `super` `mmcblk0p33`), **not** a corrupted hash of `boot`. Flashing `boot.img` was necessary to restore a clean kernel and recovery environment, but error code 6 will persist until the dynamic partitions in `super` are fully rewritten.

---

## 2. Hardware & Architecture Constraints (The "Gotchas")

### Gotcha #1: "Apply update from SD card" CANNOT work via USB flash drive
* **Symptom**: In Recovery, selecting "Apply update from SD card" immediately displays:
  `Couldn't mount /storage/sdcard0`.
* **Root Cause**:
  * In `recovery.fstab`, `/storage/sdcard0` is hardcoded to `/dev/block/platform/soc/soc:ap-ahb/20300000.sdio/mmcblk1p1` (a physical MicroSD card slot on the PCB, often unpopulated).
  * In Recovery, the Linux kernel sets the USB controller (`musb-hdrc.0.auto`) strictly to **Device / Peripheral mode** (`sys.usb.config=adb`, `extcon-gpio usb device true`).
  * The USB port **cannot act as a USB Host** while in Recovery mode. A USB flash drive will NEVER be detected or mounted in Recovery.
* **Solution**: You **MUST** use USB communication over a USB-A to USB-A cable connected between PC and **USB Port 1** of the head unit (via Fastbootd or `adb sideload`).

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

### Gotcha #4: Sideload Aborts During "Verifying update package..." (FUSE/USB Instability)
* **Symptom**: When sideloading over USB:
  * Screen displays `Verifying update package...`.
  * Terminal streams blocks: in log 1 aborted at **18% (~340 MB)**, in log 2 aborted at **27% (~514 MB)**:
    `adb: failed to read command: No error`.
  * Device abruptly reboots back into Fastboot Mode without printing any error text on screen (/tmp/recovery.log is lost on reboot).
* **Critical Distinction: Local vs Sideload**:
  * When installing locally from eMMC (`/data/media/0/update.zip`), Recovery successfully verifies all 1.9 GB without issue. The 1.9 GB file size itself does **not** inherently exceed recovery capabilities.
  * The abort is **specific to `adb sideload` streaming via FUSE over USB**.
  * Because aborts occurred at 18% (~340 MB) and 27% (~514 MB), there is **no fixed size threshold**.
* **Probable Root Causes**:
  1. **FUSE Page Cache Buildup**: `Package::CreateMemoryPackage("/sideload/package.zip")` uses `mmap`. OpenSSL `SHA1_Update` accesses pages sequentially. In FUSE filesystems, every page fault retains clean pages in kernel page cache. With no swap enabled, memory pressure may trigger OOM-killer.
  2. **Hardware Watchdog Timeout**: In recovery, watchdog petting might not run during tight OpenSSL hashing loops. If transfer/hashing exceeds ~45–60 seconds, the Unisoc hardware watchdog forces a hard SoC reboot.
  3. **USB Physical / Power Instability**: Sustained high-speed data transfer over a USB-A to USB-A cable can suffer from ground bounce or VBUS drops, resetting the USB PHY (`musb-hdrc`).
* **Mitigations**:
  * **Path A (Preferred)**: Test **Fastbootd** first. If unlocked for writes, flash raw `.img` files directly, bypassing sideload, FUSE, and signature verification entirely.
  * **Path B**: Test lightweight package `vendor_boot_ota.zip` (~233 MB). It transfers in ~15 seconds and stays below both abort points.
  * **Path C**: Diagnose the crash using **`pstore` / `ramoops`** (`/sys/fs/pstore/console-ramoops-0`).
  * **Path D**: If large packages (`product`, `system`) abort, split partition blocks into sub-range OTAs.

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
  1. `system`: 1,650,896,896 bytes (Raw image: `system.img` ~1.65 GB; compressed: `system.new.dat.br` ~826 MB)
  2. `product`: 1,465,466,880 bytes (Raw image: `product.img` ~1.46 GB; compressed: `product.new.dat.br` ~653 MB)
  3. `vendor`: 429,965,312 bytes (Raw image: `vendor.img` ~430 MB; compressed: `vendor.new.dat.br` ~212 MB)

---

## 4. Recovery Playbook (Prioritized Order of Action)

### Prerequisites
* Connect PC to **USB Port 1** of the head unit via a reliable USB-A to USB-A cable.
* Ensure ADB/Fastboot are in `C:\platform-tools\` or `D:\pt\`.
* Ensure Python 3 with `brotli` and `openssl` in PATH.
* Baseline check: `boot.img` already flashed (`fastboot flash boot C:\platform-tools\boot.img`).

---

### Priority 1: Path A — Fastbootd Direct Flashing Test

In Recovery, `fastbootd` is integrated into the ramdisk:
```text
fastboot on /dev/usb-ffs/fastboot type functionfs (rw,relatime)
```
Unlike bootloader fastboot, **Fastbootd runs in userspace** and natively writes dynamic partitions directly to `/dev/block/mapper/*` without `adb sideload`, FUSE, or whole-file ZIP verification.

#### Bootloader Lock Nuance (`flash.locked=1`)
> **Crucial Reality Check**:  
> In standard AOSP, `fastbootd` checks device lock status and may reject flashing with `Flashing is not allowed on locked devices`. It is **NOT** proven that fastbootd will bypass the lock.  
> However, testing with a single command (`fastboot flash vendor vendor.img`) is completely non-destructive, fast, and will definitively settle whether fastbootd allows writes. If it succeeds, sideload is unnecessary!

#### Execution Steps:
1. **Switch to Fastbootd**:
   From Fastboot, run:
   ```cmd
   fastboot reboot fastboot
   ```
   *(Or in Recovery menu, select **«Enter fastboot»**).*
2. **Verify Userspace**:
   ```cmd
   fastboot getvar is-userspace
   ```
   Must return: `is-userspace: yes`.
3. **Run Decisive Test Command**:
   ```cmd
   fastboot flash vendor C:\platform-tools\vendor.img
   ```
   * **If OKAY**: Fastbootd is working! Complete unbrick immediately:
     ```cmd
     fastboot flash product C:\platform-tools\product.img
     fastboot flash system C:\platform-tools\system.img
     fastboot reboot
     ```
     -> Head unit unbrick complete!
   * **If Fails (`Flashing is not allowed on locked devices`)**: Fastbootd path is confirmed closed by lock. Proceed immediately to Priority 2 (Sideload).

---

### Priority 2: Path B — Modular Sideload (Stage 1: `vendor_boot_ota.zip`)

If Fastbootd is blocked by `flash.locked=1`, use modular OTA sideload packages.

#### Why Stage 1 First?
* `vendor_boot_ota.zip` is **233.6 MB** — well below both observed abort points (340 MB and 514 MB).
* Verification takes ~15 seconds, avoiding watchdog timeout and FUSE page cache exhaustion.
* It proves whether sideload works on this hardware at all.

#### Execution:
1. Run Sideload Runner:
   ```cmd
   python recovery_unbrick\scripts\sideload_runner.py C:\platform-tools\vendor_boot_ota.zip
   ```
2. On Head Unit screen:
   * Perform gesture: **Swipe Down** (move cursor) -> **Swipe Right** (select).
   * Select: **"Apply update from ADB"**.
3. Expected Outcome:
   * Verification completes in ~15 seconds.
   * `vendor`, `socko`, `boot` flash unconditionally.
   * Display shows `Install completed successfully!`.

#### Next Stages & Considerations:
* If Stage 1 succeeds, proceed to:
  * Stage 2: `python recovery_unbrick\scripts\sideload_runner.py C:\platform-tools\product_ota.zip` (653 MB)
  * Stage 3: `python recovery_unbrick\scripts\sideload_runner.py C:\platform-tools\system_ota.zip` (826 MB)
* **Realistic Outlook**: Both `product` (653 MB) and `system` (826 MB) are larger than the abort points (340 MB and 514 MB). If the abort cause is FUSE page cache, watchdog during hashing, or USB cable instability, these stages may also abort.
* **If an abort occurs**: Do NOT retry blindly. Proceed immediately to Priority 3 (`pstore` diagnostics).

---

### Priority 3: Post-Crash Diagnostics via `pstore` / `ramoops`

The Unisoc Linux kernel registers a hardware persistent RAM store (`ramoops`):
```text
[ 0.304000] pstore: Registered ramoops as persistent store backend
[ 0.304000] ramoops: attached 0x40000@0xfff80000, ecc: 0/0
```
This 256 KB memory region at `0xfff80000` survives warm reboots and preserves the kernel console log leading up to the reset.

#### How to Collect Crash Logs:
Immediately after the head unit drops back into Fastboot Mode:
1. Reboot to recovery:
   ```cmd
   fastboot reboot recovery
   ```
2. Attempt to read persistent logs before they are overwritten:
   ```cmd
   adb shell ls -la /sys/fs/pstore
   adb shell cat /sys/fs/pstore/console-ramoops-0
   adb shell cat /sys/fs/pstore/dmesg-ramoops-0
   ```
   > **Note on Permissions**: Recovery runs with `ro.secure=1` and `ro.debuggable=1`. Certain directories like `/data` are restricted, but `/sys/fs/pstore` is a kernel filesystem that is typically readable.
3. **Interpretation**:
   * **OOM-Killer**: `Out of memory: Kill process ... (recovery)` -> Confirms page cache exhaustion in FUSE.
   * **Watchdog bite**: `watchdog: BUG: soft lockup` or Unisoc hardware watchdog reset trace -> Confirms timeout during SHA-1 hashing.
   * **Empty / Clean log**: Points to a physical USB VBUS power sag or cable disconnect.

---

### Priority 4: Path D — Range-based Block Splitting (Contingency)

If Fastbootd is locked AND Sideload aborts on packages >340 MB:
* Instead of packaging the entire partition in one OTA, split `system.new.dat` / `product.new.dat` into smaller block ranges:
  * E.g., `system_part1_ota.zip` (blocks 0..150000, ~250 MB)
  * `system_part2_ota.zip` (blocks 150001..300000, ~250 MB)
  * `system_part3_ota.zip` (blocks 300001..max, ~250 MB)
* Each package performs `new <range>` for its slice, keeping each file under 250 MB and hashing duration under 15 seconds.

---

## 5. Script Inventory in `recovery_unbrick/scripts/`

| Script | Purpose |
| :--- | :--- |
| `extract_partition_img.py` | Extracts raw `.img` files (`vendor`, `product`, `system`) from `update.zip` using `brotli` and `sdat2img` for direct flashing via Fastbootd. |
| `sign_ota.py` | Signs any ZIP according to AOSP whole-file SignApk spec with testkey. Supports `--verify`. |
| `verify_ota.py` | Emulates AOSP `verifier.cpp` to validate footer, marker `0xFFFF`, DER offset `18`, and ASN.1 sequence `0x30`. |
| `build_modular_ota.py` | Extracts specified partitions from factory OTA and builds signed modular packages with per-partition metadata. |
| `sideload_runner.py` | Automates `fastboot reboot recovery` -> waits for `sideload` -> streams OTA package with progress bar. |
| `recovery_diag.py` | Read-only telemetry collector (dumps `dmesg`, `pstore`, `cat /proc/mounts`, `getprop`, storage listings). |
