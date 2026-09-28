package com.android.launcher2.popuView;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class AnimationLeftToRightFrameLayout extends FrameLayout {
    private static final String TAG = "AnimationLeftToRightFrameLayout";
    private boolean enableAnimator;
    private Drawable mAnimaBackground;
    private int mAnimaBackgroundSelectResource;
    private int mAnimaDrawableWidth;
    private int mXPos;
    private ValueAnimator xValueAnimator;

    public void setEnableAnimator(boolean z) {
        this.enableAnimator = z;
    }

    public AnimationLeftToRightFrameLayout(Context context) {
        super(context);
        this.mXPos = 0;
        this.mAnimaDrawableWidth = 0;
        this.enableAnimator = false;
    }

    public AnimationLeftToRightFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AnimationLeftToRightFrameLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public AnimationLeftToRightFrameLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mXPos = 0;
        this.mAnimaDrawableWidth = 0;
        this.enableAnimator = false;
        initView(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.mAnimaBackground;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        if (isSelected() && this.enableAnimator) {
            this.xValueAnimator.start();
        } else {
            this.enableAnimator = false;
            this.xValueAnimator.cancel();
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        drawAnimaSelect(canvas);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    private void initView(Context context, AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AnimationLeftToRightFrameLayout, i, 0);
        this.mAnimaBackground = typedArrayObtainStyledAttributes.getDrawable(1);
        this.mAnimaDrawableWidth = typedArrayObtainStyledAttributes.getInt(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        int i2 = -this.mAnimaDrawableWidth;
        this.mXPos = i2;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i2, 0);
        this.xValueAnimator = valueAnimatorOfInt;
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.popuView.AnimationLeftToRightFrameLayout.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AnimationLeftToRightFrameLayout.this.mXPos = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                AnimationLeftToRightFrameLayout.this.invalidate();
            }
        });
        this.xValueAnimator.setDuration(300L);
        this.xValueAnimator.setInterpolator(new LinearInterpolator());
    }

    private void drawAnimaSelect(Canvas canvas) {
        Drawable drawable = this.mAnimaBackground;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int i = this.xValueAnimator.isRunning() ? this.mXPos : 0;
        canvas.save();
        if ((scrollX | scrollY) == 0) {
            canvas.translate(i, 0.0f);
            drawable.draw(canvas);
            canvas.translate(-i, 0.0f);
        } else {
            canvas.translate(i + scrollX, scrollY + 0);
            drawable.draw(canvas);
            canvas.translate(i - scrollX, 0 - scrollY);
        }
        canvas.restore();
    }

    public void setAnimaSelectResource(int i) {
        if (i == 0 || i != this.mAnimaBackgroundSelectResource) {
            setAnimaSelect(i != 0 ? getContext().getDrawable(i) : null);
            this.mAnimaBackgroundSelectResource = i;
        }
    }

    public void setAnimaSelect(Drawable drawable) {
        setAnimaSelectDrawable(drawable);
    }

    public void setAnimaSelectDrawable(Drawable drawable) {
        if (drawable == this.mAnimaBackground) {
            return;
        }
        this.mAnimaBackgroundSelectResource = 0;
        this.mAnimaBackground = drawable;
        invalidate();
    }
}
