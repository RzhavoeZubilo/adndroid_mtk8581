# Unisoc UIS8581A Head Unit: Unbrick & Recovery Deep Dive (Agent's Guide)

> **Audience**: AI Agents (Antigravity, Claude, Codex), Reverse Engineers, and Embedded Android Developers.  
> **Target SoC**: Unisoc / Spreadtrum UIS8581A (8-core A55, `uis8581a2h10_Automotive`)  
> **OS Version**: Android 10 (Kernel 4.14.133, `userdebug/test-keys`)  
> **Head Unit**: ZONGHENGTD / ZLH BMW E90 1920x720 12.3" Android Display  
> **Resolution Status**: **UNBRICKED & OPERATIONAL** (Successfully booted Android 10 build 21210 / OTA 6.67).

---

## 1. Incident Overview & Problem Statement

### The Symptom
The head unit was stuck in an infinite bootloop to **Fastboot Mode**:
* The screen displayed the BMW logo and `fastboot mode` in small red/white text.
* Command line reported: `0123456789ABCDEF fastboot`.
* Normal reboot (`fastboot reboot` or power cycle) returned immediately to Fastboot Mode.

#### Root Causes Identified & Solved
1. **Bootloader Locking (`flash.locked=1`)**:
   * Bootloader fastboot rejects writing to dynamic partitions in `super`.
   * Fastbootd in userspace enforces device lock rules and rejects direct writes.
   * `adb sideload` in Recovery is the **sole authorized entry point** on locked devices.
2. **AVB Metadata Error (Result 6)**:
   * `init: [libfs_avb]avb_slot_verify failed, result: 6` (`AVB_SLOT_VERIFY_RESULT_ERROR_INVALID_METADATA`).
   * Caused by incomplete dynamic partitions inside `super` (`mmcblk0p33`). Resolved by writing 100% of blocks for `vendor`, `product`, and `system`.
3. **Recovery FUSE Buffer Exhaustion & Watchdog Limits (>470 MB)**:
   * Sideload packages >470 MB abort at 18–27% due to FUSE PageCache RAM exhaustion and lack of CAN-bus watchdog petting.
   * Solved by slicing dynamic partitions into block ranges under ~300 MB each.
4. **Whole-File Signature Incompatibilities in SignApk**:
   * Solved OpenSSL S/MIME attribute corruption with `-noattr`.
   * Solved digest range mismatch by hashing strictly `length - comment_len - 2`.

---

## 2. Dynamic Partition Slice Architecture

```
super partition (~4.3 GB)
│
├── vendor (429,965,312 B / 104,972 blocks)
│   └── Flashed via vendor_boot_ota.zip (244 MB) ────► 100% Status 0
│
├── product (1,465,466,880 B / 357,780 blocks)
│   ├── Part 1: blocks 0..180000 (319.2 MB) ────────► 100% Status 0
│   └── Part 2: blocks 180000..357780 (298.4 MB) ───► 100% Status 0
│
└── system (1,650,896,896 B / 402,027 blocks)
    ├── Part 1: blocks 0..200000 (315.8 MB) ────────► 100% Status 0
    ├── Part 2: blocks 200000..300000 (173.1 MB) ───► 100% Status 0
    └── Part 3: blocks 300000..402027 (295.8 MB) ───► 100% Status 0
```

---

## 3. Operational Rules for Recovery Agents

1. **Reboot Recovery Between Large Sideloads**:
   Always issue `adb reboot recovery` or `fastboot reboot recovery` before streaming the next package. Never attempt two 300 MB packages in the same recovery session, as Linux PageCache does not release mapped FUSE pages.
2. **Beat the Watchdog Timer (<45s)**:
   On the bench or in a car with ignition on (engine stopped), the MCU watchdog triggers in 55–60 seconds if idle. Ensure the user selects `Apply update from ADB` within 5–10 seconds of entering Recovery.
3. **Verify via `last_install`**:
   Never trust `adb sideload` return code alone. Verify hardware writes via ADB root:
   ```cmd
   adb shell cat /tmp/last_install
   ```
   Must contain `1` (Success) and non-zero `bytes_written_dm-0`.
4. **Automatic Rescue Party Wipe**:
   When all dynamic partitions are written, AVB verifies metadata successfully. The system automatically performs `Formatting data` and boots cleanly into Android 10.
