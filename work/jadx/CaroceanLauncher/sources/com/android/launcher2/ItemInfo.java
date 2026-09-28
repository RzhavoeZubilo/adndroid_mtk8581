package com.android.launcher2;

import android.content.ContentValues;
import android.content.Intent;
import android.graphics.Bitmap;
import com.android.launcher2.uitl.L;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ItemInfo {
    static final int NO_ID = -1;
    int cellX;
    int cellY;
    long container;
    int[] dropPos;
    long id;
    int itemType;
    int minSpanX;
    int minSpanY;
    boolean requiresDbUpdate;
    int screen;
    int spanX;
    int spanY;
    public CharSequence title;
    int unreadNum;

    void unbind() {
    }

    ItemInfo() {
        this.id = -1L;
        this.container = -1L;
        this.screen = -1;
        this.cellX = -1;
        this.cellY = -1;
        this.spanX = 1;
        this.spanY = 1;
        this.minSpanX = 1;
        this.minSpanY = 1;
        this.requiresDbUpdate = false;
        this.dropPos = null;
        this.unreadNum = 0;
    }

    ItemInfo(ItemInfo itemInfo) {
        this.id = -1L;
        this.container = -1L;
        this.screen = -1;
        this.cellX = -1;
        this.cellY = -1;
        this.spanX = 1;
        this.spanY = 1;
        this.minSpanX = 1;
        this.minSpanY = 1;
        this.requiresDbUpdate = false;
        this.dropPos = null;
        this.unreadNum = 0;
        this.id = itemInfo.id;
        this.cellX = itemInfo.cellX;
        this.cellY = itemInfo.cellY;
        this.spanX = itemInfo.spanX;
        this.spanY = itemInfo.spanY;
        this.screen = itemInfo.screen;
        this.itemType = itemInfo.itemType;
        this.container = itemInfo.container;
        LauncherModel.checkItemInfo(this);
        this.unreadNum = itemInfo.unreadNum;
    }

    public static String getPackageName(Intent intent) {
        if (intent == null) {
            return "";
        }
        String packageName = intent.getPackage();
        if (packageName == null && intent.getComponent() != null) {
            packageName = intent.getComponent().getPackageName();
        }
        return packageName != null ? packageName : "";
    }

    void onAddToDatabase(ContentValues contentValues) {
        contentValues.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, Integer.valueOf(this.itemType));
        contentValues.put("container", Long.valueOf(this.container));
        contentValues.put("screen", Integer.valueOf(this.screen));
        contentValues.put("cellX", Integer.valueOf(this.cellX));
        contentValues.put("cellY", Integer.valueOf(this.cellY));
        contentValues.put("spanX", Integer.valueOf(this.spanX));
        contentValues.put("spanY", Integer.valueOf(this.spanY));
    }

    void updateValuesWithCoordinates(ContentValues contentValues, int i, int i2) {
        contentValues.put("cellX", Integer.valueOf(i));
        contentValues.put("cellY", Integer.valueOf(i2));
    }

    static byte[] flattenBitmap(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bitmap.getWidth() * bitmap.getHeight() * 4);
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            L.w("Favorite", "Could not write icon");
            return null;
        }
    }

    static void writeBitmap(ContentValues contentValues, Bitmap bitmap) {
        if (bitmap != null) {
            contentValues.put(LauncherSettings.BaseLauncherColumns.ICON, flattenBitmap(bitmap));
        }
    }

    public String toString() {
        return "Item(id=" + this.id + " type=" + this.itemType + " container=" + this.container + " screen=" + this.screen + " cellX=" + this.cellX + " cellY=" + this.cellY + " spanX=" + this.spanX + " spanY=" + this.spanY + " dropPos=" + this.dropPos + " unreadNum= " + this.unreadNum + ")";
    }
}
