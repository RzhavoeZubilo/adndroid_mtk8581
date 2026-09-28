package com.can.tool;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.RemoteException;
import com.can.assist.CanContant;
import com.can.assist.CanXml;
import com.can.platforms.AppConfigParser;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class FileOpt {
    public static final String CAN_APP_NAME = "CAN.apk";
    public static final String STRAPPVER = "AppVer:";
    public static final String STRCANBOX = "CANBox:";
    public static final String STRCANLIN = "Brand:";
    public static final String STRCANVER = "CANVer:";
    public static final String STRCARCFG = "Config:";
    public static final String STRCARTYPE = "Type:";
    public static final String STRSDPATH = "/storage/sdcard1";
    public static final String STRUSBAPATH = "/storage/usbotg/usbotg-sda";
    public static final String STRUSBBPATH = "/storage/usbotg/usbotg-sdb";
    public static final String STRVERCODE = "VerCode:";

    public static String getAppName(Context context) {
        return CAN_APP_NAME;
    }

    private static boolean IsExist(String str) {
        return new File(str).exists();
    }

    private static String getFilePath(String str, String str2, int i) {
        String str3 = AppConfigParser.ITEM_TIP;
        for (int i2 = 0; i2 < i; i2++) {
            if (IsExist(str + "/" + str2)) {
                str3 = str + "/" + str2;
            }
        }
        return str3;
    }

    public static String getPath(String str) {
        String filePath = getFilePath(STRSDPATH, str, 1);
        if (!filePath.isEmpty()) {
            return filePath;
        }
        String filePath2 = getFilePath(STRUSBAPATH, str, 10);
        return filePath2.isEmpty() ? getFilePath(STRUSBBPATH, str, 10) : filePath2;
    }

    public static String getAPKVerInfo(Context context, String str) {
        try {
            return context.getPackageManager().getPackageArchiveInfo(str, 1).versionName;
        } catch (Exception unused) {
            return AppConfigParser.ITEM_TIP;
        }
    }

    public static String getVerInfo(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return AppConfigParser.ITEM_TIP;
        }
    }

    public static int getVerCode(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0;
        }
    }

    public static int IsNeedUpdate(Context context) {
        String path = getPath(getAppName(context));
        if (path.isEmpty()) {
            return -1;
        }
        return !getAPKVerInfo(context, path).equals(getVerInfo(context)) ? 1 : 0;
    }

    public static void Install(Context context) {
        String path = getPath(CAN_APP_NAME);
        if (path.isEmpty()) {
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.parse("file://" + path), "application/vnd.android.package-archive");
        context.startActivity(intent);
    }

    public static HashMap<String, String> getCanAPPVer(Context context) {
        HashMap<String, String> map = new HashMap<>();
        String verInfo = getVerInfo(context);
        map.put(STRAPPVER, verInfo);
        map.put(STRVERCODE, String.valueOf(getVerCode(context)));
        try {
            verInfo = DataConvert.getStr(context, STRCANVER);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
        map.put(STRCANVER, verInfo);
        CanContant.CarType_Info attr = CanXml.getInstance(null).getAttr();
        if (attr != null) {
            map.put(STRCANBOX, attr.strBoxName);
            map.put(STRCANLIN, attr.strSeriesName);
            map.put(STRCARTYPE, attr.strTypeName);
            map.put(STRCARCFG, attr.strCfgName);
        }
        return map;
    }
}
