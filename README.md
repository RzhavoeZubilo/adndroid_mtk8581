# BMW E90 Android Head Unit Dashboard Mod

Custom BMW E90 Instrument Cluster & Dashboard for Android Head Units (Unisoc UIS8581A / Carocean CAN).

![BMW E90 Amber Low Beam](https://raw.githubusercontent.com/denshkuropat/Android-BMW/main/docs/bmw_amber_low.png)

## Features
* **Authentic BMW E90 Dial Scaling**: Speedometer calibrated to 260 km/h with original font styling.
* **Dual Factory Themes**:
  - **Classic Amber**: Genuine BMW warm amber instrument lighting (#ff8000).
  - **Sport Red**: M-Sport aggressive red glow.
* **Secondary Telemetry Gauges**:
  - Fuel level (`55L`) integrated into speedometer dial.
  - Engine Coolant Temperature (`90℃`) integrated into tachometer dial.
* **Center Cockpit Display**:
  - Gear Indicator (`[P]`, `[R]`, `[N]`, `[D]`, `[M]`).
  - Cruising Range in km (`-> 450 km`).
  - Battery On-board Voltage (`14.2V`).
* **Road Projection Headlights**:
  - Dipped Beam (focused carpet of light with green telltale).
  - Main Beam (long-range high-intensity projection with blue telltale).
  - Perfectly aligned above the cockpit sill.
* **White Ambient Temperature & Localized Date**:
  - Ambient outdoor temperature displayed in crisp white font.
  - Formatted localized date (e.g. `пн 28 сент.`).

## Documentation & Architecture
See [MEMORY.md](MEMORY.md) for full reverse-engineering notes, CAN packet structures, layout coordinate analysis, Smali modifications, and build instructions.

## Quick Build & Install
```bash
# Build APK
apktool b -p work/framework work/decompiled/CaroceanCanZH -o work/test_build/CaroceanCanZH_standalone.apk

# Sign APK
jarsigner -keystore work/debug.keystore -storepass android -keypass android work/test_build/CaroceanCanZH_standalone.apk androiddebugkey

# Install
adb install -r work/test_build/CaroceanCanZH_standalone.apk
```
