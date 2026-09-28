package com.android.launcher2;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class PagedViewCellLayoutChildren extends ViewGroup {
    private static final String TAG = "PagedViewCellLayoutChildren";
    private int mCellHeight;
    private int mCellWidth;
    private boolean mCenterContent;
    private int mHeightGap;
    private int mWidthGap;

    public PagedViewCellLayoutChildren(Context context) {
        super(context);
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).cancelLongPress();
        }
    }

    public void setGap(int i, int i2) {
        this.mWidthGap = i;
        this.mHeightGap = i2;
        requestLayout();
    }

    public void setCellDimensions(int i, int i2) {
        this.mCellWidth = i;
        this.mCellHeight = i2;
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (view != null) {
            Rect rect = new Rect();
            view.getDrawingRect(rect);
            requestRectangleOnScreen(rect);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 0 || mode2 == 0) {
            throw new RuntimeException("CellLayout cannot have UNSPECIFIED dimensions");
        }
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            PagedViewCellLayout.LayoutParams layoutParams = (PagedViewCellLayout.LayoutParams) childAt.getLayoutParams();
            layoutParams.setup(this.mCellWidth, this.mCellHeight, this.mWidthGap, this.mHeightGap, getPaddingLeft(), getPaddingTop());
            childAt.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824));
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth;
        int childCount = getChildCount();
        if (!this.mCenterContent || childCount <= 0) {
            measuredWidth = 0;
        } else {
            int iMin = Integer.MAX_VALUE;
            int iMax = 0;
            for (int i5 = 0; i5 < childCount; i5++) {
                View childAt = getChildAt(i5);
                if (childAt.getVisibility() != 8) {
                    PagedViewCellLayout.LayoutParams layoutParams = (PagedViewCellLayout.LayoutParams) childAt.getLayoutParams();
                    iMin = Math.min(iMin, layoutParams.x);
                    iMax = Math.max(iMax, layoutParams.x + layoutParams.width);
                }
            }
            measuredWidth = (getMeasuredWidth() - (iMax - iMin)) / 2;
        }
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt2 = getChildAt(i6);
            if (childAt2.getVisibility() != 8) {
                PagedViewCellLayout.LayoutParams layoutParams2 = (PagedViewCellLayout.LayoutParams) childAt2.getLayoutParams();
                int i7 = layoutParams2.x + measuredWidth;
                int i8 = layoutParams2.y;
                childAt2.layout(i7, i8, layoutParams2.width + i7, layoutParams2.height + i8);
            }
        }
    }

    public void enableCenteredContent(boolean z) {
        this.mCenterContent = z;
    }

    @Override // android.view.ViewGroup
    protected void setChildrenDrawingCacheEnabled(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            childAt.setDrawingCacheEnabled(z);
            if (!childAt.isHardwareAccelerated()) {
                childAt.buildDrawingCache(true);
            }
        }
    }
}
