package com.android.launcher2;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Intent;
import android.graphics.Bitmap;
import com.android.launcher2.uitl.L;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class ShortcutInfo extends ItemInfo {
    public ComponentName componentName;
    boolean customIcon;
    Intent.ShortcutIconResource iconResource;
    Intent intent;
    private Bitmap mIcon;
    boolean usingFallbackIcon;

    ShortcutInfo() {
        this.itemType = 1;
    }

    public ShortcutInfo(ShortcutInfo shortcutInfo) {
        super(shortcutInfo);
        this.title = shortcutInfo.title.toString();
        this.componentName = shortcutInfo.componentName;
        this.intent = new Intent(shortcutInfo.intent);
        if (shortcutInfo.iconResource != null) {
            Intent.ShortcutIconResource shortcutIconResource = new Intent.ShortcutIconResource();
            this.iconResource = shortcutIconResource;
            shortcutIconResource.packageName = shortcutInfo.iconResource.packageName;
            this.iconResource.resourceName = shortcutInfo.iconResource.resourceName;
        }
        this.mIcon = shortcutInfo.mIcon;
        this.customIcon = shortcutInfo.customIcon;
    }

    public ShortcutInfo(ApplicationInfo applicationInfo) {
        super(applicationInfo);
        this.title = applicationInfo.title.toString();
        this.componentName = applicationInfo.componentName;
        this.intent = new Intent(applicationInfo.intent);
        this.customIcon = false;
    }

    public void setIcon(Bitmap bitmap) {
        this.mIcon = bitmap;
    }

    public Bitmap getIcon(IconCache iconCache) {
        if (this.mIcon == null) {
            updateIcon(iconCache);
        }
        return this.mIcon;
    }

    String getPackageName() {
        return ItemInfo.getPackageName(this.intent);
    }

    public void updateIcon(IconCache iconCache) {
        Bitmap icon = iconCache.getIcon(this.intent);
        this.mIcon = icon;
        this.usingFallbackIcon = iconCache.isDefaultIcon(icon);
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
    void onAddToDatabase(ContentValues contentValues) {
        super.onAddToDatabase(contentValues);
        contentValues.put("title", this.title != null ? this.title.toString() : null);
        Intent intent = this.intent;
        contentValues.put(LauncherSettings.BaseLauncherColumns.INTENT, intent != null ? intent.toUri(0) : null);
        if (this.customIcon) {
            contentValues.put(LauncherSettings.BaseLauncherColumns.ICON_TYPE, (Integer) 1);
            writeBitmap(contentValues, this.mIcon);
            return;
        }
        if (!this.usingFallbackIcon) {
            writeBitmap(contentValues, this.mIcon);
        }
        contentValues.put(LauncherSettings.BaseLauncherColumns.ICON_TYPE, (Integer) 0);
        Intent.ShortcutIconResource shortcutIconResource = this.iconResource;
        if (shortcutIconResource != null) {
            contentValues.put(LauncherSettings.BaseLauncherColumns.ICON_PACKAGE, shortcutIconResource.packageName);
            contentValues.put(LauncherSettings.BaseLauncherColumns.ICON_RESOURCE, this.iconResource.resourceName);
        }
    }

    @Override // com.android.launcher2.ItemInfo
    public String toString() {
        return "ShortcutInfo(title=" + (this.title == null ? "" : this.title.toString()) + "intent=" + this.intent + "id=" + this.id + " type=" + this.itemType + " container=" + this.container + " screen=" + this.screen + " cellX=" + this.cellX + " cellY=" + this.cellY + " spanX=" + this.spanX + " spanY=" + this.spanY + " dropPos=" + this.dropPos + " unreadNum= " + this.unreadNum + ")";
    }

    public static void dumpShortcutInfoList(String str, String str2, ArrayList<ShortcutInfo> arrayList) {
        L.d(str, str2 + " size=" + arrayList.size());
        for (ShortcutInfo shortcutInfo : arrayList) {
            L.d(str, "   title=\"" + ((Object) shortcutInfo.title) + " icon=" + shortcutInfo.mIcon + " customIcon=" + shortcutInfo.customIcon);
        }
    }
}
