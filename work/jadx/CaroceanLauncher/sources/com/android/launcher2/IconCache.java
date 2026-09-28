package com.android.launcher2;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import com.android.launcher2.uitl.L;
import com.carocean.navicar.Navi;
import com.yecon.launcher1.R;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class IconCache {
    private static HashMap<String, String> APP_ICON_WHITE_LIST = null;
    static int[] ID_icon = null;
    private static final int INITIAL_ICON_CACHE_CAPACITY = 50;
    private static final String TAG = "IconCache";
    static String[] str_class;
    private final HashMap<ComponentName, CacheEntry> mCache = new HashMap<>(50);
    private final LauncherApplication mContext;
    private Bitmap mDefaultIcon;
    private int mIconDpi;
    private final PackageManager mPackageManager;

    static {
        HashMap<String, String> map = new HashMap<>();
        APP_ICON_WHITE_LIST = map;
        map.put(Navi.ClassName.Rear360Acitivity, "com.carocean.settings");
        str_class = new String[]{Navi.ClassName.Rear360Acitivity};
        ID_icon = new int[]{R.drawable.ic_launcher_dvr};
    }

    private static class CacheEntry {
        public Bitmap icon;
        public String title;

        private CacheEntry() {
        }
    }

    public IconCache(LauncherApplication launcherApplication) {
        ActivityManager activityManager = (ActivityManager) launcherApplication.getSystemService("activity");
        this.mContext = launcherApplication;
        this.mPackageManager = launcherApplication.getPackageManager();
        this.mIconDpi = activityManager.getLauncherLargeIconDensity();
        this.mDefaultIcon = makeDefaultIcon();
    }

    public void refreshDefaultIcon() {
        this.mDefaultIcon = makeDefaultIcon();
    }

    public Drawable getFullResDefaultActivityIcon() {
        String currentScene = Launcher.getCurrentScene();
        if ("default".equals(currentScene)) {
            return getFullResIcon(Resources.getSystem(), android.R.mipmap.sym_def_app_icon);
        }
        Resources resources = this.mContext.getResources();
        int identifier = resources.getIdentifier(currentScene + "_def_app_icon", "drawable", this.mContext.getPackageName());
        if (identifier == 0) {
            return getFullResIcon(Resources.getSystem(), android.R.mipmap.sym_def_app_icon);
        }
        return getFullResIcon(resources, identifier);
    }

    public Drawable getFullResIcon(Resources resources, int i) {
        Drawable drawableForDensity;
        try {
            drawableForDensity = resources.getDrawableForDensity(i, this.mIconDpi);
        } catch (Resources.NotFoundException unused) {
            drawableForDensity = null;
        }
        return drawableForDensity != null ? drawableForDensity : getFullResDefaultActivityIcon();
    }

    public Drawable getFullResIcon(String str, int i) {
        Resources resourcesForApplication;
        String currentScene = Launcher.getCurrentScene();
        if (!currentScene.equals("default")) {
            String str2 = currentScene + "_" + convertToIconResName(str);
            if ("com.android.music".equals(str)) {
                str2 = currentScene + "_com_android_music_musicbrowseractivity";
            }
            Resources resources = this.mContext.getResources();
            int identifier = resources.getIdentifier(str2, "drawable", this.mContext.getPackageName());
            if (identifier != 0) {
                return getFullResIcon(resources, identifier);
            }
        }
        try {
            resourcesForApplication = this.mPackageManager.getResourcesForApplication(str);
        } catch (PackageManager.NameNotFoundException unused) {
            resourcesForApplication = null;
        }
        if (resourcesForApplication != null && i != 0) {
            return getFullResIcon(resourcesForApplication, i);
        }
        return getFullResDefaultActivityIcon();
    }

    public Drawable getFullResIcon(ResolveInfo resolveInfo) {
        return getFullResIcon(resolveInfo.activityInfo);
    }

    private String convertToIconResName(String str) {
        return (str == null || str.equals("")) ? str : str.replace('.', '_').toLowerCase();
    }

    public Drawable getFullResIcon(ActivityInfo activityInfo) {
        Resources resourcesForApplication;
        int iconResource;
        String currentScene = Launcher.getCurrentScene();
        if (!currentScene.equals("default")) {
            Resources resources = this.mContext.getResources();
            String packageName = this.mContext.getPackageName();
            int identifier = resources.getIdentifier(currentScene + "_" + convertToIconResName(activityInfo.name), "drawable", packageName);
            if (identifier <= 0) {
                identifier = resources.getIdentifier(currentScene + "_" + convertToIconResName(activityInfo.packageName), "drawable", packageName);
            }
            if (identifier != 0) {
                return getFullResIcon(resources, identifier);
            }
        }
        try {
            resourcesForApplication = this.mPackageManager.getResourcesForApplication(activityInfo.applicationInfo);
        } catch (PackageManager.NameNotFoundException unused) {
            resourcesForApplication = null;
        }
        if (resourcesForApplication != null && (iconResource = activityInfo.getIconResource()) != 0) {
            return getFullResIcon(resourcesForApplication, iconResource);
        }
        return getFullResDefaultActivityIcon();
    }

    private Bitmap makeDefaultIcon() {
        Drawable fullResDefaultActivityIcon = getFullResDefaultActivityIcon();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(Math.max(fullResDefaultActivityIcon.getIntrinsicWidth(), 1), Math.max(fullResDefaultActivityIcon.getIntrinsicHeight(), 1), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        fullResDefaultActivityIcon.setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
        fullResDefaultActivityIcon.draw(canvas);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    public void remove(ComponentName componentName) {
        synchronized (this.mCache) {
            this.mCache.remove(componentName);
        }
    }

    public void flush() {
        synchronized (this.mCache) {
            Iterator<ComponentName> it = this.mCache.keySet().iterator();
            while (it.hasNext()) {
                CacheEntry cacheEntry = this.mCache.get(it.next());
                cacheEntry.icon = null;
                cacheEntry.title = null;
            }
            this.mCache.clear();
        }
        if (L.DEBUG) {
            L.d(TAG, "Flush icon cache here.");
        }
    }

    public void getTitleAndIcon(ApplicationInfo applicationInfo, ResolveInfo resolveInfo, HashMap<Object, CharSequence> map) {
        synchronized (this.mCache) {
            CacheEntry cacheEntryCacheLocked = cacheLocked(applicationInfo.componentName, resolveInfo, map);
            applicationInfo.title = cacheEntryCacheLocked.title;
            applicationInfo.iconBitmap = cacheEntryCacheLocked.icon;
        }
    }

    public Bitmap getIcon(Intent intent) {
        synchronized (this.mCache) {
            ResolveInfo resolveInfoResolveActivity = this.mPackageManager.resolveActivity(intent, 0);
            ComponentName component = intent.getComponent();
            if (resolveInfoResolveActivity != null && component != null) {
                return cacheLocked(component, resolveInfoResolveActivity, null).icon;
            }
            return this.mDefaultIcon;
        }
    }

    public Bitmap getIcon(ComponentName componentName, ResolveInfo resolveInfo, HashMap<Object, CharSequence> map) {
        synchronized (this.mCache) {
            try {
                if (resolveInfo == null || componentName == null) {
                    return null;
                }
                return cacheLocked(componentName, resolveInfo, map).icon;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isDefaultIcon(Bitmap bitmap) {
        return this.mDefaultIcon == bitmap;
    }

    private CacheEntry cacheLocked(ComponentName componentName, ResolveInfo resolveInfo, HashMap<Object, CharSequence> map) {
        if (L.DEBUG_LAYOUT) {
            L.d(TAG, "cacheLocked: componentName = " + componentName + ", info = " + resolveInfo + ", HashMap<Object, CharSequence>:size = " + (map == null ? "null" : Integer.valueOf(map.size())));
        }
        CacheEntry cacheEntry = this.mCache.get(componentName);
        if (cacheEntry == null) {
            cacheEntry = new CacheEntry();
            this.mCache.put(componentName, cacheEntry);
            ComponentName componentNameFromResolveInfo = LauncherModel.getComponentNameFromResolveInfo(resolveInfo);
            if (map != null && map.containsKey(componentNameFromResolveInfo)) {
                cacheEntry.title = map.get(componentNameFromResolveInfo).toString();
                L.d(TAG, "CacheLocked get title from cache: title = " + cacheEntry.title);
            } else {
                cacheEntry.title = resolveInfo.loadLabel(this.mPackageManager).toString();
                L.d(TAG, "CacheLocked get title from pms: title = " + cacheEntry.title);
                if (map != null) {
                    map.put(componentNameFromResolveInfo, cacheEntry.title);
                }
            }
            if (cacheEntry.title == null) {
                cacheEntry.title = resolveInfo.activityInfo.name;
                L.d(TAG, "CacheLocked get title from activity information: entry.title = " + cacheEntry.title);
            }
            if (!APP_ICON_WHITE_LIST.containsKey(componentName.getClassName())) {
                cacheEntry.icon = Utilities.create3rdIconBitmap(getFullResIcon(resolveInfo), this.mContext);
                return cacheEntry;
            }
            Drawable fullResIcon = getFullResIcon(resolveInfo);
            for (int i = 0; i < str_class.length; i++) {
                if (componentName.getClassName().equalsIgnoreCase(str_class[i])) {
                    fullResIcon = this.mContext.getResources().getDrawable(ID_icon[i]);
                    break;
                }
            }
            cacheEntry.icon = Utilities.createIconBitmap(fullResIcon, this.mContext);
        }
        return cacheEntry;
    }

    public HashMap<ComponentName, Bitmap> getAllIcons() {
        HashMap<ComponentName, Bitmap> map;
        synchronized (this.mCache) {
            map = new HashMap<>();
            for (ComponentName componentName : this.mCache.keySet()) {
                map.put(componentName, this.mCache.get(componentName).icon);
            }
        }
        return map;
    }
}
