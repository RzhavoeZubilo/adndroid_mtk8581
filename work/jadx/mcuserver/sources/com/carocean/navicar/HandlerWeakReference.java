package com.carocean.navicar;

import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class HandlerWeakReference<T> extends Handler {
    public final WeakReference<T> mWeakReference;

    public HandlerWeakReference(T object) {
        this.mWeakReference = new WeakReference<>(object);
    }

    public HandlerWeakReference(T object, Looper looper) {
        super(looper);
        this.mWeakReference = new WeakReference<>(object);
    }
}
