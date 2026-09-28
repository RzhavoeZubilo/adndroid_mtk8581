package com.android.launcher2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.android.launcher2.uitl.L;
import com.yecon.launcher1.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class DragLayer extends FrameLayout implements ViewGroup.OnHierarchyChangeListener {
    public static final int ANIMATION_END_DISAPPEAR = 0;
    public static final int ANIMATION_END_FADE_OUT = 1;
    public static final int ANIMATION_END_REMAIN_VISIBLE = 2;
    private static final String TAG = "DragLayer";
    private View mAnchorView;
    private int mAnchorViewInitialScrollX;
    private TimeInterpolator mCubicEaseOutInterpolator;
    private AppWidgetResizeFrame mCurrentResizeFrame;
    private DragController mDragController;
    private ValueAnimator mDropAnim;
    private DragView mDropView;
    private ValueAnimator mFadeOutAnim;
    private Rect mHitRect;
    private boolean mHoverPointClosesFolder;
    private boolean mInScrollArea;
    private Launcher mLauncher;
    private Drawable mLeftHoverDrawable;
    private int mQsbIndex;
    private final ArrayList<AppWidgetResizeFrame> mResizeFrames;
    private Drawable mRightHoverDrawable;
    private int[] mTmpXY;
    private int mWorkspaceIndex;
    private int mXDown;
    private int mYDown;

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        return i2;
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public DragLayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTmpXY = new int[2];
        this.mResizeFrames = new ArrayList<>();
        this.mDropAnim = null;
        this.mFadeOutAnim = null;
        this.mCubicEaseOutInterpolator = new DecelerateInterpolator(1.5f);
        this.mDropView = null;
        this.mAnchorViewInitialScrollX = 0;
        this.mAnchorView = null;
        this.mHoverPointClosesFolder = false;
        this.mHitRect = new Rect();
        this.mWorkspaceIndex = -1;
        this.mQsbIndex = -1;
        setMotionEventSplittingEnabled(false);
        setChildrenDrawingOrderEnabled(true);
        setOnHierarchyChangeListener(this);
        this.mLeftHoverDrawable = getResources().getDrawable(R.drawable.page_hover_left_holo);
        this.mRightHoverDrawable = getResources().getDrawable(R.drawable.page_hover_right_holo);
    }

    public void setup(Launcher launcher, DragController dragController) {
        this.mLauncher = launcher;
        this.mDragController = dragController;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z = this.mDragController.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
        if (L.DEBUG_KEY) {
            L.d(TAG, "dispatchKeyEvent: keycode = " + keyEvent.getKeyCode() + ", action = " + keyEvent.getAction() + ", handled = " + z);
        }
        return z;
    }

    private boolean isEventOverFolderTextRegion(Folder folder, MotionEvent motionEvent) {
        getDescendantRectRelativeToSelf(folder.getEditTextRegion(), this.mHitRect);
        return this.mHitRect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    private boolean isEventOverFolder(Folder folder, MotionEvent motionEvent) {
        getDescendantRectRelativeToSelf(folder, this.mHitRect);
        return this.mHitRect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    private boolean handleTouchDown(MotionEvent motionEvent, boolean z) {
        Rect rect = new Rect();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (L.DEBUG_MOTION) {
            L.d(TAG, "handleTouchDown: x = " + x + ", y = " + y + ", intercept = " + z + ", mXDown = " + this.mXDown + ", mYDown = " + this.mYDown);
        }
        for (AppWidgetResizeFrame appWidgetResizeFrame : this.mResizeFrames) {
            appWidgetResizeFrame.getHitRect(rect);
            if (rect.contains(x, y) && appWidgetResizeFrame.beginResizeIfPointInRegion(x - appWidgetResizeFrame.getLeft(), y - appWidgetResizeFrame.getTop())) {
                this.mCurrentResizeFrame = appWidgetResizeFrame;
                this.mXDown = x;
                this.mYDown = y;
                requestDisallowInterceptTouchEvent(true);
                return true;
            }
        }
        Folder openFolder = this.mLauncher.getWorkspace().getOpenFolder();
        if (openFolder == null || this.mLauncher.isFolderClingVisible() || !z) {
            return false;
        }
        if (openFolder.isEditingName() && !isEventOverFolderTextRegion(openFolder, motionEvent)) {
            openFolder.dismissEditingName();
            return true;
        }
        getDescendantRectRelativeToSelf(openFolder, rect);
        if (isEventOverFolder(openFolder, motionEvent)) {
            return false;
        }
        this.mLauncher.closeFolder();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0064  */
    /* JADX WARN: Code duplicated, block: B:32:0x0067 A[RETURN] */
    @Override // android.view.ViewGroup
    public boolean onInterceptHoverEvent(MotionEvent motionEvent) {
        Folder openFolder;
        boolean zIsEventOverFolder;
        Launcher launcher = this.mLauncher;
        if (launcher != null && launcher.getWorkspace() != null && (openFolder = this.mLauncher.getWorkspace().getOpenFolder()) != null && ((AccessibilityManager) getContext().getSystemService("accessibility")).isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action == 7) {
                zIsEventOverFolder = isEventOverFolder(openFolder, motionEvent);
                if (zIsEventOverFolder && !this.mHoverPointClosesFolder) {
                    sendTapOutsideFolderAccessibilityEvent(openFolder.isEditingName());
                    this.mHoverPointClosesFolder = true;
                    return true;
                }
                if (zIsEventOverFolder) {
                    return true;
                }
                this.mHoverPointClosesFolder = false;
            } else if (action == 9) {
                boolean zIsEventOverFolder2 = isEventOverFolder(openFolder, motionEvent);
                if (!zIsEventOverFolder2) {
                    sendTapOutsideFolderAccessibilityEvent(openFolder.isEditingName());
                    this.mHoverPointClosesFolder = true;
                    return true;
                }
                if (!zIsEventOverFolder2) {
                    return true;
                }
                this.mHoverPointClosesFolder = false;
                zIsEventOverFolder = isEventOverFolder(openFolder, motionEvent);
                if (zIsEventOverFolder) {
                }
                if (zIsEventOverFolder) {
                    return true;
                }
                this.mHoverPointClosesFolder = false;
            }
        }
        return false;
    }

    private void sendTapOutsideFolderAccessibilityEvent(boolean z) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            int i = z ? R.string.folder_tap_to_rename : R.string.folder_tap_to_close;
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(8);
            onInitializeAccessibilityEvent(accessibilityEventObtain);
            accessibilityEventObtain.getText().add(getContext().getString(i));
            accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain);
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x009e  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        if (action == 1) {
            L.d(TAG, "[PerfTest --> drag widget] start process");
        }
        if (L.DEBUG_MOTION) {
            L.d(TAG, "onTouchEvent: action = " + action + ", x = " + x + ", y = " + y + ", mXDown = " + this.mXDown + ", mYDown = " + this.mYDown + ", mCurrentResizeFrame = " + this.mCurrentResizeFrame);
        }
        boolean z = false;
        if (motionEvent.getAction() == 0 && motionEvent.getAction() == 0 && handleTouchDown(motionEvent, false)) {
            if (L.DEBUG_MOTION) {
                L.d(TAG, "onTouchEvent: handleTouchDown return true.");
            }
            return true;
        }
        AppWidgetResizeFrame appWidgetResizeFrame = this.mCurrentResizeFrame;
        if (appWidgetResizeFrame != null) {
            if (action == 1) {
                appWidgetResizeFrame.visualizeResizeForDelta(x - this.mXDown, y - this.mYDown);
                this.mCurrentResizeFrame.onTouchUp();
                this.mCurrentResizeFrame = null;
            } else if (action == 2) {
                appWidgetResizeFrame.visualizeResizeForDelta(x - this.mXDown, y - this.mYDown);
            } else if (action == 3) {
                appWidgetResizeFrame.visualizeResizeForDelta(x - this.mXDown, y - this.mYDown);
                this.mCurrentResizeFrame.onTouchUp();
                this.mCurrentResizeFrame = null;
            }
            z = true;
        }
        if (z) {
            return true;
        }
        return this.mDragController.onTouchEvent(motionEvent);
    }

    public float getDescendantRectRelativeToSelf(View view, Rect rect) {
        int[] iArr = this.mTmpXY;
        iArr[0] = 0;
        iArr[1] = 0;
        float descendantCoordRelativeToSelf = getDescendantCoordRelativeToSelf(view, iArr);
        int[] iArr2 = this.mTmpXY;
        rect.set(iArr2[0], iArr2[1], iArr2[0] + view.getWidth(), this.mTmpXY[1] + view.getHeight());
        return descendantCoordRelativeToSelf;
    }

    public float getLocationInDragLayer(View view, int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        return getDescendantCoordRelativeToSelf(view, iArr);
    }

    public float getDescendantCoordRelativeToSelf(View view, int[] iArr) {
        float[] fArr = {iArr[0], iArr[1]};
        view.getMatrix().mapPoints(fArr);
        float scaleX = view.getScaleX() * 1.0f;
        fArr[0] = fArr[0] + view.getLeft();
        fArr[1] = fArr[1] + view.getTop();
        Object parent = view.getParent();
        while ((parent instanceof View) && parent != this) {
            View view2 = (View) parent;
            view2.getMatrix().mapPoints(fArr);
            scaleX *= view2.getScaleX();
            fArr[0] = fArr[0] + (view2.getLeft() - view2.getScrollX());
            fArr[1] = fArr[1] + (view2.getTop() - view2.getScrollY());
            parent = view2.getParent();
        }
        iArr[0] = Math.round(fArr[0]);
        iArr[1] = Math.round(fArr[1]);
        return scaleX;
    }

    public void getViewRectRelativeToSelf(View view, Rect rect) {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        view.getLocationInWindow(iArr);
        int i3 = iArr[0] - i;
        int i4 = iArr[1] - i2;
        rect.set(i3, i4, view.getMeasuredWidth() + i3, view.getMeasuredHeight() + i4);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i) {
        if (L.DEBUG_KEY) {
            L.d(TAG, "dispatchUnhandledMove: focused = " + view + ", direction = " + i);
        }
        return this.mDragController.dispatchUnhandledMove(view, i);
    }

    public static class LayoutParams extends FrameLayout.LayoutParams {
        public boolean customPosition;
        public int x;
        public int y;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.customPosition = false;
        }

        public void setWidth(int i) {
            this.width = i;
        }

        public int getWidth() {
            return this.width;
        }

        public void setHeight(int i) {
            this.height = i;
        }

        public int getHeight() {
            return this.height;
        }

        public void setX(int i) {
            this.x = i;
        }

        public int getX() {
            return this.x;
        }

        public void setY(int i) {
            this.y = i;
        }

        public int getY() {
            return this.y;
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            if (layoutParams instanceof LayoutParams) {
                LayoutParams layoutParams2 = (LayoutParams) layoutParams;
                if (layoutParams2.customPosition) {
                    childAt.layout(layoutParams2.x, layoutParams2.y, layoutParams2.x + layoutParams2.width, layoutParams2.y + layoutParams2.height);
                }
            }
        }
    }

    public void clearAllResizeFrames() {
        if (this.mResizeFrames.size() > 0) {
            if (L.DEBUG_DRAG) {
                L.d(TAG, "clearAllResizeFrames: mResizeFrames size = " + this.mResizeFrames.size());
            }
            for (AppWidgetResizeFrame appWidgetResizeFrame : this.mResizeFrames) {
                appWidgetResizeFrame.commitResize();
                removeView(appWidgetResizeFrame);
            }
            this.mResizeFrames.clear();
        }
    }

    public boolean hasResizeFrames() {
        return this.mResizeFrames.size() > 0;
    }

    public boolean isWidgetBeingResized() {
        return this.mCurrentResizeFrame != null;
    }

    public void addResizeFrame(ItemInfo itemInfo, LauncherAppWidgetHostView launcherAppWidgetHostView, CellLayout cellLayout) {
        AppWidgetResizeFrame appWidgetResizeFrame = new AppWidgetResizeFrame(getContext(), launcherAppWidgetHostView, cellLayout, this);
        if (L.DEBUG) {
            L.d(TAG, "addResizeFrame: itemInfo = " + itemInfo + ", widget = " + launcherAppWidgetHostView + ", resizeFrame = " + appWidgetResizeFrame);
        }
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        layoutParams.customPosition = true;
        addView(appWidgetResizeFrame, layoutParams);
        this.mResizeFrames.add(appWidgetResizeFrame);
        appWidgetResizeFrame.snapToWidget(false);
    }

    public void animateViewIntoPosition(DragView dragView, View view) {
        animateViewIntoPosition(dragView, view, null);
    }

    public void animateViewIntoPosition(DragView dragView, int[] iArr, float f, float f2, float f3, int i, Runnable runnable, int i2) {
        Rect rect = new Rect();
        getViewRectRelativeToSelf(dragView, rect);
        animateViewIntoPosition(dragView, rect.left, rect.top, iArr[0], iArr[1], f, 1.0f, 1.0f, f2, f3, runnable, i, i2, null);
    }

    public void animateViewIntoPosition(DragView dragView, View view, Runnable runnable) {
        animateViewIntoPosition(dragView, view, -1, runnable, null);
    }

    public void animateViewIntoPosition(DragView dragView, final View view, int i, final Runnable runnable, View view2) {
        int iRound;
        int iRound2;
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = (ShortcutAndWidgetContainer) view.getParent();
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
        shortcutAndWidgetContainer.measureChild(view);
        Rect rect = new Rect();
        getViewRectRelativeToSelf(dragView, rect);
        if (L.DEBUG) {
            L.d(TAG, "animateViewIntoPosition: dragView = " + dragView + ", r = " + rect + ", lp.x = " + layoutParams.x + ", lp.y = " + layoutParams.y);
        }
        float scaleX = view.getScaleX();
        float f = 1.0f - scaleX;
        int[] iArr = {layoutParams.x + ((int) ((view.getMeasuredWidth() * f) / 2.0f)), layoutParams.y + ((int) ((view.getMeasuredHeight() * f) / 2.0f))};
        float descendantCoordRelativeToSelf = getDescendantCoordRelativeToSelf((View) view.getParent(), iArr) * scaleX;
        int i2 = iArr[0];
        int i3 = iArr[1];
        if (view instanceof TextView) {
            iRound = (int) ((i3 + Math.round(((TextView) view).getPaddingTop() * descendantCoordRelativeToSelf)) - ((dragView.getMeasuredHeight() * (1.0f - descendantCoordRelativeToSelf)) / 2.0f));
            iRound2 = (dragView.getMeasuredWidth() - Math.round(view.getMeasuredWidth() * descendantCoordRelativeToSelf)) / 2;
        } else if (view instanceof FolderIcon) {
            iRound = (int) (((int) (i3 - ((descendantCoordRelativeToSelf * 2.0f) / 2.0f))) - (((1.0f - descendantCoordRelativeToSelf) * dragView.getMeasuredHeight()) / 2.0f));
            iRound2 = (dragView.getMeasuredWidth() - Math.round(view.getMeasuredWidth() * descendantCoordRelativeToSelf)) / 2;
        } else {
            iRound = i3 - (Math.round((dragView.getHeight() - view.getMeasuredHeight()) * descendantCoordRelativeToSelf) / 2);
            iRound2 = Math.round((dragView.getMeasuredWidth() - view.getMeasuredWidth()) * descendantCoordRelativeToSelf) / 2;
        }
        int i4 = i2 - iRound2;
        int i5 = iRound;
        int i6 = rect.left;
        int i7 = rect.top;
        view.setVisibility(4);
        animateViewIntoPosition(dragView, i6, i7, i4, i5, 1.0f, 1.0f, 1.0f, descendantCoordRelativeToSelf, descendantCoordRelativeToSelf, new Runnable() { // from class: com.android.launcher2.DragLayer.1
            @Override // java.lang.Runnable
            public void run() {
                view.setVisibility(0);
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        }, 0, i, view2);
    }

    public void animateViewIntoPosition(DragView dragView, int i, int i2, int i3, int i4, float f, float f2, float f3, float f4, float f5, Runnable runnable, int i5, int i6, View view) {
        animateView(dragView, new Rect(i, i2, dragView.getMeasuredWidth() + i, dragView.getMeasuredHeight() + i2), new Rect(i3, i4, dragView.getMeasuredWidth() + i3, dragView.getMeasuredHeight() + i4), f, f2, f3, f4, f5, i6, null, null, runnable, i5, view);
    }

    public void animateView(final DragView dragView, final Rect rect, final Rect rect2, final float f, final float f2, final float f3, final float f4, final float f5, int i, final Interpolator interpolator, final Interpolator interpolator2, Runnable runnable, int i2, View view) {
        int iMax;
        float fSqrt = (float) Math.sqrt(Math.pow(rect2.left - rect.left, 2.0d) + Math.pow(rect2.top - rect.top, 2.0d));
        Resources resources = getResources();
        float integer = resources.getInteger(R.integer.config_dropAnimMaxDist);
        if (i < 0) {
            int integer2 = resources.getInteger(R.integer.config_dropAnimMaxDuration);
            if (fSqrt < integer) {
                integer2 = (int) (integer2 * this.mCubicEaseOutInterpolator.getInterpolation(fSqrt / integer));
            }
            iMax = Math.max(integer2, resources.getInteger(R.integer.config_dropAnimMinDuration));
        } else {
            iMax = i;
        }
        TimeInterpolator timeInterpolator = (interpolator2 == null || interpolator == null) ? this.mCubicEaseOutInterpolator : null;
        final float alpha = dragView.getAlpha();
        final float scaleX = dragView.getScaleX();
        animateView(dragView, new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.DragLayer.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                int measuredWidth = dragView.getMeasuredWidth();
                int measuredHeight = dragView.getMeasuredHeight();
                Interpolator interpolator3 = interpolator2;
                float interpolation = interpolator3 == null ? fFloatValue : interpolator3.getInterpolation(fFloatValue);
                Interpolator interpolator4 = interpolator;
                float interpolation2 = interpolator4 == null ? fFloatValue : interpolator4.getInterpolation(fFloatValue);
                float f6 = f2;
                float f7 = scaleX;
                float f8 = f6 * f7;
                float f9 = f3 * f7;
                float f10 = 1.0f - fFloatValue;
                float f11 = (f4 * fFloatValue) + (f8 * f10);
                float f12 = (f5 * fFloatValue) + (f10 * f9);
                float f13 = (f * interpolation) + (alpha * (1.0f - interpolation));
                float f14 = rect.left + (((f8 - 1.0f) * measuredWidth) / 2.0f);
                float f15 = rect.top + (((f9 - 1.0f) * measuredHeight) / 2.0f);
                int iRound = (int) (f14 + Math.round((rect2.left - f14) * interpolation2));
                int iRound2 = (int) (f15 + Math.round((rect2.top - f15) * interpolation2));
                int scrollX = (iRound - DragLayer.this.mDropView.getScrollX()) + (DragLayer.this.mAnchorView != null ? DragLayer.this.mAnchorViewInitialScrollX - DragLayer.this.mAnchorView.getScrollX() : 0);
                int scrollY = iRound2 - DragLayer.this.mDropView.getScrollY();
                DragLayer.this.mDropView.setTranslationX(scrollX);
                DragLayer.this.mDropView.setTranslationY(scrollY);
                DragLayer.this.mDropView.setScaleX(f11);
                DragLayer.this.mDropView.setScaleY(f12);
                DragLayer.this.mDropView.setAlpha(f13);
            }
        }, iMax, timeInterpolator, runnable, i2, view);
    }

    public void animateView(DragView dragView, ValueAnimator.AnimatorUpdateListener animatorUpdateListener, int i, TimeInterpolator timeInterpolator, final Runnable runnable, final int i2, View view) {
        ValueAnimator valueAnimator = this.mDropAnim;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.mFadeOutAnim;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        this.mDropView = dragView;
        dragView.cancelAnimation();
        this.mDropView.resetLayoutParams();
        if (view != null) {
            this.mAnchorViewInitialScrollX = view.getScrollX();
        }
        this.mAnchorView = view;
        ValueAnimator valueAnimator3 = new ValueAnimator();
        this.mDropAnim = valueAnimator3;
        valueAnimator3.setInterpolator(timeInterpolator);
        this.mDropAnim.setDuration(i);
        this.mDropAnim.setFloatValues(0.0f, 1.0f);
        this.mDropAnim.addUpdateListener(animatorUpdateListener);
        this.mDropAnim.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.DragLayer.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
                int i3 = i2;
                if (i3 == 0) {
                    DragLayer.this.clearAnimatedView();
                } else {
                    if (i3 != 1) {
                        return;
                    }
                    DragLayer.this.fadeOutDragView();
                }
            }
        });
        this.mDropAnim.start();
    }

    public void clearAnimatedView() {
        ValueAnimator valueAnimator = this.mDropAnim;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        DragView dragView = this.mDropView;
        if (dragView != null) {
            this.mDragController.onDeferredEndDrag(dragView);
        }
        this.mDropView = null;
        invalidate();
    }

    public View getAnimatedView() {
        return this.mDropView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fadeOutDragView() {
        ValueAnimator valueAnimator = new ValueAnimator();
        this.mFadeOutAnim = valueAnimator;
        valueAnimator.setDuration(150L);
        this.mFadeOutAnim.setFloatValues(0.0f, 1.0f);
        this.mFadeOutAnim.removeAllUpdateListeners();
        this.mFadeOutAnim.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.DragLayer.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DragLayer.this.mDropView.setAlpha(1.0f - ((Float) valueAnimator2.getAnimatedValue()).floatValue());
            }
        });
        this.mFadeOutAnim.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.DragLayer.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (DragLayer.this.mDropView != null) {
                    DragLayer.this.mDragController.onDeferredEndDrag(DragLayer.this.mDropView);
                }
                DragLayer.this.mDropView = null;
                DragLayer.this.invalidate();
            }
        });
        this.mFadeOutAnim.start();
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        updateChildIndices();
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
        updateChildIndices();
    }

    private void updateChildIndices() {
        Launcher launcher = this.mLauncher;
        if (launcher != null) {
            this.mWorkspaceIndex = indexOfChild(launcher.getWorkspace());
            this.mQsbIndex = indexOfChild(this.mLauncher.getSearchBar());
        }
    }

    void onEnterScrollArea(int i) {
        this.mInScrollArea = true;
        invalidate();
    }

    void onExitScrollArea() {
        this.mInScrollArea = false;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (!this.mInScrollArea || LauncherApplication.isScreenLarge()) {
            return;
        }
        Workspace workspace = this.mLauncher.getWorkspace();
        int width = workspace.getWidth();
        Rect rect = new Rect();
        getDescendantRectRelativeToSelf(workspace.getChildAt(0), rect);
        int nextPage = workspace.getNextPage();
        CellLayout cellLayout = (CellLayout) workspace.getChildAt(nextPage - 1);
        CellLayout cellLayout2 = (CellLayout) workspace.getChildAt(nextPage + 1);
        if (cellLayout != null && cellLayout.getIsDragOverlapping()) {
            this.mLeftHoverDrawable.setBounds(0, rect.top, this.mLeftHoverDrawable.getIntrinsicWidth(), rect.bottom);
            this.mLeftHoverDrawable.draw(canvas);
        } else {
            if (cellLayout2 == null || !cellLayout2.getIsDragOverlapping()) {
                return;
            }
            Drawable drawable = this.mRightHoverDrawable;
            drawable.setBounds(width - drawable.getIntrinsicWidth(), rect.top, width, rect.bottom);
            this.mRightHoverDrawable.draw(canvas);
        }
    }
}
