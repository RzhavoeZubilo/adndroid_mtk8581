package com.android.launcher2;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.os.Bundle;
import android.os.Parcelable;

/* JADX INFO: compiled from: PendingAddItemInfo.java */
/* JADX INFO: loaded from: classes.dex */
class PendingAddWidgetInfo extends PendingAddItemInfo {
    Bundle bindOptions;
    AppWidgetHostView boundWidget;
    Parcelable configurationData;
    int icon;
    AppWidgetProviderInfo info;
    String mimeType;
    int minHeight;
    int minResizeHeight;
    int minResizeWidth;
    int minWidth;
    int previewImage;

    public PendingAddWidgetInfo(AppWidgetProviderInfo appWidgetProviderInfo, String str, Parcelable parcelable) {
        this.bindOptions = null;
        this.itemType = 4;
        this.info = appWidgetProviderInfo;
        this.componentName = appWidgetProviderInfo.provider;
        this.minWidth = appWidgetProviderInfo.minWidth;
        this.minHeight = appWidgetProviderInfo.minHeight;
        this.minResizeWidth = appWidgetProviderInfo.minResizeWidth;
        this.minResizeHeight = appWidgetProviderInfo.minResizeHeight;
        this.previewImage = appWidgetProviderInfo.previewImage;
        this.icon = appWidgetProviderInfo.icon;
        if (str == null || parcelable == null) {
            return;
        }
        this.mimeType = str;
        this.configurationData = parcelable;
    }

    public PendingAddWidgetInfo(PendingAddWidgetInfo pendingAddWidgetInfo) {
        this.bindOptions = null;
        this.minWidth = pendingAddWidgetInfo.minWidth;
        this.minHeight = pendingAddWidgetInfo.minHeight;
        this.minResizeWidth = pendingAddWidgetInfo.minResizeWidth;
        this.minResizeHeight = pendingAddWidgetInfo.minResizeHeight;
        this.previewImage = pendingAddWidgetInfo.previewImage;
        this.icon = pendingAddWidgetInfo.icon;
        this.info = pendingAddWidgetInfo.info;
        this.boundWidget = pendingAddWidgetInfo.boundWidget;
        this.mimeType = pendingAddWidgetInfo.mimeType;
        this.configurationData = pendingAddWidgetInfo.configurationData;
        this.componentName = pendingAddWidgetInfo.componentName;
        this.itemType = pendingAddWidgetInfo.itemType;
        this.spanX = pendingAddWidgetInfo.spanX;
        this.spanY = pendingAddWidgetInfo.spanY;
        this.minSpanX = pendingAddWidgetInfo.minSpanX;
        this.minSpanY = pendingAddWidgetInfo.minSpanY;
        Bundle bundle = pendingAddWidgetInfo.bindOptions;
        this.bindOptions = bundle != null ? (Bundle) bundle.clone() : null;
    }

    @Override // com.android.launcher2.ItemInfo
    public String toString() {
        return "Widget: " + this.componentName.toShortString();
    }
}
