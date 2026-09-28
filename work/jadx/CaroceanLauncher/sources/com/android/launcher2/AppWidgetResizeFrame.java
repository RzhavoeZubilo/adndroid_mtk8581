package com.android.launcher2;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.appwidget.AppWidgetHostView;
import android.content.Context;
import android.graphics.Rect;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.carocean.navicar.YeconMediaStore;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class AppWidgetResizeFrame extends FrameLayout {
    public static final int BOTTOM = 3;
    public static final int LEFT = 0;
    public static final int RIGHT = 2;
    public static final int TOP = 1;
    private static Rect mTmpRect = new Rect();
    final int BACKGROUND_PADDING;
    final float DIMMED_HANDLE_ALPHA;
    final float RESIZE_THRESHOLD;
    final int SNAP_DURATION;
    private int mBackgroundPadding;
    private int mBaselineHeight;
    private int mBaselineWidth;
    private int mBaselineX;
    private int mBaselineY;
    private boolean mBottomBorderActive;
    private ImageView mBottomHandle;
    private int mBottomTouchRegionAdjustment;
    private CellLayout mCellLayout;
    private int mDeltaX;
    private int mDeltaXAddOn;
    private int mDeltaY;
    private int mDeltaYAddOn;
    int[] mDirectionVector;
    private DragLayer mDragLayer;
    int[] mLastDirectionVector;
    private Launcher mLauncher;
    private boolean mLeftBorderActive;
    private ImageView mLeftHandle;
    private int mMinHSpan;
    private int mMinVSpan;
    private int mResizeMode;
    private boolean mRightBorderActive;
    private ImageView mRightHandle;
    private int mRunningHInc;
    private int mRunningVInc;
    private boolean mTopBorderActive;
    private ImageView mTopHandle;
    private int mTopTouchRegionAdjustment;
    private int mTouchTargetWidth;
    private int mWidgetPaddingBottom;
    private int mWidgetPaddingLeft;
    private int mWidgetPaddingRight;
    private int mWidgetPaddingTop;
    private LauncherAppWidgetHostView mWidgetView;
    private Workspace mWorkspace;

    public AppWidgetResizeFrame(Context context, LauncherAppWidgetHostView launcherAppWidgetHostView, CellLayout cellLayout, DragLayer dragLayer) {
        super(context);
        this.mTopTouchRegionAdjustment = 0;
        this.mBottomTouchRegionAdjustment = 0;
        this.mDirectionVector = new int[2];
        this.mLastDirectionVector = new int[2];
        this.SNAP_DURATION = 150;
        this.BACKGROUND_PADDING = 24;
        this.DIMMED_HANDLE_ALPHA = 0.0f;
        this.RESIZE_THRESHOLD = 0.66f;
        this.mLauncher = (Launcher) context;
        this.mCellLayout = cellLayout;
        this.mWidgetView = launcherAppWidgetHostView;
        this.mResizeMode = launcherAppWidgetHostView.getAppWidgetInfo().resizeMode;
        this.mDragLayer = dragLayer;
        this.mWorkspace = (Workspace) dragLayer.findViewById(R.id.workspace);
        int[] minSpanForWidget = Launcher.getMinSpanForWidget(this.mLauncher, launcherAppWidgetHostView.getAppWidgetInfo());
        this.mMinHSpan = minSpanForWidget[0];
        this.mMinVSpan = minSpanForWidget[1];
        setBackgroundResource(R.drawable.widget_resize_frame_holo);
        setPadding(0, 0, 0, 0);
        ImageView imageView = new ImageView(context);
        this.mLeftHandle = imageView;
        imageView.setImageResource(R.drawable.widget_resize_handle_left);
        addView(this.mLeftHandle, new FrameLayout.LayoutParams(-2, -2, 19));
        ImageView imageView2 = new ImageView(context);
        this.mRightHandle = imageView2;
        imageView2.setImageResource(R.drawable.widget_resize_handle_right);
        addView(this.mRightHandle, new FrameLayout.LayoutParams(-2, -2, 21));
        ImageView imageView3 = new ImageView(context);
        this.mTopHandle = imageView3;
        imageView3.setImageResource(R.drawable.widget_resize_handle_top);
        addView(this.mTopHandle, new FrameLayout.LayoutParams(-2, -2, 49));
        ImageView imageView4 = new ImageView(context);
        this.mBottomHandle = imageView4;
        imageView4.setImageResource(R.drawable.widget_resize_handle_bottom);
        addView(this.mBottomHandle, new FrameLayout.LayoutParams(-2, -2, 81));
        Rect defaultPaddingForWidget = AppWidgetHostView.getDefaultPaddingForWidget(context, launcherAppWidgetHostView.getAppWidgetInfo().provider, null);
        this.mWidgetPaddingLeft = defaultPaddingForWidget.left;
        this.mWidgetPaddingTop = defaultPaddingForWidget.top;
        this.mWidgetPaddingRight = defaultPaddingForWidget.right;
        this.mWidgetPaddingBottom = defaultPaddingForWidget.bottom;
        int i = this.mResizeMode;
        if (i == 1) {
            this.mTopHandle.setVisibility(8);
            this.mBottomHandle.setVisibility(8);
        } else if (i == 2) {
            this.mLeftHandle.setVisibility(8);
            this.mRightHandle.setVisibility(8);
        }
        int iCeil = (int) Math.ceil(this.mLauncher.getResources().getDisplayMetrics().density * 24.0f);
        this.mBackgroundPadding = iCeil;
        this.mTouchTargetWidth = iCeil * 2;
        this.mCellLayout.markCellsAsUnoccupiedForView(this.mWidgetView);
    }

    public boolean beginResizeIfPointInRegion(int i, int i2) {
        int i3 = this.mResizeMode;
        boolean z = (i3 & 1) != 0;
        boolean z2 = (i3 & 2) != 0;
        this.mLeftBorderActive = i < this.mTouchTargetWidth && z;
        int width = getWidth();
        int i4 = this.mTouchTargetWidth;
        this.mRightBorderActive = i > width - i4 && z;
        this.mTopBorderActive = i2 < i4 + this.mTopTouchRegionAdjustment && z2;
        boolean z3 = i2 > (getHeight() - this.mTouchTargetWidth) + this.mBottomTouchRegionAdjustment && z2;
        this.mBottomBorderActive = z3;
        boolean z4 = this.mLeftBorderActive || this.mRightBorderActive || this.mTopBorderActive || z3;
        this.mBaselineWidth = getMeasuredWidth();
        this.mBaselineHeight = getMeasuredHeight();
        this.mBaselineX = getLeft();
        this.mBaselineY = getTop();
        if (z4) {
            this.mLeftHandle.setAlpha(this.mLeftBorderActive ? 1.0f : 0.0f);
            this.mRightHandle.setAlpha(this.mRightBorderActive ? 1.0f : 0.0f);
            this.mTopHandle.setAlpha(this.mTopBorderActive ? 1.0f : 0.0f);
            this.mBottomHandle.setAlpha(this.mBottomBorderActive ? 1.0f : 0.0f);
        }
        return z4;
    }

    public void updateDeltas(int i, int i2) {
        if (this.mLeftBorderActive) {
            int iMax = Math.max(-this.mBaselineX, i);
            this.mDeltaX = iMax;
            this.mDeltaX = Math.min(this.mBaselineWidth - (this.mTouchTargetWidth * 2), iMax);
        } else if (this.mRightBorderActive) {
            int iMin = Math.min(this.mDragLayer.getWidth() - (this.mBaselineX + this.mBaselineWidth), i);
            this.mDeltaX = iMin;
            this.mDeltaX = Math.max((-this.mBaselineWidth) + (this.mTouchTargetWidth * 2), iMin);
        }
        if (this.mTopBorderActive) {
            int iMax2 = Math.max(-this.mBaselineY, i2);
            this.mDeltaY = iMax2;
            this.mDeltaY = Math.min(this.mBaselineHeight - (this.mTouchTargetWidth * 2), iMax2);
        } else if (this.mBottomBorderActive) {
            int iMin2 = Math.min(this.mDragLayer.getHeight() - (this.mBaselineY + this.mBaselineHeight), i2);
            this.mDeltaY = iMin2;
            this.mDeltaY = Math.max((-this.mBaselineHeight) + (this.mTouchTargetWidth * 2), iMin2);
        }
    }

    public void visualizeResizeForDelta(int i, int i2) {
        visualizeResizeForDelta(i, i2, false);
    }

    private void visualizeResizeForDelta(int i, int i2, boolean z) {
        updateDeltas(i, i2);
        DragLayer.LayoutParams layoutParams = (DragLayer.LayoutParams) getLayoutParams();
        if (this.mLeftBorderActive) {
            layoutParams.x = this.mBaselineX + this.mDeltaX;
            layoutParams.width = this.mBaselineWidth - this.mDeltaX;
        } else if (this.mRightBorderActive) {
            layoutParams.width = this.mBaselineWidth + this.mDeltaX;
        }
        if (this.mTopBorderActive) {
            layoutParams.y = this.mBaselineY + this.mDeltaY;
            layoutParams.height = this.mBaselineHeight - this.mDeltaY;
        } else if (this.mBottomBorderActive) {
            layoutParams.height = this.mBaselineHeight + this.mDeltaY;
        }
        resizeWidgetIfNeeded(z);
        requestLayout();
    }

    private void resizeWidgetIfNeeded(boolean z) {
        int iMin;
        int i;
        int iMin2;
        int i2;
        int cellWidth = this.mCellLayout.getCellWidth() + this.mCellLayout.getWidthGap();
        int cellHeight = this.mCellLayout.getCellHeight() + this.mCellLayout.getHeightGap();
        int i3 = this.mDeltaX + this.mDeltaXAddOn;
        int i4 = this.mDeltaY + this.mDeltaYAddOn;
        float f = ((i3 * 1.0f) / cellWidth) - this.mRunningHInc;
        float f2 = ((i4 * 1.0f) / cellHeight) - this.mRunningVInc;
        int countX = this.mCellLayout.getCountX();
        int countY = this.mCellLayout.getCountY();
        int iRound = Math.abs(f) > 0.66f ? Math.round(f) : 0;
        int iRound2 = Math.abs(f2) > 0.66f ? Math.round(f2) : 0;
        if (!z && iRound == 0 && iRound2 == 0) {
            return;
        }
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) this.mWidgetView.getLayoutParams();
        int i5 = layoutParams.cellHSpan;
        int i6 = layoutParams.cellVSpan;
        int i7 = layoutParams.useTmpCoords ? layoutParams.tmpCellX : layoutParams.cellX;
        int i8 = layoutParams.useTmpCoords ? layoutParams.tmpCellY : layoutParams.cellY;
        if (this.mLeftBorderActive) {
            iMin = Math.min(layoutParams.cellHSpan - this.mMinHSpan, Math.max(-i7, iRound));
            iRound = Math.max(-(layoutParams.cellHSpan - this.mMinHSpan), Math.min(i7, iRound * (-1)));
            i = -iRound;
        } else if (this.mRightBorderActive) {
            iRound = Math.max(-(layoutParams.cellHSpan - this.mMinHSpan), Math.min(countX - (i7 + i5), iRound));
            i = iRound;
            iMin = 0;
        } else {
            iMin = 0;
            i = 0;
        }
        if (this.mTopBorderActive) {
            iMin2 = Math.min(layoutParams.cellVSpan - this.mMinVSpan, Math.max(-i8, iRound2));
            iRound2 = Math.max(-(layoutParams.cellVSpan - this.mMinVSpan), Math.min(i8, iRound2 * (-1)));
            i2 = -iRound2;
        } else if (this.mBottomBorderActive) {
            iRound2 = Math.max(-(layoutParams.cellVSpan - this.mMinVSpan), Math.min(countY - (i8 + i6), iRound2));
            i2 = iRound2;
            iMin2 = 0;
        } else {
            iMin2 = 0;
            i2 = 0;
        }
        int[] iArr = this.mDirectionVector;
        iArr[0] = 0;
        iArr[1] = 0;
        boolean z2 = this.mLeftBorderActive;
        if (z2 || this.mRightBorderActive) {
            i5 += iRound;
            i7 += iMin;
            if (i != 0) {
                iArr[0] = z2 ? -1 : 1;
            }
        }
        int i9 = i5;
        int i10 = i7;
        boolean z3 = this.mTopBorderActive;
        if (z3 || this.mBottomBorderActive) {
            i6 += iRound2;
            i8 += iMin2;
            if (i2 != 0) {
                iArr[1] = z3 ? -1 : 1;
            }
        }
        int i11 = i8;
        int i12 = i6;
        if (!z && i2 == 0 && i == 0) {
            return;
        }
        if (z) {
            int[] iArr2 = this.mLastDirectionVector;
            iArr[0] = iArr2[0];
            iArr[1] = iArr2[1];
        } else {
            int[] iArr3 = this.mLastDirectionVector;
            iArr3[0] = iArr[0];
            iArr3[1] = iArr[1];
        }
        if (this.mCellLayout.createAreaForResize(i10, i11, i9, i12, this.mWidgetView, iArr, z)) {
            layoutParams.tmpCellX = i10;
            layoutParams.tmpCellY = i11;
            layoutParams.cellHSpan = i9;
            layoutParams.cellVSpan = i12;
            this.mRunningVInc += i2;
            this.mRunningHInc += i;
            if (!z) {
                updateWidgetSizeRanges(this.mWidgetView, this.mLauncher, i9, i12);
            }
        }
        this.mWidgetView.requestLayout();
    }

    static void updateWidgetSizeRanges(AppWidgetHostView appWidgetHostView, Launcher launcher, int i, int i2) {
        getWidgetSizeRanges(launcher, i, i2, mTmpRect);
        appWidgetHostView.updateAppWidgetSize(null, mTmpRect.left, mTmpRect.top, mTmpRect.right, mTmpRect.bottom);
    }

    static Rect getWidgetSizeRanges(Launcher launcher, int i, int i2, Rect rect) {
        if (rect == null) {
            rect = new Rect();
        }
        Rect cellLayoutMetrics = Workspace.getCellLayoutMetrics(launcher, 0);
        Rect cellLayoutMetrics2 = Workspace.getCellLayoutMetrics(launcher, 1);
        float f = launcher.getResources().getDisplayMetrics().density;
        int i3 = cellLayoutMetrics.left;
        int i4 = cellLayoutMetrics.top;
        int i5 = i - 1;
        int i6 = (int) (((i3 * i) + (cellLayoutMetrics.right * i5)) / f);
        int i7 = i2 - 1;
        rect.set((int) (((i * cellLayoutMetrics2.left) + (i5 * cellLayoutMetrics2.right)) / f), (int) (((i4 * i2) + (cellLayoutMetrics.bottom * i7)) / f), i6, (int) (((i2 * cellLayoutMetrics2.top) + (i7 * cellLayoutMetrics2.bottom)) / f));
        return rect;
    }

    public void commitResize() {
        resizeWidgetIfNeeded(true);
        requestLayout();
    }

    public void onTouchUp() {
        int cellWidth = this.mCellLayout.getCellWidth() + this.mCellLayout.getWidthGap();
        int cellHeight = this.mCellLayout.getCellHeight() + this.mCellLayout.getHeightGap();
        this.mDeltaXAddOn = this.mRunningHInc * cellWidth;
        this.mDeltaYAddOn = this.mRunningVInc * cellHeight;
        this.mDeltaX = 0;
        this.mDeltaY = 0;
        post(new Runnable() { // from class: com.android.launcher2.AppWidgetResizeFrame.1
            @Override // java.lang.Runnable
            public void run() {
                AppWidgetResizeFrame.this.snapToWidget(true);
            }
        });
    }

    public void snapToWidget(boolean z) {
        DragLayer.LayoutParams layoutParams = (DragLayer.LayoutParams) getLayoutParams();
        int left = ((this.mCellLayout.getLeft() + this.mCellLayout.getPaddingLeft()) + this.mDragLayer.getPaddingLeft()) - this.mWorkspace.getScrollX();
        int top = ((this.mCellLayout.getTop() + this.mCellLayout.getPaddingTop()) + this.mDragLayer.getPaddingTop()) - this.mWorkspace.getScrollY();
        int width = ((this.mWidgetView.getWidth() + (this.mBackgroundPadding * 2)) - this.mWidgetPaddingLeft) - this.mWidgetPaddingRight;
        int height = ((this.mWidgetView.getHeight() + (this.mBackgroundPadding * 2)) - this.mWidgetPaddingTop) - this.mWidgetPaddingBottom;
        int left2 = (this.mWidgetView.getLeft() - this.mBackgroundPadding) + left + this.mWidgetPaddingLeft;
        int top2 = (this.mWidgetView.getTop() - this.mBackgroundPadding) + top + this.mWidgetPaddingTop;
        if (top2 < 0) {
            this.mTopTouchRegionAdjustment = -top2;
        } else {
            this.mTopTouchRegionAdjustment = 0;
        }
        int i = top2 + height;
        if (i > this.mDragLayer.getHeight()) {
            this.mBottomTouchRegionAdjustment = -(i - this.mDragLayer.getHeight());
        } else {
            this.mBottomTouchRegionAdjustment = 0;
        }
        if (!z) {
            layoutParams.width = width;
            layoutParams.height = height;
            layoutParams.x = left2;
            layoutParams.y = top2;
            this.mLeftHandle.setAlpha(1.0f);
            this.mRightHandle.setAlpha(1.0f);
            this.mTopHandle.setAlpha(1.0f);
            this.mBottomHandle.setAlpha(1.0f);
            requestLayout();
            return;
        }
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = LauncherAnimUtils.ofPropertyValuesHolder(layoutParams, PropertyValuesHolder.ofInt(YeconMediaStore.YeconMediaFilesColumns.WIDTH, layoutParams.width, width), PropertyValuesHolder.ofInt(YeconMediaStore.YeconMediaFilesColumns.HEIGHT, layoutParams.height, height), PropertyValuesHolder.ofInt("x", layoutParams.x, left2), PropertyValuesHolder.ofInt("y", layoutParams.y, top2));
        ObjectAnimator objectAnimatorOfFloat = LauncherAnimUtils.ofFloat(this.mLeftHandle, "alpha", 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = LauncherAnimUtils.ofFloat(this.mRightHandle, "alpha", 1.0f);
        ObjectAnimator objectAnimatorOfFloat3 = LauncherAnimUtils.ofFloat(this.mTopHandle, "alpha", 1.0f);
        ObjectAnimator objectAnimatorOfFloat4 = LauncherAnimUtils.ofFloat(this.mBottomHandle, "alpha", 1.0f);
        objectAnimatorOfPropertyValuesHolder.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.AppWidgetResizeFrame.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AppWidgetResizeFrame.this.requestLayout();
            }
        });
        AnimatorSet animatorSetCreateAnimatorSet = LauncherAnimUtils.createAnimatorSet();
        int i2 = this.mResizeMode;
        if (i2 == 2) {
            animatorSetCreateAnimatorSet.playTogether(objectAnimatorOfPropertyValuesHolder, objectAnimatorOfFloat3, objectAnimatorOfFloat4);
        } else if (i2 == 1) {
            animatorSetCreateAnimatorSet.playTogether(objectAnimatorOfPropertyValuesHolder, objectAnimatorOfFloat, objectAnimatorOfFloat2);
        } else {
            animatorSetCreateAnimatorSet.playTogether(objectAnimatorOfPropertyValuesHolder, objectAnimatorOfFloat, objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat4);
        }
        animatorSetCreateAnimatorSet.setDuration(150L);
        animatorSetCreateAnimatorSet.start();
    }
}
