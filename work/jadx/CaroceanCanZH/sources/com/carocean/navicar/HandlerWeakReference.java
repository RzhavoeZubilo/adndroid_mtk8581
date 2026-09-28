package com.carocean.navicar;

import android.os.Handler;
import android.os.Looper;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class HandlerWeakReference<T> extends Handler {
    public final WeakReference<T> mWeakReference;

    public HandlerWeakReference(T t) {
        this.mWeakReference = new WeakReference<>(t);
    }

    public HandlerWeakReference(T t, Looper looper) {
        super(looper);
        this.mWeakReference = new WeakReference<>(t);
    }
}
