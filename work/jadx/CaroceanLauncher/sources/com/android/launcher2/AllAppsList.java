package com.android.launcher2;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Xml;
import com.android.internal.util.XmlUtils;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
class AllAppsList {
    private static final boolean DEBUG_LOADERS_REORDER = false;
    public static final int DEFAULT_APPLICATIONS_NUMBER = 42;
    private static final String TAG = "AllAppsList";
    private static final String TAG_TOPPACKAGES = "toppackages";
    private static final String WIFI_SETTINGCLASSNAME = "com.android.settings.Settings$WifiSettingsActivity";
    private static final String WIFI_SETTINGPKGNAME = "com.android.settings";
    static ArrayList<TopPackage> sTopPackages;
    private IconCache mIconCache;
    private boolean mRemovedWifiSettings = false;
    public ArrayList<ApplicationInfo> data = new ArrayList<>(42);
    public ArrayList<ApplicationInfo> added = new ArrayList<>(42);
    public ArrayList<ApplicationInfo> removed = new ArrayList<>();
    public ArrayList<ApplicationInfo> modified = new ArrayList<>();
    public ArrayList<String> appwidgetRemoved = new ArrayList<>();

    static class TopPackage {
        String className;
        int order;
        String packageName;

        public TopPackage(String str, String str2, int i) {
            this.packageName = str;
            this.className = str2;
            this.order = i;
        }
    }

    public AllAppsList(IconCache iconCache) {
        this.mIconCache = iconCache;
    }

    public void add(ApplicationInfo applicationInfo) {
        if (L.DEBUG) {
            L.d(TAG, "Add application in app list: app = " + applicationInfo.componentName + ", title = " + ((Object) applicationInfo.title));
        }
        if (findActivity(this.data, applicationInfo.componentName)) {
            return;
        }
        this.data.add(applicationInfo);
        this.added.add(applicationInfo);
    }

    public void clear() {
        if (L.DEBUG) {
            L.d(TAG, "clear all data in app list: app size = " + this.data.size());
        }
        this.data.clear();
        this.added.clear();
        this.removed.clear();
        this.modified.clear();
        this.appwidgetRemoved.clear();
        this.mRemovedWifiSettings = false;
    }

    public int size() {
        return this.data.size();
    }

    public ApplicationInfo get(int i) {
        return this.data.get(i);
    }

    public void addPackage(Context context, String str) {
        List<ResolveInfo> listFindActivitiesForPackage = findActivitiesForPackage(context, str);
        if (L.DEBUG) {
            L.d(TAG, "addPackage: packageName = " + str + ", matches = " + listFindActivitiesForPackage.size());
        }
        if (listFindActivitiesForPackage.size() > 0) {
            Iterator<ResolveInfo> it = listFindActivitiesForPackage.iterator();
            while (it.hasNext()) {
                add(new ApplicationInfo(context.getPackageManager(), it.next(), this.mIconCache, null));
            }
        }
    }

    public void removePackage(String str) {
        ArrayList<ApplicationInfo> arrayList = this.data;
        if (L.DEBUG) {
            L.d(TAG, "removePackage: packageName = " + str + ", data size = " + arrayList.size());
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ApplicationInfo applicationInfo = arrayList.get(size);
            if (str.equals(applicationInfo.intent.getComponent().getPackageName())) {
                this.removed.add(applicationInfo);
                arrayList.remove(size);
            }
            if (this.removed.size() == 0) {
                this.appwidgetRemoved.add(str);
            }
        }
        this.mIconCache.flush();
    }

