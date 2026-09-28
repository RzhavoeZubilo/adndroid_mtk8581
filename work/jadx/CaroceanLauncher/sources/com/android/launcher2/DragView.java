package com.android.launcher2;

import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class DragView extends View {
    private static final String TAG = "DragView";
    private static float sDragAlpha = 1.0f;
    ValueAnimator mAnim;
    private Bitmap mBitmap;
    private Bitmap mCrossFadeBitmap;
    private float mCrossFadeProgress;
    private DragLayer mDragLayer;
    private Rect mDragRegion;
    private Point mDragVisualizeOffset;
    private boolean mHasDrawn;
    private float mInitialScale;
    private float mOffsetX;
    private float mOffsetY;
    private Paint mPaint;
    private int mRegistrationX;
    private int mRegistrationY;

    void isHotseat(int i, int i2) {
    }

    public DragView(Launcher launcher, Bitmap bitmap, int i, int i2, int i3, int i4, int i5, int i6, final float f) {
        super(launcher);
        this.mDragVisualizeOffset = null;
        this.mDragRegion = null;
        this.mDragLayer = null;
        this.mHasDrawn = false;
        this.mCrossFadeProgress = 0.0f;
        this.mOffsetX = 0.0f;
        this.mOffsetY = 0.0f;
        this.mInitialScale = 1.0f;
        this.mDragLayer = launcher.getDragLayer();
        this.mInitialScale = f;
        Resources resources = getResources();
        final float dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.dragViewOffsetX);
        final float dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.dragViewOffsetY);
        float f2 = i5;
        final float dimensionPixelSize3 = (resources.getDimensionPixelSize(R.dimen.dragViewScale) + f2) / f2;
        setScaleX(f);
        setScaleY(f);
        ValueAnimator valueAnimatorOfFloat = LauncherAnimUtils.ofFloat(0.0f, 1.0f);
        this.mAnim = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(150L);
        this.mAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.DragView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                int i7 = (int) ((dimensionPixelSize * fFloatValue) - DragView.this.mOffsetX);
                int i8 = (int) ((dimensionPixelSize2 * fFloatValue) - DragView.this.mOffsetY);
                float f3 = i7;
                DragView.this.mOffsetX += f3;
                float f4 = i8;
                DragView.this.mOffsetY += f4;
                DragView dragView = DragView.this;
                float f5 = f;
                dragView.setScaleX(f5 + ((dimensionPixelSize3 - f5) * fFloatValue));
                DragView dragView2 = DragView.this;
                float f6 = f;
                dragView2.setScaleY(f6 + ((dimensionPixelSize3 - f6) * fFloatValue));
                if (DragView.sDragAlpha != 1.0f) {
                    DragView.this.setAlpha((DragView.sDragAlpha * fFloatValue) + (1.0f - fFloatValue));
                }
                if (DragView.this.getParent() == null) {
                    valueAnimator.cancel();
                    return;
                }
                DragView dragView3 = DragView.this;
                dragView3.setTranslationX(dragView3.getTranslationX() + f3);
                DragView dragView4 = DragView.this;
                dragView4.setTranslationY(dragView4.getTranslationY() + f4);
            }
        });
        this.mBitmap = Bitmap.createBitmap(bitmap, i3, i4, i5, i6);
        setDragRegion(new Rect(0, 0, i5, i6));
        this.mRegistrationX = i;
        this.mRegistrationY = i2;
        if (L.DEBUG) {
            L.d(TAG, "DragView constructor: mRegistrationX = " + this.mRegistrationX + ", mRegistrationY = " + this.mRegistrationY + ", this = " + this);
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        measure(iMakeMeasureSpec, iMakeMeasureSpec);
        this.mPaint = new Paint(2);
    }

    public float getOffsetY() {
        return this.mOffsetY;
    }

    public int getDragRegionLeft() {
        return this.mDragRegion.left;
    }

    public int getDragRegionTop() {
        return this.mDragRegion.top;
    }

    public int getDragRegionWidth() {
        return this.mDragRegion.width();
    }

    public int getDragRegionHeight() {
        return this.mDragRegion.height();
    }

    public void setDragVisualizeOffset(Point point) {
        this.mDragVisualizeOffset = point;
    }

    public Point getDragVisualizeOffset() {
        return this.mDragVisualizeOffset;
    }

    public void setDragRegion(Rect rect) {
        this.mDragRegion = rect;
    }

    public Rect getDragRegion() {
        return this.mDragRegion;
    }

    public float getInitialScale() {
        return this.mInitialScale;
    }

    public void updateInitialScaleToCurrentScale() {
        this.mInitialScale = getScaleX();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(this.mBitmap.getWidth(), this.mBitmap.getHeight());
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(1728053247);
        canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), paint);
        this.mHasDrawn = true;
        float f = this.mCrossFadeProgress;
        boolean z = f > 0.0f && this.mCrossFadeBitmap != null;
        if (z) {
            this.mPaint.setAlpha(z ? (int) ((1.0f - f) * 255.0f) : 255);
        }
        canvas.drawBitmap(this.mBitmap, 0.0f, 0.0f, this.mPaint);
        if (z) {
            this.mPaint.setAlpha((int) (this.mCrossFadeProgress * 255.0f));
            canvas.save();
            canvas.scale((this.mBitmap.getWidth() * 1.0f) / this.mCrossFadeBitmap.getWidth(), (this.mBitmap.getHeight() * 1.0f) / this.mCrossFadeBitmap.getHeight());
            canvas.drawBitmap(this.mCrossFadeBitmap, 0.0f, 0.0f, this.mPaint);
            canvas.restore();
        }
    }

    public void setCrossFadeBitmap(Bitmap bitmap) {
        this.mCrossFadeBitmap = bitmap;
    }

    public void crossFade(int i) {
        ValueAnimator valueAnimatorOfFloat = LauncherAnimUtils.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(i);
        valueAnimatorOfFloat.setInterpolator(new DecelerateInterpolator(1.5f));
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.DragView.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                DragView.this.mCrossFadeProgress = valueAnimator.getAnimatedFraction();
            }
        });
        valueAnimatorOfFloat.start();
    }

    public void setColor(int i) {
        if (this.mPaint == null) {
            this.mPaint = new Paint(2);
        }
        if (i != 0) {
            this.mPaint.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_ATOP));
        } else {
            this.mPaint.setColorFilter(null);
        }
        invalidate();
    }

    public boolean hasDrawn() {
        return this.mHasDrawn;
    }

    @Override // android.view.View
    public void setAlpha(float f) {
        super.setAlpha(f);
        this.mPaint.setAlpha((int) (f * 255.0f));
        invalidate();
    }

    public void show(int i, int i2) {
        this.mDragLayer.addView(this);
        DragLayer.LayoutParams layoutParams = new DragLayer.LayoutParams(0, 0);
        layoutParams.width = this.mBitmap.getWidth();
        layoutParams.height = this.mBitmap.getHeight();
        layoutParams.customPosition = true;
        setLayoutParams(layoutParams);
        setTranslationX(i - this.mRegistrationX);
        setTranslationY(i2 - this.mRegistrationY);
        if (L.DEBUG) {
            L.d(TAG, "show DragView: x = " + layoutParams.x + ", y = " + layoutParams.y + ", width = " + layoutParams.width + ", height = " + layoutParams.height + ", this = " + this);
        }
        post(new Runnable() { // from class: com.android.launcher2.DragView.3
            @Override // java.lang.Runnable
            public void run() {
                DragView.this.mAnim.start();
            }
        });
    }

    public void cancelAnimation() {
        ValueAnimator valueAnimator = this.mAnim;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.mAnim.cancel();
    }

    public void resetLayoutParams() {
        this.mOffsetY = 0.0f;
        this.mOffsetX = 0.0f;
        requestLayout();
    }

    void move(int i, int i2) {
        setTranslationX((i - this.mRegistrationX) + ((int) this.mOffsetX));
        setTranslationY((i2 - this.mRegistrationY) + ((int) this.mOffsetY));
    }

    void remove() {
        if (L.DEBUG) {
            L.d(TAG, "remove DragView: this = " + this);
        }
        if (getParent() != null) {
            this.mDragLayer.removeView(this);
        }
    }
}
