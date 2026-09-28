package com.android.launcher2;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import com.android.launcher2.uitl.L;
import com.carocean.navicar.util.ZHTDOEMManager;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class PagedViewCellLayout extends ViewGroup implements Page {
    static final String TAG = "PagedViewCellLayout";
    private int mCellCountX;
    private int mCellCountY;
    private int mCellHeight;
    private int mCellWidth;
    protected PagedViewCellLayoutChildren mChildren;
    private int mHeightGap;
    private int mMaxGap;
    private int mOriginalCellHeight;
    private int mOriginalCellWidth;
    private int mOriginalHeightGap;
    private int mOriginalPaddingLeft;
    private int mOriginalPaddingRight;
    private int mOriginalWidthGap;
    Resources mResources;
    private int mWidthGap;

    public PagedViewCellLayout(Context context) {
        this(context, null);
    }

    public PagedViewCellLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PagedViewCellLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setAlwaysDrawnWithCacheEnabled(false);
        this.mResources = context.getResources();
        boolean zIsMRWCustomer = ZHTDOEMManager.isMRWCustomer();
        int i2 = R.dimen.apps_customize_cell_height;
        int i3 = R.dimen.apps_customize_cell_width;
        if (zIsMRWCustomer || ZHTDOEMManager.isYZGCustomer() || ZHTDOEMManager.isLCCustomerTheme1()) {
            int dimensionPixelSize = this.mResources.getDimensionPixelSize(R.dimen.apps_customize_cell_width);
            this.mCellWidth = dimensionPixelSize;
            this.mOriginalCellWidth = dimensionPixelSize;
            int dimensionPixelSize2 = this.mResources.getDimensionPixelSize(R.dimen.apps_customize_cell_height);
            this.mCellHeight = dimensionPixelSize2;
            this.mOriginalCellHeight = dimensionPixelSize2;
        } else {
            int dimensionPixelSize3 = this.mResources.getDimensionPixelSize(ZHTDOEMManager.isLCCustomer() ? R.dimen.apps_customize_cell_width_lc : i3);
            this.mCellWidth = dimensionPixelSize3;
            this.mOriginalCellWidth = dimensionPixelSize3;
            int dimensionPixelSize4 = this.mResources.getDimensionPixelSize(ZHTDOEMManager.isLCCustomer() ? R.dimen.apps_customize_cell_height_lc : i2);
            this.mCellHeight = dimensionPixelSize4;
            this.mOriginalCellHeight = dimensionPixelSize4;
        }
        this.mOriginalPaddingLeft = getPaddingLeft();
        this.mOriginalPaddingRight = getPaddingRight();
        this.mCellCountX = getTrueX();
        this.mCellCountY = getTrueY();
        this.mHeightGap = -1;
        this.mWidthGap = -1;
        this.mOriginalHeightGap = -1;
        this.mOriginalWidthGap = -1;
        this.mMaxGap = this.mResources.getDimensionPixelSize(R.dimen.apps_customize_max_gap);
        PagedViewCellLayoutChildren pagedViewCellLayoutChildren = new PagedViewCellLayoutChildren(context);
        this.mChildren = pagedViewCellLayoutChildren;
        pagedViewCellLayoutChildren.setCellDimensions(this.mCellWidth, this.mCellHeight);
        this.mChildren.setGap(this.mWidthGap, this.mHeightGap);
        addView(this.mChildren);
    }

    public int getCellWidth() {
        return this.mCellWidth;
    }

    public int getCellHeight() {
        return this.mCellHeight;
    }

    void destroyHardwareLayers() {
        if (L.DEBUG_DRAW) {
            L.d(TAG, "destroyHardwareLayers: mChildren = " + this.mChildren + " ,this = " + this);
        }
        setLayerType(0, null);
    }

    void createHardwareLayers() {
        if (L.DEBUG_DRAW) {
            L.d(TAG, "createHardwareLayers: mChildren = " + this.mChildren + ", this = " + this);
        }
        setLayerType(2, null);
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).cancelLongPress();
        }
    }

    public boolean addViewToCellLayout(View view, int i, int i2, LayoutParams layoutParams) {
        if (layoutParams.cellX < 0 || layoutParams.cellX > this.mCellCountX - 1 || layoutParams.cellY < 0 || layoutParams.cellY > this.mCellCountY - 1) {
            return false;
        }
        if (layoutParams.cellHSpan < 0) {
            layoutParams.cellHSpan = this.mCellCountX;
        }
        if (layoutParams.cellVSpan < 0) {
            layoutParams.cellVSpan = this.mCellCountY;
        }
        view.setId(i2);
        this.mChildren.addView(view, i, layoutParams);
        return true;
    }

    @Override // com.android.launcher2.Page
    public void removeAllViewsOnPage() {
        if (L.DEBUG) {
            L.d(TAG, "removeAllViewsOnPage: mChildren = " + this.mChildren + ", this = " + this);
        }
        this.mChildren.removeAllViews();
        destroyHardwareLayers();
    }

    @Override // com.android.launcher2.Page
    public void removeViewOnPageAt(int i) {
        if (L.DEBUG) {
            L.d(TAG, "removeViewOnPageAt: mChildren = " + this.mChildren + ", index = " + i);
        }
        this.mChildren.removeViewAt(i);
    }

    public void resetChildrenOnKeyListeners() {
        int childCount = this.mChildren.getChildCount();
        for (int i = 0; i < childCount; i++) {
            this.mChildren.getChildAt(i).setOnKeyListener(null);
        }
    }

    @Override // com.android.launcher2.Page
    public int getPageChildCount() {
        return this.mChildren.getChildCount();
    }

    public PagedViewCellLayoutChildren getChildrenLayout() {
        return this.mChildren;
    }

    @Override // com.android.launcher2.Page
    public View getChildOnPageAt(int i) {
        return this.mChildren.getChildAt(i);
    }

    @Override // com.android.launcher2.Page
    public int indexOfChildOnPage(View view) {
        return this.mChildren.indexOfChild(view);
    }

    public int getCellCountX() {
        return this.mCellCountX;
    }

    public int getCellCountY() {
        return this.mCellCountY;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 0 || mode2 == 0) {
            throw new RuntimeException("CellLayout cannot have UNSPECIFIED dimensions");
        }
        setPadding(this.mOriginalPaddingLeft, getPaddingTop(), this.mOriginalPaddingRight, getPaddingBottom());
        int i4 = this.mCellCountX - 1;
        int i5 = this.mCellCountY - 1;
        int i6 = this.mOriginalWidthGap;
        if (i6 < 0 || (i3 = this.mOriginalHeightGap) < 0) {
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
            int i7 = paddingLeft - (this.mCellCountX * this.mOriginalCellWidth);
            int i8 = paddingTop - (this.mCellCountY * this.mOriginalCellHeight);
            this.mWidthGap = Math.min(this.mMaxGap, i4 > 0 ? i7 / i4 : 0);
            this.mHeightGap = Math.min(this.mMaxGap, i5 > 0 ? i8 / i5 : 0);
            if (L.DEBUG_LAYOUT) {
                L.d(TAG, "onMeasure 0: mMaxGap = " + this.mMaxGap + ", numWidthGaps = " + i4 + ", hFreeSpace = " + i7 + ", mOriginalCellWidth =" + this.mOriginalCellWidth + ", mOriginalCellHeight = " + this.mOriginalCellHeight + ", mWidthGap = " + this.mWidthGap);
            }
            this.mChildren.setGap(this.mWidthGap, this.mHeightGap);
        } else {
            this.mWidthGap = i6;
            this.mHeightGap = i3;
        }
        if (L.DEBUG_LAYOUT) {
            L.d(TAG, "onMeasure 1: newWidth = " + size + ", newHeight = " + size2 + ", widthSpecMode = " + mode + ",mPaddingLeft = " + getPaddingLeft() + ", mPaddingRight = " + getPaddingRight() + ",mCellCountX = " + this.mCellCountX + ", mCellWidth = " + this.mCellWidth + ", mWidthGap = " + this.mWidthGap + ", mOriginalWidthGap =" + this.mOriginalWidthGap + ", mOriginalHeightGap = " + this.mOriginalHeightGap + ", mOriginalCellWidth =" + this.mOriginalCellWidth + ", mOriginalCellHeight = " + this.mOriginalCellHeight + ", this = " + this);
        }
        if (mode == Integer.MIN_VALUE) {
            int paddingLeft2 = getPaddingLeft() + getPaddingRight();
            int i9 = this.mCellCountX;
            int i10 = paddingLeft2 + (this.mCellWidth * i9) + ((i9 - 1) * this.mWidthGap);
            int paddingTop2 = getPaddingTop() + getPaddingBottom();
            int i11 = this.mCellCountY;
            int i12 = paddingTop2 + (this.mCellHeight * i11) + ((i11 - 1) * this.mHeightGap);
            if (L.DEBUG_LAYOUT) {
                L.d(TAG, "onMeasure 2: newWidth = " + i10 + ", newHeight = " + i12 + ", this = " + this);
            }
            if (i10 != size) {
                int i13 = size - i10;
                int i14 = i13 >> 1;
                setPadding(getPaddingLeft() + i14, getPaddingTop(), getPaddingRight() + (i13 - i14), getPaddingBottom());
            } else {
                size = i10;
            }
            setMeasuredDimension(size, i12);
            size2 = i12;
        }
        int childCount = getChildCount();
        for (int i15 = 0; i15 < childCount; i15++) {
            getChildAt(i15).measure(View.MeasureSpec.makeMeasureSpec((size - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((size2 - getPaddingTop()) - getPaddingBottom(), 1073741824));
        }
        if (L.DEBUG_LAYOUT) {
            L.d(TAG, "onMeasure 4: newWidth = " + size + ", newHeight = " + size2 + ", this = " + this);
        }
        setMeasuredDimension(size, size2);
    }

    int getContentWidth() {
        return getWidthBeforeFirstLayout() + getPaddingLeft() + getPaddingRight();
    }

    int getContentHeight() {
        int i = this.mCellCountY;
        if (i > 0) {
            return (this.mCellHeight * i) + ((i - 1) * Math.max(0, this.mHeightGap));
        }
        return 0;
    }

    int getWidthBeforeFirstLayout() {
        int i = this.mCellCountX;
        if (i > 0) {
            return (this.mCellWidth * i) + ((i - 1) * Math.max(0, this.mWidthGap));
        }
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            getChildAt(i5).layout(getPaddingLeft(), getPaddingTop(), (i3 - i) - getPaddingRight(), (i4 - i2) - getPaddingBottom());
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
        int pageChildCount = getPageChildCount();
        if (pageChildCount <= 0) {
            return zOnTouchEvent;
        }
        int bottom = getChildOnPageAt(pageChildCount - 1).getBottom();
        if (((int) Math.ceil(getPageChildCount() / getCellCountX())) < getCellCountY()) {
            bottom += this.mCellHeight / 2;
        }
        return zOnTouchEvent || motionEvent.getY() < ((float) bottom);
    }

    public void enableCenteredContent(boolean z) {
        this.mChildren.enableCenteredContent(z);
    }

    @Override // android.view.ViewGroup
    protected void setChildrenDrawingCacheEnabled(boolean z) {
        this.mChildren.setChildrenDrawingCacheEnabled(z);
    }

    public void setCellCount(int i, int i2) {
        this.mCellCountX = getTrueX();
        this.mCellCountY = getTrueY();
        requestLayout();
    }

    public void setGap(int i, int i2) {
        this.mWidthGap = i;
        this.mOriginalWidthGap = i;
        this.mHeightGap = i2;
        this.mOriginalHeightGap = i2;
        this.mChildren.setGap(i, i2);
    }

    public int[] getCellCountForDimensions(int i, int i2) {
        int iMin = Math.min(this.mCellWidth, this.mCellHeight);
        int i3 = (i + iMin) / iMin;
        int i4 = (i2 + iMin) / iMin;
        if (L.DEBUG_LAYOUT) {
            L.d(TAG, "getCellCountForDimensions width = " + i + ", height =" + i2 + ", spanX = " + i3 + ", spanY = " + i4 + ", this = " + this);
        }
        return new int[]{i3, i4};
    }

    void onDragChild(View view) {
        ((LayoutParams) view.getLayoutParams()).isDragging = true;
    }

    public int estimateCellHSpan(int i) {
        int paddingLeft = i - (getPaddingLeft() + getPaddingRight());
        int i2 = this.mWidthGap;
        int iMax = Math.max(1, (paddingLeft + i2) / (this.mCellWidth + i2));
        if (L.DEBUG_LAYOUT) {
            L.d(TAG, "estimateCellHSpan width = " + i + ", availWidth = " + paddingLeft + ", n = " + iMax + ", this = " + this);
        }
        return iMax;
    }

    public int estimateCellVSpan(int i) {
        int paddingTop = i - (getPaddingTop() + getPaddingBottom());
        int i2 = this.mHeightGap;
        int iMax = Math.max(1, (paddingTop + i2) / (this.mCellHeight + i2));
        if (L.DEBUG_LAYOUT) {
            L.d(TAG, "estimateCellVSpan width = " + i + ", availHeight = " + paddingTop + ", n = " + iMax + ", this = " + this);
        }
        return iMax;
    }

    public int[] estimateCellPosition(int i, int i2) {
        int paddingLeft = getPaddingLeft();
        int i3 = this.mCellWidth;
        int paddingTop = getPaddingTop();
        int i4 = this.mCellHeight;
        int[] iArr = {paddingLeft + (i * i3) + (this.mWidthGap * i) + (i3 / 2), paddingTop + (i2 * i4) + (this.mHeightGap * i2) + (i4 / 2)};
        if (L.DEBUG_LAYOUT) {
            L.d(TAG, "estimateCellPosition x = " + i + ", y = " + i2 + ", result[0] = " + iArr[0] + ", result[1] = " + iArr[1] + ", this = " + this);
        }
        return iArr;
    }

    public void calculateCellCount(int i, int i2, int i3, int i4) {
        this.mCellCountX = getTrueX();
        this.mCellCountY = getTrueY();
        if (L.DEBUG_LAYOUT) {
            L.d(TAG, "calculateCellCount width = " + i + ", height = " + i2 + ", maxCellCountX = " + i3 + ", maxCellCountY = " + i4 + ", mCellCountX = " + this.mCellCountX + ", mCellCountY = " + this.mCellCountY + ", this = " + this);
        }
        requestLayout();
    }

    public int estimateCellWidth(int i) {
        if (L.DEBUG_LAYOUT) {
            L.d(TAG, "estimeateCellWidth hSpan = " + i + ", mCellWidth = " + this.mCellWidth + ", this = " + this);
        }
        return i * this.mCellWidth;
    }

    public int estimateCellHeight(int i) {
        if (L.DEBUG_LAYOUT) {
            L.d(TAG, "estimateCellHeight sSpan = " + i + ", mCellHeight = " + this.mCellHeight + ", this = " + this);
        }
        return i * this.mCellHeight;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        this.mOriginalPaddingLeft = getPaddingLeft();
        this.mOriginalPaddingRight = getPaddingRight();
    }

    private int getTrueY() {
        boolean z = getContext().getResources().getConfiguration().orientation == 2;
        if (ZHTDOEMManager.isMRWCustomer() || ZHTDOEMManager.isYZGCustomer() || ZHTDOEMManager.isLCCustomerTheme1()) {
            if (z) {
                return this.mResources.getInteger(R.integer.true_of_count_cell_x);
            }
            return 5;
        }
        Resources resources = this.mResources;
        if (z) {
            return resources.getInteger(R.integer.true_of_count_cell_x);
        }
        return resources.getInteger(ZHTDOEMManager.isLCCustomer() ? R.integer.lc_true_of_count_cell_y : R.integer.true_of_count_cell_y);
    }

    private int getTrueX() {
        boolean z = getContext().getResources().getConfiguration().orientation == 2;
        if (ZHTDOEMManager.isMRWCustomer() || ZHTDOEMManager.isYZGCustomer() || ZHTDOEMManager.isLCCustomerTheme1()) {
            if (ZHTDOEMManager.isYZGCustomer() && ZHTDOEMManager.is1600x720And240dpi() && ZHTDOEMManager.getUIThemeid() != 0) {
                if (z) {
                    return 4;
                }
                return this.mResources.getInteger(R.integer.true_of_count_cell_x);
            }
            if (z) {
                return 5;
            }
            return this.mResources.getInteger(R.integer.true_of_count_cell_x);
        }
        Resources resources = this.mResources;
        if (z) {
            return resources.getInteger(ZHTDOEMManager.isLCCustomer() ? R.integer.lc_true_of_count_cell_y : R.integer.true_of_count_cell_y);
        }
        return resources.getInteger(R.integer.true_of_count_cell_x);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        @ViewDebug.ExportedProperty
        public int cellHSpan;

        @ViewDebug.ExportedProperty
        public int cellVSpan;

        @ViewDebug.ExportedProperty
        public int cellX;

        @ViewDebug.ExportedProperty
        public int cellY;
        public boolean isDragging;
        private Object mTag;

        @ViewDebug.ExportedProperty
        int x;

        @ViewDebug.ExportedProperty
        int y;

        public LayoutParams() {
            super(-1, -1);
            this.cellHSpan = 1;
            this.cellVSpan = 1;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.cellHSpan = 1;
            this.cellVSpan = 1;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.cellHSpan = 1;
            this.cellVSpan = 1;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.cellX = layoutParams.cellX;
            this.cellY = layoutParams.cellY;
            this.cellHSpan = layoutParams.cellHSpan;
            this.cellVSpan = layoutParams.cellVSpan;
        }

        public LayoutParams(int i, int i2, int i3, int i4) {
            super(-1, -1);
            this.cellX = i;
            this.cellY = i2;
            this.cellHSpan = i3;
            this.cellVSpan = i4;
        }

        public void setup(int i, int i2, int i3, int i4, int i5, int i6) {
            int i7 = this.cellHSpan;
            int i8 = this.cellVSpan;
            int i9 = this.cellX;
            int i10 = this.cellY;
            this.width = (((i7 * i) + ((i7 - 1) * i3)) - this.leftMargin) - this.rightMargin;
            this.height = (((i8 * i2) + ((i8 - 1) * i4)) - this.topMargin) - this.bottomMargin;
            if (LauncherApplication.isScreenLarge()) {
                this.x = i5 + (i9 * (i + i3)) + this.leftMargin;
                this.y = i6 + (i10 * (i2 + i4)) + this.topMargin;
            } else {
                this.x = (i9 * (i + i3)) + this.leftMargin;
                this.y = (i10 * (i2 + i4)) + this.topMargin;
            }
        }

        public Object getTag() {
            return this.mTag;
        }

        public void setTag(Object obj) {
            this.mTag = obj;
        }

        public String toString() {
            return "(" + this.cellX + ", " + this.cellY + ", " + this.cellHSpan + ", " + this.cellVSpan + ")";
        }
    }
}