    public void updatePackage(Context context, String str) {
        List<ResolveInfo> listFindActivitiesForPackage = findActivitiesForPackage(context, str);
        if (L.DEBUG) {
            L.d(TAG, "updatePackage: packageName = " + str + ", matches = " + listFindActivitiesForPackage.size());
        }
        if (listFindActivitiesForPackage.size() > 0) {
            for (int size = this.data.size() - 1; size >= 0; size--) {
                ApplicationInfo applicationInfo = this.data.get(size);
                ComponentName component = applicationInfo.intent.getComponent();
                if (str.equals(component.getPackageName()) && !findActivity(listFindActivitiesForPackage, component)) {
                    this.removed.add(applicationInfo);
                    this.mIconCache.remove(component);
                    this.data.remove(size);
                }
            }
            int size2 = listFindActivitiesForPackage.size();
            for (int i = 0; i < size2; i++) {
                ResolveInfo resolveInfo = listFindActivitiesForPackage.get(i);
                ApplicationInfo applicationInfoFindApplicationInfoLocked = findApplicationInfoLocked(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name);
                if (applicationInfoFindApplicationInfoLocked == null) {
                    add(new ApplicationInfo(context.getPackageManager(), resolveInfo, this.mIconCache, null));
                } else {
                    this.mIconCache.remove(applicationInfoFindApplicationInfoLocked.componentName);
                    this.mIconCache.getTitleAndIcon(applicationInfoFindApplicationInfoLocked, resolveInfo, null);
                    this.modified.add(applicationInfoFindApplicationInfoLocked);
                }
            }
            return;
        }
        for (int size3 = this.data.size() - 1; size3 >= 0; size3--) {
            ApplicationInfo applicationInfo2 = this.data.get(size3);
            ComponentName component2 = applicationInfo2.intent.getComponent();
            if (str.equals(component2.getPackageName())) {
                if (L.DEBUG) {
                    L.d(TAG, "Remove application from launcher: component = " + component2);
                }
                this.removed.add(applicationInfo2);
                this.mIconCache.remove(component2);
                this.data.remove(size3);
            }
        }
    }

    private static List<ResolveInfo> findActivitiesForPackage(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.addFlags(270532608);
        intent.setPackage(str);
        List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        return listQueryIntentActivities != null ? listQueryIntentActivities : new ArrayList();
    }

