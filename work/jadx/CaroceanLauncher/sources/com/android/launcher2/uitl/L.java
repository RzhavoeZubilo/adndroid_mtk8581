package com.android.launcher2.uitl;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class L {
    public static boolean DEBUG = true;
    public static boolean DEBUG_DRAG = false;
    public static boolean DEBUG_DRAW = true;
    public static boolean DEBUG_KEY = true;
    public static boolean DEBUG_LAYOUT = true;
    public static boolean DEBUG_LOADER = true;
    public static boolean DEBUG_MOTION = true;
    public static boolean DEBUG_PERFORMANCE = false;
    public static boolean DEBUG_SURFACEWIDGET = false;
    public static boolean DEBUG_UNREAD = false;
    public static String TAG = "hede";
    public static boolean isDebug = true;

    public static void d(String str, String str2, Throwable th) {
    }

    public static void e(String str, String str2, Throwable th) {
    }

    public static void i(String str, String str2, Throwable th) {
    }

    public static void v(String str, String str2, Throwable th) {
    }

    public static void w(String str, String str2, Throwable th) {
    }

    public static void i(String str) {
        if (isDebug) {
            Log.i(TAG, str);
        }
    }

    public static void d(String str) {
        if (isDebug) {
            Log.d(TAG, str);
        }
    }

    public static void e(String str) {
        if (isDebug) {
            Log.e(TAG, str);
        }
    }

    public static void v(String str) {
        if (isDebug) {
            Log.v(TAG, str);
        }
    }

    public static void i(String str, String str2) {
        if (isDebug) {
            Log.i(str, str2);
        }
    }

    public static void d(String str, String str2) {
        if (isDebug) {
            Log.i(str, str2);
        }
    }

    public static void e(String str, String str2) {
        if (isDebug) {
            Log.i(str, str2);
        }
    }

    public static void v(String str, String str2) {
        if (isDebug) {
            Log.i(str, str2);
        }
    }

    public static void w(String str, String str2) {
        if (isDebug) {
            Log.w(str, str2);
        }
    }
}
