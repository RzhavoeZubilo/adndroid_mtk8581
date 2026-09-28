package com.android.launcher2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.android.launcher2.uitl.L;

/* JADX INFO: loaded from: classes.dex */
public abstract class PagedViewWithDraggableItems extends PagedView implements View.OnLongClickListener, View.OnTouchListener {
    private static final String TAG = "PagedViewWithDraggableItems";
    private float mDragSlopeThreshold;
    private boolean mIsDragEnabled;
    private boolean mIsDragging;
    private View mLastTouchedItem;
    private Launcher mLauncher;

    public PagedViewWithDraggableItems(Context context) {
        this(context, null);
    }

    public PagedViewWithDraggableItems(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PagedViewWithDraggableItems(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLauncher = (Launcher) context;
    }

    protected boolean beginDragging(View view) {
        boolean z = this.mIsDragging;
        this.mIsDragging = true;
        return !z;
    }

    protected void cancelDragging() {
        this.mIsDragging = false;
        this.mLastTouchedItem = null;
        this.mIsDragEnabled = false;
    }

    private void handleTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            cancelDragging();
            this.mIsDragEnabled = true;
        } else if (action == 2 && this.mTouchState != 1 && !this.mIsDragging && this.mIsDragEnabled) {
            determineDraggingStart(motionEvent);
        }
    }

    @Override // com.android.launcher2.PagedView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (L.DEBUG_MOTION) {
            L.d(TAG, "onInterceptTouchEvent: ev = " + motionEvent + ", mTouchState = " + this.mTouchState + ", mIsDragging = " + this.mIsDragging + ", mIsDragEnabled = " + this.mIsDragEnabled + ", mScrollX = " + getScrollX() + ", this = " + this);
        }
        handleTouchEvent(motionEvent);
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.android.launcher2.PagedView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (L.DEBUG_MOTION) {
            L.d(TAG, "onTouchEvent ev = " + motionEvent + ",mTouchState = " + this.mTouchState + ", mIsDragging = " + this.mIsDragging + ", mIsDragEnabled = " + this.mIsDragEnabled + ", mScrollX = " + getScrollX() + ", this = " + this);
        }
        handleTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (L.DEBUG_MOTION) {
            L.d(TAG, "onTouch: v = " + view + ", event = " + motionEvent + ",this = " + this);
        }
        this.mLastTouchedItem = view;
        this.mIsDragEnabled = true;
        return false;
    }

    public boolean onLongClick(View view) {
        if (!L.DEBUG) {
            return false;
        }
        L.d(TAG, "onLongClick v = " + view + ", v.getTag() = " + view.getTag() + ",v.isInTouchMode() = " + view.isInTouchMode() + ", mNextPage = " + this.mNextPage + ",isAllAppsCustomizeOpen() = " + this.mLauncher.isAllAppsVisible() + ", workspace isSwitchingState = " + this.mLauncher.getWorkspace().isSwitchingState());
        return false;
    }

    @Override // com.android.launcher2.PagedView
    protected void determineScrollingStart(MotionEvent motionEvent) {
        if (this.mIsDragging) {
            return;
        }
        super.determineScrollingStart(motionEvent);
    }

    protected void determineDraggingStart(MotionEvent motionEvent) {
        View view;
        int iFindPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
        float x = motionEvent.getX(iFindPointerIndex);
        float y = motionEvent.getY(iFindPointerIndex);
        int iAbs = (int) Math.abs(x - this.mLastMotionX);
        int iAbs2 = (int) Math.abs(y - this.mLastMotionY);
        boolean z = iAbs2 > this.mTouchSlop;
        if ((((float) iAbs2) / ((float) iAbs) > this.mDragSlopeThreshold) && z && (view = this.mLastTouchedItem) != null) {
            beginDragging(view);
            if (this.mAllowLongPress) {
                this.mAllowLongPress = false;
                View pageAt = getPageAt(this.mCurrentPage);
                if (pageAt != null) {
                    pageAt.cancelLongPress();
                }
            }
        }
    }

    public void setDragSlopeThreshold(float f) {
        this.mDragSlopeThreshold = f;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        cancelDragging();
        super.onDetachedFromWindow();
    }

    @Override // com.android.launcher2.PagedView
    protected void onPageBeginMoving() {
        showScrollingIndicator(false);
    }

    @Override // com.android.launcher2.PagedView
    protected void onPageEndMoving() {
        hideScrollingIndicator(false);
    }
}