    private static boolean findActivity(List<ResolveInfo> list, ComponentName componentName) {
        String className = componentName.getClassName();
        Iterator<ResolveInfo> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().activityInfo.name.equals(className)) {
                return true;
            }
        }
        return false;
    }

    private static boolean findActivity(ArrayList<ApplicationInfo> arrayList, ComponentName componentName) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (arrayList.get(i).componentName.equals(componentName)) {
                return true;
            }
        }
        return false;
    }

    private ApplicationInfo findApplicationInfoLocked(String str, String str2) {
        for (ApplicationInfo applicationInfo : this.data) {
            ComponentName component = applicationInfo.intent.getComponent();
            if (str.equals(component.getPackageName()) && str2.equals(component.getClassName())) {
                return applicationInfo;
            }
        }
        return null;
    }

    static boolean loadTopPackage(Context context) {
        if (sTopPackages != null) {
            return false;
        }
        sTopPackages = new ArrayList<>();
        try {
            XmlResourceParser xml = context.getResources().getXml(R.xml.default_toppackage);
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
            XmlUtils.beginDocument(xml, TAG_TOPPACKAGES);
            int depth = xml.getDepth();
            while (true) {
                int next = xml.next();
                if ((next == 3 && xml.getDepth() <= depth) || next == 1) {
                    break;
                }
                if (next == 2) {
                    TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSetAsAttributeSet, R.styleable.TopPackage);
                    sTopPackages.add(new TopPackage(typedArrayObtainStyledAttributes.getString(2), typedArrayObtainStyledAttributes.getString(0), typedArrayObtainStyledAttributes.getInt(1, 0)));
                    L.d(TAG, "loadTopPackage: packageName = " + typedArrayObtainStyledAttributes.getString(2) + ", className = " + typedArrayObtainStyledAttributes.getString(0));
                    typedArrayObtainStyledAttributes.recycle();
                }
            }
        } catch (IOException e) {
            L.w(TAG, "Got IOException while parsing toppackage.", e);
        } catch (XmlPullParserException e2) {
            L.w(TAG, "Got XmlPullParserException while parsing toppackage.", e2);
        }
        return false;
    }

    static int getTopPackageIndex(ApplicationInfo applicationInfo) {
        ArrayList<TopPackage> arrayList = sTopPackages;
        if (arrayList == null || arrayList.isEmpty() || applicationInfo == null) {
            return -1;
        }
        for (TopPackage topPackage : sTopPackages) {
            if (applicationInfo.componentName.getPackageName().equals(topPackage.packageName) && applicationInfo.componentName.getClassName().equals(topPackage.className)) {
                return topPackage.order;
            }
        }
        return -1;
    }

    void reorderApplist() {
        ArrayList<TopPackage> arrayList = sTopPackages;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        ensureTopPackageOrdered();
        ArrayList<ApplicationInfo> arrayList2 = new ArrayList(42);
        for (TopPackage topPackage : sTopPackages) {
            for (ApplicationInfo applicationInfo : this.added) {
                if (applicationInfo.componentName.getPackageName().equals(topPackage.packageName) && applicationInfo.componentName.getClassName().equals(topPackage.className)) {
                    this.data.remove(applicationInfo);
                    arrayList2.add(applicationInfo);
                    dumpData();
                    break;
                }
            }
        }
        for (TopPackage topPackage2 : sTopPackages) {
            for (ApplicationInfo applicationInfo2 : arrayList2) {
                if (applicationInfo2.componentName.getPackageName().equals(topPackage2.packageName) && applicationInfo2.componentName.getClassName().equals(topPackage2.className)) {
                    int iMin = Math.min(Math.max(topPackage2.order, 0), this.added.size());
                    if (iMin < this.data.size()) {
                        this.data.add(iMin, applicationInfo2);
                    } else {
                        this.data.add(applicationInfo2);
                    }
                    dumpData();
                    break;
                }
            }
        }
        if (this.added.size() == this.data.size()) {
            this.added = (ArrayList) this.data.clone();
            L.d(TAG, "reorderApplist added.size() == data.size()");
        }
    }

    void dumpData() {
        for (ApplicationInfo applicationInfo : this.data) {
        }
    }

    void removeWifiSettings() {
        if (this.mRemovedWifiSettings) {
            return;
        }
        this.mRemovedWifiSettings = removeSpecificApp("com.android.settings", WIFI_SETTINGCLASSNAME);
    }

    private boolean removeSpecificApp(String str, String str2) {
        ApplicationInfo next;
        Iterator<ApplicationInfo> it = this.added.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (next.componentName.getPackageName().equalsIgnoreCase(str) && next.componentName.getClassName().equalsIgnoreCase(str2)) {
                break;
            }
        }
        if (next != null) {
            this.data.remove(next);
            this.added.remove(next);
            L.d(TAG, "Success to remove from app list: " + str2);
            return true;
        }
        L.d(TAG, "Fail to remove from app list: " + str2);
        return false;
    }

    static void ensureTopPackageOrdered() {
        ArrayList arrayList = new ArrayList(42);
        boolean z = true;
        for (TopPackage topPackage : sTopPackages) {
            if (z) {
                arrayList.add(topPackage);
                z = false;
            } else {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    if (size == 0) {
                        if (topPackage.order < ((TopPackage) arrayList.get(0)).order) {
                            arrayList.add(0, topPackage);
                            break;
                        } else {
                            arrayList.add(1, topPackage);
                            break;
                        }
                    }
                    if (topPackage.order < ((TopPackage) arrayList.get(size)).order && topPackage.order >= ((TopPackage) arrayList.get(size - 1)).order) {
                        arrayList.add(size, topPackage);
                        break;
                    } else {
                        if (topPackage.order > ((TopPackage) arrayList.get(size)).order) {
                            arrayList.add(size + 1, topPackage);
                            break;
                        }
                    }
                }
            }
        }
        if (sTopPackages.size() == arrayList.size()) {
            sTopPackages = (ArrayList) arrayList.clone();
            L.d(TAG, "ensureTopPackageOrdered done");
        } else {
            L.d(TAG, "some mistake may occur when ensureTopPackageOrdered");
        }
    }
}
