package com.android.launcher2;

import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: AppsCustomizePagedView.java */
/* JADX INFO: loaded from: classes.dex */
class AsyncTaskPageData {
    AsyncTaskCallback doInBackgroundCallback;
    ArrayList<Bitmap> generatedImages;
    ArrayList<Object> items;
    int maxImageHeight;
    int maxImageWidth;
    int page;
    AsyncTaskCallback postExecuteCallback;
    ArrayList<Bitmap> sourceImages;

    /* JADX INFO: compiled from: AppsCustomizePagedView.java */
    enum Type {
        LoadWidgetPreviewData
    }

    AsyncTaskPageData(int i, ArrayList<Object> arrayList, ArrayList<Bitmap> arrayList2, AsyncTaskCallback asyncTaskCallback, AsyncTaskCallback asyncTaskCallback2) {
        this.page = i;
        this.items = arrayList;
        this.sourceImages = arrayList2;
        this.generatedImages = new ArrayList<>();
        this.maxImageHeight = -1;
        this.maxImageWidth = -1;
        this.doInBackgroundCallback = asyncTaskCallback;
        this.postExecuteCallback = asyncTaskCallback2;
    }

    AsyncTaskPageData(int i, ArrayList<Object> arrayList, int i2, int i3, AsyncTaskCallback asyncTaskCallback, AsyncTaskCallback asyncTaskCallback2) {
        this.page = i;
        this.items = arrayList;
        this.generatedImages = new ArrayList<>();
        this.maxImageWidth = i2;
        this.maxImageHeight = i3;
        this.doInBackgroundCallback = asyncTaskCallback;
        this.postExecuteCallback = asyncTaskCallback2;
    }

    void cleanup(boolean z) {
        ArrayList<Bitmap> arrayList = this.sourceImages;
        if (arrayList != null) {
            if (z) {
                Iterator<Bitmap> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().recycle();
                }
            }
            this.sourceImages.clear();
        }
        ArrayList<Bitmap> arrayList2 = this.generatedImages;
        if (arrayList2 != null) {
            if (z) {
                Iterator<Bitmap> it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    it2.next().recycle();
                }
            }
            this.generatedImages.clear();
        }
    }
}
