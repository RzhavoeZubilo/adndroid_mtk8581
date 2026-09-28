package com.android.launcher2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.Scroller;
import androidx.core.view.MotionEventCompat;
import com.android.launcher2.popuView.SwitchIconView;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class PagedView extends ViewGroup implements ViewGroup.OnHierarchyChangeListener, ScreenEffect {
    protected static final float ALPHA_QUANTIZE_LEVEL = 1.0E-4f;
    static final int AUTOMATIC_PAGE_SPACING = -1;
    private static final boolean DEBUG = false;
    private static final int FLING_THRESHOLD_VELOCITY = 500;
    protected static final int INVALID_PAGE = -1;
    protected static final int INVALID_POINTER = -1;
    protected static final int MAX_PAGE_SNAP_DURATION = 750;
    private static final int MIN_FLING_VELOCITY = 250;
    private static final int MIN_LENGTH_FOR_FLING = 25;
    private static final int MIN_SNAP_VELOCITY = 1500;
    protected static final float NANOTIME_DIV = 1.0E9f;
    private static final float OVERSCROLL_ACCELERATE_FACTOR = 2.0f;
    private static final float OVERSCROLL_DAMP_FACTOR = 0.14f;
    protected static final int PAGE_SNAP_ANIMATION_DURATION = 550;
    private static final float RETURN_TO_ORIGINAL_PAGE_THRESHOLD = 0.33f;
    private static final float SIGNIFICANT_MOVE_THRESHOLD = 0.4f;
    protected static final int SLOW_PAGE_SNAP_ANIMATION_DURATION = 950;
    private static final String TAG = "PagedView";
    protected static final int TOUCH_STATE_NEXT_PAGE = 3;
    protected static final int TOUCH_STATE_PREV_PAGE = 2;
    protected static final int TOUCH_STATE_REST = 0;
    protected static final int TOUCH_STATE_SCROLLING = 1;
    private static boolean sCanCallEnterAppWidget = true;
    private static boolean sCanSendMessage = true;
    protected static final int sScrollIndicatorFadeInDuration = 150;
    protected static final int sScrollIndicatorFadeOutDuration = 650;
    protected static final int sScrollIndicatorFlashDuration = 650;
    Runnable hideScrollingIndicatorRunnable;
    private boolean isShowScreenIndicator;
    private boolean isShowScrollIndicator;
    protected int mActivePointerId;
    protected boolean mAllowLongPress;
    protected boolean mAllowOverScroll;
    private boolean mAllowPagedViewAnimations;
    protected int mCellCountX;
    protected int mCellCountY;
    protected boolean mCenterPagesVertically;
    private int[] mChildOffsets;
    private int[] mChildOffsetsWithLayoutScale;
    private int[] mChildRelativeOffsets;
    protected boolean mContentIsRefreshable;
    protected int mCurrentPage;
    private boolean mDeferLoadAssociatedPagesUntilScrollCompletes;
    protected boolean mDeferScrollUpdate;
    protected float mDensity;
    private float mDensityDpi;
    protected ArrayList<Boolean> mDirtyPageContent;
    private float mDownMotionX;
    protected boolean mFadeInAdjacentScreens;
    protected boolean mFirstLayout;
    protected int mFlingThresholdVelocity;
    protected boolean mForceDrawAllChildrenNextFrame;
    protected boolean mForceScreenScrolled;
    private boolean mHasScrollIndicator;
    protected boolean mIsDataReady;
    protected boolean mIsPageMoving;
    protected float mLastMotionX;
    protected float mLastMotionXRemainder;
    protected float mLastMotionY;
    private int mLastScreenCenter;
    protected float mLayoutScale;
    protected View.OnLongClickListener mLongClickListener;
    protected int mMaxScrollX;
    private int mMaximumVelocity;
    protected int mMinFlingVelocity;
    protected int mMinSnapVelocity;
    private int mMinimumWidth;
    protected int mNextPage;
    protected int mOverScrollX;
    private int mPageIndicatorViewId;
    protected int mPageLayoutHeightGap;
    protected int mPageLayoutPaddingBottom;
    protected int mPageLayoutPaddingLeft;
    protected int mPageLayoutPaddingRight;
    protected int mPageLayoutPaddingTop;
    protected int mPageLayoutWidthGap;
    protected int mPageSpacing;
    private PageSwitchListener mPageSwitchListener;
    private int mPagingTouchSlop;
    private ImageView mScreenIndicator;
    private View mScrollIndicator;
    private ValueAnimator mScrollIndicatorAnimator;
    private int mScrollIndicatorPaddingLeft;
    private int mScrollIndicatorPaddingRight;
    protected Scroller mScroller;
    private boolean mScrollingPaused;
    private boolean mShouldShowScrollIndicator;
    private boolean mShouldShowScrollIndicatorImmediately;
    protected float mSmoothingTime;
    private SwitchIconView mSwitchIconView;
    protected int[] mTempVisiblePagesRange;
    protected float mTotalMotionX;
    protected int mTouchSlop;
    protected int mTouchState;
    protected float mTouchX;
    protected int mUnboundedScrollX;
    protected boolean mUsePagingTouchSlop;
    private VelocityTracker mVelocityTracker;

    public interface PageSwitchListener {
        void onPageSwitch(View view, int i);
    }

    private static class ScrollInterpolator implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    private float overScrollInfluenceCurve(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * f2) + 1.0f;
    }

    public int getAppPageNum() {
        return -1;
    }

    protected boolean hasElasticScrollIndicator() {
        return true;
    }

    public void hideScrollIndicatorTrack() {
    }

    protected int indexToPage(int i) {
        return i;
    }

    protected boolean isScrollingIndicatorEnabled() {
        return false;
    }

    public boolean isSupportCycleSlidingScreen() {
        return false;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        return true;
    }

    protected void onPageBeginMoving() {
    }

    protected void onPageEndMoving() {
    }

    protected void onUnhandledTap(MotionEvent motionEvent) {
    }

    public void showScrollIndicatorTrack() {
    }

    public abstract void syncPageItems(int i, boolean z);

    public abstract void syncPages();

    public PagedView(Context context) {
        this(context, null);
    }

    public PagedView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PagedView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mFirstLayout = true;
        this.mNextPage = -1;
        this.mLastScreenCenter = -1;
        this.mTouchState = 0;
        this.mForceScreenScrolled = false;
        this.mAllowLongPress = true;
        this.mCellCountX = 0;
        this.mCellCountY = 0;
        this.mAllowOverScroll = true;
        this.mTempVisiblePagesRange = new int[2];
        this.mLayoutScale = 1.0f;
        this.mActivePointerId = -1;
        this.mContentIsRefreshable = true;
        this.mFadeInAdjacentScreens = true;
        this.mUsePagingTouchSlop = true;
        this.mDeferScrollUpdate = false;
        this.mIsPageMoving = false;
        this.mIsDataReady = false;
        this.mAllowPagedViewAnimations = true;
        this.mHasScrollIndicator = true;
        this.mShouldShowScrollIndicator = false;
        this.mShouldShowScrollIndicatorImmediately = false;
        this.mScrollingPaused = false;
        this.isShowScrollIndicator = true;
        this.isShowScreenIndicator = false;
        this.hideScrollingIndicatorRunnable = new Runnable() { // from class: com.android.launcher2.PagedView.1
            @Override // java.lang.Runnable
            public void run() {
                PagedView.this.hideScrollingIndicator(false);
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PagedView, i, 0);
        setPageSpacing(typedArrayObtainStyledAttributes.getDimensionPixelSize(7, 0));
        this.mPageLayoutPaddingTop = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, 0);
        this.mPageLayoutPaddingBottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.mPageLayoutPaddingLeft = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, 0);
        this.mPageLayoutPaddingRight = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, 0);
        this.mPageLayoutWidthGap = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0);
        this.mPageLayoutHeightGap = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.mPageIndicatorViewId = typedArrayObtainStyledAttributes.getResourceId(0, -1);
        typedArrayObtainStyledAttributes.recycle();
        setHapticFeedbackEnabled(false);
        init();
    }

    protected void init() {
        ArrayList<Boolean> arrayList = new ArrayList<>();
        this.mDirtyPageContent = arrayList;
        arrayList.ensureCapacity(32);
        this.mScroller = new Scroller(getContext(), new ScrollInterpolator());
        this.mCurrentPage = 0;
        this.mCenterPagesVertically = true;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mPagingTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mDensity = getResources().getDisplayMetrics().density;
        this.mDensityDpi = getResources().getDisplayMetrics().densityDpi;
        Log.d("vvvvvv", "mDensityDpi===" + this.mDensityDpi);
        float f = this.mDensity;
        this.mFlingThresholdVelocity = (int) (500.0f * f);
        this.mMinFlingVelocity = (int) (250.0f * f);
        this.mMinSnapVelocity = (int) (f * 1500.0f);
        setOnHierarchyChangeListener(this);
    }

    public void setPageSwitchListener(PageSwitchListener pageSwitchListener) {
        this.mPageSwitchListener = pageSwitchListener;
        if (pageSwitchListener != null) {
            pageSwitchListener.onPageSwitch(getPageAt(this.mCurrentPage), this.mCurrentPage);
        }
    }

    public void setShowScrollIndicator(boolean z) {
        this.isShowScrollIndicator = z;
    }

    public void setShowScreenIndicator(boolean z) {
        this.isShowScreenIndicator = z;
    }

    protected void setDataIsReady() {
        this.mIsDataReady = true;
    }

    protected boolean isDataReady() {
        return this.mIsDataReady;
    }

    public int getCurrentPage() {
        return this.mCurrentPage;
    }

    int getNextPage() {
        int i = this.mNextPage;
        return i != -1 ? i : this.mCurrentPage;
    }

    int getPageCount() {
        return getChildCount();
    }

    View getPageAt(int i) {
        return getChildAt(i);
    }

    protected void updateCurrentPageScroll() {
        int i = this.mCurrentPage;
        int childOffset = (i < 0 || i >= getPageCount()) ? 0 : getChildOffset(this.mCurrentPage) - getRelativeChildOffset(this.mCurrentPage);
        scrollTo(childOffset, 0);
        this.mScroller.setFinalX(childOffset);
        this.mScroller.forceFinished(true);
    }

    void pauseScrolling() {
        this.mScroller.forceFinished(true);
        cancelScrollingIndicatorAnimations();
        this.mScrollingPaused = true;
    }

    void resumeScrolling() {
        this.mScrollingPaused = false;
    }

    void setCurrentPage(int i) {
        if (L.DEBUG) {
            L.d(TAG, "setCurrentPage: currentPage = " + i + ", mCurrentPage = " + this.mCurrentPage + ", mScrollX = " + getScrollX() + ", this = " + this);
        }
        if (!this.mScroller.isFinished()) {
            this.mScroller.abortAnimation();
        }
        if (getChildCount() == 0) {
            return;
        }
        this.mCurrentPage = Math.max(0, Math.min(i, getPageCount() - 1));
        updateCurrentPageScroll();
        updateScrollingIndicator();
        notifyPageSwitchListener();
        invalidate();
    }

    protected void notifyPageSwitchListener() {
        PageSwitchListener pageSwitchListener = this.mPageSwitchListener;
        if (pageSwitchListener != null) {
            pageSwitchListener.onPageSwitch(getPageAt(this.mCurrentPage), this.mCurrentPage);
        }
    }

    protected void pageBeginMoving() {
        if (this.mIsPageMoving) {
            return;
        }
        this.mIsPageMoving = true;
        onPageBeginMoving();
    }

    protected void pageEndMoving() {
        if (this.mIsPageMoving) {
            this.mIsPageMoving = false;
            onPageEndMoving();
        }
    }

    protected boolean isPageMoving() {
        return this.mIsPageMoving;
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.mLongClickListener = onLongClickListener;
        int pageCount = getPageCount();
        for (int i = 0; i < pageCount; i++) {
            getPageAt(i).setOnLongClickListener(onLongClickListener);
        }
    }

    @Override // android.view.View
    public void scrollBy(int i, int i2) {
        scrollTo(this.mUnboundedScrollX + i, getScrollY() + i2);
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        this.mUnboundedScrollX = i;
        if (i < 0) {
            super.scrollTo(0, i2);
            if (this.mAllowOverScroll) {
                overScroll(i);
            }
        } else {
            int i3 = this.mMaxScrollX;
            if (i > i3) {
                super.scrollTo(i3, i2);
                if (this.mAllowOverScroll) {
                    overScroll(i - this.mMaxScrollX);
                }
            } else {
                this.mOverScrollX = i;
                super.scrollTo(i, i2);
            }
        }
        this.mTouchX = i;
        this.mSmoothingTime = System.nanoTime() / NANOTIME_DIV;
    }

    protected boolean computeScrollHelper() {
        if (this.mScroller.computeScrollOffset()) {
            if (getScrollX() != this.mScroller.getCurrX() || getScrollY() != this.mScroller.getCurrY() || this.mOverScrollX != this.mScroller.getCurrX()) {
                scrollTo(this.mScroller.getCurrX(), this.mScroller.getCurrY());
            }
            invalidate();
            return true;
        }
        int i = this.mNextPage;
        if (i == -1) {
            return false;
        }
        this.mCurrentPage = Math.max(0, Math.min(i, getPageCount() - 1));
        this.mNextPage = -1;
        notifyPageSwitchListener();
        if (this.mDeferLoadAssociatedPagesUntilScrollCompletes) {
            loadAssociatedPages(this.mCurrentPage);
            this.mDeferLoadAssociatedPagesUntilScrollCompletes = false;
        }
        if (this.mTouchState == 0) {
            pageEndMoving();
        }
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled()) {
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(4096);
            accessibilityEventObtain.getText().add(getCurrentPageDescription());
            sendAccessibilityEventUnchecked(accessibilityEventObtain);
        }
        return true;
    }

    @Override // android.view.View
    public void computeScroll() {
        computeScrollHelper();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (!this.mIsDataReady) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            throw new IllegalStateException("Workspace can only be used in EXACTLY mode.");
        }
        if (size <= 0 || size2 <= 0) {
            super.onMeasure(i, i2);
            return;
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int childCount = getChildCount();
        int i3 = 0;
        int iMax = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View pageAt = getPageAt(i3);
            ViewGroup.LayoutParams layoutParams = pageAt.getLayoutParams();
            int i4 = layoutParams.width == -2 ? Integer.MIN_VALUE : 1073741824;
            int i5 = layoutParams.height != -2 ? 1073741824 : Integer.MIN_VALUE;
            pageAt.measure(View.MeasureSpec.makeMeasureSpec(size - paddingLeft, i4), View.MeasureSpec.makeMeasureSpec(size2 - paddingTop, i5));
            iMax = Math.max(iMax, pageAt.getMeasuredHeight());
            if (L.DEBUG_LAYOUT) {
                L.d(TAG, "measure-child " + i3 + ": child = " + pageAt + ", childWidthMode = " + i4 + ", childHeightMode = " + i5 + ", this = " + this);
            }
            i3++;
        }
        if (mode2 == Integer.MIN_VALUE) {
            size2 = iMax + paddingTop;
        }
        setMeasuredDimension(size, size2);
        invalidateCachedOffsets();
        if (childCount > 0 && this.mPageSpacing == -1) {
            int relativeChildOffset = getRelativeChildOffset(0);
            setPageSpacing(Math.max(relativeChildOffset, (size - relativeChildOffset) - getChildAt(0).getMeasuredWidth()));
        }
        updateScrollingIndicatorPosition();
        if (childCount > 0) {
            int i6 = childCount - 1;
            this.mMaxScrollX = getChildOffset(i6) - getRelativeChildOffset(i6);
        } else {
            this.mMaxScrollX = 0;
        }
    }

    protected void scrollToNewPageWithoutMovingPages(int i) {
        int childOffset = getChildOffset(i) - getRelativeChildOffset(i);
        int scrollX = childOffset - getScrollX();
        int childCount = getChildCount();
        if (L.DEBUG) {
            L.d(TAG, "Scroll to new page without moving pages: newCurrentPage = " + i + ", newX = " + childOffset + ", mScrollX = " + getScrollX());
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            View pageAt = getPageAt(i2);
            pageAt.setX(pageAt.getX() + scrollX);
        }
        setCurrentPage(i);
    }

    public void setLayoutScale(float f) {
        this.mLayoutScale = f;
        invalidateCachedOffsets();
        int childCount = getChildCount();
        float[] fArr = new float[childCount];
        float[] fArr2 = new float[childCount];
        for (int i = 0; i < childCount; i++) {
            View pageAt = getPageAt(i);
            fArr[i] = pageAt.getX();
            fArr2[i] = pageAt.getY();
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        requestLayout();
        measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        if (getMeasuredWidth() != 0 && getMeasuredHeight() != 0) {
            layout(getLeft(), getTop(), getRight(), getBottom());
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            View pageAt2 = getPageAt(i2);
            pageAt2.setX(fArr[i2]);
            pageAt2.setY(fArr2[i2]);
        }
        scrollToNewPageWithoutMovingPages(this.mCurrentPage);
    }

    public void setPageSpacing(int i) {
        this.mPageSpacing = i;
        invalidateCachedOffsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        if (this.mIsDataReady) {
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int childCount = getChildCount();
            int relativeChildOffset = getRelativeChildOffset(0);
            for (int i6 = 0; i6 < childCount; i6++) {
                View pageAt = getPageAt(i6);
                if (pageAt.getVisibility() != 8) {
                    int scaledMeasuredWidth = getScaledMeasuredWidth(pageAt);
                    int measuredHeight = pageAt.getMeasuredHeight();
                    int paddingTop2 = getPaddingTop();
                    if (this.mCenterPagesVertically) {
                        paddingTop2 += ((getMeasuredHeight() - paddingTop) - measuredHeight) / 2;
                    }
                    pageAt.layout(relativeChildOffset, paddingTop2, pageAt.getMeasuredWidth() + relativeChildOffset, measuredHeight + paddingTop2);
                    relativeChildOffset += scaledMeasuredWidth + this.mPageSpacing;
                }
            }
            if (!this.mFirstLayout || (i5 = this.mCurrentPage) < 0 || i5 >= getChildCount()) {
                return;
            }
            setHorizontalScrollBarEnabled(false);
            updateCurrentPageScroll();
            setHorizontalScrollBarEnabled(true);
            this.mFirstLayout = false;
        }
    }

    protected void screenScrolled(int i) {
        if (isScrollingIndicatorEnabled()) {
            updateScrollingIndicator();
        }
        int i2 = this.mOverScrollX;
        boolean z = i2 < 0 || i2 > this.mMaxScrollX;
        if (!this.mFadeInAdjacentScreens || z) {
            return;
        }
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            if (childAt != null) {
                childAt.setAlpha(1.0f - Math.abs(getScrollProgress(i, childAt, i3)));
            }
        }
        invalidate();
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        this.mForceScreenScrolled = true;
        invalidate();
        invalidateCachedOffsets();
    }

    protected void invalidateCachedOffsets() {
        int childCount = getChildCount();
        if (childCount == 0) {
            this.mChildOffsets = null;
            this.mChildRelativeOffsets = null;
            this.mChildOffsetsWithLayoutScale = null;
            return;
        }
        this.mChildOffsets = new int[childCount];
        this.mChildRelativeOffsets = new int[childCount];
        this.mChildOffsetsWithLayoutScale = new int[childCount];
        for (int i = 0; i < childCount; i++) {
            this.mChildOffsets[i] = -1;
            this.mChildRelativeOffsets[i] = -1;
            this.mChildOffsetsWithLayoutScale[i] = -1;
        }
    }

    protected int getChildOffset(int i) {
        int[] iArr = Float.compare(this.mLayoutScale, 1.0f) == 0 ? this.mChildOffsets : this.mChildOffsetsWithLayoutScale;
        if (iArr != null && iArr[i] != -1) {
            return iArr[i];
        }
        if (getChildCount() == 0) {
            return 0;
        }
        int relativeChildOffset = getRelativeChildOffset(0);
        for (int i2 = 0; i2 < i; i2++) {
            relativeChildOffset += getScaledMeasuredWidth(getPageAt(i2)) + this.mPageSpacing;
        }
        if (iArr != null) {
            iArr[i] = relativeChildOffset;
        }
        return relativeChildOffset;
    }

    protected int getRelativeChildOffset(int i) {
        int[] iArr = this.mChildRelativeOffsets;
        if (iArr != null && iArr[i] != -1) {
            if (L.DEBUG_DRAW) {
                L.d(TAG, "getRelativeChildOffset 1: index = " + i + ", mChildRelativeOffsets[" + i + "] = " + this.mChildRelativeOffsets[i] + ", this = " + this);
            }
            return this.mChildRelativeOffsets[i];
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingLeft2 = getPaddingLeft() + (((getMeasuredWidth() - paddingLeft) - getChildWidth(i)) / 2);
        int[] iArr2 = this.mChildRelativeOffsets;
        if (iArr2 != null) {
            iArr2[i] = paddingLeft2;
        }
        if (L.DEBUG_DRAW) {
            L.d(TAG, "getRelativeChildOffset 2: index = " + i + ", mPaddingLeft = " + getPaddingLeft() + ", mPaddingRight = " + getPaddingRight() + ", padding = " + paddingLeft + ", offset = " + paddingLeft2 + ", measure width = " + getMeasuredWidth() + ", this = " + this);
        }
        return paddingLeft2;
    }

    protected int getScaledMeasuredWidth(View view) {
        int measuredWidth = view.getMeasuredWidth();
        int i = this.mMinimumWidth;
        if (i > measuredWidth) {
            measuredWidth = i;
        }
        return (int) ((measuredWidth * this.mLayoutScale) + 0.5f);
    }

    protected int getScaledRelativeChildOffset(int i) {
        return getPaddingLeft() + (((getMeasuredWidth() - (getPaddingLeft() + getPaddingRight())) - getScaledMeasuredWidth(getPageAt(i))) / 2);
    }

    protected void getVisiblePages(int[] iArr) {
        int i;
        int childCount = getChildCount();
        if (childCount > 0) {
            int measuredWidth = getMeasuredWidth();
            View pageAt = getPageAt(0);
            int i2 = 0;
            while (true) {
                i = childCount - 1;
                if (i2 >= i || (pageAt.getX() + pageAt.getWidth()) - pageAt.getPaddingRight() >= getScrollX()) {
                    break;
                }
                i2++;
                pageAt = getPageAt(i2);
            }
            View pageAt2 = getPageAt(i2 + 1);
            int i3 = i2;
            while (i3 < i && pageAt2.getX() - pageAt2.getPaddingLeft() < getScrollX() + measuredWidth) {
                i3++;
                pageAt2 = getPageAt(i3 + 1);
            }
            iArr[0] = i2;
            iArr[1] = i3;
            return;
        }
        iArr[0] = -1;
        iArr[1] = -1;
    }

    protected boolean shouldDrawChild(View view) {
        return view.getAlpha() > 0.0f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int measuredWidth = this.mOverScrollX + (getMeasuredWidth() / 2);
        if (measuredWidth != this.mLastScreenCenter || this.mForceScreenScrolled) {
            this.mForceScreenScrolled = false;
            screenScrolled(measuredWidth);
            this.mLastScreenCenter = measuredWidth;
        }
        if (getChildCount() > 0) {
            getVisiblePages(this.mTempVisiblePagesRange);
            int[] iArr = this.mTempVisiblePagesRange;
            int i = iArr[0];
            int i2 = iArr[1];
            if (i == -1 || i2 == -1) {
                return;
            }
            long drawingTime = getDrawingTime();
            canvas.save();
            canvas.clipRect(getScrollX(), getScrollY(), (getScrollX() + getRight()) - getLeft(), (getScrollY() + getBottom()) - getTop());
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                View pageAt = getPageAt(childCount);
                if (this.mForceDrawAllChildrenNextFrame || (i <= childCount && childCount <= i2 && shouldDrawChild(pageAt))) {
                    drawChild(canvas, pageAt, drawingTime);
                }
            }
            this.mForceDrawAllChildrenNextFrame = false;
            canvas.restore();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        int iIndexToPage = indexToPage(indexOfChild(view));
        if (iIndexToPage == this.mCurrentPage && this.mScroller.isFinished()) {
            return false;
        }
        snapToPage(iIndexToPage);
        return true;
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2 = this.mNextPage;
        if (i2 == -1) {
            i2 = this.mCurrentPage;
        }
        View pageAt = getPageAt(i2);
        if (pageAt != null) {
            return pageAt.requestFocus(i, rect);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i) {
        if (i == 17) {
            if (getCurrentPage() > 0) {
                snapToPage(getCurrentPage() - 1);
                return true;
            }
        } else if (i == 66 && getCurrentPage() < getPageCount() - 1) {
            snapToPage(getCurrentPage() + 1);
            return true;
        }
        return super.dispatchUnhandledMove(view, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        int i3 = this.mCurrentPage;
        if (i3 >= 0 && i3 < getPageCount()) {
            getPageAt(this.mCurrentPage).addFocusables(arrayList, i, i2);
        }
        if (i == 17) {
            int i4 = this.mCurrentPage;
            if (i4 > 0) {
                getPageAt(i4 - 1).addFocusables(arrayList, i, i2);
                return;
            }
            return;
        }
        if (i != 66 || this.mCurrentPage >= getPageCount() - 1) {
            return;
        }
        getPageAt(this.mCurrentPage + 1).addFocusables(arrayList, i, i2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void focusableViewAvailable(View view) {
        View pageAt = getPageAt(this.mCurrentPage);
        for (View view2 = view; view2 != pageAt; view2 = (View) view2.getParent()) {
            if (view2 == this || !(view2.getParent() instanceof View)) {
                return;
            }
        }
        super.focusableViewAvailable(view);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            getPageAt(this.mCurrentPage).cancelLongPress();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    protected boolean hitsPreviousPage(float f, float f2) {
        return f < ((float) (getRelativeChildOffset(this.mCurrentPage) - this.mPageSpacing));
    }

    protected boolean hitsNextPage(float f, float f2) {
        return f > ((float) ((getMeasuredWidth() - getRelativeChildOffset(this.mCurrentPage)) + this.mPageSpacing));
    }

    /* JADX WARN: Code duplicated, block: B:24:0x003e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0048  */
    /* JADX WARN: Code duplicated, block: B:31:0x0083  */
    /* JADX WARN: Code duplicated, block: B:33:0x0086  */
    /* JADX WARN: Code duplicated, block: B:34:0x008e  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ab  */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        float x;
        float y;
        boolean z;
        int i;
        acquireVelocityTrackerAndAddMovement(motionEvent);
        if (getChildCount() <= 0) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 2 && this.mTouchState == 1) {
            return true;
        }
        int i2 = action & 255;
        if (i2 == 0) {
            x = motionEvent.getX();
            y = motionEvent.getY();
            this.mDownMotionX = x;
            this.mLastMotionX = x;
            this.mLastMotionY = y;
            this.mLastMotionXRemainder = 0.0f;
            this.mTotalMotionX = 0.0f;
            this.mActivePointerId = motionEvent.getPointerId(0);
            this.mAllowLongPress = true;
            int iAbs = Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX());
            if (!this.mScroller.isFinished() || iAbs < this.mTouchSlop) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.mTouchState = 0;
                this.mScroller.abortAnimation();
            } else {
                this.mTouchState = 1;
            }
            i = this.mTouchState;
            if (i != 2 && i != 3 && getChildCount() > 0) {
                if (hitsPreviousPage(x, y)) {
                    this.mTouchState = 2;
                } else if (hitsNextPage(x, y)) {
                    this.mTouchState = 3;
                }
            }
        } else if (i2 == 1) {
            this.mTouchState = 0;
            this.mAllowLongPress = false;
            this.mActivePointerId = -1;
            releaseVelocityTracker();
        } else if (i2 != 2) {
            if (i2 == 3) {
                this.mTouchState = 0;
                this.mAllowLongPress = false;
                this.mActivePointerId = -1;
                releaseVelocityTracker();
            } else if (i2 == 6) {
                onSecondaryPointerUp(motionEvent);
                releaseVelocityTracker();
            }
        } else if (this.mActivePointerId != -1) {
            determineScrollingStart(motionEvent);
        } else {
            x = motionEvent.getX();
            y = motionEvent.getY();
            this.mDownMotionX = x;
            this.mLastMotionX = x;
            this.mLastMotionY = y;
            this.mLastMotionXRemainder = 0.0f;
            this.mTotalMotionX = 0.0f;
            this.mActivePointerId = motionEvent.getPointerId(0);
            this.mAllowLongPress = true;
            int iAbs2 = Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX());
            if (this.mScroller.isFinished()) {
                z = true;
            } else {
                z = true;
            }
            if (z) {
                this.mTouchState = 0;
                this.mScroller.abortAnimation();
            } else {
                this.mTouchState = 1;
            }
            i = this.mTouchState;
            if (i != 2) {
                if (hitsPreviousPage(x, y)) {
                    this.mTouchState = 2;
                } else if (hitsNextPage(x, y)) {
                    this.mTouchState = 3;
                }
            }
        }
        return this.mTouchState != 0;
    }

    protected void determineScrollingStart(MotionEvent motionEvent) {
        determineScrollingStart(motionEvent, 1.0f);
    }

    protected void determineScrollingStart(MotionEvent motionEvent, float f) {
        int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
        if (iFindPointerIndex == -1) {
            return;
        }
        float x = motionEvent.getX(iFindPointerIndex);
        float y = motionEvent.getY(iFindPointerIndex);
        int iAbs = (int) Math.abs(x - this.mLastMotionX);
        int iAbs2 = (int) Math.abs(y - this.mLastMotionY);
        int iRound = Math.round(f * this.mTouchSlop);
        boolean z = iAbs > this.mPagingTouchSlop;
        boolean z2 = iAbs > iRound;
        boolean z3 = iAbs2 > iRound;
        if (z2 || z || z3) {
            if (!this.mUsePagingTouchSlop ? z2 : z) {
                this.mTouchState = 1;
                this.mTotalMotionX += Math.abs(this.mLastMotionX - x);
                this.mLastMotionX = x;
                this.mLastMotionXRemainder = 0.0f;
                this.mTouchX = getScrollX();
                this.mSmoothingTime = System.nanoTime() / NANOTIME_DIV;
                pageBeginMoving();
            }
            cancelCurrentPageLongPress();
        }
    }

    protected void cancelCurrentPageLongPress() {
        if (this.mAllowLongPress) {
            this.mAllowLongPress = false;
            View pageAt = getPageAt(this.mCurrentPage);
            if (pageAt != null) {
                pageAt.cancelLongPress();
            }
        }
    }

    protected float getScrollProgress(int i, View view, int i2) {
        return Math.max(Math.min((i - ((getChildOffset(i2) - getRelativeChildOffset(i2)) + (getMeasuredWidth() / 2))) / ((getScaledMeasuredWidth(view) + this.mPageSpacing) * 1.0f), 1.0f), -1.0f);
    }

    protected void acceleratedOverScroll(float f) {
        float measuredWidth = getMeasuredWidth();
        float fAbs = (f / measuredWidth) * OVERSCROLL_ACCELERATE_FACTOR;
        if (fAbs == 0.0f) {
            return;
        }
        if (Math.abs(fAbs) >= 1.0f) {
            fAbs /= Math.abs(fAbs);
        }
        int iRound = Math.round(fAbs * measuredWidth);
        if (f < 0.0f) {
            this.mOverScrollX = iRound;
            super.scrollTo(0, getScrollY());
        } else {
            int i = this.mMaxScrollX;
            this.mOverScrollX = iRound + i;
            super.scrollTo(i, getScrollY());
        }
        invalidate();
    }

    protected void dampedOverScroll(float f) {
        float measuredWidth = getMeasuredWidth();
        float f2 = f / measuredWidth;
        if (f2 == 0.0f) {
            return;
        }
        float fAbs = (f2 / Math.abs(f2)) * overScrollInfluenceCurve(Math.abs(f2));
        if (Math.abs(fAbs) >= 1.0f) {
            fAbs /= Math.abs(fAbs);
        }
        int iRound = Math.round(fAbs * OVERSCROLL_DAMP_FACTOR * measuredWidth);
        if (f < 0.0f) {
            this.mOverScrollX = iRound;
            super.scrollTo(0, getScrollY());
        } else {
            int i = this.mMaxScrollX;
            this.mOverScrollX = iRound + i;
            super.scrollTo(i, getScrollY());
        }
        invalidate();
    }

    protected void overScroll(float f) {
        dampedOverScroll(f);
    }

    protected float maxOverScroll() {
        return (1.0f / Math.abs(1.0f)) * overScrollInfluenceCurve(Math.abs(1.0f)) * OVERSCROLL_DAMP_FACTOR;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i;
        if (getChildCount() <= 0) {
            return super.onTouchEvent(motionEvent);
        }
        acquireVelocityTrackerAndAddMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            if (!this.mScroller.isFinished()) {
                this.mScroller.abortAnimation();
            }
            float x = motionEvent.getX();
            this.mLastMotionX = x;
            this.mDownMotionX = x;
            this.mLastMotionXRemainder = 0.0f;
            this.mTotalMotionX = 0.0f;
            this.mActivePointerId = motionEvent.getPointerId(0);
            if (this.mTouchState == 1) {
                pageBeginMoving();
            }
        } else if (action == 1) {
            int i2 = this.mTouchState;
            if (i2 == 1) {
                int i3 = this.mActivePointerId;
                float x2 = motionEvent.getX(motionEvent.findPointerIndex(i3));
                VelocityTracker velocityTracker = this.mVelocityTracker;
                velocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
                int xVelocity = (int) velocityTracker.getXVelocity(i3);
                int i4 = (int) (x2 - this.mDownMotionX);
                float scaledMeasuredWidth = getScaledMeasuredWidth(getPageAt(this.mCurrentPage));
                boolean z = ((float) Math.abs(i4)) > SIGNIFICANT_MOVE_THRESHOLD * scaledMeasuredWidth;
                float fAbs = this.mTotalMotionX + Math.abs((this.mLastMotionX + this.mLastMotionXRemainder) - x2);
                this.mTotalMotionX = fAbs;
                boolean z2 = fAbs > 25.0f && Math.abs(xVelocity) > this.mFlingThresholdVelocity;
                boolean z3 = ((float) Math.abs(i4)) > scaledMeasuredWidth * RETURN_TO_ORIGINAL_PAGE_THRESHOLD && Math.signum((float) xVelocity) != Math.signum((float) i4) && z2;
                if (((z && i4 > 0 && !z2) || (z2 && xVelocity > 0)) && (i = this.mCurrentPage) > 0) {
                    if (!z3) {
                        i--;
                    }
                    snapToPageWithVelocity(i, xVelocity);
                } else if (((z && i4 < 0 && !z2) || (z2 && xVelocity < 0)) && this.mCurrentPage < getChildCount() - 1) {
                    int i5 = this.mCurrentPage;
                    if (!z3) {
                        i5++;
                    }
                    snapToPageWithVelocity(i5, xVelocity);
                } else {
                    snapToDestination();
                }
            } else if (i2 == 2) {
                int iMax = Math.max(0, this.mCurrentPage - 1);
                if (iMax != this.mCurrentPage) {
                    snapToPage(iMax);
                } else {
                    snapToDestination();
                }
            } else if (i2 == 3) {
                int iMin = Math.min(getChildCount() - 1, this.mCurrentPage + 1);
                if (iMin != this.mCurrentPage) {
                    snapToPage(iMin);
                } else {
                    snapToDestination();
                }
            } else {
                onUnhandledTap(motionEvent);
            }
            this.mTouchState = 0;
            this.mActivePointerId = -1;
            releaseVelocityTracker();
        } else if (action != 2) {
            if (action == 3) {
                if (this.mTouchState == 1) {
                    snapToDestination();
                }
                this.mTouchState = 0;
                this.mActivePointerId = -1;
                releaseVelocityTracker();
            } else if (action == 6) {
                onSecondaryPointerUp(motionEvent);
            }
        } else if (this.mTouchState == 1) {
            float x3 = motionEvent.getX(motionEvent.findPointerIndex(this.mActivePointerId));
            float f = (this.mLastMotionX + this.mLastMotionXRemainder) - x3;
            this.mTotalMotionX += Math.abs(f);
            if (Math.abs(f) >= 1.0f) {
                this.mTouchX += f;
                this.mSmoothingTime = System.nanoTime() / NANOTIME_DIV;
                if (!this.mDeferScrollUpdate) {
                    scrollBy((int) f, 0);
                } else {
                    invalidate();
                }
                this.mLastMotionX = x3;
                this.mLastMotionXRemainder = f - ((int) f);
            } else {
                awakenScrollBars();
            }
        } else {
            determineScrollingStart(motionEvent);
        }
        return true;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f;
        float axisValue;
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8) {
            if ((motionEvent.getMetaState() & 1) != 0) {
                axisValue = motionEvent.getAxisValue(9);
                f = 0.0f;
            } else {
                f = -motionEvent.getAxisValue(9);
                axisValue = motionEvent.getAxisValue(10);
            }
            if (axisValue != 0.0f || f != 0.0f) {
                if (axisValue > 0.0f || f > 0.0f) {
                    scrollRight();
                } else {
                    scrollLeft();
                }
                return true;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    private void acquireVelocityTrackerAndAddMovement(MotionEvent motionEvent) {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
    }

    private void releaseVelocityTracker() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private void onSecondaryPointerUp(MotionEvent motionEvent) {
        int action = (motionEvent.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
        if (motionEvent.getPointerId(action) == this.mActivePointerId) {
            int i = action == 0 ? 1 : 0;
            float x = motionEvent.getX(i);
            this.mDownMotionX = x;
            this.mLastMotionX = x;
            this.mLastMotionY = motionEvent.getY(i);
            this.mLastMotionXRemainder = 0.0f;
            this.mActivePointerId = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.mVelocityTracker;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        int iIndexToPage = indexToPage(indexOfChild(view));
        if (iIndexToPage < 0 || iIndexToPage == getCurrentPage() || isInTouchMode()) {
            return;
        }
        snapToPage(iIndexToPage);
    }

    protected int getChildIndexForRelativeOffset(int i) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            int relativeChildOffset = getRelativeChildOffset(i2);
            int scaledMeasuredWidth = getScaledMeasuredWidth(getPageAt(i2)) + relativeChildOffset;
            if (relativeChildOffset <= i && i <= scaledMeasuredWidth) {
                if (L.DEBUG) {
                    L.d(TAG, "getChildIndexForRelativeOffset i = " + i2);
                }
                return i2;
            }
        }
        return -1;
    }

    protected int getChildWidth(int i) {
        int measuredWidth = getPageAt(i).getMeasuredWidth();
        if (L.DEBUG_LAYOUT) {
            L.d(TAG, "getChildWidth: index = " + i + ", child = " + getPageAt(i) + ", measured width = " + measuredWidth + ", mMinimumWidth = " + this.mMinimumWidth);
        }
        int i2 = this.mMinimumWidth;
        return i2 > measuredWidth ? i2 : measuredWidth;
    }

    int getPageNearestToCenterOfScreen() {
        int scrollX = getScrollX() + (getMeasuredWidth() / 2);
        int childCount = getChildCount();
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        for (int i3 = 0; i3 < childCount; i3++) {
            int iAbs = Math.abs((getChildOffset(i3) + (getScaledMeasuredWidth(getPageAt(i3)) / 2)) - scrollX);
            if (iAbs < i) {
                i2 = i3;
                i = iAbs;
            }
        }
        if (L.DEBUG) {
            L.d(TAG, "getPageNearestToCenterOfScreen: minDistanceFromScreenCenterIndex = " + i2 + ", mScrollX = " + getScrollX());
        }
        return i2;
    }

    protected void snapToDestination() {
        snapToPage(getPageNearestToCenterOfScreen(), PAGE_SNAP_ANIMATION_DURATION);
    }

    float distanceInfluenceForSnapDuration(float f) {
        return (float) Math.sin((float) (((double) (f - 0.5f)) * 0.4712389167638204d));
    }

    protected void snapToPageWithVelocity(int i, int i2) {
        int iMax = Math.max(0, Math.min(i, getChildCount() - 1));
        int measuredWidth = getMeasuredWidth() / 2;
        int childOffset = (getChildOffset(iMax) - getRelativeChildOffset(iMax)) - this.mUnboundedScrollX;
        if (Math.abs(i2) < this.mMinFlingVelocity) {
            snapToPage(iMax, PAGE_SNAP_ANIMATION_DURATION);
            return;
        }
        float fMin = Math.min(1.0f, (Math.abs(childOffset) * 1.0f) / (measuredWidth * 2));
        float f = measuredWidth;
        snapToPage(iMax, childOffset, Math.min(Math.round(Math.abs((f + (distanceInfluenceForSnapDuration(fMin) * f)) / Math.max(this.mMinSnapVelocity, Math.abs(i2))) * 1000.0f) * 4, MAX_PAGE_SNAP_DURATION));
    }

    protected void snapToPage(int i) {
        snapToPage(i, PAGE_SNAP_ANIMATION_DURATION);
    }

    protected void snapToPage(int i, int i2) {
        int iMax = Math.max(0, Math.min(i, getPageCount() - 1));
        snapToPage(iMax, (getChildOffset(iMax) - getRelativeChildOffset(iMax)) - this.mUnboundedScrollX, i2);
    }

    protected void snapToPage(int i, int i2, int i3) {
        int i4;
        this.mNextPage = i;
        View focusedChild = getFocusedChild();
        if (focusedChild != null && i != (i4 = this.mCurrentPage) && focusedChild == getPageAt(i4)) {
            focusedChild.clearFocus();
        }
        pageBeginMoving();
        awakenScrollBars(i3);
        if (i3 == 0) {
            i3 = Math.abs(i2);
        }
        int i5 = i3;
        if (!this.mScroller.isFinished()) {
            this.mScroller.abortAnimation();
        }
        this.mScroller.startScroll(this.mUnboundedScrollX, 0, i2, 0, i5);
        if (this.mDeferScrollUpdate) {
            loadAssociatedPages(this.mNextPage);
        } else {
            this.mDeferLoadAssociatedPagesUntilScrollCompletes = true;
        }
        notifyPageSwitchListener();
        invalidate();
    }

    public void scrollLeft() {
        if (this.mScroller.isFinished()) {
            int i = this.mCurrentPage;
            if (i > 0) {
                snapToPage(i - 1);
                return;
            }
            return;
        }
        int i2 = this.mNextPage;
        if (i2 > 0) {
            snapToPage(i2 - 1);
        }
    }

    public void scrollRight() {
        if (this.mScroller.isFinished()) {
            if (this.mCurrentPage < getChildCount() - 1) {
                snapToPage(this.mCurrentPage + 1);
            }
        } else if (this.mNextPage < getChildCount() - 1) {
            snapToPage(this.mNextPage + 1);
        }
    }

    public int getPageForView(View view) {
        if (view == null) {
            return -1;
        }
        ViewParent parent = view.getParent();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (parent == getPageAt(i)) {
                return i;
            }
        }
        return -1;
    }

    public boolean allowLongPress() {
        return this.mAllowLongPress;
    }

    public void setAllowLongPress(boolean z) {
        this.mAllowLongPress = z;
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.android.launcher2.PagedView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int currentPage;

        SavedState(Parcelable parcelable) {
            super(parcelable);
            this.currentPage = -1;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.currentPage = -1;
            this.currentPage = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.currentPage);
        }
    }

    public void loadAssociatedPages(int i) {
        loadAssociatedPages(i, false);
    }

    public void loadAssociatedPages(int i, boolean z) {
        int childCount;
        if (L.DEBUG) {
            L.d(TAG, "loadAssociatedPages: page = " + i + ", immediateAndOnly = " + z + ",mContentIsRefreshable = " + this.mContentIsRefreshable + ", mDirtyPageContent = " + this.mDirtyPageContent);
        }
        if (!this.mContentIsRefreshable || i >= (childCount = getChildCount())) {
            return;
        }
        int associatedLowerPageBound = getAssociatedLowerPageBound(i);
        int associatedUpperPageBound = getAssociatedUpperPageBound(i);
        if (L.DEBUG) {
            L.d(TAG, "loadAssociatedPages: " + associatedLowerPageBound + "/" + associatedUpperPageBound + ", page = " + i + ", count = " + childCount);
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            Page page = (Page) getPageAt(i2);
            if (i2 < associatedLowerPageBound || i2 > associatedUpperPageBound) {
                if (page.getPageChildCount() > 0) {
                    page.removeAllViewsOnPage();
                }
                this.mDirtyPageContent.set(i2, true);
            }
        }
        int i3 = 0;
        while (i3 < childCount) {
            if ((i3 == i || !z) && associatedLowerPageBound <= i3 && i3 <= associatedUpperPageBound && this.mDirtyPageContent.get(i3).booleanValue()) {
                syncPageItems(i3, i3 == i && z);
                this.mDirtyPageContent.set(i3, false);
            }
            i3++;
        }
    }

    protected int getAssociatedLowerPageBound(int i) {
        return Math.max(0, i - 1);
    }

    protected int getAssociatedUpperPageBound(int i) {
        return Math.min(i + 1, getChildCount() - 1);
    }

    protected void invalidatePageData() {
        invalidatePageData(-1, false);
    }

    protected void invalidatePageData(int i) {
        invalidatePageData(i, false);
    }

    protected void invalidatePageData(int i, boolean z) {
        if (L.DEBUG) {
            L.d(TAG, "invalidatePageData: currentPage = " + i + ", immediateAndOnly = " + z + ", mIsDataReady = " + this.mIsDataReady + ", mContentIsRefreshable = " + this.mContentIsRefreshable + ", mScrollX = " + getScrollX() + ", this = " + this);
        }
        if (this.mIsDataReady && this.mContentIsRefreshable) {
            this.mScroller.forceFinished(true);
            this.mNextPage = -1;
            syncPages();
            measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
            if (i > -1) {
                setCurrentPage(Math.min(getPageCount() - 1, i));
            }
            int childCount = getChildCount();
            this.mDirtyPageContent.clear();
            for (int i2 = 0; i2 < childCount; i2++) {
                this.mDirtyPageContent.add(true);
            }
            loadAssociatedPages(this.mCurrentPage, z);
            requestLayout();
        }
    }

    protected View getScrollingIndicator() {
        ViewGroup viewGroup;
        if (this.mHasScrollIndicator && this.mScrollIndicator == null && (viewGroup = (ViewGroup) getParent()) != null) {
            View viewFindViewById = viewGroup.findViewById(R.id.paged_view_indicator);
            this.mScrollIndicator = viewFindViewById;
            boolean z = viewFindViewById != null;
            this.mHasScrollIndicator = z;
            if (z && this.isShowScrollIndicator) {
                viewFindViewById.setVisibility(0);
            }
            ImageView imageView = this.mScreenIndicator;
            if (imageView != null && !this.isShowScreenIndicator) {
                imageView.setVisibility(8);
            }
        }
        return this.mScrollIndicator;
    }

    public void flashScrollingIndicator(boolean z) {
        removeCallbacks(this.hideScrollingIndicatorRunnable);
        showScrollingIndicator(!z);
        postDelayed(this.hideScrollingIndicatorRunnable, 650L);
    }

    public void showScrollingIndicator(boolean z) {
        this.mShouldShowScrollIndicator = true;
        this.mShouldShowScrollIndicatorImmediately = true;
        if (getChildCount() > 1 && isScrollingIndicatorEnabled()) {
            this.mShouldShowScrollIndicator = false;
            getScrollingIndicator();
            if (this.mScrollIndicator != null) {
                updateScrollingIndicatorPosition();
                if (this.isShowScrollIndicator) {
                    this.mScrollIndicator.setVisibility(0);
                }
                cancelScrollingIndicatorAnimations();
                if (z || this.mScrollingPaused) {
                    this.mScrollIndicator.setAlpha(1.0f);
                    return;
                }
                ObjectAnimator objectAnimatorOfFloat = LauncherAnimUtils.ofFloat(this.mScrollIndicator, "alpha", 1.0f);
                this.mScrollIndicatorAnimator = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(150L);
                this.mScrollIndicatorAnimator.start();
            }
        }
    }

    public void cancelScrollingIndicatorAnimations() {
        ValueAnimator valueAnimator = this.mScrollIndicatorAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
    }

    public void hideScrollingIndicator(boolean z) {
        if (getChildCount() > 1 && isScrollingIndicatorEnabled()) {
            getScrollingIndicator();
            if (this.mScrollIndicator != null) {
                updateScrollingIndicatorPosition();
                cancelScrollingIndicatorAnimations();
                if (z || this.mScrollingPaused) {
                    this.mScrollIndicator.setVisibility(4);
                    this.mScrollIndicator.setAlpha(0.0f);
                    return;
                }
                ObjectAnimator objectAnimatorOfFloat = LauncherAnimUtils.ofFloat(this.mScrollIndicator, "alpha", 0.0f);
                this.mScrollIndicatorAnimator = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(650L);
                this.mScrollIndicatorAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.PagedView.2
                    private boolean cancelled = false;

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        this.cancelled = true;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (this.cancelled) {
                            return;
                        }
                        PagedView.this.mScrollIndicator.setVisibility(4);
                    }
                });
                this.mScrollIndicatorAnimator.start();
            }
        }
    }

    private void updateScrollingIndicator() {
        if (getChildCount() > 1 && isScrollingIndicatorEnabled()) {
            getScrollingIndicator();
            if (this.mScrollIndicator != null) {
                updateScrollingIndicatorPosition();
            }
            if (this.mShouldShowScrollIndicator) {
                showScrollingIndicator(this.mShouldShowScrollIndicatorImmediately);
            }
        }
    }

    private void updateScrollingIndicatorPosition() {
        if (isScrollingIndicatorEnabled() && this.mScrollIndicator != null) {
            int childCount = getChildCount();
            int measuredWidth = getMeasuredWidth();
            int iMax = Math.max(0, getChildCount() - 1);
            int childOffset = getChildOffset(iMax) - getRelativeChildOffset(iMax);
            int i = (measuredWidth - this.mScrollIndicatorPaddingLeft) - this.mScrollIndicatorPaddingRight;
            int measuredWidth2 = (this.mScrollIndicator.getMeasuredWidth() - this.mScrollIndicator.getPaddingLeft()) - this.mScrollIndicator.getPaddingRight();
            int i2 = i / childCount;
            int iMax2 = ((int) (Math.max(0.0f, Math.min(1.0f, getScrollX() / childOffset)) * (i - i2))) + this.mScrollIndicatorPaddingLeft;
            ImageView imageView = this.mScreenIndicator;
            if (imageView != null) {
                imageView.setImageLevel(getCurrentScreen(i2, iMax2));
            }
            if (hasElasticScrollIndicator()) {
                if (this.mScrollIndicator.getMeasuredWidth() != i2) {
                    this.mScrollIndicator.getLayoutParams().width = i2;
                    this.mScrollIndicator.requestLayout();
                }
            } else {
                iMax2 += (i2 / 2) - (measuredWidth2 / 2);
            }
            this.mScrollIndicator.setTranslationX(iMax2);
        }
    }

    private int getCurrentScreen(int i, int i2) {
        if (this.mDensityDpi > 150.0f) {
            return Math.round((i2 - 72) / i);
        }
        return Math.round(i2 / i) - 1;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setScrollable(getPageCount() > 1);
        if (getCurrentPage() < getPageCount() - 1) {
            accessibilityNodeInfo.addAction(4096);
        }
        if (getCurrentPage() > 0) {
            accessibilityNodeInfo.addAction(8192);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setScrollable(true);
        if (accessibilityEvent.getEventType() == 4096) {
            accessibilityEvent.setFromIndex(this.mCurrentPage);
            accessibilityEvent.setToIndex(this.mCurrentPage);
            accessibilityEvent.setItemCount(getChildCount());
        }
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        if (i == 4096) {
            if (getCurrentPage() >= getPageCount() - 1) {
                return false;
            }
            scrollRight();
            return true;
        }
        if (i != 8192 || getCurrentPage() <= 0) {
            return false;
        }
        scrollLeft();
        return true;
    }

    protected String getCurrentPageDescription() {
        return String.format(getContext().getString(R.string.default_scroll_format), Integer.valueOf(getNextPage() + 1), Integer.valueOf(getChildCount()));
    }

    public void enterAppWidget(int i) {
        if (getMTKWidgetView(i) != null) {
            boolean z = L.DEBUG_SURFACEWIDGET;
        }
    }

    public void leaveAppWidget(int i) {
        if (getMTKWidgetView(i) != null) {
            boolean z = L.DEBUG_SURFACEWIDGET;
        }
    }

    public void startDragAppWidget(int i) {
        if (getMTKWidgetView(i) != null) {
            boolean z = L.DEBUG_SURFACEWIDGET;
        }
    }

    public void stopDragAppWidget(int i) {
        if (getMTKWidgetView(i) != null) {
            boolean z = L.DEBUG_SURFACEWIDGET;
        }
    }

    public void moveInAppWidget(int i) {
        if (getMTKWidgetView(i) != null) {
            sCanSendMessage = true;
            boolean z = L.DEBUG_SURFACEWIDGET;
        }
    }

    public boolean moveOutAppWidget(int i) {
        if (getMTKWidgetView(i) != null) {
            boolean z = L.DEBUG_SURFACEWIDGET;
            sCanSendMessage = false;
        }
        return true;
    }

    public void startCovered(int i) {
        if (getMTKWidgetView(i) != null) {
            boolean z = L.DEBUG_SURFACEWIDGET;
        }
    }

    public void stopCovered(int i) {
        if (getMTKWidgetView(i) != null) {
            boolean z = L.DEBUG_SURFACEWIDGET;
        }
    }

    public void onPauseWhenShown(int i) {
        if (getMTKWidgetView(i) != null) {
            boolean z = L.DEBUG_SURFACEWIDGET;
        }
    }

    public void onResumeWhenShown(int i) {
        if (getMTKWidgetView(i) != null) {
            boolean z = L.DEBUG_SURFACEWIDGET;
        }
    }

    public void setAppWidgetIdAndScreen(View view, int i, int i2) {
        searchIMTKWidget(view);
    }

    public View getMTKWidgetView(int i) {
        return searchIMTKWidget(getChildAt(i));
    }

    public View searchIMTKWidget(View view, String str) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View viewSearchIMTKWidget = searchIMTKWidget(viewGroup.getChildAt(i), str);
            if (viewSearchIMTKWidget != null) {
                View view2 = (View) viewSearchIMTKWidget.getParent();
                if ((view2 instanceof LauncherAppWidgetHostView) && ((LauncherAppWidgetHostView) view2).getAppWidgetInfo().provider.getClassName().equals(str)) {
                    return viewSearchIMTKWidget;
                }
            }
        }
        return null;
    }

    private View searchIMTKWidget(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View viewSearchIMTKWidget = searchIMTKWidget(viewGroup.getChildAt(i));
            if (viewSearchIMTKWidget != null) {
                return viewSearchIMTKWidget;
            }
        }
        return null;
    }
}
