package com.android.launcher2.uitl;

/* JADX INFO: loaded from: classes.dex */
public final class LauncherLog {
    static final boolean DEBUG = true;
    public static final boolean DEBUG_AUTOTESTCASE = true;
    static final boolean DEBUG_DRAG = true;
    static final boolean DEBUG_DRAW = false;
    static final boolean DEBUG_KEY = false;
    static final boolean DEBUG_LAYOUT = false;
    static final boolean DEBUG_LOADER = true;
    static final boolean DEBUG_MOTION = true;
    static final boolean DEBUG_PERFORMANCE = true;
    static final boolean DEBUG_SURFACEWIDGET = true;
    static final boolean DEBUG_UNREAD = true;
    private static final LauncherLog INSTANCE = new LauncherLog();
    private static final String MODULE_NAME = "Launcher";

    public static void d(String str, String str2) {
    }

    public static void d(String str, String str2, Throwable th) {
    }

    public static void e(String str, String str2) {
    }

    public static void e(String str, String str2, Throwable th) {
    }

    public static void i(String str, String str2) {
    }

    public static void i(String str, String str2, Throwable th) {
    }

    public static void v(String str, String str2) {
    }

    public static void v(String str, String str2, Throwable th) {
    }

    public static void w(String str, String str2) {
    }

    public static void w(String str, String str2, Throwable th) {
    }

    private LauncherLog() {
    }

    public static LauncherLog getInstance() {
        return INSTANCE;
    }
}
