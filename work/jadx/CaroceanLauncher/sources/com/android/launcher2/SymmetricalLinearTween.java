package com.android.launcher2;

import android.os.Handler;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
class SymmetricalLinearTween {
    private static final int FPS = 30;
    private static final int FRAME_TIME = 33;
    long mBase;
    TweenCallback mCallback;
    boolean mDirection;
    int mDuration;
    Handler mHandler;
    boolean mRunning;
    Runnable mTick = new Runnable() { // from class: com.android.launcher2.SymmetricalLinearTween.1
        @Override // java.lang.Runnable
        public void run() {
            long j = SymmetricalLinearTween.this.mBase;
            long jUptimeMillis = SystemClock.uptimeMillis() - j;
            int i = SymmetricalLinearTween.this.mDuration;
            float f = jUptimeMillis / i;
            float f2 = 1.0f;
            if (!SymmetricalLinearTween.this.mDirection) {
                f = 1.0f - f;
            }
            if (f <= 1.0f) {
                f2 = f < 0.0f ? 0.0f : f;
            }
            float f3 = SymmetricalLinearTween.this.mValue;
            SymmetricalLinearTween.this.mValue = f2;
            SymmetricalLinearTween.this.mCallback.onTweenValueChanged(f2, f3);
            long j2 = j + ((long) ((((int) (jUptimeMillis / 33)) + 1) * 33));
            long j3 = i;
            if (jUptimeMillis < j3) {
                SymmetricalLinearTween.this.mHandler.postAtTime(this, j2);
            }
            if (jUptimeMillis >= j3) {
                SymmetricalLinearTween.this.mCallback.onTweenFinished();
                SymmetricalLinearTween.this.mRunning = false;
            }
        }
    };
    float mValue;

    public SymmetricalLinearTween(boolean z, int i, TweenCallback tweenCallback) {
        this.mValue = z ? 1.0f : 0.0f;
        this.mDirection = z;
        this.mDuration = i;
        this.mCallback = tweenCallback;
        this.mHandler = new Handler();
    }

    public void start(boolean z) {
        start(z, SystemClock.uptimeMillis());
    }

    public void start(boolean z, long j) {
        if (z != this.mDirection) {
            if (!this.mRunning) {
                this.mBase = j;
                this.mRunning = true;
                this.mCallback.onTweenStarted();
                this.mHandler.postAtTime(this.mTick, SystemClock.uptimeMillis() + 33);
            } else {
                long jUptimeMillis = SystemClock.uptimeMillis();
                this.mBase = (jUptimeMillis + (jUptimeMillis - this.mBase)) - ((long) this.mDuration);
            }
            this.mDirection = z;
        }
    }
}
