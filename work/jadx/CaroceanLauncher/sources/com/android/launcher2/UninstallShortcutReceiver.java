package com.android.launcher2;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.widget.Toast;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class UninstallShortcutReceiver extends BroadcastReceiver {
    private static final String ACTION_UNINSTALL_SHORTCUT = "com.android.launcher.action.UNINSTALL_SHORTCUT";
    private static final String TAG = "UninstallShortcutReceiver";
    private static ArrayList<PendingUninstallShortcutInfo> mUninstallQueue = new ArrayList<>();
    private static boolean mUseUninstallQueue = false;

    private static class PendingUninstallShortcutInfo {
        Intent data;

        public PendingUninstallShortcutInfo(Intent intent) {
            this.data = intent;
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (!ACTION_UNINSTALL_SHORTCUT.equals(intent.getAction())) {
            L.d(TAG, "Receive " + intent.getAction() + " in UninstallShortcutReceiver.");
            return;
        }
        PendingUninstallShortcutInfo pendingUninstallShortcutInfo = new PendingUninstallShortcutInfo(intent);
        if (L.DEBUG) {
            L.d(TAG, "onReceive data = " + intent + ", info = " + pendingUninstallShortcutInfo);
        }
        if (mUseUninstallQueue) {
            mUninstallQueue.add(pendingUninstallShortcutInfo);
        } else {
            processUninstallShortcut(context, pendingUninstallShortcutInfo);
        }
    }

    static void enableUninstallQueue() {
        mUseUninstallQueue = true;
    }

    static void disableAndFlushUninstallQueue(Context context) {
        mUseUninstallQueue = false;
        Iterator<PendingUninstallShortcutInfo> it = mUninstallQueue.iterator();
        while (it.hasNext()) {
            processUninstallShortcut(context, it.next());
            it.remove();
        }
    }

    private static void processUninstallShortcut(Context context, PendingUninstallShortcutInfo pendingUninstallShortcutInfo) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(LauncherApplication.getSharedPreferencesKey(), 0);
        Intent intent = pendingUninstallShortcutInfo.data;
        if (L.DEBUG) {
            L.d(TAG, "processUninstallShortcut pendingInfo = " + pendingUninstallShortcutInfo + ", data = " + intent);
        }
        synchronized (((LauncherApplication) context.getApplicationContext())) {
            removeShortcut(context, intent, sharedPreferences);
        }
    }

    /* JADX WARN: Type inference failed for: r14v7, types: [com.android.launcher2.UninstallShortcutReceiver$1] */
    private static void removeShortcut(Context context, Intent intent, final SharedPreferences sharedPreferences) {
        boolean zRemove;
        Intent intent2 = (Intent) intent.getParcelableExtra("android.intent.extra.shortcut.INTENT");
        String stringExtra = intent.getStringExtra("android.intent.extra.shortcut.NAME");
        boolean booleanExtra = intent.getBooleanExtra("duplicate", true);
        if (L.DEBUG) {
            L.d(TAG, "onReceive: data = " + intent + ", intent = " + intent2 + ", name = " + stringExtra + ", duplicate = " + booleanExtra);
        }
        if (intent2 == null || stringExtra == null) {
            return;
        }
        ContentResolver contentResolver = context.getContentResolver();
        Cursor cursorQuery = contentResolver.query(LauncherSettings.Favorites.CONTENT_URI, new String[]{"_id", LauncherSettings.BaseLauncherColumns.INTENT}, "title=?", new String[]{stringExtra}, null);
        int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow(LauncherSettings.BaseLauncherColumns.INTENT);
        int columnIndexOrThrow2 = cursorQuery.getColumnIndexOrThrow("_id");
        boolean z = false;
        while (cursorQuery.moveToNext()) {
            try {
                try {
                    if (intent2.filterEquals(Intent.parseUri(cursorQuery.getString(columnIndexOrThrow), 0))) {
                        contentResolver.delete(LauncherSettings.Favorites.getContentUri(cursorQuery.getLong(columnIndexOrThrow2), false), null, null);
                        z = true;
                        if (!booleanExtra) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } catch (URISyntaxException unused) {
                    L.w(TAG, "URISyntaxException happened when removeShortcut.");
                }
            } catch (Throwable th) {
                cursorQuery.close();
                throw th;
            }
        }
        cursorQuery.close();
        if (z) {
            contentResolver.notifyChange(LauncherSettings.Favorites.CONTENT_URI, null);
            Toast.makeText(context, context.getString(R.string.shortcut_uninstalled, stringExtra), 0).show();
        }
        final Set<String> stringSet = sharedPreferences.getStringSet(InstallShortcutReceiver.NEW_APPS_LIST_KEY, new HashSet());
        synchronized (stringSet) {
            do {
                zRemove = stringSet.remove(intent2.toUri(0).toString());
            } while (zRemove);
        }
        if (zRemove) {
            new Thread("setNewAppsThread-remove") { // from class: com.android.launcher2.UninstallShortcutReceiver.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    synchronized (stringSet) {
                        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                        editorEdit.putStringSet(InstallShortcutReceiver.NEW_APPS_LIST_KEY, stringSet);
                        if (stringSet.isEmpty()) {
                            editorEdit.putInt(InstallShortcutReceiver.NEW_APPS_PAGE_KEY, -1);
                        }
                        editorEdit.commit();
                    }
                }
            }.start();
        }
    }
}
