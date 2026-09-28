package com.android.launcher2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LayoutAnimationController;
import com.android.launcher2.uitl.L;
import com.carocean.navicar.util.ZHTDOEMManager;
import com.yecon.launcher1.R;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Stack;

/* JADX INFO: loaded from: classes.dex */
public class CellLayout extends ViewGroup {
    private static final boolean DEBUG_VISUALIZE_OCCUPIED = false;
    private static final boolean DESTRUCTIVE_REORDER = false;
    private static final int INVALID_DIRECTION = -100;
    static final int LANDSCAPE = 0;
    public static final int MODE_ACCEPT_DROP = 3;
    public static final int MODE_DRAG_OVER = 0;
    public static final int MODE_ON_DROP = 1;
    public static final int MODE_ON_DROP_EXTERNAL = 2;
    static final int PORTRAIT = 1;
    private static final int REORDER_ANIMATION_DURATION = 150;
    private static final float REORDER_HINT_MAGNITUDE = 0.12f;
    static final String TAG = "CellLayout";
    private static final PorterDuffXfermode sAddBlendMode = new PorterDuffXfermode(PorterDuff.Mode.ADD);
    private static final Paint sPaint = new Paint();
    private final String HOME_SCREEN_BLUE_NORMAL_HOLO_SUFFIX;
    private Drawable mActiveGlowBackground;
    private float mBackgroundAlpha;
    private float mBackgroundAlphaMultiplier;
    private Rect mBackgroundRect;
    private int mCellHeight;
    private final CellInfo mCellInfo;
    private int mCellWidth;
    private int mCountX;
    private int mCountY;
    private int[] mDirectionVector;
    private final int[] mDragCell;
    private final Point mDragCenter;
    private DropTarget.DragEnforcer mDragEnforcer;
    private float[] mDragOutlineAlphas;
    private InterruptibleInOutAnimator[] mDragOutlineAnims;
    private int mDragOutlineCurrent;
    private final Paint mDragOutlinePaint;
    private Rect[] mDragOutlines;
    private boolean mDragging;
    private TimeInterpolator mEaseOutInterpolator;
    private int[] mFolderLeaveBehindCell;
    private ArrayList<FolderIcon.FolderRingAnimator> mFolderOuterRings;
    private int mForegroundAlpha;
    private int mForegroundPadding;
    private Rect mForegroundRect;
    private int mHeightGap;
    private float mHotseatScale;
    private View.OnTouchListener mInterceptTouchListener;
    private ArrayList<View> mIntersectingViews;
    private boolean mIsDragOverlapping;
    private boolean mIsHotseat;
    private boolean mItemPlacementDirty;
    private boolean mLastDownOnOccupiedCell;
    private Launcher mLauncher;
    private int mMaxGap;
    private Drawable mNormalBackground;
    boolean[][] mOccupied;
    private Rect mOccupiedRect;
    private int mOriginalHeightGap;
    private int mOriginalWidthGap;
    private Drawable mOverScrollForegroundDrawable;
    private Drawable mOverScrollLeft;
    private Drawable mOverScrollRight;
    private BubbleTextView mPressedOrFocusedIcon;
    int[] mPreviousReorderDirection;
    private final Rect mRect;
    private HashMap<LayoutParams, Animator> mReorderAnimators;
    private float mReorderHintAnimationMagnitude;
    private boolean mScrollingTransformsDirty;
    private HashMap<View, ReorderHintAnimation> mShakeAnimators;
    private ShortcutAndWidgetContainer mShortcutsAndWidgets;
    int[] mTempLocation;
    private final Stack<Rect> mTempRectStack;
    boolean[][] mTmpOccupied;
    private final int[] mTmpPoint;
    private final int[] mTmpXY;
    private int mWidthGap;
    Rect temp;

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public CellLayout(Context context) {
        this(context, null);
    }

