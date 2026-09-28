package com.android.launcher2;

import android.graphics.Rect;

/* JADX INFO: compiled from: AppsCustomizePagedView.java */
/* JADX INFO: loaded from: classes.dex */
class RectCache extends WeakReferenceThreadLocal<Rect> {
    RectCache() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.android.launcher2.WeakReferenceThreadLocal
    public Rect initialValue() {
        return new Rect();
    }
}
