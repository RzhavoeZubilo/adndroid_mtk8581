package com.carocean.navicar.util;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class PkgUtil {
    private static final String TAG = "PkgUtil";

    public static boolean startPackage(Context context, String str) {
        if (context == null || str == null) {
            Log.e(TAG, " startPackage(): Invalid parameters, it could not be null");
            return false;
        }
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage != null) {
            launchIntentForPackage.setFlags(270532608);
            context.startActivity(launchIntentForPackage);
            return true;
        }
        Log.e(TAG, " startPackage failed. package name = " + str);
        return false;
    }

    public static boolean startActivitySafely(Context context, Intent intent) {
        if (intent == null) {
            return false;
        }
        if (context.getPackageManager().resolveActivity(intent, 65536) != null) {
            try {
                intent.addFlags(270532608);
                context.startActivity(intent);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                Log.e(TAG, " startActivitySafely failed. intent= " + intent);
            }
        } else {
            Log.e(TAG, " startActivitySafely failed. intent= " + intent);
        }
        return false;
    }
}
