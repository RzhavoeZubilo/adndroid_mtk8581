package com.android.launcher2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Interpolator;
import android.widget.Scroller;

/* JADX INFO: loaded from: classes.dex */
public abstract class SmoothPagedView extends PagedView {
    static final int DEFAULT_MODE = 0;
    private static final float SMOOTHING_CONSTANT = (float) (0.016d / Math.log(0.75d));
    private static final float SMOOTHING_SPEED = 0.75f;
    static final int X_LARGE_MODE = 1;
    private float mBaseLineFlingVelocity;
    private float mFlingVelocityInfluence;
    private Interpolator mScrollInterpolator;
    int mScrollMode;

    protected int getScrollMode() {
        return 1;
    }

    public static class OvershootInterpolator implements Interpolator {
        private static final float DEFAULT_TENSION = 1.3f;
        private float mTension = DEFAULT_TENSION;

        public void setDistance(int i) {
            float f = DEFAULT_TENSION;
            if (i > 0) {
                f = DEFAULT_TENSION / i;
            }
            this.mTension = f;
        }

        public void disableSettle() {
            this.mTension = 0.0f;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            float f3 = this.mTension;
            return (f2 * f2 * (((f3 + 1.0f) * f2) + f3)) + 1.0f;
        }
    }

    public SmoothPagedView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SmoothPagedView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mUsePagingTouchSlop = false;
        this.mDeferScrollUpdate = this.mScrollMode != 1;
    }

    @Override // com.android.launcher2.PagedView
    protected void init() {
        super.init();
        int scrollMode = getScrollMode();
        this.mScrollMode = scrollMode;
        if (scrollMode == 0) {
            this.mBaseLineFlingVelocity = 2500.0f;
            this.mFlingVelocityInfluence = 0.4f;
            this.mScrollInterpolator = new OvershootInterpolator();
            this.mScroller = new Scroller(getContext(), this.mScrollInterpolator);
        }
    }

    @Override // com.android.launcher2.PagedView
    protected void snapToDestination() {
        if (this.mScrollMode == 1) {
            super.snapToDestination();
        } else {
            snapToPageWithVelocity(getPageNearestToCenterOfScreen(), 0);
        }
    }

    @Override // com.android.launcher2.PagedView
    protected void snapToPageWithVelocity(int i, int i2) {
        if (this.mScrollMode == 1) {
            super.snapToPageWithVelocity(i, i2);
        } else {
            snapToPageWithVelocity(i, 0, true);
        }
    }

    private void snapToPageWithVelocity(int i, int i2, boolean z) {
        int i3;
        int iMax = Math.max(0, Math.min(i, getChildCount() - 1));
        int iMax2 = Math.max(1, Math.abs(iMax - this.mCurrentPage));
        int childOffset = (getChildOffset(iMax) - getRelativeChildOffset(iMax)) - this.mUnboundedScrollX;
        int i4 = (iMax2 + 1) * 100;
        if (!this.mScroller.isFinished()) {
            this.mScroller.abortAnimation();
        }
        if (z) {
            ((OvershootInterpolator) this.mScrollInterpolator).setDistance(iMax2);
        } else {
            ((OvershootInterpolator) this.mScrollInterpolator).disableSettle();
        }
        int iAbs = Math.abs(i2);
        if (iAbs > 0) {
            float f = i4;
            i3 = (int) (f + ((f / (iAbs / this.mBaseLineFlingVelocity)) * this.mFlingVelocityInfluence));
        } else {
            i3 = i4 + 100;
        }
        snapToPage(iMax, childOffset, i3);
    }

    @Override // com.android.launcher2.PagedView
    protected void snapToPage(int i) {
        if (this.mScrollMode == 1) {
            super.snapToPage(i);
        } else {
            snapToPageWithVelocity(i, 0, false);
        }
    }

    @Override // com.android.launcher2.PagedView, android.view.View
    public void computeScroll() {
        if (this.mScrollMode == 1) {
            super.computeScroll();
            return;
        }
        if (computeScrollHelper() || this.mTouchState != 1) {
            return;
        }
        float fNanoTime = System.nanoTime() / 1.0E9f;
        float fExp = (float) Math.exp((fNanoTime - this.mSmoothingTime) / SMOOTHING_CONSTANT);
        float f = this.mTouchX - this.mUnboundedScrollX;
        scrollTo(Math.round(this.mUnboundedScrollX + (fExp * f)), getScrollY());
        this.mSmoothingTime = fNanoTime;
        if (f > 1.0f || f < -1.0f) {
            invalidate();
        }
    }
}
