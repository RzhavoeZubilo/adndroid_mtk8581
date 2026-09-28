package com.android.launcher2;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import com.android.launcher2.uitl.L;

/* JADX INFO: loaded from: classes.dex */
public class PagedViewGridLayout extends GridLayout implements Page {
    static final String TAG = "PagedViewGridLayout";
    private int mCellCountX;
    private int mCellCountY;
    private Runnable mOnLayoutListener;

    public PagedViewGridLayout(Context context, int i, int i2) {
        super(context, null, 0);
        this.mCellCountX = i;
        this.mCellCountY = i2;
    }

    int getCellCountX() {
        return this.mCellCountX;
    }

    int getCellCountY() {
        return this.mCellCountY;
    }

    public void resetChildrenOnKeyListeners() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setOnKeyListener(null);
        }
    }

    @Override // android.widget.GridLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getSuggestedMinimumWidth(), View.MeasureSpec.getSize(i)), 1073741824), i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mOnLayoutListener = null;
    }

    public void setOnLayoutListener(Runnable runnable) {
        this.mOnLayoutListener = runnable;
    }

    @Override // android.widget.GridLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        Runnable runnable = this.mOnLayoutListener;
        if (runnable != null) {
            runnable.run();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        int pageChildCount = getPageChildCount();
        if (pageChildCount > 0) {
            return zOnTouchEvent || motionEvent.getY() < ((float) getChildOnPageAt(pageChildCount - 1).getBottom());
        }
        return zOnTouchEvent;
    }

    void destroyHardwareLayer() {
        if (L.DEBUG_DRAW) {
            L.d(TAG, "destroyHardwareLayer: this = " + this);
        }
        setLayerType(0, null);
    }

    void createHardwareLayer() {
        if (L.DEBUG_DRAW) {
            L.d(TAG, "cretaeHardwareLayer: this = " + this);
        }
        setLayerType(2, null);
    }

    @Override // com.android.launcher2.Page
    public void removeAllViewsOnPage() {
        if (L.DEBUG) {
            L.d(TAG, "removeAllViewsOnPage: this = " + this);
        }
        removeAllViews();
        this.mOnLayoutListener = null;
        destroyHardwareLayer();
    }

    @Override // com.android.launcher2.Page
    public void removeViewOnPageAt(int i) {
        if (L.DEBUG) {
            L.d(TAG, "removeViewOnPageAt: index = " + i);
        }
        removeViewAt(i);
    }

    @Override // com.android.launcher2.Page
    public int getPageChildCount() {
        return getChildCount();
    }

    @Override // com.android.launcher2.Page
    public View getChildOnPageAt(int i) {
        return getChildAt(i);
    }

    @Override // com.android.launcher2.Page
    public int indexOfChildOnPage(View view) {
        return indexOfChild(view);
    }

    public static class LayoutParams extends FrameLayout.LayoutParams {
        public LayoutParams(int i, int i2) {
            super(i, i2);
        }
    }
}
