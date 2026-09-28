package com.can.ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.can.activity.R;
import com.carocean.navicar.util.ZHTDOEMManager;

/* JADX INFO: loaded from: classes.dex */
public class ID8SpeedMeter extends View {
    private static int POINTER_WIDTH = 207;
    private static int POINTER_X_OFFSET = 35;
    private static int POINTER_Y_OFFSET = 7;
    private static final String TAG = "ID8SpeedMeter";
    private int mMeterType;
    private Paint mPaint;
    private Bitmap pointerBitmap;
    private int rpm;
    private int rpmPointerXOffset;
    private Rect rpmProcessDstR;
    private Rect rpmProcessSrcR;
    private Bitmap rpmProgressBitmap;
    private int speed;
    private int speedPointerXOffset;
    private Rect speedProcessDstR;
    private Rect speedProcessSrcR;
    private Bitmap speedProgressBitmap;

    public ID8SpeedMeter(Context context) {
        this(context, null);
    }

    public ID8SpeedMeter(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ID8SpeedMeter(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ID8SpeedMeter(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.speedPointerXOffset = 211;
        this.rpmPointerXOffset = 0;
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainAttributes = getResources().obtainAttributes(attributeSet, R.styleable.ID8SpeedMeter);
        if (typedArrayObtainAttributes != null) {
            this.mMeterType = typedArrayObtainAttributes.getInteger(0, 0);
            typedArrayObtainAttributes.recycle();
        }
        this.speedProgressBitmap = BitmapFactory.decodeResource(getResources(), R.drawable.bmw_id8_orange_speed_progress);
        this.rpmProgressBitmap = BitmapFactory.decodeResource(getResources(), R.drawable.bmw_id8_orange_rpm_progress);
        this.pointerBitmap = BitmapFactory.decodeResource(getResources(), R.drawable.bmw_id8_drive_speed_pointer);
        this.mPaint = new Paint();
        this.speedProcessSrcR = new Rect(0, this.speedProgressBitmap.getHeight(), this.speedProgressBitmap.getWidth(), this.speedProgressBitmap.getHeight());
        this.speedProcessDstR = new Rect(0, this.speedProgressBitmap.getHeight(), this.speedProgressBitmap.getWidth(), this.speedProgressBitmap.getHeight());
        this.rpmProcessSrcR = new Rect(0, this.rpmProgressBitmap.getHeight(), this.rpmProgressBitmap.getWidth(), this.rpmProgressBitmap.getHeight());
        this.rpmProcessDstR = new Rect(0, this.rpmProgressBitmap.getHeight(), this.rpmProgressBitmap.getWidth(), this.rpmProgressBitmap.getHeight());
        this.speedPointerXOffset = (int) convertData(211.0f);
        this.rpmPointerXOffset = (int) convertData(0.0f);
    }

    public void setSpeed(int i) {
        if (this.speed != i) {
            this.speed = i;
            if (i <= 136) {
                this.speedPointerXOffset = (int) (((136 - i) * convertData(211.0f)) / 136.0f);
                float f = i / 136.0f;
                this.speedProcessSrcR.top = (int) (this.speedProgressBitmap.getHeight() - (convertData(351.0f) * f));
                this.speedProcessDstR.top = (int) (this.speedProgressBitmap.getHeight() - (f * convertData(351.0f)));
            } else {
                if (i > 220) {
                    i = 220;
                }
                float f2 = i - 136;
                this.speedPointerXOffset = (int) ((convertData(189.0f) * f2) / 84.0f);
                float f3 = f2 / 84.0f;
                this.speedProcessSrcR.top = (int) (this.speedProgressBitmap.getHeight() - ((convertData(217.0f) * f3) + convertData(349.0f)));
                this.speedProcessDstR.top = (int) (this.speedProgressBitmap.getHeight() - ((f3 * convertData(217.0f)) + convertData(349.0f)));
            }
            invalidate();
        }
    }

    public void setRpm(int i) {
        if (this.rpm != i) {
            this.rpm = i;
            if (i <= 5000) {
                float f = i;
                this.rpmPointerXOffset = ((int) (convertData(POINTER_WIDTH) - (((5000.0f - f) * convertData(207.0f)) / 5000.0f))) + 20;
                float f2 = f / 5000.0f;
                this.rpmProcessSrcR.top = (int) (this.rpmProgressBitmap.getHeight() - (convertData(356.0f) * f2));
                this.rpmProcessDstR.top = (int) (this.rpmProgressBitmap.getHeight() - (f2 * convertData(356.0f)));
            } else {
                if (i > 8000) {
                    i = 8000;
                }
                float f3 = i - 5000;
                this.rpmPointerXOffset = ((int) (convertData(POINTER_WIDTH) - ((convertData(197.0f) * f3) / 3000.0f))) + 20;
                float f4 = f3 / 3000.0f;
                this.rpmProcessSrcR.top = (int) (this.rpmProgressBitmap.getHeight() - ((convertData(214.0f) * f4) + convertData(356.0f)));
                this.rpmProcessDstR.top = (int) (this.rpmProgressBitmap.getHeight() - ((f4 * convertData(214.0f)) + convertData(356.0f)));
            }
            invalidate();
        }
    }

    private float convertData(float f) {
        return ZHTDOEMManager.is1280x480And160dpi() ? (f * 2.0f) / 3.0f : f;
    }

    public void setSpeedProgressResource(int i) {
        this.speedProgressBitmap = BitmapFactory.decodeResource(getResources(), i);
        invalidate();
    }

    public void setRpmProgressResource(int i) {
        this.rpmProgressBitmap = BitmapFactory.decodeResource(getResources(), i);
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getVisibility() != 0) {
            return;
        }
        int i = this.mMeterType;
        if (i == 0) {
            Bitmap bitmap = this.speedProgressBitmap;
            if (bitmap != null) {
                canvas.drawBitmap(bitmap, this.speedProcessSrcR, this.speedProcessDstR, (Paint) null);
            }
            Bitmap bitmap2 = this.pointerBitmap;
            if (bitmap2 != null) {
                canvas.drawBitmap(bitmap2, this.speedPointerXOffset - convertData(POINTER_X_OFFSET), this.speedProcessDstR.top - convertData(POINTER_Y_OFFSET), (Paint) null);
                return;
            }
            return;
        }
        if (i == 1) {
            Bitmap bitmap3 = this.rpmProgressBitmap;
            if (bitmap3 != null) {
                canvas.drawBitmap(bitmap3, this.rpmProcessSrcR, this.rpmProcessDstR, (Paint) null);
            }
            Bitmap bitmap4 = this.pointerBitmap;
            if (bitmap4 != null) {
                canvas.drawBitmap(bitmap4, this.rpmPointerXOffset, this.rpmProcessDstR.top - convertData(POINTER_Y_OFFSET), (Paint) null);
            }
        }
    }
}
