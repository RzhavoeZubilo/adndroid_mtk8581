package com.android.launcher2;

import android.graphics.Canvas;

/* JADX INFO: compiled from: AppsCustomizePagedView.java */
/* JADX INFO: loaded from: classes.dex */
class CanvasCache extends WeakReferenceThreadLocal<Canvas> {
    CanvasCache() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.android.launcher2.WeakReferenceThreadLocal
    public Canvas initialValue() {
        return new Canvas();
    }
}
