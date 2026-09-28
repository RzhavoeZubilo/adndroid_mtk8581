package com.android.launcher2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class PreloadReceiver extends BroadcastReceiver {
    public static final String EXTRA_WORKSPACE_NAME = "com.android.launcher.action.EXTRA_WORKSPACE_NAME";
    private static final boolean LOGD = false;
    private static final String TAG = "Launcher.PreloadReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        final LauncherProvider launcherProvider = ((LauncherApplication) context.getApplicationContext()).getLauncherProvider();
        if (launcherProvider != null) {
            String stringExtra = intent.getStringExtra(EXTRA_WORKSPACE_NAME);
            final int identifier = !TextUtils.isEmpty(stringExtra) ? context.getResources().getIdentifier(stringExtra, "xml", "com.android.launcher") : 0;
            new Thread(new Runnable() { // from class: com.android.launcher2.PreloadReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    launcherProvider.loadDefaultFavoritesIfNecessary(identifier);
                }
            }).start();
        }
    }
}
