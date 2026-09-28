package com.android.launcher2;

import android.appwidget.AppWidgetHostView;
import android.content.ComponentName;
import android.content.ContentValues;

/* JADX INFO: loaded from: classes.dex */
class LauncherAppWidgetInfo extends ItemInfo {
    static final int NO_ID = -1;
    int appWidgetId;
    private boolean mHasNotifiedInitialWidgetSizeChanged;
    ComponentName providerName;
    int minWidth = -1;
    int minHeight = -1;
    AppWidgetHostView hostView = null;

    LauncherAppWidgetInfo(int i, ComponentName componentName) {
        this.appWidgetId = -1;
        this.itemType = 4;
        this.appWidgetId = i;
        this.providerName = componentName;
        this.spanX = -1;
        this.spanY = -1;
    }

    @Override // com.android.launcher2.ItemInfo
    void onAddToDatabase(ContentValues contentValues) {
        super.onAddToDatabase(contentValues);
        contentValues.put("appWidgetId", Integer.valueOf(this.appWidgetId));
    }

    void onBindAppWidget(Launcher launcher) {
        if (this.mHasNotifiedInitialWidgetSizeChanged) {
            return;
        }
        notifyWidgetSizeChanged(launcher);
    }

    void notifyWidgetSizeChanged(Launcher launcher) {
        AppWidgetResizeFrame.updateWidgetSizeRanges(this.hostView, launcher, this.spanX, this.spanY);
        this.mHasNotifiedInitialWidgetSizeChanged = true;
    }

    @Override // com.android.launcher2.ItemInfo
    public String toString() {
        return "AppWidget(id=" + Integer.toString(this.appWidgetId) + " screen=" + this.screen + " cellX=" + this.cellX + " cellY=" + this.cellY + " spanX=" + this.spanX + " spanY=" + this.spanY + " providerName = " + this.providerName + ")";
    }

    @Override // com.android.launcher2.ItemInfo
    void unbind() {
        super.unbind();
        this.hostView = null;
    }
}
