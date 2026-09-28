package com.android.launcher2;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import com.android.launcher2.uitl.L;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationInfo extends ItemInfo {
    static final int DOWNLOADED_FLAG = 1;
    private static final String TAG = "ApplicationInfo";
    static final int UPDATED_SYSTEM_APP_FLAG = 2;
    ComponentName componentName;
    long firstInstallTime;
    int flags;
    public Bitmap iconBitmap;
    public Intent intent;

    ApplicationInfo() {
        this.flags = 0;
        this.itemType = 1;
    }

    public ApplicationInfo(PackageManager packageManager, ResolveInfo resolveInfo, IconCache iconCache, HashMap<Object, CharSequence> map) {
        this.flags = 0;
        String str = resolveInfo.activityInfo.applicationInfo.packageName;
        this.componentName = new ComponentName(str, resolveInfo.activityInfo.name);
        this.container = -1L;
        setActivity(this.componentName, 270532608);
        try {
            int i = packageManager.getApplicationInfo(str, 0).flags;
            if ((i & 1) == 0) {
                int i2 = this.flags | 1;
                this.flags = i2;
                if ((i & 128) != 0) {
                    this.flags = i2 | 2;
                }
            }
            this.firstInstallTime = packageManager.getPackageInfo(str, 0).firstInstallTime;
        } catch (PackageManager.NameNotFoundException unused) {
            L.d(TAG, "PackageManager.getApplicationInfo failed for " + str);
        }
        iconCache.getTitleAndIcon(this, resolveInfo, map);
    }

    public ApplicationInfo(ApplicationInfo applicationInfo) {
        super(applicationInfo);
        this.flags = 0;
        this.componentName = applicationInfo.componentName;
        this.title = applicationInfo.title.toString();
        this.intent = new Intent(applicationInfo.intent);
        this.flags = applicationInfo.flags;
        this.firstInstallTime = applicationInfo.firstInstallTime;
    }

    public String getPackageName() {
        return ItemInfo.getPackageName(this.intent);
    }

    final void setActivity(ComponentName componentName, int i) {
        Intent intent = new Intent("android.intent.action.MAIN");
        this.intent = intent;
        intent.addCategory("android.intent.category.LAUNCHER");
        this.intent.setComponent(componentName);
        this.intent.setFlags(i);
        this.itemType = 0;
    }

    @Override // com.android.launcher2.ItemInfo
    public String toString() {
        return "ApplicationInfo(title=" + this.title.toString() + " unreadNum= " + this.unreadNum + ")";
    }

    public static void dumpApplicationInfoList(String str, String str2, ArrayList<ApplicationInfo> arrayList) {
        L.d(str, str2 + " size=" + arrayList.size());
        for (ApplicationInfo applicationInfo : arrayList) {
            L.d(str, "   title=\"" + ((Object) applicationInfo.title) + "\" iconBitmap=" + applicationInfo.iconBitmap + " firstInstallTime=" + applicationInfo.firstInstallTime);
        }
    }

    public ShortcutInfo makeShortcut() {
        return new ShortcutInfo(this);
    }
}
