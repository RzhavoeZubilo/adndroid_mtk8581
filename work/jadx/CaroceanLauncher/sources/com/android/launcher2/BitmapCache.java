package com.android.launcher2;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: AppsCustomizePagedView.java */
/* JADX INFO: loaded from: classes.dex */
class BitmapCache extends WeakReferenceThreadLocal<Bitmap> {
    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.android.launcher2.WeakReferenceThreadLocal
    public Bitmap initialValue() {
        return null;
    }

    BitmapCache() {
    }
}
