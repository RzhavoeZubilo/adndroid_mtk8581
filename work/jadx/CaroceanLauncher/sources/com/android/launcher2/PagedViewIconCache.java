package com.android.launcher2;

import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.pm.ComponentInfo;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PagedViewIconCache {
    private final HashMap<Key, Bitmap> mIconOutlineCache = new HashMap<>();

    public static class Key {
        private final ComponentName mComponentName;
        private final Type mType;

        public enum Type {
            ApplicationInfoKey,
            AppWidgetProviderInfoKey,
            ResolveInfoKey
        }

        public Key(ApplicationInfo applicationInfo) {
            this.mComponentName = applicationInfo.componentName;
            this.mType = Type.ApplicationInfoKey;
        }

        public Key(ResolveInfo resolveInfo) {
            ComponentInfo componentInfo = resolveInfo.activityInfo != null ? resolveInfo.activityInfo : resolveInfo.serviceInfo;
            this.mComponentName = new ComponentName(componentInfo.packageName, componentInfo.name);
            this.mType = Type.ResolveInfoKey;
        }

        public Key(AppWidgetProviderInfo appWidgetProviderInfo) {
            this.mComponentName = appWidgetProviderInfo.provider;
            this.mType = Type.AppWidgetProviderInfoKey;
        }

        private ComponentName getComponentName() {
            return this.mComponentName;
        }

        public boolean isKeyType(Type type) {
            return this.mType == type;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Key) {
                return this.mComponentName.equals(((Key) obj).mComponentName);
            }
            return super.equals(obj);
        }

        public int hashCode() {
            return getComponentName().hashCode();
        }
    }

    public void clear() {
        Iterator<Key> it = this.mIconOutlineCache.keySet().iterator();
        while (it.hasNext()) {
            this.mIconOutlineCache.get(it.next()).recycle();
        }
        this.mIconOutlineCache.clear();
    }

    private void retainAll(HashSet<Key> hashSet, Key.Type type) {
        HashSet<Key> hashSet2 = new HashSet(this.mIconOutlineCache.keySet());
        hashSet2.removeAll(hashSet);
        for (Key key : hashSet2) {
            if (key.isKeyType(type)) {
                this.mIconOutlineCache.get(key).recycle();
                this.mIconOutlineCache.remove(key);
            }
        }
    }

    public void retainAllApps(ArrayList<ApplicationInfo> arrayList) {
        HashSet<Key> hashSet = new HashSet<>();
        Iterator<ApplicationInfo> it = arrayList.iterator();
        while (it.hasNext()) {
            hashSet.add(new Key(it.next()));
        }
        retainAll(hashSet, Key.Type.ApplicationInfoKey);
    }

    public void retainAllShortcuts(List<ResolveInfo> list) {
        HashSet<Key> hashSet = new HashSet<>();
        Iterator<ResolveInfo> it = list.iterator();
        while (it.hasNext()) {
            hashSet.add(new Key(it.next()));
        }
        retainAll(hashSet, Key.Type.ResolveInfoKey);
    }

    public void retainAllAppWidgets(List<AppWidgetProviderInfo> list) {
        HashSet<Key> hashSet = new HashSet<>();
        Iterator<AppWidgetProviderInfo> it = list.iterator();
        while (it.hasNext()) {
            hashSet.add(new Key(it.next()));
        }
        retainAll(hashSet, Key.Type.AppWidgetProviderInfoKey);
    }

    public void addOutline(Key key, Bitmap bitmap) {
        this.mIconOutlineCache.put(key, bitmap);
    }

    public void removeOutline(Key key) {
        if (this.mIconOutlineCache.containsKey(key)) {
            this.mIconOutlineCache.get(key).recycle();
            this.mIconOutlineCache.remove(key);
        }
    }

    public Bitmap getOutline(Key key) {
        return this.mIconOutlineCache.get(key);
    }
}
