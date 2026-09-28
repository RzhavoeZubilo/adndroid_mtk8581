package com.android.launcher2;

import android.app.ActivityManager;
import android.content.Context;
import android.util.Log;
import com.android.internal.util.ArrayUtils;
import com.carocean.navicar.Navi;
import com.yecon.launcher1.BuildConfig;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class killApps {
    static final String TAG = "killApps";
    static final String[] killOneWhiteList = {BuildConfig.APPLICATION_ID, Navi.PackageName.CKX_CAR_INFO, "com.autonavi.amapauto", "com.yecon.fmradio", Navi.PackageName.MUSIC, Navi.PackageName.VIDEO, "cn.kuwo.kwmusiccar", "cn.kuwo.kwmusiccas", "com.wedrive.android.welink", "com.didi365.miudrive.navi", "com.yecon.meminfo", "com.autochips.bluetooth", "com.ankai.cardvr", "com.carocean.settings", "com.hcn.mcuupgrade", "net.easyconn", "com.txznet.music", "com.tencent.qqmusic", "com.kugou.android", "com.autochips.carplayapp", "com.ivicar.avm", "com.android.permissioncontroller", "com.txznet.smartadapter", "com.txznet.txz", "com.txznet.aipal", Navi.PackageName.CAR_PLAY_ZJ, "com.spotify.music", "com.huawei.hicar"};
    private static String[] MAP_PKG_NAME_LIST = {"navi", "mapbarmap", "sygic", "cld", "migo", "obile.mainframe", "map", "igo", "papago", "kingwaytek", "com.waze"};
    public static ArrayList<String> BACKGROUND_WHITE_LIST = new ArrayList<>();

    public static void killOneProcess(Context context, String str) {
        if (str == null || context == null || str.equals("")) {
            return;
        }
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        int i = 0;
        int i2 = 0;
        while (true) {
            String[] strArr = killOneWhiteList;
            if (i2 >= strArr.length) {
                while (true) {
                    String[] strArr2 = MAP_PKG_NAME_LIST;
                    if (i < strArr2.length) {
                        if (str.contains(strArr2[i])) {
                            Log.i(TAG, "launcher2---do not kill this map app, name=" + str);
                            return;
                        }
                        i++;
                    } else if (ArrayUtils.contains(BACKGROUND_WHITE_LIST, str)) {
                        Log.i(TAG, "launcher2---do not kill this BACKGROUND_WHITE_LIST app, name=" + str);
                        return;
                    } else {
                        if (activityManager == null || str.length() <= 0) {
                            return;
                        }
                        activityManager.forceStopPackage(str);
                        Log.i(TAG, "launcher2---has killed, name=" + str);
                        return;
                    }
                }
            } else {
                if (str.contains(strArr[i2])) {
                    Log.i(TAG, "launcher2---do not kill this whitelist app, name=" + str);
                    return;
                }
                i2++;
            }
        }
    }
}
