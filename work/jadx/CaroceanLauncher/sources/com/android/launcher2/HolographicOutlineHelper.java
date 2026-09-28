package com.android.launcher2;

import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
public class HolographicOutlineHelper {
    private static final int EXTRA_THICK = 2;
    public static final int MAX_OUTER_BLUR_RADIUS;
    private static final int MEDIUM = 1;
    public static final int MIN_OUTER_BLUR_RADIUS;
    private static final int THICK = 0;
    private static final BlurMaskFilter sExtraThickInnerBlurMaskFilter;
    private static final BlurMaskFilter sExtraThickOuterBlurMaskFilter;
    private static final BlurMaskFilter sMediumInnerBlurMaskFilter;
    private static final BlurMaskFilter sMediumOuterBlurMaskFilter;
    private static final BlurMaskFilter sThickInnerBlurMaskFilter;
    private static final BlurMaskFilter sThickOuterBlurMaskFilter;
    private static final BlurMaskFilter sThinOuterBlurMaskFilter;
    private final Paint mBlurPaint;
    private final Paint mErasePaint;
    private final Paint mHolographicPaint;

    static {
        float screenDensity = LauncherApplication.getScreenDensity();
        float f = 1.0f * screenDensity;
        MIN_OUTER_BLUR_RADIUS = (int) f;
        float f2 = 12.0f * screenDensity;
        MAX_OUTER_BLUR_RADIUS = (int) f2;
        sExtraThickOuterBlurMaskFilter = new BlurMaskFilter(f2, BlurMaskFilter.Blur.OUTER);
        float f3 = 6.0f * screenDensity;
        sThickOuterBlurMaskFilter = new BlurMaskFilter(f3, BlurMaskFilter.Blur.OUTER);
        float f4 = 2.0f * screenDensity;
        sMediumOuterBlurMaskFilter = new BlurMaskFilter(f4, BlurMaskFilter.Blur.OUTER);
        sThinOuterBlurMaskFilter = new BlurMaskFilter(f, BlurMaskFilter.Blur.OUTER);
        sExtraThickInnerBlurMaskFilter = new BlurMaskFilter(f3, BlurMaskFilter.Blur.NORMAL);
        sThickInnerBlurMaskFilter = new BlurMaskFilter(screenDensity * 4.0f, BlurMaskFilter.Blur.NORMAL);
        sMediumInnerBlurMaskFilter = new BlurMaskFilter(f4, BlurMaskFilter.Blur.NORMAL);
    }

    HolographicOutlineHelper() {
        Paint paint = new Paint();
        this.mHolographicPaint = paint;
        Paint paint2 = new Paint();
        this.mBlurPaint = paint2;
        Paint paint3 = new Paint();
        this.mErasePaint = paint3;
        paint.setFilterBitmap(true);
        paint.setAntiAlias(true);
        paint2.setFilterBitmap(true);
        paint2.setAntiAlias(true);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        paint3.setFilterBitmap(true);
        paint3.setAntiAlias(true);
    }

    public static float highlightAlphaInterpolator(float f) {
        return (float) Math.pow((1.0f - f) * 0.6f, 1.5d);
    }

    public static float viewAlphaInterpolator(float f) {
        if (f < 0.95f) {
            return (float) Math.pow(f / 0.95f, 1.5d);
        }
        return 1.0f;
    }

    void applyExpensiveOutlineWithBlur(Bitmap bitmap, Canvas canvas, int i, int i2, int i3) {
        applyExpensiveOutlineWithBlur(bitmap, canvas, i, i2, true, i3);
    }

