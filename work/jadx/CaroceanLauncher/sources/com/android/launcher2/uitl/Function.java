package com.android.launcher2.uitl;

import android.app.AppGlobals;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.SystemProperties;
import android.util.Log;
import com.carocean.navicar.Navi;
import com.carocean.navicar.PerSysDef;
import com.carocean.navicar.util.McuUtils;

/* JADX INFO: loaded from: classes.dex */
public class Function {
    public static final String ALLAPP_ACTIVITY = "com.yecon.carsetting.AllAppActivity";
    public static final String CALENDAR_ACTIVITY = "com.yecon.carsetting.Calendar";
    public static final String CAR_SETTING_TOUCHCALIBRATION_ACTIVITY = "com.yecon.carsetting.TouchCalibrationMainActivity";
    public static final String CHROME_PACKAGE_NAME = "com.android.chrome";
    public static final String CHROME_START_ACTIVITY = "com.google.android.apps.chrome.Main";
    public static final String DVR_PACKAGE_NAME = "com.anwensoft.cardvr";
    public static final String DVR_START_ACTIVITY = "com.anwensoft.cardvr.ui.MainActivity";
    public static final String EASYLINK_PACKAGE_NAME = "net.easyconn";
    public static final String EASYLINK_PROXY_PACKAGE_NAME = "com.yecon.carsetting";
    public static final String EASYLINK_PROXY_START_ACTIVITY = "com.yecon.carsetting.PhoneLinkActivity";
    public static final String EASYLINK_START_ACTIVITY = "net.easyconn.WelcomeActivity";
    private static final String TAG = "Function";
    public static final String USER_GUIDE_ACTIVITY = "com.yecon.carsetting.UserGuideActivity";
    public static final String WECHAT_PACKAGE_NAME = "com.txznet.webchat";

    public static void onCalibartion(Context context) {
    }

    public static void onCarlife(Context context) {
    }

    public static void onRadio(Context context) {
    }

    public static void onSetDatetime(Context context) {
    }

    public static void onSetWeatherCity(Context context) {
    }

    public static void onChrome(Context context) {
        startActivity(context, context.getPackageManager().getLaunchIntentForPackage(CHROME_PACKAGE_NAME));
    }

    public static void onBT(Context context) {
        if (SystemProperties.getInt("persist.sys.original_bt", 0) == 0 || SystemProperties.getInt(PerSysDef.PERSYS_LT9211_ENABLE, 0) == 1) {
            startActivity(context, context.getPackageManager().getLaunchIntentForPackage("com.autochips.bluetooth"));
        } else {
            startOriginalBT();
        }
    }

    public static void onMusic(Context context) {
        startActivity(context, context.getPackageManager().getLaunchIntentForPackage(SystemProperties.get(PerSysDef.PERSYS_MUSIC_PACKAGE, Navi.PackageName.MUSIC)));
    }

    public static void onVideo(Context context) {
        startActivity(context, context.getPackageManager().getLaunchIntentForPackage(Navi.PackageName.VIDEO));
    }

    public static void onZLink(Context context) {
        startActivity(context, context.getPackageManager().getLaunchIntentForPackage(Navi.PackageName.CAR_PLAY_ZJ));
    }

    public static void onNavigation(Context context) {
        startActivity(context, context.getPackageManager().getLaunchIntentForPackage(SystemProperties.get(PerSysDef.PERSYS_NAVI_PACKAGE)));
    }

    public static void onSettings(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.carocean.settings", "com.carocean.settings.CustomSettingActivity");
        startActivity(context, intent);
    }

    public static void onCarMedia(Context context) {
        startCarMedia();
    }

    public static void onCarInfo(Context context) {
        Intent intent = new Intent();
        intent.setClassName(Navi.PackageName.CKX_CAR_INFO, "com.can.ui.CarInfo");
        startActivity(context, intent);
    }

    public static boolean startActivity(Context context, Intent intent) {
        return startActivity(context, intent, true);
    }

    public static boolean startActivity(Context context, Intent intent, boolean z) {
        if (context == null || intent == null || context.getPackageManager().resolveActivity(intent, 65536) == null) {
            return false;
        }
        if (z) {
            intent.addFlags(268435456);
        }
        context.startActivity(intent);
        return true;
    }

    public static boolean isAppInstalled(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    private static void startCarMedia() {
        if (SystemProperties.getInt(PerSysDef.PERSYS_LT9211_ENABLE, 0) == 0) {
            byte[] bArr = {-94, 1, (byte) SystemProperties.getInt("persist.sys.host_type", 0), 0};
            Log.i(TAG, "send host type: " + (bArr[2] & 255));
            McuUtils.getInstance().sendSettingCmd(bArr);
        } else {
            Intent intent = new Intent();
            intent.setPackage(Navi.PackageName.RERA_CAMERA);
            intent.setAction(Navi.Action.ACTION_ORIGINAL_CAMERA);
            intent.putExtra(Navi.Action.CMD_CODE, Navi.Action.CMD_START_SOURCE);
            AppGlobals.getInitialApplication().sendBroadcast(intent);
        }
    }

    private static void startOriginalBT() {
        McuUtils.getInstance().sendSettingCmd(new byte[]{-94, 1, (byte) SystemProperties.getInt("persist.sys.host_type", 0), 1});
    }

    public static void onLCDvr(Context context) {
        McuUtils.getInstance().sendSettingCmd(new byte[]{-94, 4, (byte) SystemProperties.getInt("persist.sys.host_type", 0), 0});
    }

    public static void onAUX() {
        McuUtils.getInstance().sendSettingCmd(new byte[]{-94, 6, (byte) SystemProperties.getInt("persist.sys.host_type", 0), 0});
    }

    public static void openRear360() {
        McuUtils.getInstance().sendSettingCmd(new byte[]{-94, 5, (byte) SystemProperties.getInt("persist.sys.host_type", 0), 0});
    }
}
