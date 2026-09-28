package com.android.launcher2.uitl;

import android.content.ComponentName;
import android.content.Context;
import android.os.SystemProperties;
import android.provider.Settings;
import com.carocean.navicar.Navi;
import com.carocean.navicar.NaviStatus;
import com.carocean.navicar.util.ZHTDOEMManager;
import com.yecon.launcher1.R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class Utils {
    public static final String BASE_CUSTOM_ID = "K2_000_00_00";
    public static final String CAN_AIR_START_ACTIVITY = "com.can.air.AirActivity";
    public static final String LAUNCHER_ACTION_ALLAPP = "com.android.launcher.action.allapp";
    public static final String LC_CUSTOM_ID = "K2_000_00_01";
    public static final String MRW_CUSTOM_ID = "MRW_01";
    public static final String PERSIST_SYS_FUN_CAN = "persist.sys.car_icon";
    public static final String PERSIST_SYS_FUN_CAN_AIR = "persist.sys.car_airicon";
    public static final String YZG_CUSTOM_ID = "YZG_01";
    public static final String ZLH_CUSTOM_ID = "ZLH";
    public static String[] yeconAppFilterNames = {"com.phonelink.main", "com.phonelink.iplay", "com.iflytek.inputmethod", "com.adobe.reader", "com.didi365.miudrive.navi", "com.linkage.dfv.dfv_app", "com.baidu.input", "com.goodocom.gocsdk", "com.android.calculator2", "com.android.deskclock", "com.android.documentsui", "com.android.quicksearchbox", "com.unisoc.AVMDemo", "com.unisoc.bluelet", Navi.PackageName.CKX_TOOLS, Navi.PackageName.MCU_SERVER, Navi.PackageName.MONITOR_CENTER, Navi.PackageName.STATUS_PROVIDER, Navi.PackageName.CKX_VOLUME_ADJUST, Navi.PackageName.CKX_AUDIO, Navi.PackageName.RADIO, Navi.PackageName.CKX_GPS_TEST, "com.android.traceur", "com.sprd.logmanager", "com.autochips.bluetooth", Navi.PackageName.VIDEO, Navi.PackageName.MUSIC, Navi.PackageName.SETTINGS_PACKAGE_NAME};
    public static String[] lcAppFilterNames = {"tv.beemarket", "bubei.tingshu.hd", "com.txznet.music", "com.ankai.cardvr"};

    public static boolean isMaskClassName(ComponentName componentName) {
        if (componentName == null) {
            return false;
        }
        for (String str : yeconAppFilterNames) {
            if (componentName.getPackageName().equalsIgnoreCase(str)) {
                return true;
            }
        }
        if (componentName.getPackageName().startsWith("com.qualcomm.qti") || componentName.getPackageName().startsWith("com.quicinc.cne") || componentName.getPackageName().startsWith("codeaurora.bluetooth.hidtestapp") || componentName.getPackageName().startsWith("org.chromium.webview_shell")) {
            return true;
        }
        if (componentName.getClassName().equals(CAN_AIR_START_ACTIVITY) && !SystemProperties.getBoolean(PERSIST_SYS_FUN_CAN_AIR, false)) {
            return true;
        }
        if (ZHTDOEMManager.isLCCustomer()) {
            for (String str2 : lcAppFilterNames) {
                if (componentName.getPackageName().equalsIgnoreCase(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String getHourMinute(boolean z) {
        String str;
        Calendar calendar = Calendar.getInstance();
        int i = calendar.get(11);
        if (z) {
            str = "" + (i < 10 ? "0" + i : Integer.valueOf(i));
        } else {
            int i2 = i > 12 ? (i - 12) / 10 : i / 10;
            if (i > 12) {
                i -= 12;
            }
            str = String.valueOf(i2) + String.valueOf(i % 10);
        }
        int i3 = calendar.get(12);
        if (i3 < 10) {
            return str + ":0" + i3;
        }
        return str + ":" + i3;
    }

    public static String getCurrentWeek(Context context) {
        return context.getResources().getStringArray(R.array.weather_weekday)[Calendar.getInstance().get(7) - 1];
    }

    public static String getDate() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }

    public static String[] getHourMinute(Context context) {
        String str;
        String str2;
        String[] strArr = new String[2];
        Calendar calendar = Calendar.getInstance();
        int i = calendar.get(11);
        if (is24HourFormat(context)) {
            str = "" + (i < 10 ? "0" + i : Integer.valueOf(i));
        } else {
            int i2 = i > 12 ? (i - 12) / 10 : i / 10;
            if (i > 12) {
                i -= 12;
            }
            str = String.valueOf(i2) + String.valueOf(i % 10);
        }
        strArr[0] = str;
        int i3 = calendar.get(12);
        if (i3 < 10) {
            str2 = "0" + i3;
        } else {
            str2 = "" + i3;
        }
        strArr[1] = str2;
        return strArr;
    }

    public static int getHourMinute(Context context, String[] strArr) {
        String str;
        String str2;
        int i = -1;
        if (strArr != null && strArr.length >= 2) {
            Calendar calendar = Calendar.getInstance();
            int i2 = calendar.get(11);
            int i3 = i2 >= 12 ? 1 : 0;
            if (is24HourFormat(context)) {
                str = "" + (i2 < 10 ? "0" + i2 : Integer.valueOf(i2));
            } else {
                int i4 = i2 > 12 ? (i2 - 12) / 10 : i2 / 10;
                if (i2 > 12) {
                    i2 -= 12;
                }
                str = String.valueOf(i4) + String.valueOf(i2 % 10);
                i = i3;
            }
            strArr[0] = str;
            int i5 = calendar.get(12);
            if (i5 < 10) {
                str2 = "0" + i5;
            } else {
                str2 = "" + i5;
            }
            strArr[1] = str2;
        }
        return i;
    }

    public static boolean is24HourFormat(Context context) {
        String string = Settings.System.getString(context.getContentResolver(), "time_12_24");
        return string != null && string.equals("24");
    }

    public static Weather parseWeatherJson(String str) {
        Weather weather = null;
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iIntValue = Integer.valueOf(jSONObject.getString("code")).intValue();
            String string = jSONObject.getString("low");
            String string2 = jSONObject.getString("high");
            String string3 = jSONObject.getString("temp_unit");
            String string4 = jSONObject.getString("city");
            String string5 = jSONObject.getString("conditions");
            String string6 = jSONObject.getString("pm25");
            String string7 = jSONObject.getString("quality");
            Weather weather2 = new Weather();
            try {
                weather2.condition = string5;
                weather2.code = iIntValue;
                weather2.highTemp = string2;
                weather2.lowTemp = string;
                weather2.unit = string3;
                weather2.cityname = string4;
                weather2.pm25 = string6;
                weather2.quality = string7;
                return weather2;
            } catch (NullPointerException | JSONException unused) {
                weather = weather2;
                return weather;
            }
        } catch (NullPointerException | JSONException unused2) {
        }
    }

    public static boolean isBTConnected(Context context) {
        try {
            return NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), Navi.Status.SYS_BT_CONNECT_STATUS) == 1;
        } catch (NaviStatus.StatusNotFoundException e) {
            e.printStackTrace();
            return false;
        }
    }
}
