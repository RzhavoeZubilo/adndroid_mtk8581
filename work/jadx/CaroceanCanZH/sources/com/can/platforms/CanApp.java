package com.can.platforms;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.carocean.navicar.McuServiceManager;

/* JADX INFO: loaded from: classes.dex */
public class CanApp extends Application {
    public static final String TAG = "CanApp_";
    private static Context mContext = null;
    public static boolean sIsFirstStart = true;

    public static Context getContext() {
        return mContext;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        mContext = this;
        CrashHandler.shareInstance(getApplicationContext());
        McuServiceManager.getInstance().initialize(this, null);
        Log.d(TAG, "canzh_version: 1.0.33.20240513");
    }
}
