package com.can.ui.view;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.animation.Interpolator;
import com.can.activity.R;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Speedometer extends View {
    protected static final String TAG = "Speedometer";
    int availableHeight;
    int availableWidth;
    int centerX;
    int centerY;
    private RectF mArcRect;
    private Bitmap mBmpPointer;
    private Bitmap mBmpPointerBg;
    private Bitmap mBmpPointerScale;
    private BitmapDrawable mBmpdPointer;
    private BitmapDrawable mBmpdPointerBg;
    private int mGap;
    private Handler mHandler;
    int mHeight;
    private int[] mImageResArray;
    private float mMaxSpeed;
    private float mMaxSpeedAngle;
    private int mMode;
    private int mNumBitmapHeight;
    private int mNumBitmapWidth;
    private List<Bitmap> mNumBitmaps;
    private Paint mPaint;
    private PaintFlagsDrawFilter mPaintFlagsDrawFilter;
    private PorterDuffXfermode mPorterDuffXfermode;
    private Bitmap mRateBitmap;
    private Canvas mRateCanvas;
    private int mRotateFactor;
    private float mSpeed;
    private float mSpeedDrawing;
    private ValueAnimator mValueAnimator;
    int mWidth;

    public static class Mode {
        public static final int BLUE = 0;
        public static final int RED = 2;
        public static final int WHITE = 1;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    public Speedometer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mNumBitmaps = new ArrayList();
        this.mImageResArray = new int[]{R.drawable.carinfobignum0, R.drawable.carinfobignum1, R.drawable.carinfobignum2, R.drawable.carinfobignum3, R.drawable.carinfobignum4, R.drawable.carinfobignum5, R.drawable.carinfobignum6, R.drawable.carinfobignum7, R.drawable.carinfobignum8, R.drawable.carinfobignum9};
        this.availableWidth = -1;
        this.availableHeight = -1;
        this.mPaintFlagsDrawFilter = new PaintFlagsDrawFilter(0, 3);
        this.mPorterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        this.mHandler = new Handler() { // from class: com.can.ui.view.Speedometer.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
            }
        };
        this.mMaxSpeedAngle = 270.0f;
        this.mMaxSpeed = 260.0f;
        this.mMode = 1;
        this.mRotateFactor = 1;
        this.mGap = 1;
        init(context, attributeSet);
    }

    public Speedometer(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mNumBitmaps = new ArrayList();
        this.mImageResArray = new int[]{R.drawable.carinfobignum0, R.drawable.carinfobignum1, R.drawable.carinfobignum2, R.drawable.carinfobignum3, R.drawable.carinfobignum4, R.drawable.carinfobignum5, R.drawable.carinfobignum6, R.drawable.carinfobignum7, R.drawable.carinfobignum8, R.drawable.carinfobignum9};
        this.availableWidth = -1;
        this.availableHeight = -1;
        this.mPaintFlagsDrawFilter = new PaintFlagsDrawFilter(0, 3);
        this.mPorterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        this.mHandler = new Handler() { // from class: com.can.ui.view.Speedometer.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
            }
        };
        this.mMaxSpeedAngle = 270.0f;
        this.mMaxSpeed = 260.0f;
        this.mMode = 1;
        this.mRotateFactor = 1;
        this.mGap = 1;
    }

    public Speedometer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mNumBitmaps = new ArrayList();
        this.mImageResArray = new int[]{R.drawable.carinfobignum0, R.drawable.carinfobignum1, R.drawable.carinfobignum2, R.drawable.carinfobignum3, R.drawable.carinfobignum4, R.drawable.carinfobignum5, R.drawable.carinfobignum6, R.drawable.carinfobignum7, R.drawable.carinfobignum8, R.drawable.carinfobignum9};
        this.availableWidth = -1;
        this.availableHeight = -1;
        this.mPaintFlagsDrawFilter = new PaintFlagsDrawFilter(0, 3);
        this.mPorterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        this.mHandler = new Handler() { // from class: com.can.ui.view.Speedometer.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
            }
        };
        this.mMaxSpeedAngle = 270.0f;
        this.mMaxSpeed = 260.0f;
        this.mMode = 1;
        this.mRotateFactor = 1;
        this.mGap = 1;
    }

    public void init(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainAttributes = getResources().obtainAttributes(attributeSet, R.styleable.speedometer);
        if (typedArrayObtainAttributes != null) {
            this.mMode = typedArrayObtainAttributes.getInteger(0, 1);
            this.mRotateFactor = typedArrayObtainAttributes.getInteger(4, 1);
            this.mMaxSpeedAngle = typedArrayObtainAttributes.getFloat(5, this.mMaxSpeedAngle);
            this.mMaxSpeed = typedArrayObtainAttributes.getFloat(6, this.mMaxSpeed);
            this.mBmpPointer = BitmapFactory.decodeResource(getResources(), typedArrayObtainAttributes.getResourceId(1, 0));
            this.mBmpPointerBg = BitmapFactory.decodeResource(getResources(), typedArrayObtainAttributes.getResourceId(2, 0));
            this.mBmpPointerScale = BitmapFactory.decodeResource(getResources(), typedArrayObtainAttributes.getResourceId(3, 0));
            typedArrayObtainAttributes.recycle();
        }
        this.mWidth = this.mBmpPointer.getWidth();
        this.mHeight = this.mBmpPointer.getHeight();
        this.mPaint = new Paint();
        checkBmpRes();
    }

    private void checkBmpRes() {
        if (this.mMode == 2) {
            if (this.mNumBitmaps.size() == 0) {
                for (int i = 0; i < this.mImageResArray.length; i++) {
                    this.mNumBitmaps.add(BitmapFactory.decodeResource(getResources(), this.mImageResArray[i]));
                }
                if (this.mNumBitmaps.size() > 0) {
                    this.mNumBitmapWidth = this.mNumBitmaps.get(0).getWidth();
                    this.mNumBitmapHeight = this.mNumBitmaps.get(0).getWidth();
                }
            }
            if (this.mRateBitmap == null) {
                this.mRateBitmap = Bitmap.createBitmap((this.mNumBitmaps.get(0).getWidth() * 4) + (this.mGap * 2), this.mNumBitmaps.get(0).getHeight(), Bitmap.Config.ARGB_8888);
                this.mRateCanvas = new Canvas(this.mRateBitmap);
            }
        }
    }

    public Bitmap getNumberBitmap(Canvas canvas, Bitmap bitmap, String str) {
        int i;
        if (bitmap != null) {
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            Bitmap[] bitmapsByNumber = getBitmapsByNumber(str);
            int[] iArr = new int[bitmapsByNumber.length];
            int[] iArr2 = new int[bitmapsByNumber.length];
            for (int i2 = 0; i2 < bitmapsByNumber.length; i2++) {
                iArr[i2] = bitmapsByNumber[i2].getWidth();
                iArr2[i2] = bitmapsByNumber[i2].getHeight();
                if (i2 == 0) {
                    i = 0;
                } else {
                    i = 0;
                    for (int i3 = 0; i3 < i2; i3++) {
                        i += iArr[i3] + this.mGap;
                    }
                }
                canvas.drawBitmap(bitmapsByNumber[i2], (Rect) null, new Rect(i, 0, iArr[i2] + i, iArr2[i2]), this.mPaint);
            }
        }
        return bitmap;
    }

    private Bitmap[] getBitmapsByNumber(String str) {
        int length = str.length();
        Bitmap[] bitmapArr = new Bitmap[length];
        for (int i = 0; i < length && i < str.length(); i++) {
            try {
                bitmapArr[i] = this.mNumBitmaps.get(Integer.valueOf(String.valueOf(str.charAt(i))).intValue());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return bitmapArr;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getVisibility() != 0) {
            return;
        }
        if (this.availableWidth <= 0 || this.availableHeight <= 0) {
            this.availableWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            this.availableHeight = measuredHeight;
            this.centerX = this.availableWidth / 2;
            this.centerY = measuredHeight / 2;
            int i = this.centerX;
            int i2 = this.mWidth;
            int i3 = this.centerY;
            int i4 = this.mHeight;
            this.mArcRect = new RectF((i - (i2 / 2)) - 2, (i3 - (i4 / 2)) - 2, i + (i2 / 2) + 2, i3 + (i4 / 2) + 2);
        }
        canvas.setDrawFilter(this.mPaintFlagsDrawFilter);
        float fCalculatePointerAngle = calculatePointerAngle();
        if (this.mMode == 2 && this.mBmpPointerBg != null) {
            int iSaveLayer = canvas.saveLayer(0.0f, 0.0f, this.mWidth, this.mHeight, null, 31);
            canvas.drawBitmap(this.mBmpPointerBg, this.centerX - (this.mWidth / 2), this.centerY - (this.mHeight / 2), this.mPaint);
            canvas.save();
            canvas.rotate(135.0f, this.centerX, this.centerY);
            this.mPaint.setXfermode(this.mPorterDuffXfermode);
            canvas.drawArc(this.mArcRect, fCalculatePointerAngle + 5.0f, 270.0f - fCalculatePointerAngle, true, this.mPaint);
            canvas.restore();
            this.mPaint.setXfermode(null);
            canvas.restoreToCount(iSaveLayer);
        }
        canvas.save();
        canvas.rotate(calculatePointerAngle(), this.centerX, this.centerY);
        canvas.drawBitmap(this.mBmpPointer, this.centerX - (this.mWidth / 2), this.centerY - (this.mHeight / 2), this.mPaint);
        canvas.restore();
        if (this.mMode == 2) {
            Bitmap bitmap = this.mBmpPointerScale;
            if (bitmap != null) {
                canvas.drawBitmap(bitmap, this.centerX - (this.mWidth / 2), this.centerY - (this.mHeight / 2), this.mPaint);
            }
            Bitmap[] bitmapsByNumber = getBitmapsByNumber(String.valueOf((int) this.mSpeed));
            int i5 = this.centerX;
            int length = bitmapsByNumber.length;
            int i6 = this.mNumBitmapWidth;
            int i7 = this.mGap;
            int i8 = i5 - (((length * (i6 + i7)) - i7) / 2);
            int i9 = (this.centerY - (this.mNumBitmapHeight / 2)) - 10;
            for (Bitmap bitmap2 : bitmapsByNumber) {
                canvas.drawBitmap(bitmap2, i8, i9, this.mPaint);
                i8 += this.mNumBitmapWidth + this.mGap;
            }
        }
    }

    private float calculatePointerAngle() {
        return ((this.mMaxSpeedAngle * this.mSpeedDrawing) / this.mMaxSpeed) * this.mRotateFactor;
    }

    public void config(float f, float f2) {
        this.mMaxSpeedAngle = f;
        this.mMaxSpeed = f2;
    }

    public void setMode(int i) {
        if (this.mMode != i) {
            this.mMode = i;
            Bitmap bitmap = this.mBmpPointer;
            if (bitmap != null) {
                bitmap.recycle();
                this.mBmpPointer = null;
            }
            int i2 = this.mMode;
            if (i2 == 0) {
                this.mBmpPointer = BitmapFactory.decodeResource(getResources(), R.drawable.blue_speed_pointor);
            } else if (1 == i2) {
                this.mBmpPointer = BitmapFactory.decodeResource(getResources(), R.drawable.white_speed_pointor);
            } else if (2 == i2) {
                this.mBmpPointer = BitmapFactory.decodeResource(getResources(), R.drawable.red_speed_pointor);
            } else {
                throw new InvalidParameterException("Not support mode: " + i);
            }
            invalidate();
        }
    }

    public void setSpeed(int i) {
        float f = i;
        if (this.mSpeed != f) {
            this.mSpeed = f;
            ValueAnimator valueAnimator = this.mValueAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.mSpeedDrawing, this.mSpeed);
            this.mValueAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setDuration(2000L).start();
            this.mValueAnimator.setInterpolator(new MyInterpolator());
            this.mValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.can.ui.view.Speedometer.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    Speedometer.this.mSpeedDrawing = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    Log.i(Speedometer.TAG, "onAnimationUpdate mSpeedDrawing=" + Speedometer.this.mSpeedDrawing);
                    Speedometer.this.invalidate();
                }
            });
        }
    }

    public class MyInterpolator implements Interpolator {
        public MyInterpolator() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return (float) ((Math.pow(2.0d, (-10.0f) * f) * Math.sin((((double) (f - 0.2f)) * 6.283185307179586d) / ((double) 0.8f))) + 1.0d);
        }
    }
}
