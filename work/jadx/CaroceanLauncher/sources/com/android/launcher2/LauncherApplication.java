package com.android.launcher2;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Process;
import android.util.Log;
import com.android.launcher2.uitl.L;
import com.carocean.navicar.NaviUtil;
import com.yecon.launcher1.R;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class LauncherApplication extends Application {
    private static final String TAG = "LauncherApplication";
    public static int m360Type = 0;
    public static int mTotalMemMb = 0;
    private static boolean sIsScreenLarge = false;
    private static int sLongPressTimeout = 300;
    private static float sScreenDensity = 0.0f;
    private static final String sSharedPreferencesKey = "com.android.launcher2.prefs";
    private final ContentObserver mFavoritesObserver = new ContentObserver(new Handler()) { // from class: com.android.launcher2.LauncherApplication.1
        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            if (L.DEBUG) {
                L.d(LauncherApplication.TAG, "mFavoritesObserver onChange: selfChange = " + z);
            }
            if (InstallShortcutHelper.isInstallingShortcut()) {
                if (L.DEBUG) {
                    L.d(LauncherApplication.TAG, "mFavoritesObserver onChange: is installing shortcut, so decrease the install count and return");
                }
                InstallShortcutHelper.decreaseInstallingCount(LauncherApplication.this.getApplicationContext(), true);
            } else {
                LauncherApplication.this.mModel.resetLoadedState(false, true);
                LauncherApplication.this.mModel.startLoaderFromBackground();
            }
        }
    };
    public IconCache mIconCache;
    WeakReference<LauncherProvider> mLauncherProvider;
    public LauncherModel mModel;

    public static String getSharedPreferencesKey() {
        return sSharedPreferencesKey;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        sIsScreenLarge = getResources().getBoolean(R.bool.is_large_screen);
        sScreenDensity = getResources().getDisplayMetrics().density;
        this.mIconCache = new IconCache(this);
        this.mModel = new LauncherModel(this, this.mIconCache);
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addDataScheme("package");
        registerReceiver(this.mModel, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE");
        intentFilter2.addAction("android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE");
        intentFilter2.addAction("android.intent.action.LOCALE_CHANGED");
        intentFilter2.addAction("android.intent.action.CONFIGURATION_CHANGED");
        registerReceiver(this.mModel, intentFilter2);
        IntentFilter intentFilter3 = new IntentFilter();
        intentFilter3.addAction("android.search.action.GLOBAL_SEARCH_ACTIVITY_CHANGED");
        registerReceiver(this.mModel, intentFilter3);
        IntentFilter intentFilter4 = new IntentFilter();
        intentFilter4.addAction("android.search.action.SEARCHABLES_CHANGED");
        registerReceiver(this.mModel, intentFilter4);
        int iMyPid = Process.myPid();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) getSystemService("activity")).getRunningAppProcesses()) {
            if (iMyPid == runningAppProcessInfo.pid && !runningAppProcessInfo.processName.equals("com.android.launcher:wallpaper_chooser")) {
                IntentFilter intentFilter5 = new IntentFilter();
                intentFilter5.addAction(LauncherModel.ACTION_SWITCH_SCENE);
                registerReceiver(this.mModel, intentFilter5);
            }
        }
        getContentResolver().registerContentObserver(LauncherSettings.Favorites.CONTENT_URI, true, this.mFavoritesObserver);
        getVersionName(this);
        readBackgroundWhiteList();
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
        unregisterReceiver(this.mModel);
        getContentResolver().unregisterContentObserver(this.mFavoritesObserver);
    }

    LauncherModel setLauncher(Launcher launcher) {
        this.mModel.initialize(launcher);
        return this.mModel;
    }

    IconCache getIconCache() {
        return this.mIconCache;
    }

    LauncherModel getModel() {
        return this.mModel;
    }

    void setLauncherProvider(LauncherProvider launcherProvider) {
        this.mLauncherProvider = new WeakReference<>(launcherProvider);
    }

    LauncherProvider getLauncherProvider() {
        return this.mLauncherProvider.get();
    }

    public static boolean isScreenLarge() {
        return sIsScreenLarge;
    }

    public static boolean isScreenLandscape(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    public static float getScreenDensity() {
        return sScreenDensity;
    }

    public static int getLongPressTimeout() {
        return sLongPressTimeout;
    }

    public void triggerLoadingDatabaseManually() {
        if (L.DEBUG) {
            L.d(TAG, "triggerLoadingDatabaseManually");
        }
        this.mModel.resetLoadedState(false, true);
        this.mModel.startLoaderFromBackground();
    }

    public void getVersionName(Context context) {
        try {
            PackageInfo packageInfo = context.getApplicationContext().getPackageManager().getPackageInfo(context.getPackageName(), 0);
            Log.d(TAG, "launcher_version: " + (packageInfo == null ? " null" : packageInfo.versionName));
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static void readBackgroundWhiteList() {
        new Thread(new Runnable() { // from class: com.android.launcher2.-$$Lambda$LauncherApplication$44heeeul8PrlwnuzmAbXcCmEXF4
            @Override // java.lang.Runnable
            public final void run() {
                LauncherApplication.lambda$readBackgroundWhiteList$0();
            }
        }).start();
    }

    static /* synthetic */ void lambda$readBackgroundWhiteList$0() {
        killApps.BACKGROUND_WHITE_LIST.clear();
        killApps.BACKGROUND_WHITE_LIST.addAll(NaviUtil.loadBackgroundWhiteList());
    }
}