    void applyExpensiveOutlineWithBlur(Bitmap bitmap, Canvas canvas, int i, int i2, boolean z, int i3) {
        BlurMaskFilter blurMaskFilter;
        BlurMaskFilter blurMaskFilter2;
        if (z) {
            int width = bitmap.getWidth() * bitmap.getHeight();
            int[] iArr = new int[width];
            bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
            for (int i4 = 0; i4 < width; i4++) {
                if ((iArr[i4] >>> 24) < 188) {
                    iArr[i4] = 0;
                }
            }
            bitmap.setPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
        }
        Bitmap bitmapExtractAlpha = bitmap.extractAlpha();
        if (i3 == 0) {
            blurMaskFilter = sThickOuterBlurMaskFilter;
        } else if (i3 == 1) {
            blurMaskFilter = sMediumOuterBlurMaskFilter;
        } else if (i3 == 2) {
            blurMaskFilter = sExtraThickOuterBlurMaskFilter;
        } else {
            throw new RuntimeException("Invalid blur thickness");
        }
        this.mBlurPaint.setMaskFilter(blurMaskFilter);
        int[] iArr2 = new int[2];
        Bitmap bitmapExtractAlpha2 = bitmapExtractAlpha.extractAlpha(this.mBlurPaint, iArr2);
        if (i3 == 2) {
            this.mBlurPaint.setMaskFilter(sMediumOuterBlurMaskFilter);
        } else {
            this.mBlurPaint.setMaskFilter(sThinOuterBlurMaskFilter);
        }
        int[] iArr3 = new int[2];
        Bitmap bitmapExtractAlpha3 = bitmapExtractAlpha.extractAlpha(this.mBlurPaint, iArr3);
        canvas.setBitmap(bitmapExtractAlpha);
        canvas.drawColor(ViewCompat.MEASURED_STATE_MASK, PorterDuff.Mode.SRC_OUT);
        if (i3 == 0) {
            blurMaskFilter2 = sThickInnerBlurMaskFilter;
        } else if (i3 == 1) {
            blurMaskFilter2 = sMediumInnerBlurMaskFilter;
        } else if (i3 == 2) {
            blurMaskFilter2 = sExtraThickInnerBlurMaskFilter;
        } else {
            throw new RuntimeException("Invalid blur thickness");
        }
        this.mBlurPaint.setMaskFilter(blurMaskFilter2);
        int[] iArr4 = new int[2];
        Bitmap bitmapExtractAlpha4 = bitmapExtractAlpha.extractAlpha(this.mBlurPaint, iArr4);
        canvas.setBitmap(bitmapExtractAlpha4);
        canvas.drawBitmap(bitmapExtractAlpha, -iArr4[0], -iArr4[1], this.mErasePaint);
        canvas.drawRect(0.0f, 0.0f, -iArr4[0], bitmapExtractAlpha4.getHeight(), this.mErasePaint);
        canvas.drawRect(0.0f, 0.0f, bitmapExtractAlpha4.getWidth(), -iArr4[1], this.mErasePaint);
        canvas.setBitmap(bitmap);
        canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        this.mHolographicPaint.setColor(i);
        canvas.drawBitmap(bitmapExtractAlpha4, iArr4[0], iArr4[1], this.mHolographicPaint);
        canvas.drawBitmap(bitmapExtractAlpha2, iArr2[0], iArr2[1], this.mHolographicPaint);
        this.mHolographicPaint.setColor(i2);
        canvas.drawBitmap(bitmapExtractAlpha3, iArr3[0], iArr3[1], this.mHolographicPaint);
        canvas.setBitmap(null);
        bitmapExtractAlpha3.recycle();
        bitmapExtractAlpha2.recycle();
        bitmapExtractAlpha4.recycle();
        bitmapExtractAlpha.recycle();
    }

    void applyExtraThickExpensiveOutlineWithBlur(Bitmap bitmap, Canvas canvas, int i, int i2) {
        applyExpensiveOutlineWithBlur(bitmap, canvas, i, i2, 2);
    }

    void applyThickExpensiveOutlineWithBlur(Bitmap bitmap, Canvas canvas, int i, int i2) {
        applyExpensiveOutlineWithBlur(bitmap, canvas, i, i2, 0);
    }

    void applyMediumExpensiveOutlineWithBlur(Bitmap bitmap, Canvas canvas, int i, int i2, boolean z) {
        applyExpensiveOutlineWithBlur(bitmap, canvas, i, i2, z, 1);
    }

    void applyMediumExpensiveOutlineWithBlur(Bitmap bitmap, Canvas canvas, int i, int i2) {
        applyExpensiveOutlineWithBlur(bitmap, canvas, i, i2, 1);
    }
}
