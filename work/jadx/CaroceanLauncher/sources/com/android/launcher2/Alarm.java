package com.android.launcher2;

import android.os.Handler;
import com.android.launcher2.uitl.L;

/* JADX INFO: loaded from: classes.dex */
public class Alarm implements Runnable {
    private static final String TAG = "Alarm";
    private OnAlarmListener mAlarmListener;
    private long mAlarmTriggerTime;
    private boolean mWaitingForCallback;
    private boolean mAlarmPending = false;
    private Handler mHandler = new Handler();

    public void setOnAlarmListener(OnAlarmListener onAlarmListener) {
        this.mAlarmListener = onAlarmListener;
    }

    public void setAlarm(long j) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.mAlarmPending = true;
        this.mAlarmTriggerTime = jCurrentTimeMillis + j;
        if (L.DEBUG) {
            L.d(TAG, "setAlarm: currentTime = " + jCurrentTimeMillis + ", millisecondsInFuture = " + j + ", mAlarmListener = " + this.mAlarmListener);
        }
        if (this.mWaitingForCallback) {
            return;
        }
        this.mHandler.postDelayed(this, this.mAlarmTriggerTime - jCurrentTimeMillis);
        this.mWaitingForCallback = true;
    }

    public void cancelAlarm() {
        if (L.DEBUG) {
            L.d(TAG, "Cancel alarm here: mAlarmListener = " + this.mAlarmListener);
        }
        this.mAlarmTriggerTime = 0L;
        this.mAlarmPending = false;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.mWaitingForCallback = false;
        if (this.mAlarmTriggerTime != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (L.DEBUG) {
                L.d(TAG, "run: mAlarmTriggerTime = " + this.mAlarmTriggerTime + ", currentTime = " + jCurrentTimeMillis + ", mAlarmListener = " + this.mAlarmListener);
            }
            long j = this.mAlarmTriggerTime;
            if (j > jCurrentTimeMillis) {
                this.mHandler.postDelayed(this, Math.max(0L, j - jCurrentTimeMillis));
                this.mWaitingForCallback = true;
                return;
            }
            this.mAlarmPending = false;
            OnAlarmListener onAlarmListener = this.mAlarmListener;
            if (onAlarmListener != null) {
                onAlarmListener.onAlarm(this);
            }
        }
    }

    public boolean alarmPending() {
        return this.mAlarmPending;
    }
}
