package com.android.launcher2.popuView;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import com.yecon.launcher1.R;
import java.util.Calendar;

/* JADX INFO: loaded from: classes.dex */
public class AnalogClock extends View {
    static final int DELAYMILLIS = 1000;
    int availableHeight;
    int availableWidth;
    BitmapDrawable bmdDial;
    BitmapDrawable bmdHour;
    BitmapDrawable bmdMinute;
    BitmapDrawable bmdSecond;
    int centerX;
    int centerY;
    Bitmap mBmpDial;
    Bitmap mBmpHour;
    Bitmap mBmpMinute;
    Bitmap mBmpSecond;
    int mHeigh;
    Paint mPaint;
    int mTempHeigh;
    int mTempWidth;
    int mWidth;
    int millseconds;
    private String sTimeZoneString;
    int second;
    Handler tickHandler;
    private Runnable tickRunnable;

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public AnalogClock(Context context) {
        super(context);
        this.availableWidth = -1;
        this.availableHeight = -1;
        this.second = 0;
        this.millseconds = 0;
        this.tickRunnable = new Runnable() { // from class: com.android.launcher2.popuView.AnalogClock.1
            @Override // java.lang.Runnable
            public void run() {
                AnalogClock.this.postInvalidate();
                AnalogClock.this.tickHandler.postDelayed(AnalogClock.this.tickRunnable, 1000L);
            }
        };
    }

    public AnalogClock(Context context, AttributeSet attributeSet) {
        this(context, "GMT+8锛�00");
    }

    public AnalogClock(Context context, String str) {
        super(context);
        this.availableWidth = -1;
        this.availableHeight = -1;
        this.second = 0;
        this.millseconds = 0;
        this.tickRunnable = new Runnable() { // from class: com.android.launcher2.popuView.AnalogClock.1
            @Override // java.lang.Runnable
            public void run() {
                AnalogClock.this.postInvalidate();
                AnalogClock.this.tickHandler.postDelayed(AnalogClock.this.tickRunnable, 1000L);
            }
        };
        this.sTimeZoneString = str;
        this.mBmpHour = BitmapFactory.decodeResource(getResources(), R.drawable.clock_hour);
        this.bmdHour = new BitmapDrawable(this.mBmpHour);
        this.mBmpMinute = BitmapFactory.decodeResource(getResources(), R.drawable.clock_minute);
        this.bmdMinute = new BitmapDrawable(this.mBmpMinute);
        this.mBmpSecond = BitmapFactory.decodeResource(getResources(), R.drawable.clock_second);
        this.bmdSecond = new BitmapDrawable(this.mBmpSecond);
        this.mBmpDial = BitmapFactory.decodeResource(getResources(), R.drawable.clock_dial);
        this.bmdDial = new BitmapDrawable(this.mBmpDial);
        this.mWidth = this.mBmpDial.getWidth();
        this.mHeigh = this.mBmpDial.getHeight();
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setColor(-16776961);
        run();
    }

    public void run() {
        Handler handler = new Handler();
        this.tickHandler = handler;
        handler.post(this.tickRunnable);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getVisibility() != 0) {
            return;
        }
        Calendar calendar = Calendar.getInstance();
        int i = calendar.get(10);
        float f = calendar.get(12);
        float f2 = (i * 30.0f) + ((f / 60.0f) * 30.0f);
        float f3 = f * 6.0f;
        boolean z = false;
        if (this.second != calendar.get(13)) {
            this.second = calendar.get(13);
            this.millseconds = 0;
        } else {
            int i2 = this.millseconds + 100;
            this.millseconds = i2;
            this.millseconds = Math.min(i2, 1000);
        }
        float f4 = (calendar.get(13) + (this.millseconds / 1000.0f)) * 6.0f;
        if (this.availableWidth <= 0 || this.availableHeight <= 0) {
            this.availableWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            this.availableHeight = measuredHeight;
            this.centerX = this.availableWidth / 2;
            this.centerY = measuredHeight / 2;
        }
        int i3 = this.availableWidth;
        int i4 = this.mWidth;
        if (i3 < i4 || this.availableHeight < this.mHeigh) {
            z = true;
            float fMin = Math.min(i3 / i4, this.availableHeight / this.mHeigh);
            canvas.save();
            canvas.scale(fMin, fMin, this.centerX, this.centerY);
        }
        BitmapDrawable bitmapDrawable = this.bmdDial;
        int i5 = this.centerX;
        int i6 = this.mWidth;
        int i7 = this.centerY;
        int i8 = this.mHeigh;
        bitmapDrawable.setBounds(i5 - (i6 / 2), i7 - (i8 / 2), i5 + (i6 / 2), i7 + (i8 / 2));
        this.bmdDial.draw(canvas);
        this.mTempWidth = this.bmdHour.getIntrinsicWidth();
        this.mTempHeigh = this.bmdHour.getIntrinsicHeight();
        canvas.save();
        canvas.rotate(f2, this.centerX, this.centerY);
        BitmapDrawable bitmapDrawable2 = this.bmdHour;
        int i9 = this.centerX;
        int i10 = this.mTempWidth;
        int i11 = this.centerY;
        int i12 = this.mTempHeigh;
        bitmapDrawable2.setBounds(i9 - (i10 / 2), i11 - (i12 / 2), i9 + (i10 / 2), i11 + (i12 / 2));
        this.bmdHour.draw(canvas);
        canvas.restore();
        this.mTempWidth = this.bmdMinute.getIntrinsicWidth();
        this.mTempHeigh = this.bmdMinute.getIntrinsicHeight();
        canvas.save();
        canvas.rotate(f3, this.centerX, this.centerY);
        BitmapDrawable bitmapDrawable3 = this.bmdMinute;
        int i13 = this.centerX;
        int i14 = this.mTempWidth;
        int i15 = this.centerY;
        int i16 = this.mTempHeigh;
        bitmapDrawable3.setBounds(i13 - (i14 / 2), i15 - (i16 / 2), i13 + (i14 / 2), i15 + (i16 / 2));
        this.bmdMinute.draw(canvas);
        canvas.restore();
        this.mTempWidth = this.bmdSecond.getIntrinsicWidth();
        this.mTempHeigh = this.bmdSecond.getIntrinsicHeight();
        canvas.save();
        canvas.rotate(f4, this.centerX, this.centerY);
        BitmapDrawable bitmapDrawable4 = this.bmdSecond;
        int i17 = this.centerX;
        int i18 = this.mTempWidth;
        int i19 = this.centerY;
        int i20 = this.mTempHeigh;
        bitmapDrawable4.setBounds(i17 - (i18 / 2), i19 - (i20 / 2), i17 + (i18 / 2), i19 + (i20 / 2));
        this.bmdSecond.draw(canvas);
        canvas.restore();
        if (z) {
            canvas.restore();
        }
    }
}
