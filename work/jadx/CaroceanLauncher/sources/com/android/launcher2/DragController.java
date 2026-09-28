package com.android.launcher2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Handler;
import android.os.IBinder;
import android.os.Vibrator;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.inputmethod.InputMethodManager;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class DragController {
    public static final int DRAG_ACTION_COPY = 1;
    public static final int DRAG_ACTION_MOVE = 0;
    private static final float MAX_FLING_DEGREES = 35.0f;
    private static final boolean PROFILE_DRAWING_DURING_DRAG = false;
    private static final int RESCROLL_DELAY = 750;
    private static final int SCROLL_DELAY = 500;
    static final int SCROLL_LEFT = 0;
    static final int SCROLL_NONE = -1;
    private static final int SCROLL_OUTSIDE_ZONE = 0;
    static final int SCROLL_RIGHT = 1;
    private static final int SCROLL_WAITING_IN_ZONE = 1;
    private static final String TAG = "Launcher.DragController";
    private static final int VIBRATE_DURATION = 15;
    private DropTarget.DragObject mDragObject;
    private DragScroller mDragScroller;
    private boolean mDragging;
    private DropTarget mFlingToDeleteDropTarget;
    protected int mFlingToDeleteThresholdVelocity;
    private Handler mHandler;
    private InputMethodManager mInputMethodManager;
    private DropTarget mLastDropTarget;
    private Launcher mLauncher;
    private int mMotionDownX;
    private int mMotionDownY;
    private View mMoveTarget;
    private View mScrollView;
    private int mScrollZone;
    private VelocityTracker mVelocityTracker;
    private final Vibrator mVibrator;
    private IBinder mWindowToken;
    private Rect mRectTemp = new Rect();
    private final int[] mCoordinatesTemp = new int[2];
    private ArrayList<DropTarget> mDropTargets = new ArrayList<>();
    private ArrayList<DragListener> mListeners = new ArrayList<>();
    private int mScrollState = 0;
    private ScrollRunnable mScrollRunnable = new ScrollRunnable();
    private int[] mLastTouch = new int[2];
    private long mLastTouchUpTime = -1;
    private int mDistanceSinceScroll = 0;
    private int[] mTmpPoint = new int[2];
    private Rect mDragLayerRect = new Rect();

    interface DragListener {
        void onDragEnd();

        void onDragStart(DragSource dragSource, Object obj, int i);
    }

    public DragController(Launcher launcher) {
        Resources resources = launcher.getResources();
        this.mLauncher = launcher;
        this.mHandler = new Handler();
        this.mScrollZone = resources.getDimensionPixelSize(R.dimen.scroll_zone);
        this.mVelocityTracker = VelocityTracker.obtain();
        this.mVibrator = (Vibrator) launcher.getSystemService("vibrator");
        this.mFlingToDeleteThresholdVelocity = (int) (resources.getInteger(R.integer.config_flingToDeleteMinVelocity) * resources.getDisplayMetrics().density);
    }

    public boolean dragging() {
        return this.mDragging;
    }

    public void startDrag(View view, Bitmap bitmap, DragSource dragSource, Object obj, int i, Rect rect, float f) {
        int[] iArr = this.mCoordinatesTemp;
        this.mLauncher.getDragLayer().getLocationInDragLayer(view, iArr);
        startDrag(bitmap, iArr[0] + view.getPaddingLeft() + ((int) (((bitmap.getWidth() * f) - bitmap.getWidth()) / 2.0f)), ((int) (((bitmap.getHeight() * f) - bitmap.getHeight()) / 2.0f)) + iArr[1] + view.getPaddingTop(), dragSource, obj, i, null, rect, f);
        if (i == 0) {
            view.setVisibility(8);
        }
    }

    public void startDrag(Bitmap bitmap, int i, int i2, DragSource dragSource, Object obj, int i3, Point point, Rect rect, float f) {
        if (this.mInputMethodManager == null) {
            this.mInputMethodManager = (InputMethodManager) this.mLauncher.getSystemService("input_method");
        }
        this.mInputMethodManager.hideSoftInputFromWindow(this.mWindowToken, 0);
        Iterator<DragListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onDragStart(dragSource, obj, i3);
        }
        int i4 = this.mMotionDownX - i;
        int i5 = this.mMotionDownY - i2;
        int i6 = rect == null ? 0 : rect.left;
        int i7 = rect == null ? 0 : rect.top;
        this.mDragging = true;
        DropTarget.DragObject dragObject = new DropTarget.DragObject();
        this.mDragObject = dragObject;
        dragObject.dragComplete = false;
        this.mDragObject.xOffset = this.mMotionDownX - (i + i6);
        this.mDragObject.yOffset = this.mMotionDownY - (i2 + i7);
        this.mDragObject.dragSource = dragSource;
        this.mDragObject.dragInfo = obj;
        this.mVibrator.vibrate(15L);
        DropTarget.DragObject dragObject2 = this.mDragObject;
        DragView dragView = new DragView(this.mLauncher, bitmap, i4, i5, 0, 0, bitmap.getWidth(), bitmap.getHeight(), f);
        dragObject2.dragView = dragView;
        if (point != null) {
            dragView.setDragVisualizeOffset(new Point(point));
        }
        if (rect != null) {
            dragView.setDragRegion(new Rect(rect));
        }
        dragView.show(this.mMotionDownX, this.mMotionDownY);
        handleMoveEvent(this.mMotionDownX, this.mMotionDownY);
    }

    Bitmap getViewBitmap(View view) {
        view.clearFocus();
        view.setPressed(false);
        boolean zWillNotCacheDrawing = view.willNotCacheDrawing();
        view.setWillNotCacheDrawing(false);
        int drawingCacheBackgroundColor = view.getDrawingCacheBackgroundColor();
        view.setDrawingCacheBackgroundColor(0);
        float alpha = view.getAlpha();
        view.setAlpha(1.0f);
        if (drawingCacheBackgroundColor != 0) {
            view.destroyDrawingCache();
        }
        view.buildDrawingCache();
        Bitmap drawingCache = view.getDrawingCache();
        if (drawingCache == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawingCache);
        view.destroyDrawingCache();
        view.setAlpha(alpha);
        view.setWillNotCacheDrawing(zWillNotCacheDrawing);
        view.setDrawingCacheBackgroundColor(drawingCacheBackgroundColor);
        return bitmapCreateBitmap;
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (L.DEBUG_KEY) {
            L.d(TAG, "dispatchKeyEvent: keycode = " + keyEvent.getKeyCode() + ", action = " + keyEvent.getAction() + ", mDragging = " + this.mDragging);
        }
        return this.mDragging;
    }

    public boolean isDragging() {
        return this.mDragging;
    }

    public void cancelDrag() {
        if (L.DEBUG) {
            L.d(TAG, "cancelDrag: mDragging = " + this.mDragging + ", mLastDropTarget = " + this.mLastDropTarget);
        }
        if (this.mDragging) {
            DropTarget dropTarget = this.mLastDropTarget;
            if (dropTarget != null) {
                dropTarget.onDragExit(this.mDragObject);
            }
            this.mDragObject.deferDragViewCleanupPostAnimation = false;
            this.mDragObject.cancelled = true;
            this.mDragObject.dragComplete = true;
            this.mDragObject.dragSource.onDropCompleted(null, this.mDragObject, false, false);
        }
        endDrag();
    }

    public void onAppsRemoved(ArrayList<String> arrayList, Context context) {
        DropTarget.DragObject dragObject = this.mDragObject;
        if (dragObject != null) {
            Object obj = dragObject.dragInfo;
            if (obj instanceof ShortcutInfo) {
                ShortcutInfo shortcutInfo = (ShortcutInfo) obj;
                for (String str : arrayList) {
                    if (shortcutInfo != null && shortcutInfo.intent != null && shortcutInfo.getPackageName().equals(str)) {
                        cancelDrag();
                        return;
                    }
                }
            }
        }
    }

    private void endDrag() {
        if (L.DEBUG_DRAG) {
            L.d(TAG, "endDrag: mDragging = " + this.mDragging + ", mDragObject = " + this.mDragObject);
        }
        if (this.mDragging) {
            boolean z = false;
            this.mDragging = false;
            clearScrollRunnable();
            if (this.mDragObject.dragView != null) {
                z = this.mDragObject.deferDragViewCleanupPostAnimation;
                if (!z) {
                    this.mDragObject.dragView.remove();
                }
                this.mDragObject.dragView = null;
            }
            if (!z) {
                Iterator<DragListener> it = this.mListeners.iterator();
                while (it.hasNext()) {
                    it.next().onDragEnd();
                }
            }
        }
        releaseVelocityTracker();
    }

    void onDeferredEndDrag(DragView dragView) {
        dragView.remove();
        Iterator<DragListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onDragEnd();
        }
    }

    void onDeferredEndFling(DropTarget.DragObject dragObject) {
        dragObject.dragSource.onFlingToDeleteCompleted();
    }

    private int[] getClampedDragLayerPos(float f, float f2) {
        this.mLauncher.getDragLayer().getLocalVisibleRect(this.mDragLayerRect);
        this.mTmpPoint[0] = (int) Math.max(this.mDragLayerRect.left, Math.min(f, this.mDragLayerRect.right - 1));
        this.mTmpPoint[1] = (int) Math.max(this.mDragLayerRect.top, Math.min(f2, this.mDragLayerRect.bottom - 1));
        return this.mTmpPoint;
    }

    long getLastGestureUpTime() {
        if (this.mDragging) {
            return System.currentTimeMillis();
        }
        return this.mLastTouchUpTime;
    }

    void resetLastGestureUpTime() {
        this.mLastTouchUpTime = -1L;
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        acquireVelocityTrackerAndAddMovement(motionEvent);
        int action = motionEvent.getAction();
        int[] clampedDragLayerPos = getClampedDragLayerPos(motionEvent.getX(), motionEvent.getY());
        int i = clampedDragLayerPos[0];
        int i2 = clampedDragLayerPos[1];
        if (L.DEBUG_MOTION) {
            L.d(TAG, "onInterceptTouchEvent: action = " + action + ", mDragging = " + this.mDragging + ", dragLayerX = " + i + ", dragLayerY = " + i2);
        }
        if (action == 0) {
            this.mMotionDownX = i;
            this.mMotionDownY = i2;
            this.mLastDropTarget = null;
        } else if (action == 1) {
            this.mLastTouchUpTime = System.currentTimeMillis();
            if (this.mDragging) {
                PointF pointFIsFlingingToDelete = isFlingingToDelete(this.mDragObject.dragSource);
                if (pointFIsFlingingToDelete != null) {
                    dropOnFlingToDeleteTarget(i, i2, pointFIsFlingingToDelete);
                } else {
                    drop(i, i2);
                }
            }
            endDrag();
        } else if (action == 3) {
            cancelDrag();
        }
        return this.mDragging;
    }

    void setMoveTarget(View view) {
        this.mMoveTarget = view;
    }

    public boolean dispatchUnhandledMove(View view, int i) {
        if (L.DEBUG_KEY) {
            L.d(TAG, "dispatchUnhandledMove: focused = " + view + ", direction = " + i);
        }
        View view2 = this.mMoveTarget;
        return view2 != null && view2.dispatchUnhandledMove(view, i);
    }

    private void clearScrollRunnable() {
        this.mHandler.removeCallbacks(this.mScrollRunnable);
        if (this.mScrollState == 1) {
            this.mScrollState = 0;
            this.mScrollRunnable.setDirection(1);
            this.mDragScroller.onExitScrollArea();
            this.mLauncher.getDragLayer().onExitScrollArea();
        }
    }

    private void handleMoveEvent(int i, int i2) {
        this.mDragObject.dragView.move(i, i2);
        int[] iArr = this.mCoordinatesTemp;
        DropTarget dropTargetFindDropTarget = findDropTarget(i, i2, iArr);
        this.mDragObject.x = iArr[0];
        this.mDragObject.y = iArr[1];
        if (L.DEBUG_DRAG) {
            L.d(TAG, "handleMoveEvent: x = " + i + ", y = " + i2 + ", dragView = " + this.mDragObject.dragView + ", dragX = " + this.mDragObject.x + ", dragY = " + this.mDragObject.y);
        }
        if (dropTargetFindDropTarget != null) {
            DropTarget dropTargetDelegate = dropTargetFindDropTarget.getDropTargetDelegate(this.mDragObject);
            if (dropTargetDelegate != null) {
                dropTargetFindDropTarget = dropTargetDelegate;
            }
            DropTarget dropTarget = this.mLastDropTarget;
            if (dropTarget != dropTargetFindDropTarget) {
                if (dropTarget != null) {
                    dropTarget.onDragExit(this.mDragObject);
                }
                dropTargetFindDropTarget.onDragEnter(this.mDragObject);
            }
            dropTargetFindDropTarget.onDragOver(this.mDragObject);
        } else {
            DropTarget dropTarget2 = this.mLastDropTarget;
            if (dropTarget2 != null) {
                dropTarget2.onDragExit(this.mDragObject);
            }
        }
        this.mLastDropTarget = dropTargetFindDropTarget;
        int scaledWindowTouchSlop = ViewConfiguration.get(this.mLauncher).getScaledWindowTouchSlop();
        int iSqrt = (int) (((double) this.mDistanceSinceScroll) + Math.sqrt(Math.pow(this.mLastTouch[0] - i, 2.0d) + Math.pow(this.mLastTouch[1] - i2, 2.0d)));
        this.mDistanceSinceScroll = iSqrt;
        int[] iArr2 = this.mLastTouch;
        iArr2[0] = i;
        iArr2[1] = i2;
        int i3 = iSqrt < scaledWindowTouchSlop ? RESCROLL_DELAY : SCROLL_DELAY;
        if (i < this.mScrollZone) {
            if (this.mScrollState == 0) {
                this.mScrollState = 1;
                if (this.mDragScroller.onEnterScrollArea(i, i2, 0)) {
                    this.mLauncher.getDragLayer().onEnterScrollArea(0);
                    this.mScrollRunnable.setDirection(0);
                    this.mHandler.postDelayed(this.mScrollRunnable, i3);
                    return;
                }
                return;
            }
            return;
        }
        if (i > this.mScrollView.getWidth() - this.mScrollZone) {
            if (this.mScrollState == 0) {
                this.mScrollState = 1;
                if (this.mDragScroller.onEnterScrollArea(i, i2, 1)) {
                    this.mLauncher.getDragLayer().onEnterScrollArea(1);
                    this.mScrollRunnable.setDirection(1);
                    this.mHandler.postDelayed(this.mScrollRunnable, i3);
                    return;
                }
                return;
            }
            return;
        }
        clearScrollRunnable();
    }

    public void forceMoveEvent() {
        if (this.mDragging) {
            int[] iArr = this.mLastTouch;
            handleMoveEvent(iArr[0], iArr[1]);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mDragging) {
            return false;
        }
        acquireVelocityTrackerAndAddMovement(motionEvent);
        int action = motionEvent.getAction();
        int[] clampedDragLayerPos = getClampedDragLayerPos(motionEvent.getX(), motionEvent.getY());
        int i = clampedDragLayerPos[0];
        int i2 = clampedDragLayerPos[1];
        if (L.DEBUG_MOTION) {
            L.d(TAG, "onTouchEvent: action = " + action + ", dragLayerX = " + i + ", dragLayerY = " + i2 + ", mMotionDownX = " + this.mMotionDownX + ", mMotionDownY = " + this.mMotionDownY + ", mScrollState = " + this.mScrollState);
        }
        if (action == 0) {
            this.mMotionDownX = i;
            this.mMotionDownY = i2;
            if (i < this.mScrollZone || i > this.mScrollView.getWidth() - this.mScrollZone) {
                this.mScrollState = 1;
                this.mHandler.postDelayed(this.mScrollRunnable, 500L);
            } else {
                this.mScrollState = 0;
            }
        } else if (action == 1) {
            handleMoveEvent(i, i2);
            this.mHandler.removeCallbacks(this.mScrollRunnable);
            if (this.mDragging) {
                PointF pointFIsFlingingToDelete = isFlingingToDelete(this.mDragObject.dragSource);
                if (pointFIsFlingingToDelete != null) {
                    dropOnFlingToDeleteTarget(i, i2, pointFIsFlingingToDelete);
                } else {
                    drop(i, i2);
                }
            }
            endDrag();
        } else if (action == 2) {
            handleMoveEvent(i, i2);
        } else if (action == 3) {
            this.mHandler.removeCallbacks(this.mScrollRunnable);
            cancelDrag();
        }
        return true;
    }

    private PointF isFlingingToDelete(DragSource dragSource) {
        if (this.mFlingToDeleteDropTarget == null || !dragSource.supportsFlingToDelete()) {
            return null;
        }
        this.mVelocityTracker.computeCurrentVelocity(1000, ViewConfiguration.get(this.mLauncher).getScaledMaximumFlingVelocity());
        if (this.mVelocityTracker.getYVelocity() < this.mFlingToDeleteThresholdVelocity) {
            PointF pointF = new PointF(this.mVelocityTracker.getXVelocity(), this.mVelocityTracker.getYVelocity());
            PointF pointF2 = new PointF(0.0f, -1.0f);
            if (((float) Math.acos(((pointF.x * pointF2.x) + (pointF.y * pointF2.y)) / (pointF.length() * pointF2.length()))) <= Math.toRadians(35.0d)) {
                return pointF;
            }
        }
        return null;
    }

    private void dropOnFlingToDeleteTarget(float f, float f2, PointF pointF) {
        int[] iArr = this.mCoordinatesTemp;
        boolean z = false;
        this.mDragObject.x = iArr[0];
        this.mDragObject.y = iArr[1];
        DropTarget dropTarget = this.mLastDropTarget;
        if (dropTarget != null && this.mFlingToDeleteDropTarget != dropTarget) {
            dropTarget.onDragExit(this.mDragObject);
        }
        this.mFlingToDeleteDropTarget.onDragEnter(this.mDragObject);
        this.mDragObject.dragComplete = true;
        this.mFlingToDeleteDropTarget.onDragExit(this.mDragObject);
        if (this.mFlingToDeleteDropTarget.acceptDrop(this.mDragObject)) {
            DropTarget dropTarget2 = this.mFlingToDeleteDropTarget;
            DropTarget.DragObject dragObject = this.mDragObject;
            dropTarget2.onFlingToDelete(dragObject, dragObject.x, this.mDragObject.y, pointF);
            z = true;
        }
        this.mDragObject.dragSource.onDropCompleted((View) this.mFlingToDeleteDropTarget, this.mDragObject, true, z);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x007b  */
    /* JADX WARN: Multi-variable type inference failed */
    private void drop(float f, float f2) {
        int[] iArr = this.mCoordinatesTemp;
        DropTarget dropTargetFindDropTarget = findDropTarget((int) f, (int) f2, iArr);
        this.mDragObject.x = iArr[0];
        boolean z = true;
        this.mDragObject.y = iArr[1];
        if (L.DEBUG_DRAG) {
            L.d(TAG, "drop: x = " + f + ", y = " + f2 + ", mDragObject.x = " + this.mDragObject.x + ", mDragObject.y = " + this.mDragObject.y + ", dropTarget = " + dropTargetFindDropTarget);
        }
        if (dropTargetFindDropTarget != 0) {
            this.mDragObject.dragComplete = true;
            dropTargetFindDropTarget.onDragExit(this.mDragObject);
            if (dropTargetFindDropTarget.acceptDrop(this.mDragObject)) {
                dropTargetFindDropTarget.onDrop(this.mDragObject);
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        this.mDragObject.dragSource.onDropCompleted((View) dropTargetFindDropTarget, this.mDragObject, false, z);
    }

    private DropTarget findDropTarget(int i, int i2, int[] iArr) {
        Rect rect = this.mRectTemp;
        ArrayList<DropTarget> arrayList = this.mDropTargets;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            DropTarget dropTarget = arrayList.get(size);
            if (dropTarget.isDropEnabled()) {
                dropTarget.getHitRect(rect);
                dropTarget.getLocationInDragLayer(iArr);
                rect.offset(iArr[0] - dropTarget.getLeft(), iArr[1] - dropTarget.getTop());
                this.mDragObject.x = i;
                this.mDragObject.y = i2;
                if (rect.contains(i, i2)) {
                    DropTarget dropTargetDelegate = dropTarget.getDropTargetDelegate(this.mDragObject);
                    if (dropTargetDelegate != null) {
                        dropTargetDelegate.getLocationInDragLayer(iArr);
                        dropTarget = dropTargetDelegate;
                    }
                    iArr[0] = i - iArr[0];
                    iArr[1] = i2 - iArr[1];
                    return dropTarget;
                }
            }
        }
        return null;
    }

    public void setDragScoller(DragScroller dragScroller) {
        this.mDragScroller = dragScroller;
    }

    public void setWindowToken(IBinder iBinder) {
        this.mWindowToken = iBinder;
    }

    public void addDragListener(DragListener dragListener) {
        this.mListeners.add(dragListener);
    }

    public void removeDragListener(DragListener dragListener) {
        this.mListeners.remove(dragListener);
    }

    public void addDropTarget(DropTarget dropTarget) {
        this.mDropTargets.add(dropTarget);
    }

    public void removeDropTarget(DropTarget dropTarget) {
        this.mDropTargets.remove(dropTarget);
    }

    public void resetDropTarget() {
        this.mDropTargets.clear();
    }

    public void setFlingToDeleteDropTarget(DropTarget dropTarget) {
        this.mFlingToDeleteDropTarget = dropTarget;
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

    public void setScrollView(View view) {
        this.mScrollView = view;
    }

    DragView getDragView() {
        return this.mDragObject.dragView;
    }

    private class ScrollRunnable implements Runnable {
        private int mDirection;

        ScrollRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (DragController.this.mDragScroller != null) {
                if (this.mDirection == 0) {
                    DragController.this.mDragScroller.scrollLeft();
                } else {
                    DragController.this.mDragScroller.scrollRight();
                }
                DragController.this.mScrollState = 0;
                DragController.this.mDistanceSinceScroll = 0;
                DragController.this.mDragScroller.onExitScrollArea();
                DragController.this.mLauncher.getDragLayer().onExitScrollArea();
                if (DragController.this.isDragging()) {
                    DragController.this.forceMoveEvent();
                }
            }
        }

        void setDirection(int i) {
            this.mDirection = i;
        }
    }
}
