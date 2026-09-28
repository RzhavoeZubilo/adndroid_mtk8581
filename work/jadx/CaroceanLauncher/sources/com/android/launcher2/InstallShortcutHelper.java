package com.android.launcher2;

import android.content.Context;
import com.android.launcher2.uitl.L;

/* JADX INFO: loaded from: classes.dex */
public class InstallShortcutHelper {
    private static final String TAG = "InstallShortcutHelper";
    private static int sInstallingCount = 0;
    private static boolean sInstallingShortcut = false;
    private static int sSuccessCount;

    public static void setInstallingShortcut(boolean z) {
        sInstallingShortcut = z;
        if (L.DEBUG) {
            L.d(TAG, "setInstallingShortcut: sInstallingShortcut=" + sInstallingShortcut);
        }
    }

    public static boolean isInstallingShortcut() {
        return sInstallingShortcut;
    }

    public static void increaseInstallingCount(int i) {
        int i2 = sInstallingCount + i;
        sInstallingCount = i2;
        if (i2 > 0) {
            sInstallingShortcut = true;
        }
        if (L.DEBUG) {
            L.d(TAG, "increaseInstallingCount: sInstallingCount = " + sInstallingCount + ", sInstallingShortcut=" + sInstallingShortcut);
        }
    }

    public static void decreaseInstallingCount(Context context, boolean z) {
        if (L.DEBUG) {
            L.d(TAG, "decreaseInstallingCount: sInstallingCount = " + sInstallingCount + ", sInstallingShortcut = " + sInstallingShortcut);
        }
        sInstallingCount--;
        if (z) {
            sSuccessCount++;
        }
        decreaseUpdate(context);
    }

    public static void decreaseInstallingCount(Context context, int i) {
        if (L.DEBUG) {
            L.d(TAG, "decreaseInstallingCount: decreaseCount = " + i + ", sInstallingCount = " + sInstallingCount + ", sInstallingShortcut = " + sInstallingShortcut);
        }
        sInstallingCount -= i;
        decreaseUpdate(context);
    }

    private static void decreaseUpdate(Context context) {
        if (L.DEBUG) {
            L.d(TAG, "decreaseUpdate: sInstallingCount=" + sInstallingCount + ", sSuccessCount=" + sSuccessCount);
        }
        if (sInstallingCount <= 0) {
            if (sSuccessCount != 0) {
                L.d(TAG, "decreaseUpdate: triggerLoadingDatabaseManually");
                ((LauncherApplication) context.getApplicationContext()).triggerLoadingDatabaseManually();
            } else {
                L.d(TAG, "decreaseUpdate: all failed, and reset sInstallingShortcut");
                sInstallingShortcut = false;
            }
            sInstallingCount = 0;
            sSuccessCount = 0;
        }
        if (L.DEBUG) {
            L.d(TAG, "decreaseUpdate: sInstallingShortcut=" + sInstallingShortcut);
        }
    }
}