    public CellLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CellLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mScrollingTransformsDirty = false;
        this.mRect = new Rect();
        this.mCellInfo = new CellInfo();
        this.mTmpXY = new int[2];
        this.mTmpPoint = new int[2];
        this.mTempLocation = new int[2];
        this.mLastDownOnOccupiedCell = false;
        this.mFolderOuterRings = new ArrayList<>();
        this.mFolderLeaveBehindCell = new int[]{-1, -1};
        this.mForegroundAlpha = 0;
        this.mBackgroundAlphaMultiplier = 1.0f;
        this.mIsDragOverlapping = false;
        this.mDragCenter = new Point();
        Rect[] rectArr = new Rect[4];
        this.mDragOutlines = rectArr;
        this.mDragOutlineAlphas = new float[rectArr.length];
        this.mDragOutlineAnims = new InterruptibleInOutAnimator[rectArr.length];
        this.mDragOutlineCurrent = 0;
        this.mDragOutlinePaint = new Paint();
        this.mReorderAnimators = new HashMap<>();
        this.mShakeAnimators = new HashMap<>();
        this.mItemPlacementDirty = false;
        int[] iArr = new int[2];
        this.mDragCell = iArr;
        this.mDragging = false;
        this.mIsHotseat = false;
        this.mHotseatScale = 0.2f;
        this.mIntersectingViews = new ArrayList<>();
        this.mOccupiedRect = new Rect();
        this.mDirectionVector = new int[2];
        this.mPreviousReorderDirection = new int[2];
        this.HOME_SCREEN_BLUE_NORMAL_HOLO_SUFFIX = "_homescreen_blue_normal_holo";
        this.temp = new Rect();
        this.mTempRectStack = new Stack<>();
        this.mDragEnforcer = new DropTarget.DragEnforcer(context);
        setWillNotDraw(false);
        this.mLauncher = (Launcher) context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CellLayout, i, 0);
        this.mCellWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 10);
        this.mCellHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 10);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, 0);
        this.mOriginalWidthGap = dimensionPixelSize;
        this.mWidthGap = dimensionPixelSize;
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.mOriginalHeightGap = dimensionPixelSize2;
        this.mHeightGap = dimensionPixelSize2;
        this.mMaxGap = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, 0);
        this.mCountX = LauncherModel.getCellCountX();
        int cellCountY = LauncherModel.getCellCountY();
        this.mCountY = cellCountY;
        this.mOccupied = (boolean[][]) Array.newInstance((Class<?>) boolean.class, this.mCountX, cellCountY);
        this.mTmpOccupied = (boolean[][]) Array.newInstance((Class<?>) boolean.class, this.mCountX, this.mCountY);
        int[] iArr2 = this.mPreviousReorderDirection;
        iArr2[0] = INVALID_DIRECTION;
        iArr2[1] = INVALID_DIRECTION;
        typedArrayObtainStyledAttributes.recycle();
        setAlwaysDrawnWithCacheEnabled(false);
        Resources resources = getResources();
        this.mHotseatScale = resources.getInteger(R.integer.hotseat_item_scale_percentage) / 100.0f;
        this.mNormalBackground = resources.getDrawable(R.drawable.homescreen_blue_normal_holo);
        this.mActiveGlowBackground = resources.getDrawable(R.drawable.homescreen_blue_strong_holo);
        this.mOverScrollLeft = resources.getDrawable(R.drawable.overscroll_glow_left);
        this.mOverScrollRight = resources.getDrawable(R.drawable.overscroll_glow_right);
        this.mForegroundPadding = resources.getDimensionPixelSize(R.dimen.workspace_overscroll_drawable_padding);
        if (ZHTDOEMManager.ensureID8()) {
            this.mReorderHintAnimationMagnitude = resources.getDimensionPixelSize(R.dimen.app_icon_id8_size) * REORDER_HINT_MAGNITUDE;
        } else if (ZHTDOEMManager.isMRWCustomer() || ZHTDOEMManager.isYZGCustomer() || ZHTDOEMManager.isLCCustomerTheme1()) {
            this.mReorderHintAnimationMagnitude = resources.getDimensionPixelSize(R.dimen.app_icon_mrw_size) * REORDER_HINT_MAGNITUDE;
        } else {
            this.mReorderHintAnimationMagnitude = resources.getDimensionPixelSize(ZHTDOEMManager.isLCCustomer() ? R.dimen.app_icon_lc_size : R.dimen.app_icon_size) * REORDER_HINT_MAGNITUDE;
        }
        this.mNormalBackground.setFilterBitmap(true);
        this.mActiveGlowBackground.setFilterBitmap(true);
        this.mEaseOutInterpolator = new DecelerateInterpolator(2.5f);
        iArr[1] = -1;
        iArr[0] = -1;
        int i2 = 0;
        while (true) {
            Rect[] rectArr2 = this.mDragOutlines;
            if (i2 >= rectArr2.length) {
                break;
            }
            rectArr2[i2] = new Rect(-1, -1, -1, -1);
            i2++;
        }
        int integer = resources.getInteger(R.integer.config_dragOutlineFadeTime);
        float integer2 = resources.getInteger(R.integer.config_dragOutlineMaxAlpha);
        Arrays.fill(this.mDragOutlineAlphas, 0.0f);
        for (final int i3 = 0; i3 < this.mDragOutlineAnims.length; i3++) {
            final InterruptibleInOutAnimator interruptibleInOutAnimator = new InterruptibleInOutAnimator(integer, 0.0f, integer2);
            interruptibleInOutAnimator.getAnimator().setInterpolator(this.mEaseOutInterpolator);
            interruptibleInOutAnimator.getAnimator().addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.CellLayout.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    if (((Bitmap) interruptibleInOutAnimator.getTag()) != null) {
                        CellLayout.this.mDragOutlineAlphas[i3] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        CellLayout cellLayout = CellLayout.this;
                        cellLayout.invalidate(cellLayout.mDragOutlines[i3]);
                        return;
                    }
                    valueAnimator.cancel();
                }
            });
            interruptibleInOutAnimator.getAnimator().addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.CellLayout.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (((Float) ((ValueAnimator) animator).getAnimatedValue()).floatValue() == 0.0f) {
                        interruptibleInOutAnimator.setTag(null);
                    }
                }
            });
            this.mDragOutlineAnims[i3] = interruptibleInOutAnimator;
        }
        this.mBackgroundRect = new Rect();
        this.mForegroundRect = new Rect();
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = new ShortcutAndWidgetContainer(context);
        this.mShortcutsAndWidgets = shortcutAndWidgetContainer;
        shortcutAndWidgetContainer.setCellDimensions(this.mCellWidth, this.mCellHeight, this.mWidthGap, this.mHeightGap);
        addView(this.mShortcutsAndWidgets);
    }

    public void refreshUI() {
        String currentScene = Launcher.getCurrentScene();
        String packageName = this.mLauncher.getPackageName();
        Resources resources = this.mLauncher.getResources();
        int i = R.drawable.homescreen_blue_normal_holo;
        if (currentScene != null) {
            int identifier = resources.getIdentifier(currentScene + "_homescreen_blue_normal_holo", "drawable", packageName);
            if (identifier != 0) {
                i = identifier;
            }
            this.mNormalBackground = resources.getDrawable(i);
            return;
        }
        this.mNormalBackground = resources.getDrawable(R.drawable.homescreen_blue_normal_holo);
    }

    static int widthInPortrait(Resources resources, int i) {
        return (Math.min(resources.getDimensionPixelSize(R.dimen.workspace_width_gap), resources.getDimensionPixelSize(R.dimen.workspace_height_gap)) * (i - 1)) + (resources.getDimensionPixelSize(R.dimen.workspace_cell_width) * i);
    }

    static int heightInLandscape(Resources resources, int i) {
        return (Math.min(resources.getDimensionPixelSize(R.dimen.workspace_width_gap), resources.getDimensionPixelSize(R.dimen.workspace_height_gap)) * (i - 1)) + (resources.getDimensionPixelSize(R.dimen.workspace_cell_height) * i);
    }

    public void enableHardwareLayers() {
        this.mShortcutsAndWidgets.setLayerType(2, sPaint);
    }

    public void disableHardwareLayers() {
        this.mShortcutsAndWidgets.setLayerType(0, sPaint);
    }

    public void buildHardwareLayer() {
        this.mShortcutsAndWidgets.buildLayer();
    }

    public float getChildrenScale() {
        if (this.mIsHotseat) {
            return this.mHotseatScale;
        }
        return 1.0f;
    }

    public void setGridSize(int i, int i2) {
        this.mCountX = i;
        this.mCountY = i2;
        this.mOccupied = (boolean[][]) Array.newInstance((Class<?>) boolean.class, i, i2);
        this.mTmpOccupied = (boolean[][]) Array.newInstance((Class<?>) boolean.class, this.mCountX, this.mCountY);
        this.mTempRectStack.clear();
        requestLayout();
    }

    private void invalidateBubbleTextView(BubbleTextView bubbleTextView) {
        int pressedOrFocusedBackgroundPadding = bubbleTextView.getPressedOrFocusedBackgroundPadding();
        invalidate((bubbleTextView.getLeft() + getPaddingLeft()) - pressedOrFocusedBackgroundPadding, (bubbleTextView.getTop() + getPaddingTop()) - pressedOrFocusedBackgroundPadding, bubbleTextView.getRight() + getPaddingLeft() + pressedOrFocusedBackgroundPadding, bubbleTextView.getBottom() + getPaddingTop() + pressedOrFocusedBackgroundPadding);
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:7:0x000d  */
    /* JADX WARN: Code duplicated, block: B:9:0x0013  */
    void setOverScrollAmount(float f, boolean z) {
        Drawable drawable;
        Drawable drawable2;
        if (z) {
            Drawable drawable3 = this.mOverScrollForegroundDrawable;
            Drawable drawable4 = this.mOverScrollLeft;
            if (drawable3 != drawable4) {
                this.mOverScrollForegroundDrawable = drawable4;
            } else if (!z) {
                drawable = this.mOverScrollForegroundDrawable;
                drawable2 = this.mOverScrollRight;
                if (drawable != drawable2) {
                    this.mOverScrollForegroundDrawable = drawable2;
                }
            }
        } else if (!z) {
            drawable = this.mOverScrollForegroundDrawable;
            drawable2 = this.mOverScrollRight;
            if (drawable != drawable2) {
                this.mOverScrollForegroundDrawable = drawable2;
            }
        }
        int iRound = Math.round(f * 255.0f);
        this.mForegroundAlpha = iRound;
        this.mOverScrollForegroundDrawable.setAlpha(iRound);
        invalidate();
    }

    void setPressedOrFocusedIcon(BubbleTextView bubbleTextView) {
        BubbleTextView bubbleTextView2 = this.mPressedOrFocusedIcon;
        this.mPressedOrFocusedIcon = bubbleTextView;
        if (bubbleTextView2 != null) {
            invalidateBubbleTextView(bubbleTextView2);
        }
        BubbleTextView bubbleTextView3 = this.mPressedOrFocusedIcon;
        if (bubbleTextView3 != null) {
            invalidateBubbleTextView(bubbleTextView3);
        }
    }

    void setIsDragOverlapping(boolean z) {
        if (this.mIsDragOverlapping != z) {
            this.mIsDragOverlapping = z;
            invalidate();
        }
    }

    boolean getIsDragOverlapping() {
        return this.mIsDragOverlapping;
    }

    protected void setOverscrollTransformsDirty(boolean z) {
        this.mScrollingTransformsDirty = z;
    }

    protected void resetOverscrollTransforms() {
        if (this.mScrollingTransformsDirty) {
            setOverscrollTransformsDirty(false);
            setTranslationX(0.0f);
            setRotationY(0.0f);
            setOverScrollAmount(0.0f, false);
            setPivotX(getMeasuredWidth() / 2);
            setPivotY(getMeasuredHeight() / 2);
        }
    }

    public void scaleRect(Rect rect, float f) {
        if (f != 1.0f) {
            rect.left = (int) ((rect.left * f) + 0.5f);
            rect.top = (int) ((rect.top * f) + 0.5f);
            rect.right = (int) ((rect.right * f) + 0.5f);
            rect.bottom = (int) ((rect.bottom * f) + 0.5f);
        }
    }

    void scaleRectAboutCenter(Rect rect, Rect rect2, float f) {
        int iCenterX = rect.centerX();
        int iCenterY = rect.centerY();
        rect2.set(rect);
        rect2.offset(-iCenterX, -iCenterY);
        scaleRect(rect2, f);
        rect2.offset(iCenterX, iCenterY);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawable;
        float f = this.mBackgroundAlpha;
        if (f > 0.0f) {
            if (this.mIsDragOverlapping) {
                drawable = this.mActiveGlowBackground;
            } else {
                drawable = this.mNormalBackground;
            }
            drawable.setAlpha((int) (f * this.mBackgroundAlphaMultiplier * 255.0f));
            drawable.setBounds(this.mBackgroundRect);
            drawable.draw(canvas);
        }
        Paint paint = this.mDragOutlinePaint;
        int i = 0;
        while (true) {
            Rect[] rectArr = this.mDragOutlines;
            if (i >= rectArr.length) {
                break;
            }
            float f2 = this.mDragOutlineAlphas[i];
            if (f2 > 0.0f) {
                scaleRectAboutCenter(rectArr[i], this.temp, getChildrenScale());
                Bitmap bitmap = (Bitmap) this.mDragOutlineAnims[i].getTag();
                paint.setAlpha((int) (f2 + 0.5f));
                canvas.drawBitmap(bitmap, (Rect) null, this.temp, paint);
            }
            i++;
        }
        BubbleTextView bubbleTextView = this.mPressedOrFocusedIcon;
        if (bubbleTextView != null) {
            int pressedOrFocusedBackgroundPadding = bubbleTextView.getPressedOrFocusedBackgroundPadding();
            Bitmap pressedOrFocusedBackground = this.mPressedOrFocusedIcon.getPressedOrFocusedBackground();
            if (pressedOrFocusedBackground != null) {
                canvas.drawBitmap(pressedOrFocusedBackground, (this.mPressedOrFocusedIcon.getLeft() + getPaddingLeft()) - pressedOrFocusedBackgroundPadding, (this.mPressedOrFocusedIcon.getTop() + getPaddingTop()) - pressedOrFocusedBackgroundPadding, (Paint) null);
            }
        }
        int i2 = FolderIcon.FolderRingAnimator.sPreviewSize;
        for (int i3 = 0; i3 < this.mFolderOuterRings.size(); i3++) {
            FolderIcon.FolderRingAnimator folderRingAnimator = this.mFolderOuterRings.get(i3);
            Drawable drawable2 = FolderIcon.FolderRingAnimator.sSharedOuterRingDrawable;
            int outerRingSize = (int) folderRingAnimator.getOuterRingSize();
            cellToPoint(folderRingAnimator.mCellX, folderRingAnimator.mCellY, this.mTempLocation);
            int[] iArr = this.mTempLocation;
            int i4 = iArr[0] + (this.mCellWidth / 2);
            int i5 = i2 / 2;
            int i6 = iArr[1] + i5;
            canvas.save();
            int i7 = outerRingSize / 2;
            canvas.translate(i4 - i7, i6 - i7);
            drawable2.setBounds(0, 0, outerRingSize, outerRingSize);
            drawable2.draw(canvas);
            canvas.restore();
            Drawable drawable3 = FolderIcon.FolderRingAnimator.sSharedInnerRingDrawable;
            int innerRingSize = (int) folderRingAnimator.getInnerRingSize();
            cellToPoint(folderRingAnimator.mCellX, folderRingAnimator.mCellY, this.mTempLocation);
            int[] iArr2 = this.mTempLocation;
            int i8 = iArr2[0] + (this.mCellWidth / 2);
            int i9 = iArr2[1] + i5;
            canvas.save();
            int i10 = innerRingSize / 2;
            canvas.translate(i8 - i10, i9 - i10);
            drawable3.setBounds(0, 0, innerRingSize, innerRingSize);
            drawable3.draw(canvas);
            canvas.restore();
        }
        int[] iArr3 = this.mFolderLeaveBehindCell;
        if (iArr3[0] < 0 || iArr3[1] < 0) {
            return;
        }
        Drawable drawable4 = FolderIcon.sSharedFolderLeaveBehind;
        int intrinsicWidth = drawable4.getIntrinsicWidth();
        int intrinsicHeight = drawable4.getIntrinsicHeight();
        int[] iArr4 = this.mFolderLeaveBehindCell;
        cellToPoint(iArr4[0], iArr4[1], this.mTempLocation);
        int[] iArr5 = this.mTempLocation;
        int i11 = iArr5[0] + (this.mCellWidth / 2);
        int i12 = iArr5[1] + (i2 / 2);
        canvas.save();
        int i13 = intrinsicWidth / 2;
        canvas.translate(i11 - i13, i12 - i13);
        drawable4.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        drawable4.draw(canvas);
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mForegroundAlpha > 0) {
            this.mOverScrollForegroundDrawable.setBounds(this.mForegroundRect);
            Paint paint = ((NinePatchDrawable) this.mOverScrollForegroundDrawable).getPaint();
            paint.setXfermode(sAddBlendMode);
            this.mOverScrollForegroundDrawable.draw(canvas);
            paint.setXfermode(null);
        }
    }

    public void showFolderAccept(FolderIcon.FolderRingAnimator folderRingAnimator) {
        this.mFolderOuterRings.add(folderRingAnimator);
    }

    public void hideFolderAccept(FolderIcon.FolderRingAnimator folderRingAnimator) {
        if (this.mFolderOuterRings.contains(folderRingAnimator)) {
            this.mFolderOuterRings.remove(folderRingAnimator);
        }
        invalidate();
    }

    public void setFolderLeaveBehindCell(int i, int i2) {
        int[] iArr = this.mFolderLeaveBehindCell;
        iArr[0] = i;
        iArr[1] = i2;
        invalidate();
    }

    public void clearFolderLeaveBehind() {
        int[] iArr = this.mFolderLeaveBehindCell;
        iArr[0] = -1;
        iArr[1] = -1;
        invalidate();
    }

    public void restoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchRestoreInstanceState(sparseArray);
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).cancelLongPress();
        }
    }

    public void setOnInterceptTouchListener(View.OnTouchListener onTouchListener) {
        this.mInterceptTouchListener = onTouchListener;
    }

    int getCountX() {
        return this.mCountX;
    }

    int getCountY() {
        return this.mCountY;
    }

    public void setIsHotseat(boolean z) {
        this.mIsHotseat = z;
    }

    public boolean addViewToCellLayout(View view, int i, int i2, LayoutParams layoutParams, boolean z) {
        if (view instanceof BubbleTextView) {
            BubbleTextView bubbleTextView = (BubbleTextView) view;
            Resources resources = getResources();
            if (!this.mIsHotseat) {
                bubbleTextView.setTextColor(resources.getColor(R.color.workspace_icon_text_color));
            }
        }
        view.setScaleX(getChildrenScale());
        view.setScaleY(getChildrenScale());
        if (layoutParams.cellX < 0 || layoutParams.cellX > this.mCountX - 1 || layoutParams.cellY < 0 || layoutParams.cellY > this.mCountY - 1) {
            return false;
        }
        if (layoutParams.cellHSpan < 0) {
            layoutParams.cellHSpan = this.mCountX;
        }
        if (layoutParams.cellVSpan < 0) {
            layoutParams.cellVSpan = this.mCountY;
        }
        view.setId(i2);
        this.mShortcutsAndWidgets.addView(view, i, layoutParams);
        if (z) {
            markCellsAsOccupiedForView(view);
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        clearOccupiedCells();
        this.mShortcutsAndWidgets.removeAllViews();
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        if (this.mShortcutsAndWidgets.getChildCount() > 0) {
            clearOccupiedCells();
            this.mShortcutsAndWidgets.removeAllViewsInLayout();
        }
    }

    public void removeViewWithoutMarkingCells(View view) {
        this.mShortcutsAndWidgets.removeView(view);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        markCellsAsUnoccupiedForView(view);
        this.mShortcutsAndWidgets.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i) {
        markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(i));
        this.mShortcutsAndWidgets.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        markCellsAsUnoccupiedForView(view);
        this.mShortcutsAndWidgets.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(i3));
        }
        this.mShortcutsAndWidgets.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            markCellsAsUnoccupiedForView(this.mShortcutsAndWidgets.getChildAt(i3));
        }
        this.mShortcutsAndWidgets.removeViewsInLayout(i, i2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mCellInfo.screen = ((ViewGroup) getParent()).indexOfChild(this);
    }

    public void setTagToCellInfoForPoint(int i, int i2) {
        boolean z;
        CellInfo cellInfo = this.mCellInfo;
        Rect rect = this.mRect;
        int scrollX = i + getScrollX();
        int scrollY = i2 + getScrollY();
        int childCount = this.mShortcutsAndWidgets.getChildCount() - 1;
        while (true) {
            if (childCount < 0) {
                z = false;
                break;
            }
            View childAt = this.mShortcutsAndWidgets.getChildAt(childCount);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if ((childAt.getVisibility() == 0 || childAt.getAnimation() != null) && layoutParams.isLockedToGrid) {
                childAt.getHitRect(rect);
                float scaleX = childAt.getScaleX();
                Rect rect2 = new Rect(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                rect2.offset(getPaddingLeft(), getPaddingTop());
                float f = 1.0f - scaleX;
                rect2.inset((int) ((rect2.width() * f) / 2.0f), (int) ((rect2.height() * f) / 2.0f));
                if (rect2.contains(scrollX, scrollY)) {
                    cellInfo.cell = childAt;
                    cellInfo.cellX = layoutParams.cellX;
                    cellInfo.cellY = layoutParams.cellY;
                    cellInfo.spanX = layoutParams.cellHSpan;
                    cellInfo.spanY = layoutParams.cellVSpan;
                    z = true;
                    break;
                }
                rect = rect2;
            }
            childCount--;
        }
        this.mLastDownOnOccupiedCell = z;
        if (!z) {
            int[] iArr = this.mTmpXY;
            pointToCellExact(scrollX, scrollY, iArr);
            cellInfo.cell = null;
            cellInfo.cellX = iArr[0];
            cellInfo.cellY = iArr[1];
            cellInfo.spanX = 1;
            cellInfo.spanY = 1;
        }
        setTag(cellInfo);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            clearTagCellInfo();
        }
        View.OnTouchListener onTouchListener = this.mInterceptTouchListener;
        if (onTouchListener != null && onTouchListener.onTouch(this, motionEvent)) {
            return true;
        }
        if (action != 0) {
            return false;
        }
        setTagToCellInfoForPoint((int) motionEvent.getX(), (int) motionEvent.getY());
        return false;
    }

    private void clearTagCellInfo() {
        CellInfo cellInfo = this.mCellInfo;
        cellInfo.cell = null;
        cellInfo.cellX = -1;
        cellInfo.cellY = -1;
        cellInfo.spanX = 0;
        cellInfo.spanY = 0;
        setTag(cellInfo);
    }

    @Override // android.view.View
    public CellInfo getTag() {
        return (CellInfo) super.getTag();
    }

    void pointToCellExact(int i, int i2, int[] iArr) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        iArr[0] = (i - paddingLeft) / (this.mCellWidth + this.mWidthGap);
        iArr[1] = (i2 - paddingTop) / (this.mCellHeight + this.mHeightGap);
        int i3 = this.mCountX;
        int i4 = this.mCountY;
        if (iArr[0] < 0) {
            iArr[0] = 0;
        }
        if (iArr[0] >= i3) {
            iArr[0] = i3 - 1;
        }
        if (iArr[1] < 0) {
            iArr[1] = 0;
        }
        if (iArr[1] >= i4) {
            iArr[1] = i4 - 1;
        }
    }

    void pointToCellRounded(int i, int i2, int[] iArr) {
        pointToCellExact(i + (this.mCellWidth / 2), i2 + (this.mCellHeight / 2), iArr);
    }

    void cellToPoint(int i, int i2, int[] iArr) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        iArr[0] = paddingLeft + (i * (this.mCellWidth + this.mWidthGap));
        iArr[1] = paddingTop + (i2 * (this.mCellHeight + this.mHeightGap));
    }

    void cellToCenterPoint(int i, int i2, int[] iArr) {
        regionToCenterPoint(i, i2, 1, 1, iArr);
    }

    void regionToCenterPoint(int i, int i2, int i3, int i4, int[] iArr) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i5 = this.mCellWidth;
        int i6 = this.mWidthGap;
        iArr[0] = paddingLeft + (i * (i5 + i6)) + (((i5 * i3) + ((i3 - 1) * i6)) / 2);
        int i7 = this.mCellHeight;
        int i8 = this.mHeightGap;
        iArr[1] = paddingTop + (i2 * (i7 + i8)) + (((i7 * i4) + ((i4 - 1) * i8)) / 2);
    }

    void regionToRect(int i, int i2, int i3, int i4, Rect rect) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int i5 = this.mCellWidth;
        int i6 = this.mWidthGap;
        int i7 = paddingLeft + (i * (i5 + i6));
        int i8 = this.mCellHeight;
        int i9 = this.mHeightGap;
        int i10 = paddingTop + (i2 * (i8 + i9));
        rect.set(i7, i10, (i5 * i3) + ((i3 - 1) * i6) + i7, (i8 * i4) + ((i4 - 1) * i9) + i10);
    }

    public float getDistanceFromCell(float f, float f2, int[] iArr) {
        cellToCenterPoint(iArr[0], iArr[1], this.mTmpPoint);
        return (float) Math.sqrt(Math.pow(f - this.mTmpPoint[0], 2.0d) + Math.pow(f2 - this.mTmpPoint[1], 2.0d));
    }

    int getCellWidth() {
        return this.mCellWidth;
    }

    int getCellHeight() {
        return this.mCellHeight;
    }

    int getWidthGap() {
        return this.mWidthGap;
    }

    int getHeightGap() {
        return this.mHeightGap;
    }

    Rect getContentRect(Rect rect) {
        if (rect == null) {
            rect = new Rect();
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        rect.set(paddingLeft, paddingTop, ((getWidth() + paddingLeft) - getPaddingLeft()) - getPaddingRight(), ((getHeight() + paddingTop) - getPaddingTop()) - getPaddingBottom());
        return rect;
    }

    static void getMetrics(Rect rect, Resources resources, int i, int i2, int i3, int i4, int i5) {
        int dimensionPixelSize;
        int dimensionPixelSize2;
        int dimensionPixelSize3;
        int dimensionPixelSize4;
        int dimensionPixelSize5;
        int dimensionPixelSize6;
        int dimensionPixelSize7;
        int dimensionPixelSize8;
        int i6 = i3 - 1;
        int i7 = i4 - 1;
        int dimensionPixelSize9 = resources.getDimensionPixelSize(R.dimen.workspace_max_gap);
        if (i5 == 0) {
            dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.workspace_cell_width_land);
            dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.workspace_cell_height_land);
            dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.workspace_width_gap_land);
            dimensionPixelSize4 = resources.getDimensionPixelSize(R.dimen.workspace_height_gap_land);
            dimensionPixelSize5 = resources.getDimensionPixelSize(R.dimen.cell_layout_left_padding_land);
            dimensionPixelSize6 = resources.getDimensionPixelSize(R.dimen.cell_layout_right_padding_land);
            dimensionPixelSize7 = resources.getDimensionPixelSize(R.dimen.cell_layout_top_padding_land);
            dimensionPixelSize8 = resources.getDimensionPixelSize(R.dimen.cell_layout_bottom_padding_land);
        } else {
            dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.workspace_cell_width_port);
            dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.workspace_cell_height_port);
            dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.workspace_width_gap_port);
            dimensionPixelSize4 = resources.getDimensionPixelSize(R.dimen.workspace_height_gap_port);
            dimensionPixelSize5 = resources.getDimensionPixelSize(R.dimen.cell_layout_left_padding_port);
            dimensionPixelSize6 = resources.getDimensionPixelSize(R.dimen.cell_layout_right_padding_port);
            dimensionPixelSize7 = resources.getDimensionPixelSize(R.dimen.cell_layout_top_padding_port);
            dimensionPixelSize8 = resources.getDimensionPixelSize(R.dimen.cell_layout_bottom_padding_port);
        }
        if (dimensionPixelSize3 < 0 || dimensionPixelSize4 < 0) {
            int i8 = ((i2 - dimensionPixelSize7) - dimensionPixelSize8) - (i4 * dimensionPixelSize2);
            dimensionPixelSize3 = Math.min(dimensionPixelSize9, i6 > 0 ? (((i - dimensionPixelSize5) - dimensionPixelSize6) - (i3 * dimensionPixelSize)) / i6 : 0);
            dimensionPixelSize4 = Math.min(dimensionPixelSize9, i7 > 0 ? i8 / i7 : 0);
        }
        rect.set(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize3, dimensionPixelSize4);
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
        int i4 = this.mCountX - 1;
        int i5 = this.mCountY - 1;
        int i6 = this.mOriginalWidthGap;
        if (i6 < 0 || (i3 = this.mOriginalHeightGap) < 0) {
            int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
            int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
            int i7 = paddingLeft - (this.mCountX * this.mCellWidth);
            int i8 = paddingTop - (this.mCountY * this.mCellHeight);
            this.mWidthGap = Math.min(this.mMaxGap, i4 > 0 ? i7 / i4 : 0);
            int iMin = Math.min(this.mMaxGap, i5 > 0 ? i8 / i5 : 0);
            this.mHeightGap = iMin;
            this.mShortcutsAndWidgets.setCellDimensions(this.mCellWidth, this.mCellHeight, this.mWidthGap, iMin);
        } else {
            this.mWidthGap = i6;
            this.mHeightGap = i3;
        }
        if (mode == Integer.MIN_VALUE) {
            int paddingLeft2 = getPaddingLeft() + getPaddingRight();
            int i9 = this.mCountX;
            size = paddingLeft2 + (this.mCellWidth * i9) + ((i9 - 1) * this.mWidthGap);
            int paddingTop2 = getPaddingTop() + getPaddingBottom();
            int i10 = this.mCountY;
            size2 = paddingTop2 + (this.mCellHeight * i10) + ((i10 - 1) * this.mHeightGap);
            setMeasuredDimension(size, size2);
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            getChildAt(i11).measure(View.MeasureSpec.makeMeasureSpec((size - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((size2 - getPaddingTop()) - getPaddingBottom(), 1073741824));
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            getChildAt(i5).layout(getPaddingLeft(), getPaddingTop(), (i3 - i) - getPaddingRight(), (i4 - i2) - getPaddingBottom());
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mBackgroundRect.set(0, 0, i, i2);
        Rect rect = this.mForegroundRect;
        int i5 = this.mForegroundPadding;
        rect.set(i5, i5, i - i5, i2 - i5);
    }

    @Override // android.view.ViewGroup
    protected void setChildrenDrawingCacheEnabled(boolean z) {
        this.mShortcutsAndWidgets.setChildrenDrawingCacheEnabled(z);
    }

    @Override // android.view.ViewGroup
    protected void setChildrenDrawnWithCacheEnabled(boolean z) {
        this.mShortcutsAndWidgets.setChildrenDrawnWithCacheEnabled(z);
    }

    public float getBackgroundAlpha() {
        return this.mBackgroundAlpha;
    }

    public void setBackgroundAlphaMultiplier(float f) {
        if (this.mBackgroundAlphaMultiplier != f) {
            this.mBackgroundAlphaMultiplier = f;
            invalidate();
        }
    }

    public float getBackgroundAlphaMultiplier() {
        return this.mBackgroundAlphaMultiplier;
    }

    public void setBackgroundAlpha(float f) {
        if (this.mBackgroundAlpha != f) {
            this.mBackgroundAlpha = f;
            invalidate();
        }
    }

    public void setShortcutAndWidgetAlpha(float f) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setAlpha(f);
        }
    }

    public ShortcutAndWidgetContainer getShortcutsAndWidgets() {
        if (getChildCount() > 0) {
            return (ShortcutAndWidgetContainer) getChildAt(0);
        }
        return null;
    }

    public View getChildAt(int i, int i2) {
        return this.mShortcutsAndWidgets.getChildAt(i, i2);
    }

    public boolean animateChildToPosition(final View view, int i, int i2, int i3, int i4, boolean z, boolean z2) {
        ShortcutAndWidgetContainer shortcutsAndWidgets = getShortcutsAndWidgets();
        boolean[][] zArr = this.mOccupied;
        if (!z) {
            zArr = this.mTmpOccupied;
        }
        if (shortcutsAndWidgets.indexOfChild(view) == -1) {
            return false;
        }
        final LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        ItemInfo itemInfo = (ItemInfo) view.getTag();
        if (this.mReorderAnimators.containsKey(layoutParams)) {
            this.mReorderAnimators.get(layoutParams).cancel();
            this.mReorderAnimators.remove(layoutParams);
        }
        final int i5 = layoutParams.x;
        final int i6 = layoutParams.y;
        if (z2) {
            zArr[layoutParams.cellX][layoutParams.cellY] = false;
            zArr[i][i2] = true;
        }
        layoutParams.isLockedToGrid = true;
        if (z) {
            itemInfo.cellX = i;
            layoutParams.cellX = i;
            itemInfo.cellY = i2;
            layoutParams.cellY = i2;
        } else {
            layoutParams.tmpCellX = i;
            layoutParams.tmpCellY = i2;
        }
        shortcutsAndWidgets.setupLp(layoutParams);
        layoutParams.isLockedToGrid = false;
        final int i7 = layoutParams.x;
        final int i8 = layoutParams.y;
        layoutParams.x = i5;
        layoutParams.y = i6;
        if (i5 == i7 && i6 == i8) {
            layoutParams.isLockedToGrid = true;
            return true;
        }
        ValueAnimator valueAnimatorOfFloat = LauncherAnimUtils.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(i3);
        this.mReorderAnimators.put(layoutParams, valueAnimatorOfFloat);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.CellLayout.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                float f = 1.0f - fFloatValue;
                layoutParams.x = (int) ((i5 * f) + (i7 * fFloatValue));
                layoutParams.y = (int) ((f * i6) + (fFloatValue * i8));
                view.requestLayout();
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.CellLayout.4
            boolean cancelled = false;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!this.cancelled) {
                    layoutParams.isLockedToGrid = true;
                    view.requestLayout();
                }
                if (CellLayout.this.mReorderAnimators.containsKey(layoutParams)) {
                    CellLayout.this.mReorderAnimators.remove(layoutParams);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.cancelled = true;
            }
        });
        valueAnimatorOfFloat.setStartDelay(i4);
        valueAnimatorOfFloat.start();
        return true;
    }

    void estimateDropCell(int i, int i2, int i3, int i4, int[] iArr) {
        int i5 = this.mCountX;
        int i6 = this.mCountY;
        pointToCellRounded(i, i2, iArr);
        int i7 = (iArr[0] + i3) - i5;
        if (i7 > 0) {
            iArr[0] = iArr[0] - i7;
        }
        iArr[0] = Math.max(0, iArr[0]);
        int i8 = (iArr[1] + i4) - i6;
        if (i8 > 0) {
            iArr[1] = iArr[1] - i8;
        }
        iArr[1] = Math.max(0, iArr[1]);
    }

    void visualizeDropLocation(View view, Bitmap bitmap, int i, int i2, int i3, int i4, int i5, int i6, boolean z, Point point, Rect rect) {
        int width;
        int height;
        int height2;
        int[] iArr = this.mDragCell;
        int i7 = iArr[0];
        int i8 = iArr[1];
        if (view != null && point == null) {
            this.mDragCenter.set(i + (view.getWidth() / 2), i2 + (view.getHeight() / 2));
        } else {
            this.mDragCenter.set(i, i2);
        }
        if (bitmap == null && view == null) {
            return;
        }
        if (i3 == i7 && i4 == i8) {
            return;
        }
        int[] iArr2 = this.mDragCell;
        iArr2[0] = i3;
        iArr2[1] = i4;
        int[] iArr3 = this.mTmpPoint;
        cellToPoint(i3, i4, iArr3);
        int i9 = iArr3[0];
        int i10 = iArr3[1];
        if (view == null || point != null) {
            if (point != null && rect != null) {
                width = i9 + point.x + ((((this.mCellWidth * i5) + ((i5 - 1) * this.mWidthGap)) - rect.width()) / 2);
                height = point.y;
            } else {
                width = i9 + ((((this.mCellWidth * i5) + ((i5 - 1) * this.mWidthGap)) - bitmap.getWidth()) / 2);
                height = (((this.mCellHeight * i6) + ((i6 - 1) * this.mHeightGap)) - bitmap.getHeight()) / 2;
            }
            height2 = i10 + height;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            int i11 = i9 + marginLayoutParams.leftMargin;
            height2 = i10 + marginLayoutParams.topMargin + ((view.getHeight() - bitmap.getHeight()) / 2);
            width = i11 + ((((this.mCellWidth * i5) + ((i5 - 1) * this.mWidthGap)) - bitmap.getWidth()) / 2);
        }
        int i12 = this.mDragOutlineCurrent;
        this.mDragOutlineAnims[i12].animateOut();
        Rect[] rectArr = this.mDragOutlines;
        int length = (i12 + 1) % rectArr.length;
        this.mDragOutlineCurrent = length;
        Rect rect2 = rectArr[length];
        rect2.set(width, height2, bitmap.getWidth() + width, bitmap.getHeight() + height2);
        if (z) {
            cellToRect(i3, i4, i5, i6, rect2);
        }
        this.mDragOutlineAnims[this.mDragOutlineCurrent].setTag(bitmap);
        this.mDragOutlineAnims[this.mDragOutlineCurrent].animateIn();
    }

    public void clearDragOutlines() {
        this.mDragOutlineAnims[this.mDragOutlineCurrent].animateOut();
        int[] iArr = this.mDragCell;
        iArr[1] = -1;
        iArr[0] = -1;
    }

    int[] findNearestVacantArea(int i, int i2, int i3, int i4, int[] iArr) {
        return findNearestVacantArea(i, i2, i3, i4, null, iArr);
    }

    int[] findNearestVacantArea(int i, int i2, int i3, int i4, int i5, int i6, int[] iArr, int[] iArr2) {
        return findNearestVacantArea(i, i2, i3, i4, i5, i6, null, iArr, iArr2);
    }

    int[] findNearestArea(int i, int i2, int i3, int i4, View view, boolean z, int[] iArr) {
        return findNearestArea(i, i2, i3, i4, i3, i4, view, z, iArr, null, this.mOccupied);
    }

    private void lazyInitTempRectStack() {
        if (this.mTempRectStack.isEmpty()) {
            for (int i = 0; i < this.mCountX * this.mCountY; i++) {
                this.mTempRectStack.push(new Rect());
            }
        }
    }

    private void recycleTempRects(Stack<Rect> stack) {
        while (!stack.isEmpty()) {
            this.mTempRectStack.push(stack.pop());
        }
    }

    int[] findNearestArea(int i, int i2, int i3, int i4, int i5, int i6, View view, boolean z, int[] iArr, int[] iArr2, boolean[][] zArr) {
        int i7;
        int i8;
        int[] iArr3;
        Rect rect;
        boolean z2;
        int i9;
        int i10;
        Rect rect2;
        int i11;
        int i12;
        Rect rect3;
        int i13 = i3;
        int i14 = i4;
        int i15 = i5;
        int i16 = i6;
        View view2 = view;
        lazyInitTempRectStack();
        markCellsAsUnoccupiedForView(view2, zArr);
        int i17 = (int) (i - (((this.mCellWidth + this.mWidthGap) * (i15 - 1)) / 2.0f));
        int i18 = (int) (i2 - (((this.mCellHeight + this.mHeightGap) * (i16 - 1)) / 2.0f));
        int[] iArr4 = iArr != null ? iArr : new int[2];
        Rect rect4 = new Rect(-1, -1, -1, -1);
        Stack<Rect> stack = new Stack<>();
        int i19 = this.mCountX;
        int i20 = this.mCountY;
        if (i13 <= 0 || i14 <= 0 || i15 <= 0 || i16 <= 0 || i15 < i13 || i16 < i14) {
            return iArr4;
        }
        int i21 = 0;
        double d = Double.MAX_VALUE;
        while (i21 < i20 - (i14 - 1)) {
            int i22 = 0;
            while (i22 < i19 - (i13 - 1)) {
                if (z) {
                    int i23 = 0;
                    while (true) {
                        if (i23 < i13) {
                            iArr3 = iArr4;
                            int i24 = 0;
                            while (true) {
                                if (i24 >= i14) {
                                    i23++;
                                    iArr4 = iArr3;
                                } else if (zArr[i22 + i23][i21 + i24]) {
                                    i7 = i17;
                                    i8 = i18;
                                    rect2 = rect4;
                                    i9 = i19;
                                    i10 = i20;
                                } else {
                                    i24++;
                                }
                            }
                        } else {
                            iArr3 = iArr4;
                            boolean z3 = i13 >= i15;
                            boolean z4 = i14 >= i16;
                            boolean z5 = true;
                            while (true) {
                                if (z3 && z4) {
                                    break;
                                }
                                if (!z5 || z3) {
                                    i11 = i17;
                                    i12 = i18;
                                    rect3 = rect4;
                                    if (!z4) {
                                        for (int i25 = 0; i25 < i13; i25++) {
                                            int i26 = i21 + i14;
                                            if (i26 > i20 - 1 || zArr[i22 + i25][i26]) {
                                                z4 = true;
                                            }
                                        }
                                        if (!z4) {
                                            i14++;
                                        }
                                    }
                                } else {
                                    rect3 = rect4;
                                    int i27 = 0;
                                    while (i27 < i14) {
                                        int i28 = i18;
                                        int i29 = i22 + i13;
                                        int i30 = i17;
                                        if (i29 > i19 - 1 || zArr[i29][i21 + i27]) {
                                            z3 = true;
                                        }
                                        i27++;
                                        i18 = i28;
                                        i17 = i30;
                                    }
                                    i11 = i17;
                                    i12 = i18;
                                    if (!z3) {
                                        i13++;
                                    }
                                }
                                z3 |= i13 >= i15;
                                z4 |= i14 >= i16;
                                z5 = !z5;
                                rect4 = rect3;
                                i18 = i12;
                                i17 = i11;
                            }
                            i7 = i17;
                            i8 = i18;
                            rect = rect4;
                        }
                        i22++;
                        iArr4 = iArr3;
                        i13 = i3;
                        i14 = i4;
                        i15 = i5;
                        i16 = i6;
                        rect4 = rect2;
                        i19 = i9;
                        i18 = i8;
                        i17 = i7;
                        i20 = i10;
                    }
                } else {
                    i7 = i17;
                    i8 = i18;
                    iArr3 = iArr4;
                    rect = rect4;
                    i13 = -1;
                    i14 = -1;
                }
                int[] iArr5 = this.mTmpXY;
                cellToCenterPoint(i22, i21, iArr5);
                Rect rectPop = this.mTempRectStack.pop();
                rectPop.set(i22, i21, i22 + i13, i21 + i14);
                Iterator<Rect> it = stack.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z2 = false;
                        break;
                    }
                    if (it.next().contains(rectPop)) {
                        z2 = true;
                        break;
                    }
                }
                stack.push(rectPop);
                i9 = i19;
                i10 = i20;
                double dSqrt = Math.sqrt(Math.pow(iArr5[0] - i7, 2.0d) + Math.pow(iArr5[1] - i8, 2.0d));
                if (dSqrt > d || z2) {
                    rect2 = rect;
                    if (rectPop.contains(rect2)) {
                    }
                    i22++;
                    iArr4 = iArr3;
                    i13 = i3;
                    i14 = i4;
                    i15 = i5;
                    i16 = i6;
                    rect4 = rect2;
                    i19 = i9;
                    i18 = i8;
                    i17 = i7;
                    i20 = i10;
                } else {
                    rect2 = rect;
                }
                iArr3[0] = i22;
                iArr3[1] = i21;
                if (iArr2 != null) {
                    iArr2[0] = i13;
                    iArr2[1] = i14;
                }
                rect2.set(rectPop);
                d = dSqrt;
                i22++;
                iArr4 = iArr3;
                i13 = i3;
                i14 = i4;
                i15 = i5;
                i16 = i6;
                rect4 = rect2;
                i19 = i9;
                i18 = i8;
                i17 = i7;
                i20 = i10;
            }
            i21++;
            i13 = i3;
            i14 = i4;
            i15 = i5;
            i16 = i6;
            view2 = view;
        }
        int[] iArr6 = iArr4;
        markCellsAsOccupiedForView(view2, zArr);
        if (d == Double.MAX_VALUE) {
            iArr6[0] = -1;
            iArr6[1] = -1;
        }
        recycleTempRects(stack);
        return iArr6;
    }

    private int[] findNearestArea(int i, int i2, int i3, int i4, int[] iArr, boolean[][] zArr, boolean[][] zArr2, int[] iArr2) {
        int[] iArr3 = iArr2 != null ? iArr2 : new int[2];
        int i5 = Integer.MIN_VALUE;
        int i6 = this.mCountX;
        int i7 = this.mCountY;
        int i8 = 0;
        float f = Float.MAX_VALUE;
        while (true) {
            char c = 1;
            if (i8 >= i7 - (i4 - 1)) {
                break;
            }
            int i9 = 0;
            while (i9 < i6 - (i3 - 1)) {
                int i10 = 0;
                while (true) {
                    if (i10 >= i3) {
                        int i11 = i9 - i;
                        int i12 = i8 - i2;
                        float fSqrt = (float) Math.sqrt((i11 * i11) + (i12 * i12));
                        int[] iArr4 = this.mTmpPoint;
                        computeDirectionVector(i11, i12, iArr4);
                        int i13 = (iArr[0] * iArr4[0]) + (iArr[c] * iArr4[c]);
                        if (iArr[0] != iArr4[0] || iArr[0] == iArr4[0]) {
                        }
                        if (Float.compare(fSqrt, f) >= 0 && (Float.compare(fSqrt, f) != 0 || i13 <= i5)) {
                            break;
                        }
                        iArr3[0] = i9;
                        iArr3[1] = i8;
                        f = fSqrt;
                        i5 = i13;
                        break;
                    }
                    for (int i14 = 0; i14 < i4; i14++) {
                        if (zArr[i9 + i10][i8 + i14] && (zArr2 == null || zArr2[i10][i14])) {
                            break;
                        }
                    }
                    i10++;
                }
                i9++;
                c = 1;
            }
            i8++;
        }
        if (f == Float.MAX_VALUE) {
            iArr3[0] = -1;
            iArr3[1] = -1;
        }
        return iArr3;
    }

    private boolean addViewToTempLocation(View view, Rect rect, int[] iArr, ItemConfiguration itemConfiguration) {
        CellAndSpan cellAndSpan = itemConfiguration.map.get(view);
        markCellsForView(cellAndSpan.x, cellAndSpan.y, cellAndSpan.spanX, cellAndSpan.spanY, this.mTmpOccupied, false);
        boolean z = true;
        markCellsForRect(rect, this.mTmpOccupied, true);
        findNearestArea(cellAndSpan.x, cellAndSpan.y, cellAndSpan.spanX, cellAndSpan.spanY, iArr, this.mTmpOccupied, (boolean[][]) null, this.mTempLocation);
        int[] iArr2 = this.mTempLocation;
        if (iArr2[0] < 0 || iArr2[1] < 0) {
            z = false;
        } else {
            cellAndSpan.x = iArr2[0];
            cellAndSpan.y = this.mTempLocation[1];
        }
        markCellsForView(cellAndSpan.x, cellAndSpan.y, cellAndSpan.spanX, cellAndSpan.spanY, this.mTmpOccupied, true);
        return z;
    }

    private class ViewCluster {
        static final int BOTTOM = 3;
        static final int LEFT = 0;
        static final int RIGHT = 2;
        static final int TOP = 1;
        int[] bottomEdge;
        boolean bottomEdgeDirty;
        boolean boundingRectDirty;
        ItemConfiguration config;
        int[] leftEdge;
        boolean leftEdgeDirty;
        int[] rightEdge;
        boolean rightEdgeDirty;
        int[] topEdge;
        boolean topEdgeDirty;
        ArrayList<View> views;
        Rect boundingRect = new Rect();
        PositionComparator comparator = new PositionComparator();

        public ViewCluster(ArrayList<View> arrayList, ItemConfiguration itemConfiguration) {
            this.leftEdge = new int[CellLayout.this.mCountY];
            this.rightEdge = new int[CellLayout.this.mCountY];
            this.topEdge = new int[CellLayout.this.mCountX];
            this.bottomEdge = new int[CellLayout.this.mCountX];
            this.views = (ArrayList) arrayList.clone();
            this.config = itemConfiguration;
            resetEdges();
        }

        void resetEdges() {
            for (int i = 0; i < CellLayout.this.mCountX; i++) {
                this.topEdge[i] = -1;
                this.bottomEdge[i] = -1;
            }
            for (int i2 = 0; i2 < CellLayout.this.mCountY; i2++) {
                this.leftEdge[i2] = -1;
                this.rightEdge[i2] = -1;
            }
            this.leftEdgeDirty = true;
            this.rightEdgeDirty = true;
            this.bottomEdgeDirty = true;
            this.topEdgeDirty = true;
            this.boundingRectDirty = true;
        }

        void computeEdge(int i, int[] iArr) {
            int size = this.views.size();
            for (int i2 = 0; i2 < size; i2++) {
                CellAndSpan cellAndSpan = this.config.map.get(this.views.get(i2));
                if (i == 0) {
                    int i3 = cellAndSpan.x;
                    for (int i4 = cellAndSpan.y; i4 < cellAndSpan.y + cellAndSpan.spanY; i4++) {
                        if (i3 < iArr[i4] || iArr[i4] < 0) {
                            iArr[i4] = i3;
                        }
                    }
                } else if (i == 1) {
                    int i5 = cellAndSpan.y;
                    for (int i6 = cellAndSpan.x; i6 < cellAndSpan.x + cellAndSpan.spanX; i6++) {
                        if (i5 < iArr[i6] || iArr[i6] < 0) {
                            iArr[i6] = i5;
                        }
                    }
                } else if (i == 2) {
                    int i7 = cellAndSpan.x + cellAndSpan.spanX;
                    for (int i8 = cellAndSpan.y; i8 < cellAndSpan.y + cellAndSpan.spanY; i8++) {
                        if (i7 > iArr[i8]) {
                            iArr[i8] = i7;
                        }
                    }
                } else if (i == 3) {
                    int i9 = cellAndSpan.y + cellAndSpan.spanY;
                    for (int i10 = cellAndSpan.x; i10 < cellAndSpan.x + cellAndSpan.spanX; i10++) {
                        if (i9 > iArr[i10]) {
                            iArr[i10] = i9;
                        }
                    }
                }
            }
        }

        boolean isViewTouchingEdge(View view, int i) {
            CellAndSpan cellAndSpan = this.config.map.get(view);
            int[] edge = getEdge(i);
            if (i == 0) {
                for (int i2 = cellAndSpan.y; i2 < cellAndSpan.y + cellAndSpan.spanY; i2++) {
                    if (edge[i2] == cellAndSpan.x + cellAndSpan.spanX) {
                        return true;
                    }
                }
                return false;
            }
            if (i == 1) {
                for (int i3 = cellAndSpan.x; i3 < cellAndSpan.x + cellAndSpan.spanX; i3++) {
                    if (edge[i3] == cellAndSpan.y + cellAndSpan.spanY) {
                        return true;
                    }
                }
                return false;
            }
            if (i == 2) {
                for (int i4 = cellAndSpan.y; i4 < cellAndSpan.y + cellAndSpan.spanY; i4++) {
                    if (edge[i4] == cellAndSpan.x) {
                        return true;
                    }
                }
                return false;
            }
            if (i != 3) {
                return false;
            }
            for (int i5 = cellAndSpan.x; i5 < cellAndSpan.x + cellAndSpan.spanX; i5++) {
                if (edge[i5] == cellAndSpan.y) {
                    return true;
                }
            }
            return false;
        }

        void shift(int i, int i2) {
            Iterator<View> it = this.views.iterator();
            while (it.hasNext()) {
                CellAndSpan cellAndSpan = this.config.map.get(it.next());
                if (i == 0) {
                    cellAndSpan.x -= i2;
                } else if (i == 1) {
                    cellAndSpan.y -= i2;
                } else if (i == 2) {
                    cellAndSpan.x += i2;
                } else {
                    cellAndSpan.y += i2;
                }
            }
            resetEdges();
        }

        public void addView(View view) {
            this.views.add(view);
            resetEdges();
        }

        public Rect getBoundingRect() {
            if (this.boundingRectDirty) {
                boolean z = true;
                Iterator<View> it = this.views.iterator();
                while (it.hasNext()) {
                    CellAndSpan cellAndSpan = this.config.map.get(it.next());
                    if (z) {
                        this.boundingRect.set(cellAndSpan.x, cellAndSpan.y, cellAndSpan.x + cellAndSpan.spanX, cellAndSpan.y + cellAndSpan.spanY);
                        z = false;
                    } else {
                        this.boundingRect.union(cellAndSpan.x, cellAndSpan.y, cellAndSpan.x + cellAndSpan.spanX, cellAndSpan.y + cellAndSpan.spanY);
                    }
                }
            }
            return this.boundingRect;
        }

        public int[] getEdge(int i) {
            if (i == 0) {
                return getLeftEdge();
            }
            if (i == 1) {
                return getTopEdge();
            }
            if (i == 2) {
                return getRightEdge();
            }
            return getBottomEdge();
        }

        public int[] getLeftEdge() {
            if (this.leftEdgeDirty) {
                computeEdge(0, this.leftEdge);
            }
            return this.leftEdge;
        }

        public int[] getRightEdge() {
            if (this.rightEdgeDirty) {
                computeEdge(2, this.rightEdge);
            }
            return this.rightEdge;
        }

        public int[] getTopEdge() {
            if (this.topEdgeDirty) {
                computeEdge(1, this.topEdge);
            }
            return this.topEdge;
        }

        public int[] getBottomEdge() {
            if (this.bottomEdgeDirty) {
                computeEdge(3, this.bottomEdge);
            }
            return this.bottomEdge;
        }

        class PositionComparator implements Comparator<View> {
            int whichEdge = 0;

            PositionComparator() {
            }

            @Override // java.util.Comparator
            public int compare(View view, View view2) {
                CellAndSpan cellAndSpan = ViewCluster.this.config.map.get(view);
                CellAndSpan cellAndSpan2 = ViewCluster.this.config.map.get(view2);
                int i = this.whichEdge;
                if (i == 0) {
                    return (cellAndSpan2.x + cellAndSpan2.spanX) - (cellAndSpan.x + cellAndSpan.spanX);
                }
                if (i == 1) {
                    return (cellAndSpan2.y + cellAndSpan2.spanY) - (cellAndSpan.y + cellAndSpan.spanY);
                }
                if (i == 2) {
                    return cellAndSpan.x - cellAndSpan2.x;
                }
                return cellAndSpan.y - cellAndSpan2.y;
            }
        }

        public void sortConfigurationForEdgePush(int i) {
            this.comparator.whichEdge = i;
            Collections.sort(this.config.sortedViews, this.comparator);
        }
    }

    private boolean pushViewsToTempLocation(ArrayList<View> arrayList, Rect rect, int[] iArr, View view, ItemConfiguration itemConfiguration) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        ViewCluster viewCluster = new ViewCluster(arrayList, itemConfiguration);
        Rect boundingRect = viewCluster.getBoundingRect();
        boolean z = false;
        if (iArr[0] < 0) {
            i4 = boundingRect.right - rect.left;
            i5 = 0;
        } else {
            if (iArr[0] > 0) {
                i = 2;
                i2 = rect.right;
                i3 = boundingRect.left;
            } else if (iArr[1] < 0) {
                i4 = boundingRect.bottom - rect.top;
                i5 = 1;
            } else {
                i = 3;
                i2 = rect.bottom;
                i3 = boundingRect.top;
            }
            i4 = i2 - i3;
            i5 = i;
        }
        if (i4 <= 0) {
            return false;
        }
        Iterator<View> it = arrayList.iterator();
        while (it.hasNext()) {
            CellAndSpan cellAndSpan = itemConfiguration.map.get(it.next());
            markCellsForView(cellAndSpan.x, cellAndSpan.y, cellAndSpan.spanX, cellAndSpan.spanY, this.mTmpOccupied, false);
        }
        itemConfiguration.save();
        viewCluster.sortConfigurationForEdgePush(i5);
        boolean z2 = false;
        while (i4 > 0 && !z2) {
            for (View view2 : itemConfiguration.sortedViews) {
                if (!viewCluster.views.contains(view2) && view2 != view && viewCluster.isViewTouchingEdge(view2, i5)) {
                    if (!((LayoutParams) view2.getLayoutParams()).canReorder) {
                        z2 = true;
                        break;
                    }
                    viewCluster.addView(view2);
                    CellAndSpan cellAndSpan2 = itemConfiguration.map.get(view2);
                    markCellsForView(cellAndSpan2.x, cellAndSpan2.y, cellAndSpan2.spanX, cellAndSpan2.spanY, this.mTmpOccupied, false);
                }
            }
            i4--;
            viewCluster.shift(i5, 1);
        }
        Rect boundingRect2 = viewCluster.getBoundingRect();
        if (z2 || boundingRect2.left < 0 || boundingRect2.right > this.mCountX || boundingRect2.top < 0 || boundingRect2.bottom > this.mCountY) {
            itemConfiguration.restore();
        } else {
            z = true;
        }
        Iterator<View> it2 = viewCluster.views.iterator();
        while (it2.hasNext()) {
            CellAndSpan cellAndSpan3 = itemConfiguration.map.get(it2.next());
            markCellsForView(cellAndSpan3.x, cellAndSpan3.y, cellAndSpan3.spanX, cellAndSpan3.spanY, this.mTmpOccupied, true);
        }
        return z;
    }

    private boolean addViewsToTempLocation(ArrayList<View> arrayList, Rect rect, int[] iArr, View view, ItemConfiguration itemConfiguration) {
        boolean z = true;
        if (arrayList.size() == 0) {
            return true;
        }
        Iterator<View> it = arrayList.iterator();
        Rect rect2 = null;
        while (it.hasNext()) {
            CellAndSpan cellAndSpan = itemConfiguration.map.get(it.next());
            if (rect2 == null) {
                rect2 = new Rect(cellAndSpan.x, cellAndSpan.y, cellAndSpan.x + cellAndSpan.spanX, cellAndSpan.y + cellAndSpan.spanY);
            } else {
                rect2.union(cellAndSpan.x, cellAndSpan.y, cellAndSpan.x + cellAndSpan.spanX, cellAndSpan.y + cellAndSpan.spanY);
            }
        }
        Iterator<View> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            CellAndSpan cellAndSpan2 = itemConfiguration.map.get(it2.next());
            markCellsForView(cellAndSpan2.x, cellAndSpan2.y, cellAndSpan2.spanX, cellAndSpan2.spanY, this.mTmpOccupied, false);
        }
        boolean[][] zArr = (boolean[][]) Array.newInstance((Class<?>) boolean.class, rect2.width(), rect2.height());
        int i = rect2.top;
        int i2 = rect2.left;
        Iterator<View> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            CellAndSpan cellAndSpan3 = itemConfiguration.map.get(it3.next());
            markCellsForView(cellAndSpan3.x - i2, cellAndSpan3.y - i, cellAndSpan3.spanX, cellAndSpan3.spanY, zArr, true);
        }
        markCellsForRect(rect, this.mTmpOccupied, true);
        findNearestArea(rect2.left, rect2.top, rect2.width(), rect2.height(), iArr, this.mTmpOccupied, zArr, this.mTempLocation);
        int[] iArr2 = this.mTempLocation;
        if (iArr2[0] < 0 || iArr2[1] < 0) {
            z = false;
        } else {
            int i3 = iArr2[0] - rect2.left;
            int i4 = this.mTempLocation[1] - rect2.top;
            Iterator<View> it4 = arrayList.iterator();
            while (it4.hasNext()) {
                CellAndSpan cellAndSpan4 = itemConfiguration.map.get(it4.next());
                cellAndSpan4.x += i3;
                cellAndSpan4.y += i4;
            }
        }
        Iterator<View> it5 = arrayList.iterator();
        while (it5.hasNext()) {
            CellAndSpan cellAndSpan5 = itemConfiguration.map.get(it5.next());
            markCellsForView(cellAndSpan5.x, cellAndSpan5.y, cellAndSpan5.spanX, cellAndSpan5.spanY, this.mTmpOccupied, true);
        }
        return z;
    }

    private void markCellsForRect(Rect rect, boolean[][] zArr, boolean z) {
        markCellsForView(rect.left, rect.top, rect.width(), rect.height(), zArr, z);
    }

    private boolean attemptPushInDirection(ArrayList<View> arrayList, Rect rect, int[] iArr, View view, ItemConfiguration itemConfiguration) {
        if (Math.abs(iArr[0]) + Math.abs(iArr[1]) > 1) {
            int i = iArr[1];
            iArr[1] = 0;
            if (pushViewsToTempLocation(arrayList, rect, iArr, view, itemConfiguration)) {
                return true;
            }
            iArr[1] = i;
            int i2 = iArr[0];
            iArr[0] = 0;
            if (pushViewsToTempLocation(arrayList, rect, iArr, view, itemConfiguration)) {
                return true;
            }
            iArr[0] = i2;
            iArr[0] = iArr[0] * (-1);
            iArr[1] = iArr[1] * (-1);
            int i3 = iArr[1];
            iArr[1] = 0;
            if (pushViewsToTempLocation(arrayList, rect, iArr, view, itemConfiguration)) {
                return true;
            }
            iArr[1] = i3;
            int i4 = iArr[0];
            iArr[0] = 0;
            if (pushViewsToTempLocation(arrayList, rect, iArr, view, itemConfiguration)) {
                return true;
            }
            iArr[0] = i4;
            iArr[0] = iArr[0] * (-1);
            iArr[1] = iArr[1] * (-1);
        } else {
            if (pushViewsToTempLocation(arrayList, rect, iArr, view, itemConfiguration)) {
                return true;
            }
            iArr[0] = iArr[0] * (-1);
            iArr[1] = iArr[1] * (-1);
            if (pushViewsToTempLocation(arrayList, rect, iArr, view, itemConfiguration)) {
                return true;
            }
            iArr[0] = iArr[0] * (-1);
            iArr[1] = iArr[1] * (-1);
            int i5 = iArr[1];
            iArr[1] = iArr[0];
            iArr[0] = i5;
            if (pushViewsToTempLocation(arrayList, rect, iArr, view, itemConfiguration)) {
                return true;
            }
            iArr[0] = iArr[0] * (-1);
            iArr[1] = iArr[1] * (-1);
            if (pushViewsToTempLocation(arrayList, rect, iArr, view, itemConfiguration)) {
                return true;
            }
            iArr[0] = iArr[0] * (-1);
            iArr[1] = iArr[1] * (-1);
            int i6 = iArr[1];
            iArr[1] = iArr[0];
            iArr[0] = i6;
        }
        return false;
    }

    private boolean rearrangementExists(int i, int i2, int i3, int i4, int[] iArr, View view, ItemConfiguration itemConfiguration) {
        CellAndSpan cellAndSpan;
        if (i < 0 || i2 < 0) {
            return false;
        }
        this.mIntersectingViews.clear();
        int i5 = i3 + i;
        int i6 = i4 + i2;
        this.mOccupiedRect.set(i, i2, i5, i6);
        if (view != null && (cellAndSpan = itemConfiguration.map.get(view)) != null) {
            cellAndSpan.x = i;
            cellAndSpan.y = i2;
        }
        Rect rect = new Rect(i, i2, i5, i6);
        Rect rect2 = new Rect();
        for (View view2 : itemConfiguration.map.keySet()) {
            if (view2 != view) {
                CellAndSpan cellAndSpan2 = itemConfiguration.map.get(view2);
                LayoutParams layoutParams = (LayoutParams) view2.getLayoutParams();
                rect2.set(cellAndSpan2.x, cellAndSpan2.y, cellAndSpan2.x + cellAndSpan2.spanX, cellAndSpan2.y + cellAndSpan2.spanY);
                if (!Rect.intersects(rect, rect2)) {
                    continue;
                } else {
                    if (!layoutParams.canReorder) {
                        return false;
                    }
                    this.mIntersectingViews.add(view2);
                }
            }
        }
        if (attemptPushInDirection(this.mIntersectingViews, this.mOccupiedRect, iArr, view, itemConfiguration) || addViewsToTempLocation(this.mIntersectingViews, this.mOccupiedRect, iArr, view, itemConfiguration)) {
            return true;
        }
        Iterator<View> it = this.mIntersectingViews.iterator();
        while (it.hasNext()) {
            if (!addViewToTempLocation(it.next(), this.mOccupiedRect, iArr, itemConfiguration)) {
                return false;
            }
        }
        return true;
    }

    private void computeDirectionVector(float f, float f2, int[] iArr) {
        double dAtan = Math.atan(f2 / f);
        iArr[0] = 0;
        iArr[1] = 0;
        if (Math.abs(Math.cos(dAtan)) > 0.5d) {
            iArr[0] = (int) Math.signum(f);
        }
        if (Math.abs(Math.sin(dAtan)) > 0.5d) {
            iArr[1] = (int) Math.signum(f2);
        }
    }

    private void copyOccupiedArray(boolean[][] zArr) {
        for (int i = 0; i < this.mCountX; i++) {
            for (int i2 = 0; i2 < this.mCountY; i2++) {
                zArr[i][i2] = this.mOccupied[i][i2];
            }
        }
    }

    ItemConfiguration simpleSwap(int i, int i2, int i3, int i4, int i5, int i6, int[] iArr, View view, boolean z, ItemConfiguration itemConfiguration) {
        copyCurrentStateToSolution(itemConfiguration, false);
        copyOccupiedArray(this.mTmpOccupied);
        int[] iArrFindNearestArea = findNearestArea(i, i2, i5, i6, new int[2]);
        if (rearrangementExists(iArrFindNearestArea[0], iArrFindNearestArea[1], i5, i6, iArr, view, itemConfiguration)) {
            itemConfiguration.isSolution = true;
            itemConfiguration.dragViewX = iArrFindNearestArea[0];
            itemConfiguration.dragViewY = iArrFindNearestArea[1];
            itemConfiguration.dragViewSpanX = i5;
            itemConfiguration.dragViewSpanY = i6;
        } else {
            if (i5 > i3 && (i4 == i6 || z)) {
                return simpleSwap(i, i2, i3, i4, i5 - 1, i6, iArr, view, false, itemConfiguration);
            }
            if (i6 > i4) {
                return simpleSwap(i, i2, i3, i4, i5, i6 - 1, iArr, view, true, itemConfiguration);
            }
            itemConfiguration.isSolution = false;
        }
        return itemConfiguration;
    }

    private void copyCurrentStateToSolution(ItemConfiguration itemConfiguration, boolean z) {
        CellAndSpan cellAndSpan;
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (z) {
                cellAndSpan = new CellAndSpan(layoutParams.tmpCellX, layoutParams.tmpCellY, layoutParams.cellHSpan, layoutParams.cellVSpan);
            } else {
                cellAndSpan = new CellAndSpan(layoutParams.cellX, layoutParams.cellY, layoutParams.cellHSpan, layoutParams.cellVSpan);
            }
            itemConfiguration.add(childAt, cellAndSpan);
        }
    }

    private void copySolutionToTempState(ItemConfiguration itemConfiguration, View view) {
        for (int i = 0; i < this.mCountX; i++) {
            for (int i2 = 0; i2 < this.mCountY; i2++) {
                this.mTmpOccupied[i][i2] = false;
            }
        }
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i3);
            if (childAt != view) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                CellAndSpan cellAndSpan = itemConfiguration.map.get(childAt);
                if (cellAndSpan != null) {
                    layoutParams.tmpCellX = cellAndSpan.x;
                    layoutParams.tmpCellY = cellAndSpan.y;
                    layoutParams.cellHSpan = cellAndSpan.spanX;
                    layoutParams.cellVSpan = cellAndSpan.spanY;
                    markCellsForView(cellAndSpan.x, cellAndSpan.y, cellAndSpan.spanX, cellAndSpan.spanY, this.mTmpOccupied, true);
                }
            }
        }
        markCellsForView(itemConfiguration.dragViewX, itemConfiguration.dragViewY, itemConfiguration.dragViewSpanX, itemConfiguration.dragViewSpanY, this.mTmpOccupied, true);
    }

    private void animateItemsToSolution(ItemConfiguration itemConfiguration, View view, boolean z) {
        CellAndSpan cellAndSpan;
        boolean[][] zArr = this.mTmpOccupied;
        for (int i = 0; i < this.mCountX; i++) {
            for (int i2 = 0; i2 < this.mCountY; i2++) {
                zArr[i][i2] = false;
            }
        }
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i3);
            if (childAt != view && (cellAndSpan = itemConfiguration.map.get(childAt)) != null) {
                animateChildToPosition(childAt, cellAndSpan.x, cellAndSpan.y, REORDER_ANIMATION_DURATION, 0, false, false);
                markCellsForView(cellAndSpan.x, cellAndSpan.y, cellAndSpan.spanX, cellAndSpan.spanY, zArr, true);
            }
        }
        if (z) {
            markCellsForView(itemConfiguration.dragViewX, itemConfiguration.dragViewY, itemConfiguration.dragViewSpanX, itemConfiguration.dragViewSpanY, zArr, true);
        }
    }

    private void beginOrAdjustHintAnimations(ItemConfiguration itemConfiguration, View view, int i) {
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i2);
            if (childAt != view) {
                CellAndSpan cellAndSpan = itemConfiguration.map.get(childAt);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (cellAndSpan != null) {
                    new ReorderHintAnimation(childAt, layoutParams.cellX, layoutParams.cellY, cellAndSpan.x, cellAndSpan.y, cellAndSpan.spanX, cellAndSpan.spanY).animate();
                }
            }
        }
    }

    class ReorderHintAnimation {
        private static final int DURATION = 300;
        Animator a;
        View child;
        float finalDeltaX;
        float finalDeltaY;
        float finalScale;
        float initDeltaX;
        float initDeltaY;
        float initScale;

        public ReorderHintAnimation(View view, int i, int i2, int i3, int i4, int i5, int i6) {
            CellLayout.this.regionToCenterPoint(i, i2, i5, i6, CellLayout.this.mTmpPoint);
            int i7 = CellLayout.this.mTmpPoint[0];
            int i8 = CellLayout.this.mTmpPoint[1];
            CellLayout.this.regionToCenterPoint(i3, i4, i5, i6, CellLayout.this.mTmpPoint);
            int i9 = CellLayout.this.mTmpPoint[0] - i7;
            int i10 = CellLayout.this.mTmpPoint[1] - i8;
            this.finalDeltaX = 0.0f;
            this.finalDeltaY = 0.0f;
            if (i9 != i10 || i9 != 0) {
                if (i10 == 0) {
                    this.finalDeltaX = (-Math.signum(i9)) * CellLayout.this.mReorderHintAnimationMagnitude;
                } else if (i9 == 0) {
                    this.finalDeltaY = (-Math.signum(i10)) * CellLayout.this.mReorderHintAnimationMagnitude;
                } else {
                    float f = i10;
                    float f2 = i9;
                    double dAtan = Math.atan(f / f2);
                    this.finalDeltaX = (int) (((double) (-Math.signum(f2))) * Math.abs(Math.cos(dAtan) * ((double) CellLayout.this.mReorderHintAnimationMagnitude)));
                    this.finalDeltaY = (int) (((double) (-Math.signum(f))) * Math.abs(Math.sin(dAtan) * ((double) CellLayout.this.mReorderHintAnimationMagnitude)));
                }
            }
            this.initDeltaX = view.getTranslationX();
            this.initDeltaY = view.getTranslationY();
            this.finalScale = CellLayout.this.getChildrenScale() - (4.0f / view.getWidth());
            this.initScale = view.getScaleX();
            this.child = view;
        }

        void animate() {
            if (CellLayout.this.mShakeAnimators.containsKey(this.child)) {
                ((ReorderHintAnimation) CellLayout.this.mShakeAnimators.get(this.child)).cancel();
                CellLayout.this.mShakeAnimators.remove(this.child);
                if (this.finalDeltaX == 0.0f && this.finalDeltaY == 0.0f) {
                    completeAnimationImmediately();
                    return;
                }
            }
            if (this.finalDeltaX == 0.0f && this.finalDeltaY == 0.0f) {
                return;
            }
            ValueAnimator valueAnimatorOfFloat = LauncherAnimUtils.ofFloat(0.0f, 1.0f);
            this.a = valueAnimatorOfFloat;
            valueAnimatorOfFloat.setRepeatMode(2);
            valueAnimatorOfFloat.setRepeatCount(-1);
            valueAnimatorOfFloat.setDuration(300L);
            valueAnimatorOfFloat.setStartDelay((int) (Math.random() * 60.0d));
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.CellLayout.ReorderHintAnimation.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    float f = 1.0f - fFloatValue;
                    float f2 = (ReorderHintAnimation.this.finalDeltaX * fFloatValue) + (ReorderHintAnimation.this.initDeltaX * f);
                    float f3 = (ReorderHintAnimation.this.finalDeltaY * fFloatValue) + (ReorderHintAnimation.this.initDeltaY * f);
                    ReorderHintAnimation.this.child.setTranslationX(f2);
                    ReorderHintAnimation.this.child.setTranslationY(f3);
                    float f4 = (fFloatValue * ReorderHintAnimation.this.finalScale) + (f * ReorderHintAnimation.this.initScale);
                    ReorderHintAnimation.this.child.setScaleX(f4);
                    ReorderHintAnimation.this.child.setScaleY(f4);
                }
            });
            valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher2.CellLayout.ReorderHintAnimation.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                    ReorderHintAnimation.this.initDeltaX = 0.0f;
                    ReorderHintAnimation.this.initDeltaY = 0.0f;
                    ReorderHintAnimation reorderHintAnimation = ReorderHintAnimation.this;
                    reorderHintAnimation.initScale = CellLayout.this.getChildrenScale();
                }
            });
            CellLayout.this.mShakeAnimators.put(this.child, this);
            valueAnimatorOfFloat.start();
        }

        private void cancel() {
            Animator animator = this.a;
            if (animator != null) {
                animator.cancel();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void completeAnimationImmediately() {
            Animator animator = this.a;
            if (animator != null) {
                animator.cancel();
            }
            AnimatorSet animatorSetCreateAnimatorSet = LauncherAnimUtils.createAnimatorSet();
            this.a = animatorSetCreateAnimatorSet;
            animatorSetCreateAnimatorSet.playTogether(LauncherAnimUtils.ofFloat(this.child, "scaleX", CellLayout.this.getChildrenScale()), LauncherAnimUtils.ofFloat(this.child, "scaleY", CellLayout.this.getChildrenScale()), LauncherAnimUtils.ofFloat(this.child, "translationX", 0.0f), LauncherAnimUtils.ofFloat(this.child, "translationY", 0.0f));
            animatorSetCreateAnimatorSet.setDuration(150L);
            animatorSetCreateAnimatorSet.setInterpolator(new DecelerateInterpolator(1.5f));
            animatorSetCreateAnimatorSet.start();
        }
    }

    private void completeAndClearReorderHintAnimations() {
        Iterator<ReorderHintAnimation> it = this.mShakeAnimators.values().iterator();
        while (it.hasNext()) {
            it.next().completeAnimationImmediately();
        }
        this.mShakeAnimators.clear();
    }

    private void commitTempPlacement() {
        for (int i = 0; i < this.mCountX; i++) {
            for (int i2 = 0; i2 < this.mCountY; i2++) {
                this.mOccupied[i][i2] = this.mTmpOccupied[i][i2];
            }
        }
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            ItemInfo itemInfo = (ItemInfo) childAt.getTag();
            if (itemInfo != null) {
                if (itemInfo.cellX != layoutParams.tmpCellX || itemInfo.cellY != layoutParams.tmpCellY || itemInfo.spanX != layoutParams.cellHSpan || itemInfo.spanY != layoutParams.cellVSpan) {
                    itemInfo.requiresDbUpdate = true;
                }
                int i4 = layoutParams.tmpCellX;
                layoutParams.cellX = i4;
                itemInfo.cellX = i4;
                int i5 = layoutParams.tmpCellY;
                layoutParams.cellY = i5;
                itemInfo.cellY = i5;
                itemInfo.spanX = layoutParams.cellHSpan;
                itemInfo.spanY = layoutParams.cellVSpan;
            }
        }
        this.mLauncher.getWorkspace().updateItemLocationsInDatabase(this);
    }

    public void setUseTempCoords(boolean z) {
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ((LayoutParams) this.mShortcutsAndWidgets.getChildAt(i).getLayoutParams()).useTmpCoords = z;
        }
    }

    ItemConfiguration findConfigurationNoShuffle(int i, int i2, int i3, int i4, int i5, int i6, View view, ItemConfiguration itemConfiguration) {
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        findNearestVacantArea(i, i2, i3, i4, i5, i6, null, iArr, iArr2);
        if (iArr[0] >= 0 && iArr[1] >= 0) {
            copyCurrentStateToSolution(itemConfiguration, false);
            itemConfiguration.dragViewX = iArr[0];
            itemConfiguration.dragViewY = iArr[1];
            itemConfiguration.dragViewSpanX = iArr2[0];
            itemConfiguration.dragViewSpanY = iArr2[1];
            itemConfiguration.isSolution = true;
        } else {
            itemConfiguration.isSolution = false;
        }
        return itemConfiguration;
    }

    public void prepareChildForDrag(View view) {
        markCellsAsUnoccupiedForView(view);
    }

    private void getDirectionVectorForDrop(int i, int i2, int i3, int i4, View view, int[] iArr) {
        int[] iArr2 = new int[2];
        findNearestArea(i, i2, i3, i4, iArr2);
        Rect rect = new Rect();
        regionToRect(iArr2[0], iArr2[1], i3, i4, rect);
        rect.offset(i - rect.centerX(), i2 - rect.centerY());
        Rect rect2 = new Rect();
        getViewsIntersectingRegion(iArr2[0], iArr2[1], i3, i4, view, rect2, this.mIntersectingViews);
        int iWidth = rect2.width();
        int iHeight = rect2.height();
        regionToRect(rect2.left, rect2.top, rect2.width(), rect2.height(), rect2);
        int iCenterX = (rect2.centerX() - i) / i3;
        int iCenterY = (rect2.centerY() - i2) / i4;
        int i5 = this.mCountX;
        if (iWidth == i5 || i3 == i5) {
            iCenterX = 0;
        }
        int i6 = this.mCountY;
        if (iHeight == i6 || i4 == i6) {
            iCenterY = 0;
        }
        if (iCenterX == 0 && iCenterY == 0) {
            iArr[0] = 1;
            iArr[1] = 0;
        } else {
            computeDirectionVector(iCenterX, iCenterY, iArr);
        }
    }

    private void getViewsIntersectingRegion(int i, int i2, int i3, int i4, View view, Rect rect, ArrayList<View> arrayList) {
        if (rect != null) {
            rect.set(i, i2, i + i3, i2 + i4);
        }
        arrayList.clear();
        Rect rect2 = new Rect(i, i2, i3 + i, i4 + i2);
        Rect rect3 = new Rect();
        int childCount = this.mShortcutsAndWidgets.getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = this.mShortcutsAndWidgets.getChildAt(i5);
            if (childAt != view) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                rect3.set(layoutParams.cellX, layoutParams.cellY, layoutParams.cellX + layoutParams.cellHSpan, layoutParams.cellY + layoutParams.cellVSpan);
                if (Rect.intersects(rect2, rect3)) {
                    this.mIntersectingViews.add(childAt);
                    if (rect != null) {
                        rect.union(rect3);
                    }
                }
            }
        }
    }

    boolean isNearestDropLocationOccupied(int i, int i2, int i3, int i4, View view, int[] iArr) {
        int[] iArrFindNearestArea = findNearestArea(i, i2, i3, i4, iArr);
        getViewsIntersectingRegion(iArrFindNearestArea[0], iArrFindNearestArea[1], i3, i4, view, null, this.mIntersectingViews);
        return !this.mIntersectingViews.isEmpty();
    }

    void revertTempState() {
        if (isItemPlacementDirty()) {
            int childCount = this.mShortcutsAndWidgets.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.mShortcutsAndWidgets.getChildAt(i);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.tmpCellX != layoutParams.cellX || layoutParams.tmpCellY != layoutParams.cellY) {
                    layoutParams.tmpCellX = layoutParams.cellX;
                    layoutParams.tmpCellY = layoutParams.cellY;
                    animateChildToPosition(childAt, layoutParams.cellX, layoutParams.cellY, REORDER_ANIMATION_DURATION, 0, false, false);
                }
            }
            completeAndClearReorderHintAnimations();
            setItemPlacementDirty(false);
        }
    }

    boolean createAreaForResize(int i, int i2, int i3, int i4, View view, int[] iArr, boolean z) {
        int[] iArr2 = new int[2];
        regionToCenterPoint(i, i2, i3, i4, iArr2);
        ItemConfiguration itemConfigurationSimpleSwap = simpleSwap(iArr2[0], iArr2[1], i3, i4, i3, i4, iArr, view, true, new ItemConfiguration());
        setUseTempCoords(true);
        if (itemConfigurationSimpleSwap != null && itemConfigurationSimpleSwap.isSolution) {
            copySolutionToTempState(itemConfigurationSimpleSwap, view);
            setItemPlacementDirty(true);
            animateItemsToSolution(itemConfigurationSimpleSwap, view, z);
            if (z) {
                commitTempPlacement();
                completeAndClearReorderHintAnimations();
                setItemPlacementDirty(false);
            } else {
                beginOrAdjustHintAnimations(itemConfigurationSimpleSwap, view, REORDER_ANIMATION_DURATION);
            }
            this.mShortcutsAndWidgets.requestLayout();
        }
        return itemConfigurationSimpleSwap.isSolution;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0044  */
    int[] createArea(int i, int i2, int i3, int i4, int i5, int i6, View view, int[] iArr, int[] iArr2, int i7) {
        boolean z;
        boolean z2;
        int[] iArrFindNearestArea = findNearestArea(i, i2, i5, i6, iArr);
        int[] iArr3 = iArr2 == null ? new int[2] : iArr2;
        if (i7 == 1 || i7 == 2 || i7 == 3) {
            int[] iArr4 = this.mPreviousReorderDirection;
            if (iArr4[0] != INVALID_DIRECTION) {
                int[] iArr5 = this.mDirectionVector;
                iArr5[0] = iArr4[0];
                iArr5[1] = iArr4[1];
                if (i7 == 1 || i7 == 2) {
                    iArr4[0] = INVALID_DIRECTION;
                    iArr4[1] = INVALID_DIRECTION;
                }
            } else {
                getDirectionVectorForDrop(i, i2, i5, i6, view, this.mDirectionVector);
                int[] iArr6 = this.mPreviousReorderDirection;
                int[] iArr7 = this.mDirectionVector;
                iArr6[0] = iArr7[0];
                iArr6[1] = iArr7[1];
            }
        } else {
            getDirectionVectorForDrop(i, i2, i5, i6, view, this.mDirectionVector);
            int[] iArr8 = this.mPreviousReorderDirection;
            int[] iArr9 = this.mDirectionVector;
            iArr8[0] = iArr9[0];
            iArr8[1] = iArr9[1];
        }
        ItemConfiguration itemConfigurationSimpleSwap = simpleSwap(i, i2, i3, i4, i5, i6, this.mDirectionVector, view, true, new ItemConfiguration());
        ItemConfiguration itemConfigurationFindConfigurationNoShuffle = findConfigurationNoShuffle(i, i2, i3, i4, i5, i6, view, new ItemConfiguration());
        if (itemConfigurationSimpleSwap.isSolution && itemConfigurationSimpleSwap.area() >= itemConfigurationFindConfigurationNoShuffle.area()) {
            itemConfigurationFindConfigurationNoShuffle = itemConfigurationSimpleSwap;
        } else if (!itemConfigurationFindConfigurationNoShuffle.isSolution) {
            itemConfigurationFindConfigurationNoShuffle = null;
        }
        setUseTempCoords(true);
        if (itemConfigurationFindConfigurationNoShuffle != null) {
            z = false;
            iArrFindNearestArea[0] = itemConfigurationFindConfigurationNoShuffle.dragViewX;
            iArrFindNearestArea[1] = itemConfigurationFindConfigurationNoShuffle.dragViewY;
            iArr3[0] = itemConfigurationFindConfigurationNoShuffle.dragViewSpanX;
            iArr3[1] = itemConfigurationFindConfigurationNoShuffle.dragViewSpanY;
            if (i7 == 0 || i7 == 1 || i7 == 2) {
                copySolutionToTempState(itemConfigurationFindConfigurationNoShuffle, view);
                setItemPlacementDirty(true);
                animateItemsToSolution(itemConfigurationFindConfigurationNoShuffle, view, i7 == 1);
                if (i7 == 1 || i7 == 2) {
                    commitTempPlacement();
                    completeAndClearReorderHintAnimations();
                    setItemPlacementDirty(false);
                } else {
                    beginOrAdjustHintAnimations(itemConfigurationFindConfigurationNoShuffle, view, REORDER_ANIMATION_DURATION);
                }
            }
            z2 = true;
        } else {
            z = false;
            iArr3[1] = -1;
            iArr3[0] = -1;
            iArrFindNearestArea[1] = -1;
            iArrFindNearestArea[0] = -1;
            z2 = false;
        }
        if (i7 == 1 || !z2) {
            setUseTempCoords(z);
        }
        this.mShortcutsAndWidgets.requestLayout();
        return iArrFindNearestArea;
    }

    void setItemPlacementDirty(boolean z) {
        this.mItemPlacementDirty = z;
    }

    boolean isItemPlacementDirty() {
        return this.mItemPlacementDirty;
    }

    private class ItemConfiguration {
        int dragViewSpanX;
        int dragViewSpanY;
        int dragViewX;
        int dragViewY;
        boolean isSolution;
        HashMap<View, CellAndSpan> map;
        private HashMap<View, CellAndSpan> savedMap;
        ArrayList<View> sortedViews;

        private ItemConfiguration() {
            this.map = new HashMap<>();
            this.savedMap = new HashMap<>();
            this.sortedViews = new ArrayList<>();
            this.isSolution = false;
        }

        void save() {
            for (View view : this.map.keySet()) {
                this.map.get(view).copy(this.savedMap.get(view));
            }
        }

        void restore() {
            for (View view : this.savedMap.keySet()) {
                this.savedMap.get(view).copy(this.map.get(view));
            }
        }

        void add(View view, CellAndSpan cellAndSpan) {
            this.map.put(view, cellAndSpan);
            this.savedMap.put(view, CellLayout.this.new CellAndSpan());
            this.sortedViews.add(view);
        }

        int area() {
            return this.dragViewSpanX * this.dragViewSpanY;
        }
    }

    private class CellAndSpan {
        int spanX;
        int spanY;
        int x;
        int y;

        public CellAndSpan() {
        }

        public void copy(CellAndSpan cellAndSpan) {
            cellAndSpan.x = this.x;
            cellAndSpan.y = this.y;
            cellAndSpan.spanX = this.spanX;
            cellAndSpan.spanY = this.spanY;
        }

        public CellAndSpan(int i, int i2, int i3, int i4) {
            this.x = i;
            this.y = i2;
            this.spanX = i3;
            this.spanY = i4;
        }

        public String toString() {
            return "(" + this.x + ", " + this.y + ": " + this.spanX + ", " + this.spanY + ")";
        }
    }

    int[] findNearestVacantArea(int i, int i2, int i3, int i4, View view, int[] iArr) {
        return findNearestArea(i, i2, i3, i4, view, true, iArr);
    }

    int[] findNearestVacantArea(int i, int i2, int i3, int i4, int i5, int i6, View view, int[] iArr, int[] iArr2) {
        return findNearestArea(i, i2, i3, i4, i5, i6, view, true, iArr, iArr2, this.mOccupied);
    }

    int[] findNearestArea(int i, int i2, int i3, int i4, int[] iArr) {
        return findNearestArea(i, i2, i3, i4, null, false, iArr);
    }

    boolean existsEmptyCell() {
        return findCellForSpan(null, 1, 1);
    }

    boolean findCellForSpan(int[] iArr, int i, int i2) {
        return findCellForSpanThatIntersectsIgnoring(iArr, i, i2, -1, -1, null, this.mOccupied);
    }

    boolean findCellForSpanIgnoring(int[] iArr, int i, int i2, View view) {
        return findCellForSpanThatIntersectsIgnoring(iArr, i, i2, -1, -1, view, this.mOccupied);
    }

    boolean findCellForSpanThatIntersects(int[] iArr, int i, int i2, int i3, int i4) {
        return findCellForSpanThatIntersectsIgnoring(iArr, i, i2, i3, i4, null, this.mOccupied);
    }

    boolean findCellForSpanThatIntersectsIgnoring(int[] iArr, int i, int i2, int i3, int i4, View view, boolean[][] zArr) {
        boolean z;
        int i5;
        markCellsAsUnoccupiedForView(view, zArr);
        int i6 = i3;
        int i7 = i4;
        boolean z2 = false;
        while (true) {
            int iMax = i6 >= 0 ? Math.max(0, i6 - (i - 1)) : 0;
            int i8 = i - 1;
            int iMin = this.mCountX - i8;
            boolean z3 = true;
            if (i6 >= 0) {
                iMin = Math.min(iMin, i8 + i6 + (i == 1 ? 1 : 0));
            }
            int iMax2 = i7 >= 0 ? Math.max(0, i7 - (i2 - 1)) : 0;
            int i9 = i2 - 1;
            int iMin2 = this.mCountY - i9;
            if (i7 >= 0) {
                iMin2 = Math.min(iMin2, i9 + i7 + (i2 == 1 ? 1 : 0));
            }
            while (iMax2 < iMin2 && !z2) {
                int i10 = iMax;
                while (true) {
                    if (i10 >= iMin) {
                        z = z3;
                        break;
                    }
                    int i11 = 0;
                    while (true) {
                        if (i11 >= i) {
                            if (iArr != null) {
                                iArr[0] = i10;
                                z = true;
                                iArr[1] = iMax2;
                            } else {
                                z = true;
                            }
                            z2 = z;
                            break;
                        }
                        int i12 = 0;
                        while (true) {
                            if (i12 < i2) {
                                i5 = i10 + i11;
                                if (zArr[i5][iMax2 + i12]) {
                                    break;
                                }
                                i12++;
                            } else {
                                i11++;
                            }
                        }
                    }
                    i10 = i5 + 1;
                    z3 = true;
                }
                iMax2++;
                z3 = z;
            }
            if (i6 == -1 && i7 == -1) {
                markCellsAsOccupiedForView(view, zArr);
                return z2;
            }
            i6 = -1;
            i7 = -1;
        }
    }

    void onDragEnter() {
        if (L.DEBUG_DRAG) {
            L.d(TAG, "onDragEnter: mDragging = " + this.mDragging);
        }
        this.mDragEnforcer.onDragEnter();
        this.mDragging = true;
    }

    void onDragExit() {
        if (L.DEBUG_DRAG) {
            L.d(TAG, "onDragExit: mDragging = " + this.mDragging);
        }
        this.mDragEnforcer.onDragExit();
        if (this.mDragging) {
            this.mDragging = false;
        }
        int[] iArr = this.mDragCell;
        iArr[1] = -1;
        iArr[0] = -1;
        this.mDragOutlineAnims[this.mDragOutlineCurrent].animateOut();
        this.mDragOutlineCurrent = (this.mDragOutlineCurrent + 1) % this.mDragOutlineAnims.length;
        revertTempState();
        setIsDragOverlapping(false);
    }

    void onDropChild(View view) {
        if (L.DEBUG_DRAG) {
            L.d(TAG, "onDropChild: child = " + view);
        }
        if (view != null) {
            ((LayoutParams) view.getLayoutParams()).dropped = true;
            view.requestLayout();
        }
    }

    public void cellToRect(int i, int i2, int i3, int i4, Rect rect) {
        int i5 = this.mCellWidth;
        int i6 = this.mCellHeight;
        int i7 = this.mWidthGap;
        int i8 = this.mHeightGap;
        int paddingLeft = getPaddingLeft() + (i * (i5 + i7));
        int paddingTop = getPaddingTop() + (i2 * (i6 + i8));
        rect.set(paddingLeft, paddingTop, (i3 * i5) + ((i3 - 1) * i7) + paddingLeft, (i4 * i6) + ((i4 - 1) * i8) + paddingTop);
    }

    public int[] rectToCell(int i, int i2, int[] iArr) {
        return rectToCell(getResources(), i, i2, iArr);
    }

    public static int[] rectToCell(Resources resources, int i, int i2, int[] iArr) {
        float fMin = Math.min(resources.getDimensionPixelSize(R.dimen.workspace_cell_width), resources.getDimensionPixelSize(R.dimen.workspace_cell_height));
        int iCeil = (int) Math.ceil(i / fMin);
        int iCeil2 = (int) Math.ceil(i2 / fMin);
        if (iArr == null) {
            return new int[]{iCeil, iCeil2};
        }
        iArr[0] = iCeil;
        iArr[1] = iCeil2;
        return iArr;
    }

    public int[] cellSpansToSize(int i, int i2) {
        return new int[]{(this.mCellWidth * i) + ((i - 1) * this.mWidthGap), (this.mCellHeight * i2) + ((i2 - 1) * this.mHeightGap)};
    }

    public void calculateSpans(ItemInfo itemInfo) {
        int i;
        int i2;
        if (itemInfo instanceof LauncherAppWidgetInfo) {
            LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo;
            i = launcherAppWidgetInfo.minWidth;
            i2 = launcherAppWidgetInfo.minHeight;
        } else if (itemInfo instanceof PendingAddWidgetInfo) {
            PendingAddWidgetInfo pendingAddWidgetInfo = (PendingAddWidgetInfo) itemInfo;
            i = pendingAddWidgetInfo.minWidth;
            i2 = pendingAddWidgetInfo.minHeight;
        } else {
            itemInfo.spanY = 1;
            itemInfo.spanX = 1;
            return;
        }
        int[] iArrRectToCell = rectToCell(i, i2, null);
        itemInfo.spanX = iArrRectToCell[0];
        itemInfo.spanY = iArrRectToCell[1];
    }

    public boolean getVacantCell(int[] iArr, int i, int i2) {
        return findVacantCell(iArr, i, i2, this.mCountX, this.mCountY, this.mOccupied);
    }

    static boolean findVacantCell(int[] iArr, int i, int i2, int i3, int i4, boolean[][] zArr) {
        for (int i5 = 0; i5 < i4; i5++) {
            for (int i6 = 0; i6 < i3; i6++) {
                boolean z = !zArr[i6][i5];
                for (int i7 = i6; i7 < (i6 + i) - 1 && i6 < i3; i7++) {
                    for (int i8 = i5; i8 < (i5 + i2) - 1 && i5 < i4; i8++) {
                        z = z && !zArr[i7][i8];
                        if (!z) {
                            break;
                        }
                    }
                }
                if (z) {
                    iArr[0] = i6;
                    iArr[1] = i5;
                    return true;
                }
            }
        }
        return false;
    }

    private void clearOccupiedCells() {
        for (int i = 0; i < this.mCountX; i++) {
            for (int i2 = 0; i2 < this.mCountY; i2++) {
                this.mOccupied[i][i2] = false;
            }
        }
    }

    public void onMove(View view, int i, int i2, int i3, int i4) {
        markCellsAsUnoccupiedForView(view);
        markCellsForView(i, i2, i3, i4, this.mOccupied, true);
    }

    public void markCellsAsOccupiedForView(View view) {
        markCellsAsOccupiedForView(view, this.mOccupied);
    }

    public void markCellsAsOccupiedForView(View view, boolean[][] zArr) {
        if (view == null || view.getParent() != this.mShortcutsAndWidgets) {
            return;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        markCellsForView(layoutParams.cellX, layoutParams.cellY, layoutParams.cellHSpan, layoutParams.cellVSpan, zArr, true);
    }

    public void markCellsAsUnoccupiedForView(View view) {
        markCellsAsUnoccupiedForView(view, this.mOccupied);
    }

    public void markCellsAsUnoccupiedForView(View view, boolean[][] zArr) {
        if (view == null || view.getParent() != this.mShortcutsAndWidgets) {
            return;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        markCellsForView(layoutParams.cellX, layoutParams.cellY, layoutParams.cellHSpan, layoutParams.cellVSpan, zArr, false);
    }

    private void markCellsForView(int i, int i2, int i3, int i4, boolean[][] zArr, boolean z) {
        if (i < 0 || i2 < 0) {
            return;
        }
        for (int i5 = i; i5 < i + i3 && i5 < this.mCountX; i5++) {
            for (int i6 = i2; i6 < i2 + i4 && i6 < this.mCountY; i6++) {
                zArr[i5][i6] = z;
            }
        }
    }

    public int getDesiredWidth() {
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int i = this.mCountX;
        return paddingLeft + (this.mCellWidth * i) + (Math.max(i - 1, 0) * this.mWidthGap);
    }

    public int getDesiredHeight() {
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int i = this.mCountY;
        return paddingTop + (this.mCellHeight * i) + (Math.max(i - 1, 0) * this.mHeightGap);
    }

    public boolean isOccupied(int i, int i2) {
        if (i < this.mCountX && i2 < this.mCountY) {
            return this.mOccupied[i][i2];
        }
        throw new RuntimeException("Position exceeds the bound of this CellLayout");
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

    public static class CellLayoutAnimationController extends LayoutAnimationController {
        public CellLayoutAnimationController(Animation animation, float f) {
            super(animation, f);
        }

        @Override // android.view.animation.LayoutAnimationController
        protected long getDelayForView(View view) {
            return (int) (Math.random() * 150.0d);
        }
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public boolean canReorder;

        @ViewDebug.ExportedProperty
        public int cellHSpan;

        @ViewDebug.ExportedProperty
        public int cellVSpan;

        @ViewDebug.ExportedProperty
        public int cellX;

        @ViewDebug.ExportedProperty
        public int cellY;
        boolean dropped;
        public boolean isLockedToGrid;
        public int tmpCellX;
        public int tmpCellY;
        public boolean useTmpCoords;

        @ViewDebug.ExportedProperty
        int x;

        @ViewDebug.ExportedProperty
        int y;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.isLockedToGrid = true;
            this.canReorder = true;
            this.cellHSpan = 1;
            this.cellVSpan = 1;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.isLockedToGrid = true;
            this.canReorder = true;
            this.cellHSpan = 1;
            this.cellVSpan = 1;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.isLockedToGrid = true;
            this.canReorder = true;
            this.cellX = layoutParams.cellX;
            this.cellY = layoutParams.cellY;
            this.cellHSpan = layoutParams.cellHSpan;
            this.cellVSpan = layoutParams.cellVSpan;
        }

        public LayoutParams(int i, int i2, int i3, int i4) {
            super(-1, -1);
            this.isLockedToGrid = true;
            this.canReorder = true;
            this.cellX = i;
            this.cellY = i2;
            this.cellHSpan = i3;
            this.cellVSpan = i4;
        }

        public void setup(int i, int i2, int i3, int i4) {
            if (this.isLockedToGrid) {
                int i5 = this.cellHSpan;
                int i6 = this.cellVSpan;
                boolean z = this.useTmpCoords;
                int i7 = z ? this.tmpCellX : this.cellX;
                int i8 = z ? this.tmpCellY : this.cellY;
                this.width = (((i5 * i) + ((i5 - 1) * i3)) - this.leftMargin) - this.rightMargin;
                this.height = (((i6 * i2) + ((i6 - 1) * i4)) - this.topMargin) - this.bottomMargin;
                this.x = (i7 * (i + i3)) + this.leftMargin;
                this.y = (i8 * (i2 + i4)) + this.topMargin;
            }
        }

        public String toString() {
            return "(" + this.cellX + ", " + this.cellY + ")";
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

    static final class CellInfo {
        View cell;
        int cellX = -1;
        int cellY = -1;
        long container;
        int screen;
        int spanX;
        int spanY;

        CellInfo() {
        }

        public String toString() {
            StringBuilder sbAppend = new StringBuilder().append("Cell[view=");
            View view = this.cell;
            return sbAppend.append(view == null ? "null" : view.getClass()).append(", x=").append(this.cellX).append(", y=").append(this.cellY).append("]").toString();
        }
    }

    public boolean lastDownOnOccupiedCell() {
        return this.mLastDownOnOccupiedCell;
    }

    public void requestChildLayout() {
        if (L.DEBUG) {
            L.d(TAG, "requestChildLayout: mShortcutsAndWidgets = " + this.mShortcutsAndWidgets);
        }
        ShortcutAndWidgetContainer shortcutAndWidgetContainer = this.mShortcutsAndWidgets;
        if (shortcutAndWidgetContainer != null) {
            shortcutAndWidgetContainer.requestLayout();
        }
    }
}
