package com.android.launcher2;

import android.graphics.Paint;

/* JADX INFO: compiled from: AppsCustomizePagedView.java */
/* JADX INFO: loaded from: classes.dex */
class PaintCache extends WeakReferenceThreadLocal<Paint> {
    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.android.launcher2.WeakReferenceThreadLocal
    public Paint initialValue() {
        return null;
    }

    PaintCache() {
    }
}
