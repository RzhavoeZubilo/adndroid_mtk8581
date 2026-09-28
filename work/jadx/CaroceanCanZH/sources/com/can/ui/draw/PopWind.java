package com.can.ui.draw;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
public class PopWind {
    private int mHeight;
    private int mWidth;
    private boolean mbshow = false;
    private WindowManager mWindowManager = null;
    private byte[] mObject = new byte[1];

    public PopWind(int i, int i2) {
        this.mWidth = 0;
        this.mHeight = 0;
        this.mWidth = i;
        this.mHeight = i2;
    }

    public long show(Context context, View view) {
        return show(context, view, 17);
    }

    public long show(Context context, View view, int i) {
        if (this.mbshow) {
            return System.currentTimeMillis();
        }
        this.mWindowManager = (WindowManager) context.getSystemService("window");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.type = 2010;
        layoutParams.flags = 132904;
        layoutParams.format = -3;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.mWindowManager.getDefaultDisplay().getMetrics(displayMetrics);
        layoutParams.width = displayMetrics.widthPixels - this.mWidth;
        layoutParams.height = displayMetrics.heightPixels - this.mHeight;
        layoutParams.gravity = i;
        synchronized (this.mObject) {
            if (!this.mbshow && view != null) {
                this.mbshow = true;
                try {
                    this.mWindowManager.addView(view, layoutParams);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return System.currentTimeMillis();
    }

    public long showEx(Context context, View view) {
        if (this.mbshow) {
            return System.currentTimeMillis();
        }
        this.mWindowManager = (WindowManager) context.getSystemService("window");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.type = 2010;
        layoutParams.flags = 132896;
        layoutParams.format = -3;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.mWindowManager.getDefaultDisplay().getMetrics(displayMetrics);
        layoutParams.width = displayMetrics.widthPixels - this.mWidth;
        layoutParams.height = displayMetrics.heightPixels - this.mHeight;
        layoutParams.gravity = 17;
        synchronized (this.mObject) {
            if (!this.mbshow && view != null) {
                this.mbshow = true;
                try {
                    this.mWindowManager.addView(view, layoutParams);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return System.currentTimeMillis();
    }

    public void hide(View view) {
        synchronized (this.mObject) {
            if (view != null) {
                if (this.mbshow) {
                    this.mbshow = false;
                    try {
                        this.mWindowManager.removeView(view);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    public boolean IsVisable() {
        return this.mbshow;
    }
}
