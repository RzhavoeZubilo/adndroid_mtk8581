# BMW E90 Android Head Unit (Carocean / UIS8581) Dashboard Project Memory

> **Target Audience**: Future AI agents, developers, and maintainers working on this codebase.  
> **Last Updated**: 2026-09-28  
> **Target Platform**: Android Head Unit (Unisoc UIS8581A / 8581 SoC), Android 10  
> **Target Screen**: 1920x720, 240 dpi (`hdpi`, density factor `1.5`, viewport `1280dp x 480dp`)

---

## 1. Project Overview & Mission

This project customizes and enhances the OEM dashboard application (`CaroceanCanZH.apk` / `com.can.activity`) for Android head units installed in **BMW 3-Series (E90 / E91 / E92 / E93)** vehicles.

### Key Objectives Achieved:
1. **BMW E90 Gauge Scaling**: Replaced the unrealistic 330 km/h speedometer dial layout with authentic E90 scale (0 to 260 km/h).
2. **Symmetrical Secondary Gauges**:
   - **Left Dial (Speedometer)**: Fuel Level in Liters (`55L`) with monochrome white fuel pump icon.
   - **Right Dial (Tachometer)**: Engine Coolant Temperature (`90℃`) with monochrome white thermometer icon.
3. **Authentic E90 Center Cluster**:
   - Gear indicator: `[D]`, `[P]`, `[N]`, `[R]`, `[M1-M6]` in genuine BMW font style.
   - Cruising range: `-> 450 km` with monochrome white fuel icon.
   - Battery voltage: `14.2V` with monochrome white battery icon.
4. **Header Information**:
   - Ambient outdoor temperature: pure white font (`@color/white`, `+20℃`).
   - Localized date format: e.g., `"пн 28 сент."` in muted silver `#c0c0c0`.
5. **Headlight Road Projection**:
   - Dipped (Low) Beam: Focused carpet of light forward on the asphalt + green low-beam telltale.
   - High Beam: Extended high-intensity beam reaching the horizon + blue high-beam telltale.
   - **Positioning**: Fixed vertical margin (`marginTop="296.0dp"`) so the beam is strictly **above** the horizontal lower console sill line (`Y = 622px` / `414.7dp`), preserving a clean dark road gap above the odometer.
