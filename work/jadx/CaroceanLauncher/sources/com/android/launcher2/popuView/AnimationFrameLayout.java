package com.android.launcher2.popuView;

import android.animation.AnimatorSet;
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
public class AnimationFrameLayout extends FrameLayout {
    private static final String TAG = "AnimationFrameLayout";
    private ValueAnimator downXValueAnimator;
    private ValueAnimator downYValueAnimator;
    private boolean enableAnimator;
    private Drawable mAnimaDownSelect;
    private int mAnimaDownSelectResource;
    private Drawable mAnimaUpSelect;
    private int mAnimaUpSelectResource;
    private AnimatorSet mAnimatorSet;
    private int mDownDrawableHeight;
    private int mDownDrawableWidth;
    private int mDownXPos;
    private int mDownYPos;
    private int mUpDrawableHeight;
    private int mUpDrawableWidth;
    private int mUpXPos;
    private int mUpYPos;
    private ValueAnimator upXValueAnimator;
    private ValueAnimator upYValueAnimator;

    public void setEnableAnimator(boolean z) {
        this.enableAnimator = z;
    }

    public AnimationFrameLayout(Context context) {
        super(context);
        this.mUpXPos = 0;
        this.mUpYPos = 0;
        this.mDownXPos = 0;
        this.mDownYPos = 0;
        this.mUpDrawableWidth = 0;
        this.mUpDrawableHeight = 0;
        this.mDownDrawableWidth = 0;
        this.mDownDrawableHeight = 0;
        this.enableAnimator = false;
    }

