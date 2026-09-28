package com.can.ui.draw;

import android.content.Context;
import android.os.SystemProperties;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.can.activity.R;
import com.can.assist.CanContant;

/* JADX INFO: loaded from: classes.dex */
public class TouchLayout extends FrameLayout implements CanContant, Rgb.OnRGBlistener {
    public static final String ACTION_FIVEHAND_TOUCH = "action.fivehand.touch";
    public static final int DELAY_TIME = 500;
    public static final int HAND_COUNT = 2;
    public static final String PERSYS_BACKCAR_CAMERA_TYPE = "persist.sys.bc_camera_type";
    public static int mTouchPointCount;
    private Context mContext;
    private PopWind mRgbPopWind;
    private Rgb mRgbsetView;

    public TouchLayout(Context context) {
        super(context);
        this.mContext = null;
        this.mRgbsetView = null;
        this.mRgbPopWind = null;
        this.mContext = context;
    }

    public TouchLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = null;
        this.mRgbsetView = null;
        this.mRgbPopWind = null;
        this.mContext = context;
        this.mRgbsetView = (Rgb) LayoutInflater.from(context).inflate(R.layout.rgbset, (ViewGroup) null);
        this.mRgbPopWind = new PopWind(0, 0);
        this.mRgbsetView.setRGBlistener(this);
    }

    public TouchLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mContext = null;
        this.mRgbsetView = null;
        this.mRgbPopWind = null;
        this.mContext = context;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        int pointerCount = motionEvent.getPointerCount();
        mTouchPointCount = pointerCount;
        if (pointerCount < 2) {
            return false;
        }
        if (action != 5 && action != 0) {
            return false;
        }
        showRGB();
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        int pointerCount = motionEvent.getPointerCount();
        mTouchPointCount = pointerCount;
        if (pointerCount < 2) {
            return true;
        }
        if (action != 5 && action != 0) {
            return true;
        }
        showRGB();
        return false;
    }

    public void showRGB() {
        PopWind popWind;
        if (SystemProperties.getInt(PERSYS_BACKCAR_CAMERA_TYPE, 0) != 0 || (popWind = this.mRgbPopWind) == null) {
            return;
        }
        popWind.showEx(this.mContext, this.mRgbsetView);
    }

    public boolean IsRGBShow() {
        return this.mRgbPopWind.IsVisable();
    }

    public void hideRGB() {
        PopWind popWind = this.mRgbPopWind;
        if (popWind != null) {
            popWind.hide(this.mRgbsetView);
        }
    }

    @Override // com.can.ui.draw.Rgb.OnRGBlistener
    public void onShow(boolean z) {
        if (z) {
            showRGB();
        } else {
            hideRGB();
        }
    }

    public void OverReverse() {
        if (IsRGBShow()) {
            hideRGB();
        }
    }
}