6. **Dual Visual Themes**:
   - **Classic Amber** (`carinfo_white.xml`): BMW classic warm amber/orange (#ff8000) instrument lighting.
   - **Sport Red** (`carinfo_red.xml`): BMW M-Sport red glow.

---

## 2. System Architecture & Environment

### Hardware & Display Specifications
* **Screen Resolution**: 1920 × 720 px.
* **Density**: 240 dpi (`hdpi`, density `1.5`).
* **Density-Independent Canvas**: `1280dp` width × `480dp` height.
* **Layout Directory**: `res/layout-sw480dp-hdpi-1920x720/` (also mirrored in `layout-sw480dp-hdpi-1600x720/`, `layout-sw480dp-mdpi/`, and fallback `layout/`).

### Core Applications in Firmware
* **`CaroceanCanZH.apk`** (`work/decompiled/CaroceanCanZH`):
  - Main application package: `com.can.activity`
  - Main Dashboard Activity: `com.can.ui.CarInfo`
  - CAN receiver service: communicates with MCU over serial/IPC.
* **`CaroceanLauncher`** (`work/decompiled/CaroceanLauncher_*`):
  - Main vehicle launcher with widgets and app selector.
* **`CKXSettings`** (`work/decompiled/CKXSettings_res`):
  - Vehicle CAN bus protocol selector and car model settings.

---

## 3. Reverse-Engineered CAN Protocol & Smali Logic

All dashboard rendering is orchestrated by `com/can/ui/CarInfo.smali`.

### CAN Packet Types Handled in `updateCarInfo(I[B)`
* **Packet `0x12` (`18` dec)**: Speed, Engine RPM, Gear, Fuel level.
  - Byte 0: Light telltale bits (bit 6: low beam, bit 5: high beam, etc.).
  - Byte 1..2: Speedometer value.
  - Byte 3..4: Tachometer RPM value.
  - Byte 5: Gear state.
* **Packet `0x18`**: Lighting states, indicators, fog lights, brake warning.
* **Packet `0x24` / `0x32`**: Vehicle sensors, door open states, coolant temperature, battery voltage.

### Custom Smali Injections
1. **`updateExtraGauges()`** (`.method private updateExtraGauges()V`):
   - Reads coolant temperature, battery voltage, cruising range from CAN cache or demo properties.
   - Updates `mCoolantTemp` (`@id/h2s_txt_coolant_temp`), `mBatteryVol` (`@id/h2s_txt_battery_vol`), and `mCruisingRange` (`@id/h2s_txt_cruising_range`).
   - **Crucial Hook Point**: Called at the very end of `initView(Landroid/view/View;)V` right before `return-void`. This ensures all ViewPager page transitions properly rebind and update views.
2. **`applyDemoState()`** (`.method private applyDemoState()V`):
   - Executed when `persist.sys.bmw.demo` is set to `1`.
   - Injects simulated driving data: `120 km/h`, `3200 RPM`, `55L`, `90℃`, `14.2V`, `450 km`, `[D]`, `185420 km`.
   - Reads `persist.sys.bmw.beam` to switch headlight beam views (`mBigLedZlh`, `mBigLedFarZlh`) and telltales.

---

## 4. System Properties for Live Testing & Demo Mode

You can control and test the dashboard on an emulator or live head unit without CAN hardware:

```bash
# Enable Demo Mode
adb shell setprop persist.sys.bmw.demo 1

# Select Theme: 0 = Classic Amber, 1 = Sport Red
adb shell setprop persist.sys.bmw.page 0

# Control Headlights: low = Dipped Beam, high = Main Beam, off = Lights Off
adb shell setprop persist.sys.bmw.beam low
adb shell setprop persist.sys.bmw.beam high
adb shell setprop persist.sys.bmw.beam off

# Restart Activity to apply property changes immediately
adb shell am force-stop com.can.activity
adb shell am start -n com.can.activity/com.can.ui.CarInfo
```

---

## 5. UI Layout Structure & Coordinates

### Key Resource Files
* `work/decompiled/CaroceanCanZH/res/layout-sw480dp-hdpi-1920x720/carinfo_white.xml` (Classic Amber layout)
* `work/decompiled/CaroceanCanZH/res/layout-sw480dp-hdpi-1920x720/carinfo_red.xml` (Sport Red layout)

### Key View IDs & Attributes
| View ID | Type | Description | Key Attributes |
| :--- | :--- | :--- | :--- |
| `carinfo_outtemp` | `TextView` | Ambient outdoor temperature | `textColor="@color/white"`, `textSize="18.0sp"`, located in top-center header |
| `carinfo_week` | `TextView` | Localized date | `textColor="#c0c0c0"`, formatted as `"пн 28 сент."` |
| `carinfo_time` | `TextView` | Digital Clock | `textColor="@color/white"`, `textSize="38.0sp"` |
| `carinfo_big_led_zlh` | `ImageView` | Low Beam Road Projection | `layout_marginTop="296.0dp"`, `src="@drawable/light_on_zlh"` |
| `carinfo_big_led_far_zlh` | `ImageView` | High Beam Road Projection | `layout_marginTop="296.0dp"`, `src="@drawable/light_on_far_zlh"` |
| `h2s_txt_coolant_temp` | `TextView` | Coolant Temp Display | `textColor="@color/white"`, `textSize="26.0sp"`, right dial |
| `carinfo_gas` | `TextView` | Fuel Level Display | `textColor="@color/white"`, `textSize="26.0sp"`, left dial |
| `carinfo_gears_text` | `TextView` | Gear Indicator | `textSize="32.0sp"`, centered between dials |
| `h2s_txt_cruising_range`| `TextView` | Cruising Range | `textColor="@color/white"`, center cluster |
| `h2s_txt_battery_vol` | `TextView` | Battery Voltage | `textColor="@color/white"`, center cluster |

### Headlight Beam Geometry Note:
* Display height is `720px` (`480dp`).
* Bottom sill horizontal divider line sits at `Y = 622px` (`414.7dp`).
* At `marginTop="296.0dp"`, the road beam ends at `Y ≈ 608px` (`405.3dp`), leaving a clean ~14px dark asphalt gap above the sill line. **Do NOT increase `marginTop` past `300dp`**, or it will overlap the line.

---

## 6. Build, Sign & Deploy Guide

### Prerequisites
* Java JDK (jarsigner): `/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home/bin/jarsigner`
* Apktool: `apktool` (version 3.0+)
* ADB: `/Users/densh/Library/Android/sdk/platform-tools/adb`
* Keystore: `work/debug.keystore` (password: `android`, key: `androiddebugkey`)
* Framework: `work/framework/1.apk`

### Rebuilding & Deploying `CaroceanCanZH.apk`
```bash
# 1. Build modified APK with framework dependency
apktool b -p work/framework work/decompiled/CaroceanCanZH -o work/test_build/CaroceanCanZH_standalone.apk

# 2. Sign APK
/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home/bin/jarsigner \
  -keystore work/debug.keystore \
  -storepass android \
  -keypass android \
  work/test_build/CaroceanCanZH_standalone.apk androiddebugkey

# 3. Install on device / emulator
/Users/densh/Library/Android/sdk/platform-tools/adb -s emulator-5554 install -r work/test_build/CaroceanCanZH_standalone.apk

# 4. Restart dashboard
/Users/densh/Library/Android/sdk/platform-tools/adb -s emulator-5554 shell am force-stop com.can.activity
/Users/densh/Library/Android/sdk/platform-tools/adb -s emulator-5554 shell am start -n com.can.activity/com.can.ui.CarInfo
```

---

## 7. Useful Diagnostic Commands

```bash
# Take screenshot from connected device
adb exec-out screencap -p > screen.png

# Inspect running CAN service logs
adb logcat -s CarInfo:V CanService:V

# Check system properties
adb shell getprop | grep bmw
```

---

## 8. Roadmap & Pending Tasks

1. **Physical Vehicle CAN Validation**: Connect to actual BMW E90 CAN bus (via OBD-II / CanBox) and verify real coolant temperature and fuel level telemetry.
2. **Optional Custom Gauges**: Potential addition of Oil Temperature gauge (vital for BMW N52/N54/N55 engines) if broadcast by the CAN adapter.
3. **Launcher Integration**: Syncing styling with `CaroceanLauncher` widgets to match the E90 amber/red aesthetic across the entire system.