    public AnimationFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AnimationFrameLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public AnimationFrameLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mUpXPos = 0;
        this.mUpYPos = 0;
        this.mDownXPos = 0;
        this.mDownYPos = 0;
        this.mUpDrawableWidth = 0;
        this.mUpDrawableHeight = 0;
        this.mDownDrawableWidth = 0;
        this.mDownDrawableHeight = 0;
        this.enableAnimator = false;
        initView(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.mAnimaUpSelect;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.mAnimaDownSelect;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (isSelected() && this.enableAnimator) {
            this.mAnimatorSet.start();
        } else {
            this.enableAnimator = false;
            this.mAnimatorSet.cancel();
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        drawUpSelect(canvas);
        drawDownSelect(canvas);
    }

    private void initView(Context context, AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AnimationFrameLayout, i, 0);
        this.mAnimaUpSelect = typedArrayObtainStyledAttributes.getDrawable(1);
        this.mAnimaDownSelect = typedArrayObtainStyledAttributes.getDrawable(0);
        this.mUpDrawableWidth = typedArrayObtainStyledAttributes.getInt(5, 0);
        this.mUpDrawableHeight = typedArrayObtainStyledAttributes.getInt(4, 0);
        this.mDownDrawableWidth = typedArrayObtainStyledAttributes.getInt(3, 0);
        this.mDownDrawableHeight = typedArrayObtainStyledAttributes.getInt(2, 0);
        typedArrayObtainStyledAttributes.recycle();
        int i2 = -this.mUpDrawableWidth;
        this.mUpXPos = i2;
        this.mUpYPos = -this.mUpDrawableHeight;
        this.mDownXPos = -this.mDownDrawableWidth;
        this.mDownYPos = -this.mDownDrawableHeight;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i2, 0);
        this.upXValueAnimator = valueAnimatorOfInt;
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.popuView.AnimationFrameLayout.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AnimationFrameLayout.this.mUpXPos = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                AnimationFrameLayout.this.invalidate();
            }
        });
        ValueAnimator valueAnimatorOfInt2 = ValueAnimator.ofInt(this.mUpYPos, 0);
        this.upYValueAnimator = valueAnimatorOfInt2;
        valueAnimatorOfInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.popuView.AnimationFrameLayout.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AnimationFrameLayout.this.mUpYPos = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                AnimationFrameLayout.this.invalidate();
            }
        });
        ValueAnimator valueAnimatorOfInt3 = ValueAnimator.ofInt(this.mDownXPos, 0);
        this.downXValueAnimator = valueAnimatorOfInt3;
        valueAnimatorOfInt3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.popuView.AnimationFrameLayout.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AnimationFrameLayout.this.mDownXPos = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                AnimationFrameLayout.this.invalidate();
            }
        });
        ValueAnimator valueAnimatorOfInt4 = ValueAnimator.ofInt(this.mDownYPos, 0);
        this.downYValueAnimator = valueAnimatorOfInt4;
        valueAnimatorOfInt4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.popuView.AnimationFrameLayout.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AnimationFrameLayout.this.mDownYPos = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                AnimationFrameLayout.this.invalidate();
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        this.mAnimatorSet = animatorSet;
        animatorSet.play(this.upXValueAnimator).with(this.upYValueAnimator).with(this.downXValueAnimator).with(this.downYValueAnimator);
        this.mAnimatorSet.setDuration(500L);
        this.mAnimatorSet.setInterpolator(new LinearInterpolator());
    }

    private void drawUpSelect(Canvas canvas) {
        Drawable drawable = this.mAnimaUpSelect;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int width = (getWidth() - drawable.getIntrinsicWidth()) - (this.mAnimatorSet.isRunning() ? this.mUpXPos : 0);
        int i = this.mAnimatorSet.isRunning() ? this.mUpYPos : 0;
        canvas.save();
        if ((scrollX | scrollY) == 0) {
            float f = i;
            canvas.translate(width, f);
            drawable.draw(canvas);
            canvas.translate(-width, f);
        } else {
            canvas.translate(width + scrollX, i + scrollY);
            drawable.draw(canvas);
            canvas.translate(width - scrollX, i - scrollY);
        }
        canvas.restore();
    }

    public void setAnimaUpSelectResource(int i) {
        if (i == 0 || i != this.mAnimaUpSelectResource) {
            setAnimaUpSelect(i != 0 ? getContext().getDrawable(i) : null);
            this.mAnimaUpSelectResource = i;
        }
    }

    public void setAnimaUpSelect(Drawable drawable) {
        setAnimaUpSelectDrawable(drawable);
    }

    public void setAnimaUpSelectDrawable(Drawable drawable) {
        if (drawable == this.mAnimaUpSelect) {
            return;
        }
        this.mAnimaUpSelectResource = 0;
        this.mAnimaUpSelect = drawable;
        invalidate();
    }

    private void drawDownSelect(Canvas canvas) {
        Drawable drawable = this.mAnimaDownSelect;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int i = this.mAnimatorSet.isRunning() ? this.mDownXPos : 0;
        int height = (getHeight() - drawable.getIntrinsicHeight()) - (this.mAnimatorSet.isRunning() ? this.mDownYPos : 0);
        canvas.save();
        if ((scrollX | scrollY) == 0) {
            float f = height;
            canvas.translate(i, f);
            drawable.draw(canvas);
            canvas.translate(-i, f);
        } else {
            canvas.translate(i + scrollX, height + scrollY);
            drawable.draw(canvas);
            canvas.translate(i - scrollX, height - scrollY);
        }
        canvas.restore();
    }

    public void setAnimaDownSelectResource(int i) {
        if (i == 0 || i != this.mAnimaDownSelectResource) {
            setAnimaDownSelect(i != 0 ? getContext().getDrawable(i) : null);
            this.mAnimaDownSelectResource = i;
        }
    }

    public void setAnimaDownSelect(Drawable drawable) {
        setAnimaDownSelectDrawable(drawable);
    }

    public void setAnimaDownSelectDrawable(Drawable drawable) {
        if (drawable == this.mAnimaDownSelect) {
            return;
        }
        this.mAnimaDownSelectResource = 0;
        this.mAnimaDownSelect = drawable;
        invalidate();
    }
}
