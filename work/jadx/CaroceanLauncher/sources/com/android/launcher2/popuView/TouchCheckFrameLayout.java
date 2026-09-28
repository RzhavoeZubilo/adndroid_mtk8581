package com.android.launcher2.popuView;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.FrameLayout;
import com.android.launcher2.uitl.Function;

/* JADX INFO: loaded from: classes.dex */
public class TouchCheckFrameLayout extends FrameLayout {
    public static final String ACTION_FIVEHAND_TOUCH = "action.fivehand.touch";
    static final int DELAY_TIME = 2000;
    static final int HAND_COUNT = 3;
    static int mTouchPointCount;
    Context mContext;
    Handler mHandler;
    Runnable mRunnable;

    public TouchCheckFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = null;
        this.mHandler = new Handler();
        this.mRunnable = new Runnable() { // from class: com.android.launcher2.popuView.TouchCheckFrameLayout.1
            @Override // java.lang.Runnable
            public void run() {
                TouchCheckFrameLayout.this.sendFiveHandMessage();
            }
        };
        this.mContext = context;
    }

    public TouchCheckFrameLayout(Context context) {
        super(context);
        this.mContext = null;
        this.mHandler = new Handler();
        this.mRunnable = new Runnable() { // from class: com.android.launcher2.popuView.TouchCheckFrameLayout.1
            @Override // java.lang.Runnable
            public void run() {
                TouchCheckFrameLayout.this.sendFiveHandMessage();
            }
        };
        this.mContext = context;
    }

    public TouchCheckFrameLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mContext = null;
        this.mHandler = new Handler();
        this.mRunnable = new Runnable() { // from class: com.android.launcher2.popuView.TouchCheckFrameLayout.1
            @Override // java.lang.Runnable
            public void run() {
                TouchCheckFrameLayout.this.sendFiveHandMessage();
            }
        };
        this.mContext = context;
    }

    void sendFiveHandMessage() {
        if (this.mContext == null || mTouchPointCount < 3) {
            return;
        }
        Log.d("liuzhiyuan", ".................................onCalibartion");
        Function.onCalibartion(getContext());
    }
}
