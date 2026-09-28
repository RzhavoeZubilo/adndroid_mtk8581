package com.android.launcher2;

import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: AppsCustomizePagedView.java */
/* JADX INFO: loaded from: classes.dex */
abstract class WeakReferenceThreadLocal<T> {
    private ThreadLocal<WeakReference<T>> mThreadLocal = new ThreadLocal<>();

    abstract T initialValue();

    public void set(T t) {
        this.mThreadLocal.set(new WeakReference<>(t));
    }

    public T get() {
        WeakReference<T> weakReference = this.mThreadLocal.get();
        if (weakReference == null) {
            T tInitialValue = initialValue();
            this.mThreadLocal.set(new WeakReference<>(tInitialValue));
            return tInitialValue;
        }
        T t = weakReference.get();
        if (t != null) {
            return t;
        }
        T tInitialValue2 = initialValue();
        this.mThreadLocal.set(new WeakReference<>(tInitialValue2));
        return tInitialValue2;
    }
}
