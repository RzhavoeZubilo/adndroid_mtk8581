package com.android.launcher2;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.app.WallpaperManager;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.TextView;
import com.android.launcher2.uitl.L;
import com.carocean.navicar.util.ZHTDOEMManager;
import com.yecon.launcher1.R;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class Workspace extends SmoothPagedView implements DropTarget, DragSource, DragScroller, View.OnTouchListener, DragController.DragListener, Launcher.LauncherTransitionable, ViewGroup.OnHierarchyChangeListener {
    private static final int ADJACENT_SCREEN_DROP_DURATION = 300;
    public static final int ANIMATE_INTO_POSITION_AND_DISAPPEAR = 0;
    public static final int ANIMATE_INTO_POSITION_AND_REMAIN = 1;
    public static final int ANIMATE_INTO_POSITION_AND_RESIZE = 2;
    private static final int BACKGROUND_FADE_OUT_DURATION = 350;
    public static final int CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION = 4;
    private static final int CHILDREN_OUTLINE_FADE_IN_DURATION = 100;
    private static final int CHILDREN_OUTLINE_FADE_OUT_DELAY = 0;
    private static final int CHILDREN_OUTLINE_FADE_OUT_DURATION = 375;
    public static final int COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION = 3;
    private static final long CUSTOM_CONTENT_SCREEN_ID = -301;
    private static final int DEFAULT_CELL_COUNT_X = 5;
    private static final int DEFAULT_CELL_COUNT_Y = 3;
    private static final String DEFAULT_WALLPAPER = "default_wallpaper";
    public static final int DRAG_BITMAP_PADDING = 2;
    private static final int DRAG_MODE_ADD_TO_FOLDER = 2;
    private static final int DRAG_MODE_CREATE_FOLDER = 1;
    private static final int DRAG_MODE_NONE = 0;
    private static final int DRAG_MODE_REORDER = 3;
    private static final long EXTRA_EMPTY_SCREEN_ID = -201;
    private static final int FLING_THRESHOLD_VELOCITY = 500;
    private static final int FOLDER_CREATION_TIMEOUT = 0;
    static final float MAX_SWIPE_ANGLE = 1.0471976f;
    private static final int REORDER_TIMEOUT = 250;
    static final float START_DAMPING_TOUCH_SLOP_ANGLE = 0.5235988f;
    private static final String TAG = "Workspace";
    static final float TOUCH_SLOP_DAMPING_FACTOR = 4.0f;
    private static final float WALLPAPER_SCREENS_SPAN = 2.0f;
    private static final float WORKSPACE_OVERSCROLL_ROTATION = 24.0f;
    static Rect mLandscapeCellLayoutMetrics;
    static Rect mPortraitCellLayoutMetrics;
    private boolean mAddToExistingFolderOnDrop;
    boolean mAnimatingViewIntoPlace;
    private Drawable mBackground;
    private float mBackgroundAlpha;
    private ValueAnimator mBackgroundFadeInAnimation;
    private ValueAnimator mBackgroundFadeOutAnimation;
    private final Runnable mBindPages;
    private int mCameraDistance;
    boolean mChildrenLayersEnabled;
    private float mChildrenOutlineAlpha;
    private ObjectAnimator mChildrenOutlineFadeInAnimation;
    private ObjectAnimator mChildrenOutlineFadeOutAnimation;
    private boolean mCreateUserFolderOnDrop;
    private float mCurrentRotationY;
    private float mCurrentScaleX;
    private float mCurrentScaleY;
    private float mCurrentTranslationX;
    private float mCurrentTranslationY;
    private int mDefaultPage;
    private Runnable mDelayedResizeRunnable;
    private Runnable mDelayedSnapToPageRunnable;
    private Point mDisplaySize;
    private DragController mDragController;
    private DropTarget.DragEnforcer mDragEnforcer;
    private FolderIcon.FolderRingAnimator mDragFolderRingAnimator;
    private CellLayout.CellInfo mDragInfo;
    private int mDragMode;
    private Bitmap mDragOutline;
    private FolderIcon mDragOverFolderIcon;
    private int mDragOverX;
    private int mDragOverY;
    private CellLayout mDragOverlappingLayout;
    private CellLayout mDragTargetLayout;
    private float[] mDragViewVisualCenter;
    boolean mDrawBackground;
    private CellLayout mDropToLayout;
    private final Alarm mFolderCreationAlarm;
    private IconCache mIconCache;
    private boolean mInScrollArea;
    boolean mIsDragOccuring;
    private boolean mIsStaticWallpaper;
    private boolean mIsSwitchingState;
    private int mLastReorderX;
    private int mLastReorderY;
    private Launcher mLauncher;
    private float mMaxDistanceForFolderCreation;
    private float[] mNewAlphas;
    private float[] mNewBackgroundAlphas;
    private float[] mNewRotationYs;
    private float[] mNewScaleXs;
    private float[] mNewScaleYs;
    private float[] mNewTranslationXs;
    private float[] mNewTranslationYs;
    private float[] mOldAlphas;
    private float[] mOldBackgroundAlphas;
    private float[] mOldScaleXs;
    private float[] mOldScaleYs;
    private float[] mOldTranslationXs;
    private float[] mOldTranslationYs;
    private int mOriginalPageSpacing;
    private final HolographicOutlineHelper mOutlineHelper;
    private float mOverScrollMaxBackgroundAlpha;
    private float mOverscrollFade;
    private boolean mOverscrollTransformsSet;
    private final Alarm mReorderAlarm;
    private final ArrayList<Integer> mRestoredPages;
    private float mSavedRotationY;
    private int mSavedScrollX;
    private SparseArray<Parcelable> mSavedStates;
    private float mSavedTranslationX;
    private ArrayList<Long> mScreenOrder;
    private SpringLoadedDragController mSpringLoadedDragController;
    private int mSpringLoadedPageSpacing;
    private float mSpringLoadedShrinkFactor;
    private State mState;
    private int[] mTargetCell;
    private int[] mTempCell;
    private float[] mTempCellLayoutCenterCoordinates;
    private float[] mTempDragBottomRightCoordinates;
    private float[] mTempDragCoordinates;
    private int[] mTempEstimate;
    private Matrix mTempInverseMatrix;
    private final Rect mTempRect;
    private int[] mTempVisiblePagesRange;
    private final int[] mTempXY;
    private float mTransitionProgress;
    boolean mUpdateWallpaperOffsetImmediately;
    int mWallpaperHeight;
    private final WallpaperManager mWallpaperManager;
    WallpaperOffsetInterpolator mWallpaperOffset;
    private float mWallpaperScrollRatio;
    private int mWallpaperTravelWidth;
    int mWallpaperWidth;
    private IBinder mWindowToken;
    private boolean mWorkspaceFadeInAdjacentScreens;
    private float mXDown;
    private float mYDown;
    private final ZoomInInterpolator mZoomInInterpolator;

    enum State {
        NORMAL,
        SPRING_LOADED,
        SMALL
    }

    enum WallpaperVerticalOffset {
        TOP,
        MIDDLE,
        BOTTOM
    }

    private float wallpaperTravelToScreenWidthRatio(int i, int i2) {
        return ((i / i2) * 0.30769226f) + 1.0076923f;
    }

    float backgroundAlphaInterpolator(float f) {
        if (f < 0.1f) {
            return 0.0f;
        }
        if (f > 0.4f) {
            return 1.0f;
        }
        return (f - 0.1f) / 0.3f;
    }

    @Override // com.android.launcher2.Launcher.LauncherTransitionable
    public View getContent() {
        return this;
    }

    @Override // com.android.launcher2.DropTarget
    public DropTarget getDropTargetDelegate(DropTarget.DragObject dragObject) {
        return null;
    }

    @Override // com.android.launcher2.SmoothPagedView
    protected int getScrollMode() {
        return 1;
    }

    @Override // com.android.launcher2.DropTarget
    public boolean isDropEnabled() {
        return true;
    }

    @Override // com.android.launcher2.PagedView, com.android.launcher2.ScreenEffect
    public boolean isSupportCycleSlidingScreen() {
        return true;
    }

    @Override // com.android.launcher2.PagedView, android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
    }

    @Override // com.android.launcher2.DropTarget
    public void onFlingToDelete(DropTarget.DragObject dragObject, int i, int i2, PointF pointF) {
    }

    @Override // com.android.launcher2.DragSource
    public void onFlingToDeleteCompleted() {
    }

    @Override // com.android.launcher2.Launcher.LauncherTransitionable
    public void onLauncherTransitionStart(Launcher launcher, boolean z, boolean z2) {
    }

    @Override // com.android.launcher2.DragSource
    public boolean supportsFlingToDelete() {
        return false;
    }

    @Override // com.android.launcher2.PagedView
    public void syncPageItems(int i, boolean z) {
    }

    @Override // com.android.launcher2.PagedView
    public void syncPages() {
    }

    boolean willCreateUserFolder(ItemInfo itemInfo, CellLayout cellLayout, int[] iArr, float f, boolean z) {
        return false;
    }

    public Workspace(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Workspace(Context context, AttributeSet attributeSet, int i) {
        int i2;
        int i3;
        super(context, attributeSet, i);
        this.mChildrenOutlineAlpha = 0.0f;
        this.mScreenOrder = new ArrayList<>();
        this.mDrawBackground = true;
        this.mBackgroundAlpha = 0.0f;
        this.mOverScrollMaxBackgroundAlpha = 0.0f;
        this.mWallpaperScrollRatio = 1.0f;
        this.mTargetCell = new int[2];
        this.mDragOverX = -1;
        this.mDragOverY = -1;
        this.mDragTargetLayout = null;
        this.mDragOverlappingLayout = null;
        this.mDropToLayout = null;
        this.mTempCell = new int[2];
        this.mTempEstimate = new int[2];
        this.mDragViewVisualCenter = new float[2];
        this.mTempDragCoordinates = new float[2];
        this.mTempCellLayoutCenterCoordinates = new float[2];
        this.mTempDragBottomRightCoordinates = new float[2];
        this.mTempInverseMatrix = new Matrix();
        this.mState = State.NORMAL;
        this.mIsSwitchingState = false;
        this.mAnimatingViewIntoPlace = false;
        this.mIsDragOccuring = false;
        this.mChildrenLayersEnabled = true;
        this.mInScrollArea = false;
        this.mOutlineHelper = new HolographicOutlineHelper();
        this.mDragOutline = null;
        this.mTempRect = new Rect();
        this.mTempXY = new int[2];
        this.mTempVisiblePagesRange = new int[2];
        this.mOverscrollFade = 0.0f;
        this.mUpdateWallpaperOffsetImmediately = false;
        this.mDisplaySize = new Point();
        this.mFolderCreationAlarm = new Alarm();
        this.mReorderAlarm = new Alarm();
        this.mDragFolderRingAnimator = null;
        this.mDragOverFolderIcon = null;
        this.mCreateUserFolderOnDrop = false;
        this.mAddToExistingFolderOnDrop = false;
        this.mDragMode = 0;
        this.mLastReorderX = -1;
        this.mLastReorderY = -1;
        this.mRestoredPages = new ArrayList<>();
        this.mBindPages = new Runnable() { // from class: com.android.launcher2.Workspace.1
            @Override // java.lang.Runnable
            public void run() {
                Workspace.this.mLauncher.getModel().bindRemainingSynchronousPages();
            }
        };
        this.mZoomInInterpolator = new ZoomInInterpolator();
        this.mContentIsRefreshable = false;
        this.mOriginalPageSpacing = this.mPageSpacing;
        this.mDragEnforcer = new DropTarget.DragEnforcer(context);
        setDataIsReady();
        this.mLauncher = (Launcher) context;
        Resources resources = getResources();
        this.mWorkspaceFadeInAdjacentScreens = resources.getBoolean(R.bool.config_workspaceFadeAdjacentScreens);
        this.mFadeInAdjacentScreens = false;
        this.mWallpaperManager = WallpaperManager.getInstance(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Workspace, i, 0);
        if (LauncherApplication.isScreenLarge()) {
            float dimension = context.obtainStyledAttributes(new int[]{android.R.attr.actionBarSize}).getDimension(0, 0.0f);
            Point point = new Point();
            this.mLauncher.getWindowManager().getDefaultDisplay().getCurrentSizeRange(point, new Point());
            i2 = 1;
            while (true) {
                int i4 = i2 + 1;
                if (CellLayout.widthInPortrait(resources, i4) > point.x) {
                    break;
                } else {
                    i2 = i4;
                }
            }
            i3 = 1;
            while (true) {
                int i5 = i3 + 1;
                if (CellLayout.heightInLandscape(resources, i5) + dimension > point.y) {
                    break;
                } else {
                    i3 = i5;
                }
            }
        } else {
            i2 = 5;
            i3 = 3;
        }
        this.mSpringLoadedShrinkFactor = resources.getInteger(R.integer.config_workspaceSpringLoadShrinkPercentage) / 100.0f;
        this.mSpringLoadedPageSpacing = resources.getDimensionPixelSize(R.dimen.workspace_spring_loaded_page_spacing);
        this.mCameraDistance = resources.getInteger(R.integer.config_cameraDistance);
        int i6 = typedArrayObtainStyledAttributes.getInt(0, i2);
        int i7 = typedArrayObtainStyledAttributes.getInt(1, i3);
        this.mDefaultPage = typedArrayObtainStyledAttributes.getInt(2, 1);
        typedArrayObtainStyledAttributes.recycle();
        setOnHierarchyChangeListener(this);
        LauncherModel.updateWorkspaceLayoutCells(i6, i7);
        setHapticFeedbackEnabled(false);
        initWorkspace();
        setMotionEventSplittingEnabled(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    public int[] estimateItemSize(int i, int i2, ItemInfo itemInfo, boolean z) {
        int[] iArr = new int[2];
        if (getChildCount() <= 0) {
            iArr[0] = Integer.MAX_VALUE;
            iArr[1] = Integer.MAX_VALUE;
            return iArr;
        }
        Rect rectEstimateItemPosition = estimateItemPosition((CellLayout) this.mLauncher.getWorkspace().getChildAt(0), itemInfo, 0, 0, i, i2);
        iArr[0] = rectEstimateItemPosition.width();
        iArr[1] = rectEstimateItemPosition.height();
        if (z) {
            float f = iArr[0];
            float f2 = this.mSpringLoadedShrinkFactor;
            iArr[0] = (int) (f * f2);
            iArr[1] = (int) (iArr[1] * f2);
        }
        return iArr;
    }

    public Rect estimateItemPosition(CellLayout cellLayout, ItemInfo itemInfo, int i, int i2, int i3, int i4) {
        Rect rect = new Rect();
        cellLayout.cellToRect(i, i2, i3, i4, rect);
        return rect;
    }

    @Override // com.android.launcher2.DragController.DragListener
    public void onDragStart(DragSource dragSource, Object obj, int i) {
        if (L.DEBUG_DRAG) {
            L.d(TAG, "onDragStart: source = " + dragSource + ", info = " + obj + ", dragAction = " + i);
        }
        this.mIsDragOccuring = true;
        updateChildrenLayersEnabled(false);
        this.mLauncher.lockScreenOrientation();
        setChildrenBackgroundAlphaMultipliers(1.0f);
        InstallShortcutReceiver.enableInstallQueue();
        UninstallShortcutReceiver.enableUninstallQueue();
    }

    @Override // com.android.launcher2.DragController.DragListener
    public void onDragEnd() {
        if (L.DEBUG_DRAG) {
            L.d(TAG, "onDragEnd: mIsDragOccuring = " + this.mIsDragOccuring);
        }
        this.mIsDragOccuring = false;
        updateChildrenLayersEnabled(false);
        this.mLauncher.unlockScreenOrientation(false);
        InstallShortcutReceiver.disableAndFlushInstallQueue(getContext());
        UninstallShortcutReceiver.disableAndFlushUninstallQueue(getContext());
    }

    protected void initWorkspace() {
        Context context = getContext();
        this.mCurrentPage = this.mDefaultPage;
        Launcher.setScreen(this.mCurrentPage);
        this.mIconCache = ((LauncherApplication) context.getApplicationContext()).getIconCache();
        setWillNotDraw(false);
        setChildrenDrawnWithCacheEnabled(true);
        Resources resources = getResources();
        try {
            this.mBackground = resources.getDrawable(R.drawable.apps_customize_bg);
        } catch (Resources.NotFoundException unused) {
        }
        this.mWallpaperOffset = new WallpaperOffsetInterpolator();
        this.mLauncher.getWindowManager().getDefaultDisplay().getSize(this.mDisplaySize);
        this.mWallpaperTravelWidth = (int) (this.mDisplaySize.x * wallpaperTravelToScreenWidthRatio(this.mDisplaySize.x, this.mDisplaySize.y));
        if (ZHTDOEMManager.ensureID8()) {
            this.mMaxDistanceForFolderCreation = resources.getDimensionPixelSize(R.dimen.app_icon_id8_size) * 0.55f;
        } else if (ZHTDOEMManager.isMRWCustomer() || ZHTDOEMManager.isYZGCustomer() || ZHTDOEMManager.isLCCustomerTheme1()) {
            this.mMaxDistanceForFolderCreation = resources.getDimensionPixelSize(R.dimen.app_icon_mrw_size) * 0.55f;
        } else {
            this.mMaxDistanceForFolderCreation = resources.getDimensionPixelSize(ZHTDOEMManager.isLCCustomer() ? R.dimen.app_icon_lc_size : R.dimen.app_icon_size) * 0.55f;
        }
        this.mFlingThresholdVelocity = (int) (this.mDensity * 500.0f);
    }

    @Override // com.android.launcher2.PagedView, android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        if (!(view2 instanceof CellLayout)) {
            throw new IllegalArgumentException("A Workspace can only have CellLayout children.");
        }
        CellLayout cellLayout = (CellLayout) view2;
        cellLayout.setOnInterceptTouchListener(this);
        cellLayout.setClickable(true);
        cellLayout.setContentDescription(getContext().getString(R.string.workspace_description_format, Integer.valueOf(getChildCount())));
    }

    @Override // com.android.launcher2.PagedView
    protected boolean shouldDrawChild(View view) {
        CellLayout cellLayout = (CellLayout) view;
        return super.shouldDrawChild(view) && (cellLayout.getShortcutsAndWidgets().getAlpha() > 0.0f || cellLayout.getBackgroundAlpha() > 0.0f);
    }

    Folder getOpenFolder() {
        DragLayer dragLayer = this.mLauncher.getDragLayer();
        int childCount = dragLayer.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = dragLayer.getChildAt(i);
            if (childAt instanceof Folder) {
                Folder folder = (Folder) childAt;
                if (folder.getInfo().opened) {
                    return folder;
                }
            }
        }
        return null;
    }

    boolean isTouchActive() {
        return this.mTouchState != 0;
    }

    void addInScreen(View view, long j, int i, int i2, int i3, int i4, int i5) {
        addInScreen(view, j, i, i2, i3, i4, i5, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    void addInScreen(View view, long j, int i, int i2, int i3, int i4, int i5, boolean z) {
        int cellXFromOrder;
        int cellYFromOrder;
        CellLayout layout;
        CellLayout.LayoutParams layoutParams;
        int cellLayoutChildId;
        int orderInHotseat = i;
        if (j == -100 && (orderInHotseat < 0 || orderInHotseat >= getChildCount())) {
            L.e(TAG, "The screen must be >= 0 and < " + getChildCount() + " (was " + orderInHotseat + "); skipping child");
            return;
        }
        if (j == -101) {
            layout = this.mLauncher.getHotseat().getLayout();
            view.setOnKeyListener(null);
            if (view instanceof FolderIcon) {
                ((FolderIcon) view).setTextVisible(false);
            }
            if (orderInHotseat < 0) {
                cellXFromOrder = i2;
                cellYFromOrder = i3;
                orderInHotseat = this.mLauncher.getHotseat().getOrderInHotseat(cellXFromOrder, cellYFromOrder);
            } else {
                cellXFromOrder = this.mLauncher.getHotseat().getCellXFromOrder(orderInHotseat);
                cellYFromOrder = this.mLauncher.getHotseat().getCellYFromOrder(orderInHotseat);
            }
        } else {
            cellXFromOrder = i2;
            cellYFromOrder = i3;
            if (view instanceof FolderIcon) {
                ((FolderIcon) view).setTextVisible(true);
            }
            layout = (CellLayout) getChildAt(orderInHotseat);
            view.setOnKeyListener(new IconKeyEventListener());
        }
        CellLayout cellLayout = layout;
        int i6 = orderInHotseat;
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        if (layoutParams2 == null || !(layoutParams2 instanceof CellLayout.LayoutParams)) {
            layoutParams = new CellLayout.LayoutParams(cellXFromOrder, cellYFromOrder, i4, i5);
        } else {
            layoutParams = (CellLayout.LayoutParams) layoutParams2;
            layoutParams.cellX = cellXFromOrder;
            layoutParams.cellY = cellYFromOrder;
            layoutParams.cellHSpan = i4;
            layoutParams.cellVSpan = i5;
        }
        CellLayout.LayoutParams layoutParams3 = layoutParams;
        if (i4 < 0 && i5 < 0) {
            layoutParams3.isLockedToGrid = false;
        }
        if ((view instanceof AppWidgetHostView) && j == -100) {
            cellLayoutChildId = LauncherModel.getCellLayoutChildId(1 + j, i6, cellXFromOrder, cellYFromOrder, i4, i5);
        } else {
            cellLayoutChildId = LauncherModel.getCellLayoutChildId(j, i6, cellXFromOrder, cellYFromOrder, i4, i5);
        }
        boolean z2 = view instanceof Folder;
        if (!cellLayout.addViewToCellLayout(view, z ? 0 : -1, cellLayoutChildId, layoutParams3, !z2)) {
            L.w(TAG, "Failed to add to item at (" + layoutParams3.cellX + "," + layoutParams3.cellY + ") to CellLayout");
        }
        if (!z2) {
            view.setHapticFeedbackEnabled(false);
            view.setOnLongClickListener(this.mLongClickListener);
        }
        if (view instanceof DropTarget) {
            this.mDragController.addDropTarget((DropTarget) view);
        }
    }

    private boolean hitsPage(int i, float f, float f2) {
        View childAt = getChildAt(i);
        if (childAt == null) {
            return false;
        }
        float[] fArr = {f, f2};
        mapPointFromSelfToChild(childAt, fArr);
        return fArr[0] >= 0.0f && fArr[0] < ((float) childAt.getWidth()) && fArr[1] >= 0.0f && fArr[1] < ((float) childAt.getHeight());
    }

    @Override // com.android.launcher2.PagedView
    protected boolean hitsPreviousPage(float f, float f2) {
        return LauncherApplication.isScreenLarge() && hitsPage((this.mNextPage == -1 ? this.mCurrentPage : this.mNextPage) - 1, f, f2);
    }

    @Override // com.android.launcher2.PagedView
    protected boolean hitsNextPage(float f, float f2) {
        return LauncherApplication.isScreenLarge() && hitsPage((this.mNextPage == -1 ? this.mCurrentPage : this.mNextPage) + 1, f, f2);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (L.DEBUG_MOTION) {
            L.d(TAG, "onTouch: v = " + view + ", event = " + motionEvent + ", isFinishedSwitchingState() = " + isFinishedSwitchingState() + ", mState = " + this.mState + ", mScrollX = " + getScrollX());
        }
        return isSmall() || !isFinishedSwitchingState();
    }

    public boolean isSwitchingState() {
        return this.mIsSwitchingState;
    }

    public boolean isFinishedSwitchingState() {
        return !this.mIsSwitchingState || this.mTransitionProgress > 0.5f;
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        this.mLauncher.onWindowVisibilityChanged(i);
    }

    @Override // com.android.launcher2.PagedView, android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i) {
        if (isSmall() || !isFinishedSwitchingState()) {
            return false;
        }
        return super.dispatchUnhandledMove(view, i);
    }

    @Override // com.android.launcher2.PagedView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (L.DEBUG_MOTION) {
            L.d(TAG, "onInterceptTouchEvent: ev = " + motionEvent + ", mScrollX = " + getScrollX());
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.mXDown = motionEvent.getX();
            this.mYDown = motionEvent.getY();
        } else if ((action == 1 || action == 6) && this.mTouchState == 0 && !((CellLayout) getChildAt(this.mCurrentPage)).lastDownOnOccupiedCell()) {
            onWallpaperTap(motionEvent);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    protected void reinflateWidgetsIfNecessary() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            CellLayout cellLayout = (CellLayout) getChildAt(i);
            ShortcutAndWidgetContainer shortcutsAndWidgets = cellLayout.getShortcutsAndWidgets();
            int childCount2 = shortcutsAndWidgets.getChildCount();
            for (int i2 = 0; i2 < childCount2; i2++) {
                View childAt = shortcutsAndWidgets.getChildAt(i2);
                if (childAt.getTag() instanceof LauncherAppWidgetInfo) {
                    LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) childAt.getTag();
                    LauncherAppWidgetHostView launcherAppWidgetHostView = (LauncherAppWidgetHostView) launcherAppWidgetInfo.hostView;
                    if (launcherAppWidgetHostView != null && launcherAppWidgetHostView.orientationChangedSincedInflation()) {
                        this.mLauncher.removeAppWidget(launcherAppWidgetInfo);
                        cellLayout.removeView(launcherAppWidgetHostView);
                        this.mLauncher.bindAppWidget(launcherAppWidgetInfo);
                    }
                }
            }
        }
    }

    @Override // com.android.launcher2.PagedView
    protected void determineScrollingStart(MotionEvent motionEvent) {
        if (!isSmall() && isFinishedSwitchingState()) {
            float fAbs = Math.abs(motionEvent.getX() - this.mXDown);
            float fAbs2 = Math.abs(motionEvent.getY() - this.mYDown);
            if (Float.compare(fAbs, 0.0f) == 0) {
                return;
            }
            float fAtan = (float) Math.atan(fAbs2 / fAbs);
            if (fAbs > this.mTouchSlop || fAbs2 > this.mTouchSlop) {
                cancelCurrentPageLongPress();
            }
            if (fAtan > MAX_SWIPE_ANGLE) {
                return;
            }
            if (fAtan > START_DAMPING_TOUCH_SLOP_ANGLE) {
                super.determineScrollingStart(motionEvent, (((float) Math.sqrt((fAtan - START_DAMPING_TOUCH_SLOP_ANGLE) / START_DAMPING_TOUCH_SLOP_ANGLE)) * TOUCH_SLOP_DAMPING_FACTOR) + 1.0f);
            } else {
                super.determineScrollingStart(motionEvent);
            }
        }
    }

    @Override // com.android.launcher2.PagedView
    protected void onPageBeginMoving() {
        super.onPageBeginMoving();
        if (isHardwareAccelerated()) {
            updateChildrenLayersEnabled(false);
        } else if (this.mNextPage != -1) {
            enableChildrenCache(this.mCurrentPage, this.mNextPage);
        } else {
            enableChildrenCache(this.mCurrentPage - 1, this.mCurrentPage + 1);
        }
        if (LauncherApplication.isScreenLarge()) {
            showOutlines();
            this.mIsStaticWallpaper = this.mWallpaperManager.getWallpaperInfo() == null;
        }
        if (!this.mWorkspaceFadeInAdjacentScreens) {
            for (int i = 0; i < getChildCount(); i++) {
                ((CellLayout) getPageAt(i)).setShortcutAndWidgetAlpha(1.0f);
            }
        }
        showScrollingIndicator(false);
    }

    @Override // com.android.launcher2.PagedView
    protected void onPageEndMoving() {
        super.onPageEndMoving();
        if (isHardwareAccelerated()) {
            updateChildrenLayersEnabled(false);
        } else {
            clearChildrenCache();
        }
        if (this.mDragController.isDragging()) {
            if (isSmall()) {
                this.mDragController.forceMoveEvent();
            }
        } else {
            if (LauncherApplication.isScreenLarge()) {
                hideOutlines();
            }
            if (!this.mDragController.isDragging()) {
                hideScrollingIndicator(false);
            }
        }
        this.mOverScrollMaxBackgroundAlpha = 0.0f;
        Runnable runnable = this.mDelayedResizeRunnable;
        if (runnable != null) {
            runnable.run();
            this.mDelayedResizeRunnable = null;
        }
        Runnable runnable2 = this.mDelayedSnapToPageRunnable;
        if (runnable2 != null) {
            runnable2.run();
            this.mDelayedSnapToPageRunnable = null;
        }
    }

    @Override // com.android.launcher2.PagedView
    protected void notifyPageSwitchListener() {
        super.notifyPageSwitchListener();
        Launcher.setScreen(this.mCurrentPage);
    }

    private int getScrollRange() {
        return getChildOffset(getChildCount() - 1) - getChildOffset(0);
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [com.android.launcher2.Workspace$2] */
    protected void setWallpaperDimension() {
        Point point = new Point();
        Point point2 = new Point();
        this.mLauncher.getWindowManager().getDefaultDisplay().getCurrentSizeRange(point, point2);
        int iMax = Math.max(point2.x, point2.y);
        int iMin = Math.min(point.x, point.y);
        if (LauncherApplication.isScreenLarge()) {
            this.mWallpaperWidth = (int) (iMax * wallpaperTravelToScreenWidthRatio(iMax, iMin));
            this.mWallpaperHeight = iMax;
        } else {
            this.mWallpaperWidth = Math.max((int) (iMin * WALLPAPER_SCREENS_SPAN), iMax);
            this.mWallpaperHeight = iMax;
        }
        new Thread("setWallpaperDimension") { // from class: com.android.launcher2.Workspace.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Workspace.this.mWallpaperManager.suggestDesiredDimensions(Workspace.this.mWallpaperWidth, Workspace.this.mWallpaperHeight);
            }
        }.start();
    }

    private float wallpaperOffsetForCurrentScroll() {
        this.mWallpaperManager.setWallpaperOffsetSteps(1.0f / (getChildCount() - 1), 1.0f);
        float f = this.mLayoutScale;
        this.mLayoutScale = 1.0f;
        int scrollRange = getScrollRange();
        int scrollX = getScrollX();
        if (isSupportCycleSlidingScreen()) {
            if (scrollX > this.mMaxScrollX) {
                scrollX = (int) ((getChildCount() - 1) * getWidth() * (1.0f - ((scrollX - this.mMaxScrollX) / getWidth())));
            } else if (scrollX < 0) {
                scrollX = (-scrollX) * (getChildCount() - 1);
            }
        }
        float fMax = Math.max(0, Math.min(scrollX, this.mMaxScrollX)) * this.mWallpaperScrollRatio;
        this.mLayoutScale = f;
        float f2 = fMax / scrollRange;
        if (!LauncherApplication.isScreenLarge() || !this.mIsStaticWallpaper) {
            return f2;
        }
        int iMin = Math.min(this.mWallpaperTravelWidth, this.mWallpaperWidth);
        int i = this.mWallpaperWidth;
        return ((iMin * f2) + ((i - iMin) / 2)) / i;
    }

    private void syncWallpaperOffsetWithScroll() {
        if (isHardwareAccelerated()) {
            this.mWallpaperOffset.setFinalX(wallpaperOffsetForCurrentScroll());
        }
    }

    public void updateWallpaperOffsetImmediately() {
        this.mUpdateWallpaperOffsetImmediately = true;
    }

    private void updateWallpaperOffsets() {
        boolean z;
        IBinder iBinder;
        boolean zComputeScrollOffset = false;
        if (this.mUpdateWallpaperOffsetImmediately) {
            z = true;
            this.mWallpaperOffset.jumpToFinal();
            this.mUpdateWallpaperOffsetImmediately = false;
        } else {
            zComputeScrollOffset = this.mWallpaperOffset.computeScrollOffset();
            z = zComputeScrollOffset;
        }
        if (z && (iBinder = this.mWindowToken) != null) {
            this.mWallpaperManager.setWallpaperOffsets(iBinder, this.mWallpaperOffset.getCurrX(), this.mWallpaperOffset.getCurrY());
        }
        if (zComputeScrollOffset) {
            invalidate();
        }
    }

    @Override // com.android.launcher2.PagedView
    protected void updateCurrentPageScroll() {
        super.updateCurrentPageScroll();
        computeWallpaperScrollRatio(this.mCurrentPage);
    }

    @Override // com.android.launcher2.SmoothPagedView, com.android.launcher2.PagedView
    protected void snapToPage(int i) {
        super.snapToPage(i);
        if (L.DEBUG) {
            L.d(TAG, "snapToPage: whichPage = " + i + ", mScrollX = " + getScrollX());
        }
        this.mLauncher.setPackageIndex(i, getChildCount(), true);
        computeWallpaperScrollRatio(i);
    }

    @Override // com.android.launcher2.PagedView
    protected void snapToPage(int i, int i2) {
        super.snapToPage(i, i2);
        computeWallpaperScrollRatio(i);
    }

    protected void snapToPage(int i, Runnable runnable) {
        Runnable runnable2 = this.mDelayedSnapToPageRunnable;
        if (runnable2 != null) {
            runnable2.run();
        }
        this.mDelayedSnapToPageRunnable = runnable;
        snapToPage(i, 950);
    }

    private void computeWallpaperScrollRatio(int i) {
        float f = this.mLayoutScale;
        int childOffset = getChildOffset(i) - getRelativeChildOffset(i);
        this.mLayoutScale = 1.0f;
        float childOffset2 = getChildOffset(i) - getRelativeChildOffset(i);
        this.mLayoutScale = f;
        if (childOffset > 0) {
            this.mWallpaperScrollRatio = (childOffset2 * 1.0f) / childOffset;
        } else {
            this.mWallpaperScrollRatio = 1.0f;
        }
        this.mLauncher.setPackageIndex(i, getChildCount(), true);
    }

    class WallpaperOffsetInterpolator {
        boolean mIsMovingFast;
        long mLastWallpaperOffsetUpdateTime;
        boolean mOverrideHorizontalCatchupConstant;
        float mFinalHorizontalWallpaperOffset = 0.0f;
        float mFinalVerticalWallpaperOffset = 0.5f;
        float mHorizontalWallpaperOffset = 0.0f;
        float mVerticalWallpaperOffset = 0.5f;
        float mHorizontalCatchupConstant = 0.35f;
        float mVerticalCatchupConstant = 0.35f;

        public WallpaperOffsetInterpolator() {
        }

        public void setOverrideHorizontalCatchupConstant(boolean z) {
            this.mOverrideHorizontalCatchupConstant = z;
        }

        public void setHorizontalCatchupConstant(float f) {
            this.mHorizontalCatchupConstant = f;
        }

        public void setVerticalCatchupConstant(float f) {
            this.mVerticalCatchupConstant = f;
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0069  */
        public boolean computeScrollOffset() {
            float f;
            boolean z = false;
            if (Float.compare(this.mHorizontalWallpaperOffset, this.mFinalHorizontalWallpaperOffset) != 0 || Float.compare(this.mVerticalWallpaperOffset, this.mFinalVerticalWallpaperOffset) != 0) {
                boolean z2 = Workspace.this.mDisplaySize.x > Workspace.this.mDisplaySize.y;
                long jMax = Math.max(1L, Math.min(33L, System.currentTimeMillis() - this.mLastWallpaperOffsetUpdateTime));
                float fAbs = Math.abs(this.mFinalHorizontalWallpaperOffset - this.mHorizontalWallpaperOffset);
                if (!this.mIsMovingFast && fAbs > 0.07d) {
                    this.mIsMovingFast = true;
                }
                if (this.mOverrideHorizontalCatchupConstant) {
                    f = this.mHorizontalCatchupConstant;
                } else if (this.mIsMovingFast) {
                    if (z2) {
                        f = 0.5f;
                    } else {
                        f = 0.75f;
                    }
                } else if (z2) {
                    f = 0.27f;
                } else {
                    f = 0.5f;
                }
                float f2 = f / 33.0f;
                float f3 = this.mVerticalCatchupConstant / 33.0f;
                float f4 = this.mFinalHorizontalWallpaperOffset - this.mHorizontalWallpaperOffset;
                float f5 = this.mFinalVerticalWallpaperOffset - this.mVerticalWallpaperOffset;
                if (Math.abs(f4) < 1.0E-5f && Math.abs(f5) < 1.0E-5f) {
                    z = true;
                }
                if (!LauncherApplication.isScreenLarge() || z) {
                    this.mHorizontalWallpaperOffset = this.mFinalHorizontalWallpaperOffset;
                    this.mVerticalWallpaperOffset = this.mFinalVerticalWallpaperOffset;
                } else {
                    float f6 = jMax;
                    float fMin = Math.min(1.0f, f3 * f6);
                    this.mHorizontalWallpaperOffset += Math.min(1.0f, f6 * f2) * f4;
                    this.mVerticalWallpaperOffset += fMin * f5;
                }
                this.mLastWallpaperOffsetUpdateTime = System.currentTimeMillis();
                return true;
            }
            this.mIsMovingFast = false;
            return false;
        }

        public float getCurrX() {
            return this.mHorizontalWallpaperOffset;
        }

        public float getFinalX() {
            return this.mFinalHorizontalWallpaperOffset;
        }

        public float getCurrY() {
            return this.mVerticalWallpaperOffset;
        }

        public float getFinalY() {
            return this.mFinalVerticalWallpaperOffset;
        }

        public void setFinalX(float f) {
            this.mFinalHorizontalWallpaperOffset = Math.max(0.0f, Math.min(f, 1.0f));
        }

        public void setFinalY(float f) {
            this.mFinalVerticalWallpaperOffset = Math.max(0.0f, Math.min(f, 1.0f));
        }

        public void jumpToFinal() {
            this.mHorizontalWallpaperOffset = this.mFinalHorizontalWallpaperOffset;
            this.mVerticalWallpaperOffset = this.mFinalVerticalWallpaperOffset;
        }
    }

    @Override // com.android.launcher2.SmoothPagedView, com.android.launcher2.PagedView, android.view.View
    public void computeScroll() {
        super.computeScroll();
    }

    void showOutlines() {
        if (isSmall() || this.mIsSwitchingState) {
            return;
        }
        ObjectAnimator objectAnimator = this.mChildrenOutlineFadeOutAnimation;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator objectAnimator2 = this.mChildrenOutlineFadeInAnimation;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
        ObjectAnimator objectAnimatorOfFloat = LauncherAnimUtils.ofFloat(this, "childrenOutlineAlpha", 1.0f);
        this.mChildrenOutlineFadeInAnimation = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(100L);
        this.mChildrenOutlineFadeInAnimation.start();
    }

    void hideOutlines() {
        if (isSmall() || this.mIsSwitchingState) {
            return;
        }
        ObjectAnimator objectAnimator = this.mChildrenOutlineFadeInAnimation;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator objectAnimator2 = this.mChildrenOutlineFadeOutAnimation;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
        ObjectAnimator objectAnimatorOfFloat = LauncherAnimUtils.ofFloat(this, "childrenOutlineAlpha", 0.0f);
        this.mChildrenOutlineFadeOutAnimation = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(375L);
        this.mChildrenOutlineFadeOutAnimation.setStartDelay(0L);
        this.mChildrenOutlineFadeOutAnimation.start();
    }

    public void showOutlinesTemporarily() {
        if (this.mIsPageMoving || isTouchActive()) {
            return;
        }
        snapToPage(this.mCurrentPage);
    }

    public void setChildrenOutlineAlpha(float f) {
        this.mChildrenOutlineAlpha = f;
        for (int i = 0; i < getChildCount(); i++) {
            ((CellLayout) getChildAt(i)).setBackgroundAlpha(f);
        }
    }

    public float getChildrenOutlineAlpha() {
        return this.mChildrenOutlineAlpha;
    }

    void disableBackground() {
        this.mDrawBackground = false;
    }

    void enableBackground() {
        this.mDrawBackground = true;
    }

    private void animateBackgroundGradient(float f, boolean z) {
        if (this.mBackground == null) {
            return;
        }
        ValueAnimator valueAnimator = this.mBackgroundFadeInAnimation;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.mBackgroundFadeInAnimation = null;
        }
        ValueAnimator valueAnimator2 = this.mBackgroundFadeOutAnimation;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.mBackgroundFadeOutAnimation = null;
        }
        float backgroundAlpha = getBackgroundAlpha();
        if (f != backgroundAlpha) {
            if (z) {
                ValueAnimator valueAnimatorOfFloat = LauncherAnimUtils.ofFloat(backgroundAlpha, f);
                this.mBackgroundFadeOutAnimation = valueAnimatorOfFloat;
                valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher2.Workspace.3
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        Workspace.this.setBackgroundAlpha(((Float) valueAnimator3.getAnimatedValue()).floatValue());
                    }
                });
                this.mBackgroundFadeOutAnimation.setInterpolator(new DecelerateInterpolator(1.5f));
                this.mBackgroundFadeOutAnimation.setDuration(350L);
                this.mBackgroundFadeOutAnimation.start();
                return;
            }
            setBackgroundAlpha(f);
        }
    }

    public void setBackgroundAlpha(float f) {
        if (f != this.mBackgroundAlpha) {
            this.mBackgroundAlpha = f;
            invalidate();
        }
    }

    public float getBackgroundAlpha() {
        return this.mBackgroundAlpha;
    }

    float overScrollBackgroundAlphaInterpolator(float f) {
        float f2 = this.mOverScrollMaxBackgroundAlpha;
        if (f > f2) {
            this.mOverScrollMaxBackgroundAlpha = f;
        } else if (f < f2) {
            f = f2;
        }
        return Math.min(f / 0.08f, 1.0f);
    }

    private void updatePageAlphaValues(int i) {
        boolean z = this.mOverScrollX < 0 || this.mOverScrollX > this.mMaxScrollX;
        if (!this.mWorkspaceFadeInAdjacentScreens || this.mState != State.NORMAL || this.mIsSwitchingState || z) {
            return;
        }
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            CellLayout cellLayout = (CellLayout) getChildAt(i2);
            if (cellLayout != null) {
                float scrollProgress = getScrollProgress(i, cellLayout, i2);
                cellLayout.getShortcutsAndWidgets().setAlpha(1.0f - Math.abs(scrollProgress));
                if (!this.mIsDragOccuring) {
                    cellLayout.setBackgroundAlphaMultiplier(backgroundAlphaInterpolator(Math.abs(scrollProgress)));
                } else {
                    cellLayout.setBackgroundAlphaMultiplier(1.0f);
                }
            }
        }
    }

    private void setChildrenBackgroundAlphaMultipliers(float f) {
        for (int i = 0; i < getChildCount(); i++) {
            ((CellLayout) getChildAt(i)).setBackgroundAlphaMultiplier(f);
        }
    }

    @Override // com.android.launcher2.PagedView
    protected void screenScrolled(int i) {
        super.screenScrolled(i);
        updatePageAlphaValues(i);
        enableHwLayersOnVisiblePages();
        if (this.mOverScrollX < 0 || this.mOverScrollX > this.mMaxScrollX) {
            return;
        }
        if (this.mOverscrollFade != 0.0f) {
            setFadeForOverScroll(0.0f);
        }
        if (this.mOverscrollTransformsSet) {
            this.mOverscrollTransformsSet = false;
            ((CellLayout) getChildAt(0)).resetOverscrollTransforms();
            ((CellLayout) getChildAt(getChildCount() - 1)).resetOverscrollTransforms();
        }
    }

    @Override // com.android.launcher2.PagedView
    protected void overScroll(float f) {
        acceleratedOverScroll(f);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mWindowToken = getWindowToken();
        if (L.DEBUG) {
            L.d(TAG, "onAttachedToWindow: mWindowToken = " + this.mWindowToken);
        }
        computeScroll();
        this.mDragController.setWindowToken(this.mWindowToken);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        if (L.DEBUG) {
            L.d(TAG, "onDetachedFromWindow: mWindowToken = " + this.mWindowToken);
        }
        this.mWindowToken = null;
    }

    @Override // com.android.launcher2.PagedView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mFirstLayout && this.mCurrentPage >= 0 && this.mCurrentPage < getChildCount()) {
            this.mUpdateWallpaperOffsetImmediately = true;
        }
        super.onLayout(z, i, i2, i3, i4);
        if (L.DEBUG_LAYOUT) {
            L.d(TAG, "onLayout: changed = " + z + ", left = " + i + ", top = " + i2 + ", right = " + i3 + ", bottom = " + i4);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Drawable drawable = this.mBackground;
        if (drawable != null) {
            float f = this.mBackgroundAlpha;
            if (f > 0.0f && this.mDrawBackground) {
                drawable.setAlpha((int) (f * 255.0f));
                this.mBackground.setBounds(getScrollX(), 0, getScrollX() + getMeasuredWidth(), getMeasuredHeight());
                this.mBackground.draw(canvas);
            }
        }
        super.onDraw(canvas);
        post(this.mBindPages);
    }

    boolean isDrawingBackgroundGradient() {
        return this.mBackground != null && this.mBackgroundAlpha > 0.0f && this.mDrawBackground;
    }

    @Override // com.android.launcher2.PagedView, android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (this.mLauncher.isAllAppsVisible()) {
            return false;
        }
        Folder openFolder = getOpenFolder();
        if (openFolder != null) {
            return openFolder.requestFocus(i, rect);
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.ViewGroup
    public int getDescendantFocusability() {
        if (isSmall()) {
            return 393216;
        }
        return super.getDescendantFocusability();
    }

    @Override // com.android.launcher2.PagedView, android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (this.mLauncher.isAllAppsVisible()) {
            return;
        }
        Folder openFolder = getOpenFolder();
        if (openFolder != null) {
            openFolder.addFocusables(arrayList, i);
        } else {
            super.addFocusables(arrayList, i, i2);
        }
    }

    public boolean isSmall() {
        return this.mState == State.SMALL || this.mState == State.SPRING_LOADED;
    }

    void enableChildrenCache(int i, int i2) {
        if (i > i2) {
            i2 = i;
            i = i2;
        }
        int childCount = getChildCount();
        int iMin = Math.min(i2, childCount - 1);
        for (int iMax = Math.max(i, 0); iMax <= iMin; iMax++) {
            CellLayout cellLayout = (CellLayout) getChildAt(iMax);
            cellLayout.setChildrenDrawnWithCacheEnabled(true);
            cellLayout.setChildrenDrawingCacheEnabled(true);
        }
    }

    void clearChildrenCache() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            CellLayout cellLayout = (CellLayout) getChildAt(i);
            cellLayout.setChildrenDrawnWithCacheEnabled(false);
            if (!isHardwareAccelerated()) {
                cellLayout.setChildrenDrawingCacheEnabled(false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateChildrenLayersEnabled(boolean z) {
        boolean z2 = true;
        boolean z3 = this.mState == State.SMALL || this.mIsSwitchingState;
        if (!z && !z3 && !this.mAnimatingViewIntoPlace && !isPageMoving()) {
            z2 = false;
        }
        if (z2 != this.mChildrenLayersEnabled) {
            this.mChildrenLayersEnabled = z2;
            if (z2) {
                enableHwLayersOnVisiblePages();
                return;
            }
            for (int i = 0; i < getPageCount(); i++) {
                ((CellLayout) getChildAt(i)).disableHardwareLayers();
            }
        }
    }

    private void enableHwLayersOnVisiblePages() {
        if (this.mChildrenLayersEnabled) {
            int childCount = getChildCount();
            getVisiblePages(this.mTempVisiblePagesRange);
            int[] iArr = this.mTempVisiblePagesRange;
            int i = iArr[0];
            int i2 = iArr[1];
            if (i == i2) {
                if (i2 < childCount - 1) {
                    i2++;
                } else if (i > 0) {
                    i--;
                }
            }
            for (int i3 = 0; i3 < childCount; i3++) {
                CellLayout cellLayout = (CellLayout) getChildAt(i3);
                if (i > i3 || i3 > i2 || !shouldDrawChild(cellLayout)) {
                    cellLayout.disableHardwareLayers();
                }
            }
            for (int i4 = 0; i4 < childCount; i4++) {
                CellLayout cellLayout2 = (CellLayout) getChildAt(i4);
                if (i <= i4 && i4 <= i2 && shouldDrawChild(cellLayout2)) {
                    cellLayout2.enableHardwareLayers();
                }
            }
        }
    }

    public void buildPageHardwareLayers() {
        updateChildrenLayersEnabled(true);
        if (getWindowToken() != null) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                ((CellLayout) getChildAt(i)).buildHardwareLayer();
            }
        }
        updateChildrenLayersEnabled(false);
    }

    protected void onWallpaperTap(MotionEvent motionEvent) {
        int[] iArr = this.mTempCell;
        getLocationOnScreen(iArr);
        int actionIndex = motionEvent.getActionIndex();
        iArr[0] = iArr[0] + ((int) motionEvent.getX(actionIndex));
        iArr[1] = iArr[1] + ((int) motionEvent.getY(actionIndex));
        this.mWallpaperManager.sendWallpaperCommand(getWindowToken(), motionEvent.getAction() == 1 ? "android.wallpaper.tap" : "android.wallpaper.secondaryTap", iArr[0], iArr[1], 0, null);
    }

    static class ZInterpolator implements TimeInterpolator {
        private float focalLength;

        public ZInterpolator(float f) {
            this.focalLength = f;
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = this.focalLength;
            return (1.0f - (f2 / (f + f2))) / (1.0f - (f2 / (f2 + 1.0f)));
        }
    }

    static class InverseZInterpolator implements TimeInterpolator {
        private ZInterpolator zInterpolator;

        public InverseZInterpolator(float f) {
            this.zInterpolator = new ZInterpolator(f);
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return 1.0f - this.zInterpolator.getInterpolation(1.0f - f);
        }
    }

    static class ZoomOutInterpolator implements TimeInterpolator {
        private final DecelerateInterpolator decelerate = new DecelerateInterpolator(0.75f);
        private final ZInterpolator zInterpolator = new ZInterpolator(0.13f);

        ZoomOutInterpolator() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return this.decelerate.getInterpolation(this.zInterpolator.getInterpolation(f));
        }
    }

    static class ZoomInInterpolator implements TimeInterpolator {
        private final InverseZInterpolator inverseZInterpolator = new InverseZInterpolator(0.35f);
        private final DecelerateInterpolator decelerate = new DecelerateInterpolator(3.0f);

        ZoomInInterpolator() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return this.decelerate.getInterpolation(this.inverseZInterpolator.getInterpolation(f));
        }
    }

    public void onDragStartedWithItem(View view) {
        if (L.DEBUG_DRAG) {
            L.d(TAG, "onDragStartedWithItem: v = " + view);
        }
        this.mDragOutline = createDragOutline(view, new Canvas(), 2);
    }

    public void onDragStartedWithItem(PendingAddItemInfo pendingAddItemInfo, Bitmap bitmap, boolean z) {
        Canvas canvas = new Canvas();
        int[] iArrEstimateItemSize = estimateItemSize(pendingAddItemInfo.spanX, pendingAddItemInfo.spanY, pendingAddItemInfo, false);
        this.mDragOutline = createDragOutline(bitmap, canvas, 2, iArrEstimateItemSize[0], iArrEstimateItemSize[1], z);
    }

    public void exitWidgetResizeMode() {
        this.mLauncher.getDragLayer().clearAllResizeFrames();
    }

    private void initAnimationArrays() {
        int childCount = getChildCount();
        if (this.mOldTranslationXs != null) {
            return;
        }
        this.mOldTranslationXs = new float[childCount];
        this.mOldTranslationYs = new float[childCount];
        this.mOldScaleXs = new float[childCount];
        this.mOldScaleYs = new float[childCount];
        this.mOldBackgroundAlphas = new float[childCount];
        this.mOldAlphas = new float[childCount];
        this.mNewTranslationXs = new float[childCount];
        this.mNewTranslationYs = new float[childCount];
        this.mNewScaleXs = new float[childCount];
        this.mNewScaleYs = new float[childCount];
        this.mNewBackgroundAlphas = new float[childCount];
        this.mNewAlphas = new float[childCount];
        this.mNewRotationYs = new float[childCount];
    }

    Animator getChangeStateAnimation(State state, boolean z) {
        return getChangeStateAnimation(state, z, 0);
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0092  */
    /* JADX WARN: Code duplicated, block: B:47:0x009e  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:58:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:66:0x00d8 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:70:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:73:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:74:0x0129  */
    /* JADX WARN: Code duplicated, block: B:77:0x0142  */
    /* JADX WARN: Code duplicated, block: B:80:0x0149  */
    /* JADX WARN: Code duplicated, block: B:85:0x019a  */
    /* JADX WARN: Code duplicated, block: B:87:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:89:0x01de  */
    /* JADX WARN: Code duplicated, block: B:92:0x0203  */
    /* JADX WARN: Code duplicated, block: B:94:0x020b  */
    /* JADX WARN: Code duplicated, block: B:98:0x0238  */
    /* JADX WARN: Code duplicated, block: B:99:0x024c  */
    Animator getChangeStateAnimation(State state, boolean z, int i) {
        boolean z2;
        int integer;
        int i2;
        final int i3;
        final CellLayout cellLayout;
        long j;
        float f;
        float[] fArr;
        CellLayout cellLayout2;
        float f2;
        if (this.mState == state) {
            return null;
        }
        initAnimationArrays();
        AnimatorSet animatorSetCreateAnimatorSet = z ? LauncherAnimUtils.createAnimatorSet() : null;
        setCurrentPage(getNextPage());
        State state2 = this.mState;
        boolean z3 = state2 == State.NORMAL;
        boolean z4 = state2 == State.SPRING_LOADED;
        boolean z5 = state2 == State.SMALL;
        this.mState = state;
        boolean z6 = state == State.NORMAL;
        boolean z7 = state == State.SPRING_LOADED;
        boolean z8 = state == State.SMALL;
        float f3 = z7 ? 1.0f : 0.0f;
        if (state != State.NORMAL) {
            L.v("hede", "1.0#####" + z8);
            setPageSpacing(this.mSpringLoadedPageSpacing);
            if (z3 && z8) {
                setLayoutScale(1.0f);
                updateChildrenLayersEnabled(false);
                z2 = false;
            } else {
                setLayoutScale(1.0f);
                f3 = 1.0f;
            }
            if (z2) {
                integer = getResources().getInteger(R.integer.config_workspaceUnshrinkTime);
            } else {
                integer = getResources().getInteger(R.integer.config_appsCustomizeWorkspaceShrinkTime);
            }
            for (i2 = 0; i2 < getChildCount(); i2++) {
                cellLayout2 = (CellLayout) getChildAt(i2);
                if (this.mWorkspaceFadeInAdjacentScreens || z7 || i2 == this.mCurrentPage) {
                    f2 = 1.0f;
                } else {
                    f2 = 0.0f;
                }
                float alpha = cellLayout2.getShortcutsAndWidgets().getAlpha();
                if ((!z5 && z6) || (z3 && z8)) {
                    if (i2 == this.mCurrentPage && z && !z4) {
                        f2 = 0.0f;
                        alpha = 0.0f;
                    } else {
                        f2 = 1.0f;
                    }
                }
                this.mOldAlphas[i2] = alpha;
                this.mNewAlphas[i2] = f2;
                if (z) {
                    this.mOldTranslationXs[i2] = cellLayout2.getTranslationX();
                    this.mOldTranslationYs[i2] = cellLayout2.getTranslationY();
                    this.mOldScaleXs[i2] = cellLayout2.getScaleX();
                    this.mOldScaleYs[i2] = cellLayout2.getScaleY();
                    this.mOldBackgroundAlphas[i2] = cellLayout2.getBackgroundAlpha();
                    this.mNewTranslationXs[i2] = 0.0f;
                    this.mNewTranslationYs[i2] = 0.0f;
                    this.mNewScaleXs[i2] = 1.0f;
                    this.mNewScaleYs[i2] = 1.0f;
                    this.mNewBackgroundAlphas[i2] = f3;
                } else {
                    cellLayout2.setTranslationX(0.0f);
                    cellLayout2.setTranslationY(0.0f);
                    cellLayout2.setScaleX(1.0f);
                    cellLayout2.setScaleY(1.0f);
                    cellLayout2.setBackgroundAlpha(f3);
                    cellLayout2.setShortcutAndWidgetAlpha(f2);
                }
            }
            if (z) {
                for (i3 = 0; i3 < getChildCount(); i3++) {
                    cellLayout = (CellLayout) getChildAt(i3);
                    float alpha2 = cellLayout.getShortcutsAndWidgets().getAlpha();
                    if (this.mOldAlphas[i3] != 0.0f && this.mNewAlphas[i3] == 0.0f) {
                        cellLayout.setTranslationX(this.mNewTranslationXs[i3]);
                        cellLayout.setTranslationY(this.mNewTranslationYs[i3]);
                        cellLayout.setScaleX(this.mNewScaleXs[i3]);
                        cellLayout.setScaleY(this.mNewScaleYs[i3]);
                        cellLayout.setBackgroundAlpha(this.mNewBackgroundAlphas[i3]);
                        cellLayout.setShortcutAndWidgetAlpha(this.mNewAlphas[i3]);
                        cellLayout.setRotationY(this.mNewRotationYs[i3]);
                    } else {
                        LauncherViewPropertyAnimator launcherViewPropertyAnimator = new LauncherViewPropertyAnimator(cellLayout);
                        j = integer;
                        launcherViewPropertyAnimator.translationX(this.mNewTranslationXs[i3]).translationY(this.mNewTranslationYs[i3]).scaleX(this.mNewScaleXs[i3]).scaleY(this.mNewScaleYs[i3]).setDuration(j).setInterpolator(this.mZoomInInterpolator);
                        animatorSetCreateAnimatorSet.play(launcherViewPropertyAnimator);
                        f = this.mOldAlphas[i3];
                        fArr = this.mNewAlphas;
                        if (f == fArr[i3] || alpha2 != fArr[i3]) {
                            LauncherViewPropertyAnimator launcherViewPropertyAnimator2 = new LauncherViewPropertyAnimator(cellLayout.getShortcutsAndWidgets());
                            launcherViewPropertyAnimator2.alpha(this.mNewAlphas[i3]).setDuration(j).setInterpolator(this.mZoomInInterpolator);
                            animatorSetCreateAnimatorSet.play(launcherViewPropertyAnimator2);
                        }
                        if (this.mOldBackgroundAlphas[i3] == 0.0f || this.mNewBackgroundAlphas[i3] != 0.0f) {
                            ValueAnimator duration = LauncherAnimUtils.ofFloat(0.0f, 1.0f).setDuration(j);
                            duration.setInterpolator(this.mZoomInInterpolator);
                            duration.addUpdateListener(new LauncherAnimatorUpdateListener() { // from class: com.android.launcher2.Workspace.4
                                @Override // com.android.launcher2.LauncherAnimatorUpdateListener
                                public void onAnimationUpdate(float f4, float f5) {
                                    cellLayout.setBackgroundAlpha((f4 * Workspace.this.mOldBackgroundAlphas[i3]) + (f5 * Workspace.this.mNewBackgroundAlphas[i3]));
                                }
                            });
                            animatorSetCreateAnimatorSet.play(duration);
                        }
                    }
                }
                buildPageHardwareLayers();
                animatorSetCreateAnimatorSet.setStartDelay(i);
            }
            if (z7) {
                animateBackgroundGradient(getResources().getInteger(R.integer.config_appsCustomizeSpringLoadedBgAlpha) / 100.0f, false);
            } else {
                animateBackgroundGradient(0.0f, true);
            }
            return animatorSetCreateAnimatorSet;
        }
        setPageSpacing(this.mOriginalPageSpacing);
        setLayoutScale(1.0f);
        z2 = true;
        if (z2) {
            integer = getResources().getInteger(R.integer.config_workspaceUnshrinkTime);
        } else {
            integer = getResources().getInteger(R.integer.config_appsCustomizeWorkspaceShrinkTime);
        }
        while (i2 < getChildCount()) {
            cellLayout2 = (CellLayout) getChildAt(i2);
            if (this.mWorkspaceFadeInAdjacentScreens) {
                f2 = 1.0f;
            } else {
                f2 = 1.0f;
            }
            float alpha3 = cellLayout2.getShortcutsAndWidgets().getAlpha();
            if (!z5) {
                if (i2 == this.mCurrentPage) {
                    f2 = 1.0f;
                } else {
                    f2 = 1.0f;
                }
            } else if (i2 == this.mCurrentPage) {
                f2 = 1.0f;
            } else {
                f2 = 1.0f;
            }
            this.mOldAlphas[i2] = alpha3;
            this.mNewAlphas[i2] = f2;
            if (z) {
                this.mOldTranslationXs[i2] = cellLayout2.getTranslationX();
                this.mOldTranslationYs[i2] = cellLayout2.getTranslationY();
                this.mOldScaleXs[i2] = cellLayout2.getScaleX();
                this.mOldScaleYs[i2] = cellLayout2.getScaleY();
                this.mOldBackgroundAlphas[i2] = cellLayout2.getBackgroundAlpha();
                this.mNewTranslationXs[i2] = 0.0f;
                this.mNewTranslationYs[i2] = 0.0f;
                this.mNewScaleXs[i2] = 1.0f;
                this.mNewScaleYs[i2] = 1.0f;
                this.mNewBackgroundAlphas[i2] = f3;
            } else {
                cellLayout2.setTranslationX(0.0f);
                cellLayout2.setTranslationY(0.0f);
                cellLayout2.setScaleX(1.0f);
                cellLayout2.setScaleY(1.0f);
                cellLayout2.setBackgroundAlpha(f3);
                cellLayout2.setShortcutAndWidgetAlpha(f2);
            }
        }
        if (z) {
            while (i3 < getChildCount()) {
                cellLayout = (CellLayout) getChildAt(i3);
                float alpha4 = cellLayout.getShortcutsAndWidgets().getAlpha();
                if (this.mOldAlphas[i3] != 0.0f) {
                    LauncherViewPropertyAnimator launcherViewPropertyAnimator3 = new LauncherViewPropertyAnimator(cellLayout);
                    j = integer;
                    launcherViewPropertyAnimator3.translationX(this.mNewTranslationXs[i3]).translationY(this.mNewTranslationYs[i3]).scaleX(this.mNewScaleXs[i3]).scaleY(this.mNewScaleYs[i3]).setDuration(j).setInterpolator(this.mZoomInInterpolator);
                    animatorSetCreateAnimatorSet.play(launcherViewPropertyAnimator3);
                    f = this.mOldAlphas[i3];
                    fArr = this.mNewAlphas;
                    if (f == fArr[i3]) {
                        LauncherViewPropertyAnimator launcherViewPropertyAnimator4 = new LauncherViewPropertyAnimator(cellLayout.getShortcutsAndWidgets());
                        launcherViewPropertyAnimator4.alpha(this.mNewAlphas[i3]).setDuration(j).setInterpolator(this.mZoomInInterpolator);
                        animatorSetCreateAnimatorSet.play(launcherViewPropertyAnimator4);
                    } else {
                        LauncherViewPropertyAnimator launcherViewPropertyAnimator5 = new LauncherViewPropertyAnimator(cellLayout.getShortcutsAndWidgets());
                        launcherViewPropertyAnimator5.alpha(this.mNewAlphas[i3]).setDuration(j).setInterpolator(this.mZoomInInterpolator);
                        animatorSetCreateAnimatorSet.play(launcherViewPropertyAnimator5);
                    }
                    if (this.mOldBackgroundAlphas[i3] == 0.0f) {
                        ValueAnimator duration2 = LauncherAnimUtils.ofFloat(0.0f, 1.0f).setDuration(j);
                        duration2.setInterpolator(this.mZoomInInterpolator);
                        duration2.addUpdateListener(new LauncherAnimatorUpdateListener() { // from class: com.android.launcher2.Workspace.4
                            @Override // com.android.launcher2.LauncherAnimatorUpdateListener
                            public void onAnimationUpdate(float f4, float f5) {
                                cellLayout.setBackgroundAlpha((f4 * Workspace.this.mOldBackgroundAlphas[i3]) + (f5 * Workspace.this.mNewBackgroundAlphas[i3]));
                            }
                        });
                        animatorSetCreateAnimatorSet.play(duration2);
                    } else {
                        ValueAnimator duration3 = LauncherAnimUtils.ofFloat(0.0f, 1.0f).setDuration(j);
                        duration3.setInterpolator(this.mZoomInInterpolator);
                        duration3.addUpdateListener(new LauncherAnimatorUpdateListener() { // from class: com.android.launcher2.Workspace.4
                            @Override // com.android.launcher2.LauncherAnimatorUpdateListener
                            public void onAnimationUpdate(float f4, float f5) {
                                cellLayout.setBackgroundAlpha((f4 * Workspace.this.mOldBackgroundAlphas[i3]) + (f5 * Workspace.this.mNewBackgroundAlphas[i3]));
                            }
                        });
                        animatorSetCreateAnimatorSet.play(duration3);
                    }
                } else {
                    LauncherViewPropertyAnimator launcherViewPropertyAnimator6 = new LauncherViewPropertyAnimator(cellLayout);
                    j = integer;
                    launcherViewPropertyAnimator6.translationX(this.mNewTranslationXs[i3]).translationY(this.mNewTranslationYs[i3]).scaleX(this.mNewScaleXs[i3]).scaleY(this.mNewScaleYs[i3]).setDuration(j).setInterpolator(this.mZoomInInterpolator);
                    animatorSetCreateAnimatorSet.play(launcherViewPropertyAnimator6);
                    f = this.mOldAlphas[i3];
                    fArr = this.mNewAlphas;
                    if (f == fArr[i3]) {
                        LauncherViewPropertyAnimator launcherViewPropertyAnimator7 = new LauncherViewPropertyAnimator(cellLayout.getShortcutsAndWidgets());
                        launcherViewPropertyAnimator7.alpha(this.mNewAlphas[i3]).setDuration(j).setInterpolator(this.mZoomInInterpolator);
                        animatorSetCreateAnimatorSet.play(launcherViewPropertyAnimator7);
                    } else {
                        LauncherViewPropertyAnimator launcherViewPropertyAnimator8 = new LauncherViewPropertyAnimator(cellLayout.getShortcutsAndWidgets());
                        launcherViewPropertyAnimator8.alpha(this.mNewAlphas[i3]).setDuration(j).setInterpolator(this.mZoomInInterpolator);
                        animatorSetCreateAnimatorSet.play(launcherViewPropertyAnimator8);
                    }
                    if (this.mOldBackgroundAlphas[i3] == 0.0f) {
                        ValueAnimator duration4 = LauncherAnimUtils.ofFloat(0.0f, 1.0f).setDuration(j);
                        duration4.setInterpolator(this.mZoomInInterpolator);
                        duration4.addUpdateListener(new LauncherAnimatorUpdateListener() { // from class: com.android.launcher2.Workspace.4
                            @Override // com.android.launcher2.LauncherAnimatorUpdateListener
                            public void onAnimationUpdate(float f4, float f5) {
                                cellLayout.setBackgroundAlpha((f4 * Workspace.this.mOldBackgroundAlphas[i3]) + (f5 * Workspace.this.mNewBackgroundAlphas[i3]));
                            }
                        });
                        animatorSetCreateAnimatorSet.play(duration4);
                    } else {
                        ValueAnimator duration5 = LauncherAnimUtils.ofFloat(0.0f, 1.0f).setDuration(j);
                        duration5.setInterpolator(this.mZoomInInterpolator);
                        duration5.addUpdateListener(new LauncherAnimatorUpdateListener() { // from class: com.android.launcher2.Workspace.4
                            @Override // com.android.launcher2.LauncherAnimatorUpdateListener
                            public void onAnimationUpdate(float f4, float f5) {
                                cellLayout.setBackgroundAlpha((f4 * Workspace.this.mOldBackgroundAlphas[i3]) + (f5 * Workspace.this.mNewBackgroundAlphas[i3]));
                            }
                        });
                        animatorSetCreateAnimatorSet.play(duration5);
                    }
                }
            }
            buildPageHardwareLayers();
            animatorSetCreateAnimatorSet.setStartDelay(i);
        }
        if (z7) {
            animateBackgroundGradient(getResources().getInteger(R.integer.config_appsCustomizeSpringLoadedBgAlpha) / 100.0f, false);
        } else {
            animateBackgroundGradient(0.0f, true);
        }
        return animatorSetCreateAnimatorSet;
    }

    @Override // com.android.launcher2.Launcher.LauncherTransitionable
    public void onLauncherTransitionPrepare(Launcher launcher, boolean z, boolean z2) {
        this.mIsSwitchingState = true;
        cancelScrollingIndicatorAnimations();
    }

    @Override // com.android.launcher2.Launcher.LauncherTransitionable
    public void onLauncherTransitionStep(Launcher launcher, float f) {
        this.mTransitionProgress = f;
    }

    @Override // com.android.launcher2.Launcher.LauncherTransitionable
    public void onLauncherTransitionEnd(Launcher launcher, boolean z, boolean z2) {
        this.mIsSwitchingState = false;
        this.mWallpaperOffset.setOverrideHorizontalCatchupConstant(false);
        updateChildrenLayersEnabled(false);
        if (this.mWorkspaceFadeInAdjacentScreens) {
            return;
        }
        for (int i = 0; i < getChildCount(); i++) {
            ((CellLayout) getChildAt(i)).setShortcutAndWidgetAlpha(1.0f);
        }
    }

    private void drawDragView(View view, Canvas canvas, int i, boolean z) {
        Rect rect = this.mTempRect;
        view.getDrawingRect(rect);
        canvas.save();
        boolean z2 = view instanceof TextView;
        boolean z3 = false;
        if (z2 && z) {
            Drawable drawable = ((TextView) view).getCompoundDrawables()[1];
            rect.set(0, 0, drawable.getIntrinsicWidth() + i, drawable.getIntrinsicHeight() + i);
            float f = i / 2;
            canvas.translate(f, f);
            drawable.draw(canvas);
        } else {
            if (view instanceof FolderIcon) {
                FolderIcon folderIcon = (FolderIcon) view;
                if (folderIcon.getTextVisible()) {
                    folderIcon.setTextVisible(false);
                    z3 = true;
                }
            } else if (view instanceof BubbleTextView) {
                BubbleTextView bubbleTextView = (BubbleTextView) view;
                rect.bottom = (bubbleTextView.getExtendedPaddingTop() - 3) + bubbleTextView.getLayout().getLineTop(0);
            } else if (z2) {
                TextView textView = (TextView) view;
                rect.bottom = (textView.getExtendedPaddingTop() - textView.getCompoundDrawablePadding()) + textView.getLayout().getLineTop(0);
            }
            int i2 = i / 2;
            canvas.translate((-view.getScrollX()) + i2, (-view.getScrollY()) + i2);
            canvas.clipRect(rect, Region.Op.REPLACE);
            view.draw(canvas);
            if (z3) {
                ((FolderIcon) view).setTextVisible(true);
            }
        }
        canvas.restore();
    }

    public Bitmap createDragBitmap(View view, Canvas canvas, int i) {
        Bitmap bitmapCreateBitmap;
        if (view instanceof TextView) {
            Drawable drawable = ((TextView) view).getCompoundDrawables()[1];
            bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth() + i, drawable.getIntrinsicHeight() + i, Bitmap.Config.ARGB_8888);
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth() + i, view.getHeight() + i, Bitmap.Config.ARGB_8888);
        }
        canvas.setBitmap(bitmapCreateBitmap);
        drawDragView(view, canvas, i, true);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    private Bitmap createDragOutline(View view, Canvas canvas, int i) {
        int themeColor = Launcher.getThemeColor(getResources(), android.R.color.holo_blue_light);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth() + i, view.getHeight() + i, Bitmap.Config.ARGB_8888);
        canvas.setBitmap(bitmapCreateBitmap);
        drawDragView(view, canvas, i, true);
        this.mOutlineHelper.applyMediumExpensiveOutlineWithBlur(bitmapCreateBitmap, canvas, themeColor, themeColor);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    private Bitmap createDragOutline(Bitmap bitmap, Canvas canvas, int i, int i2, int i3, boolean z) {
        int themeColor = Launcher.getThemeColor(getResources(), android.R.color.holo_blue_light);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
        canvas.setBitmap(bitmapCreateBitmap);
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        float fMin = Math.min((i2 - i) / bitmap.getWidth(), (i3 - i) / bitmap.getHeight());
        int width = (int) (bitmap.getWidth() * fMin);
        int height = (int) (fMin * bitmap.getHeight());
        Rect rect2 = new Rect(0, 0, width, height);
        rect2.offset((i2 - width) / 2, (i3 - height) / 2);
        canvas.drawBitmap(bitmap, rect, rect2, (Paint) null);
        this.mOutlineHelper.applyMediumExpensiveOutlineWithBlur(bitmapCreateBitmap, canvas, themeColor, themeColor, z);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    void startDrag(CellLayout.CellInfo cellInfo) {
        View view = cellInfo.cell;
        if (L.DEBUG_DRAG) {
            L.d(TAG, "startDrag cellInfo = " + cellInfo + ",child = " + view);
        }
        if (view != null && view.getTag() == null) {
            L.d(TAG, "Abnormal start drag: cellInfo = " + cellInfo + ",child = " + view);
            return;
        }
        if (!view.isInTouchMode()) {
            if (L.DEBUG) {
                L.i(TAG, "The child " + view + " is not in touch mode.");
                return;
            }
            return;
        }
        this.mDragInfo = cellInfo;
        view.setVisibility(4);
        ((CellLayout) view.getParent().getParent()).prepareChildForDrag(view);
        view.clearFocus();
        view.setPressed(false);
        this.mDragOutline = createDragOutline(view, new Canvas(), 2);
        beginDragShared(view, this);
    }

    public void beginDragShared(View view, DragSource dragSource) {
        Point point;
        Rect rect;
        int i;
        Resources resources = getResources();
        Bitmap bitmapCreateDragBitmap = createDragBitmap(view, new Canvas(), 2);
        int width = bitmapCreateDragBitmap.getWidth();
        int height = bitmapCreateDragBitmap.getHeight();
        float locationInDragLayer = this.mLauncher.getDragLayer().getLocationInDragLayer(view, this.mTempXY);
        int iRound = Math.round(this.mTempXY[0] - ((width - (view.getWidth() * locationInDragLayer)) / WALLPAPER_SCREENS_SPAN));
        float f = height;
        int iRound2 = Math.round((this.mTempXY[1] - ((f - (locationInDragLayer * f)) / WALLPAPER_SCREENS_SPAN)) - 1.0f);
        if (L.DEBUG_DRAG) {
            L.d(TAG, "beginDragShared: child = " + view + ", source = " + dragSource + ", dragLayerX = " + iRound + ", dragLayerY = " + iRound2);
        }
        boolean z = view instanceof BubbleTextView;
        if (z || (view instanceof PagedViewIcon)) {
            int dimensionPixelSize = resources.getDimensionPixelSize(ZHTDOEMManager.isLCCustomer() ? R.dimen.app_icon_lc_size : R.dimen.app_icon_size);
            if (ZHTDOEMManager.ensureID8()) {
                dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.app_icon_id8_size);
            } else if (ZHTDOEMManager.isMRWCustomer() || ZHTDOEMManager.isYZGCustomer() || ZHTDOEMManager.isLCCustomerTheme1()) {
                dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.app_icon_mrw_size);
            }
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.app_icon_padding_top);
            int paddingTop = view.getPaddingTop();
            int i2 = (width - dimensionPixelSize) / 2;
            int i3 = iRound2 + paddingTop;
            Point point2 = new Point(-1, dimensionPixelSize2 - 1);
            Rect rect2 = new Rect(i2, paddingTop, i2 + dimensionPixelSize, dimensionPixelSize + paddingTop);
            point = point2;
            rect = rect2;
            i = i3;
        } else if (view instanceof FolderIcon) {
            rect = new Rect(0, 0, view.getWidth(), resources.getDimensionPixelSize(R.dimen.folder_preview_size));
            i = iRound2;
            point = null;
        } else {
            i = iRound2;
            point = null;
            rect = null;
        }
        if (z) {
            ((BubbleTextView) view).clearPressedOrFocusedBackground();
        }
        this.mDragController.startDrag(bitmapCreateDragBitmap, iRound, i, dragSource, view.getTag(), 0, point, rect, locationInDragLayer);
        bitmapCreateDragBitmap.recycle();
        showScrollingIndicator(false);
    }

    void addApplicationShortcut(ShortcutInfo shortcutInfo, CellLayout cellLayout, long j, int i, int i2, int i3, boolean z, int i4, int i5) {
        View viewCreateShortcut = this.mLauncher.createShortcut(R.layout.application, cellLayout, shortcutInfo);
        int[] iArr = new int[2];
        cellLayout.findCellForSpanThatIntersects(iArr, 1, 1, i4, i5);
        if (L.DEBUG) {
            L.d(TAG, "addApplicationShortcut: info = " + shortcutInfo + ", view = " + viewCreateShortcut + ", container = " + j + ", screen = " + i + ", cellXY[0] = " + iArr[0] + ", cellXY[1] = " + iArr[1] + ", insertAtFirst = " + z);
        }
        addInScreen(viewCreateShortcut, j, i, iArr[0], iArr[1], 1, 1, z);
        LauncherModel.addOrMoveItemInDatabase(this.mLauncher, shortcutInfo, j, i, iArr[0], iArr[1]);
    }

    public boolean transitionStateShouldAllowDrop() {
        return (!isSwitchingState() || this.mTransitionProgress > 0.5f) && this.mState != State.SMALL;
    }

    @Override // com.android.launcher2.DropTarget
    public boolean acceptDrop(DropTarget.DragObject dragObject) {
        int i;
        int i2;
        int i3;
        int i4;
        CellLayout cellLayout = this.mDropToLayout;
        if (dragObject.dragSource != this) {
            if (cellLayout == null || !transitionStateShouldAllowDrop()) {
                return false;
            }
            this.mDragViewVisualCenter = getDragViewVisualCenter(dragObject.x, dragObject.y, dragObject.xOffset, dragObject.yOffset, dragObject.dragView, this.mDragViewVisualCenter);
            if (this.mLauncher.isHotseatLayout(cellLayout)) {
                mapPointFromSelfToHotseatLayout(this.mLauncher.getHotseat(), this.mDragViewVisualCenter);
            } else {
                mapPointFromSelfToChild(cellLayout, this.mDragViewVisualCenter, null);
            }
            CellLayout.CellInfo cellInfo = this.mDragInfo;
            if (cellInfo != null) {
                i = cellInfo.spanX;
                i2 = cellInfo.spanY;
            } else {
                ItemInfo itemInfo = (ItemInfo) dragObject.dragInfo;
                i = itemInfo.spanX;
                i2 = itemInfo.spanY;
            }
            int i5 = i2;
            int i6 = i;
            if (dragObject.dragInfo instanceof PendingAddWidgetInfo) {
                i3 = ((PendingAddWidgetInfo) dragObject.dragInfo).minSpanX;
                i4 = ((PendingAddWidgetInfo) dragObject.dragInfo).minSpanY;
            } else {
                i3 = i6;
                i4 = i5;
            }
            float[] fArr = this.mDragViewVisualCenter;
            int[] iArrFindNearestArea = findNearestArea((int) fArr[0], (int) fArr[1], i3, i4, cellLayout, this.mTargetCell);
            this.mTargetCell = iArrFindNearestArea;
            float[] fArr2 = this.mDragViewVisualCenter;
            float distanceFromCell = cellLayout.getDistanceFromCell(fArr2[0], fArr2[1], iArrFindNearestArea);
            if (willCreateUserFolder((ItemInfo) dragObject.dragInfo, cellLayout, this.mTargetCell, distanceFromCell, true) || willAddToExistingUserFolder((ItemInfo) dragObject.dragInfo, cellLayout, this.mTargetCell, distanceFromCell)) {
                return true;
            }
            float[] fArr3 = this.mDragViewVisualCenter;
            int[] iArrCreateArea = cellLayout.createArea((int) fArr3[0], (int) fArr3[1], i3, i4, i6, i5, null, this.mTargetCell, new int[2], 3);
            this.mTargetCell = iArrCreateArea;
            if (!(iArrCreateArea[0] >= 0 && iArrCreateArea[1] >= 0)) {
                boolean zIsHotseatLayout = this.mLauncher.isHotseatLayout(cellLayout);
                if (this.mTargetCell != null && zIsHotseatLayout) {
                    Hotseat hotseat = this.mLauncher.getHotseat();
                    int[] iArr = this.mTargetCell;
                    if (hotseat.isAllAppsButtonRank(hotseat.getOrderInHotseat(iArr[0], iArr[1]))) {
                        return false;
                    }
                }
                this.mLauncher.showOutOfSpaceMessage(zIsHotseatLayout);
                return false;
            }
            if (dragObject.dragInfo instanceof PendingAddWidgetInfo) {
                PendingAddWidgetInfo pendingAddWidgetInfo = (PendingAddWidgetInfo) dragObject.dragInfo;
                if (searchIMTKWidget(this, pendingAddWidgetInfo.componentName.getClassName()) != null) {
                    this.mLauncher.showOnlyOneWidgetMessage(pendingAddWidgetInfo);
                    return false;
                }
            }
        }
        return true;
    }

    boolean willAddToExistingUserFolder(Object obj, CellLayout cellLayout, int[] iArr, float f) {
        if (f > this.mMaxDistanceForFolderCreation) {
            return false;
        }
        View childAt = cellLayout.getChildAt(iArr[0], iArr[1]);
        if (childAt != null) {
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) childAt.getLayoutParams();
            if (layoutParams.useTmpCoords && (layoutParams.tmpCellX != layoutParams.cellX || layoutParams.tmpCellY != layoutParams.tmpCellY)) {
                return false;
            }
        }
        return (childAt instanceof FolderIcon) && ((FolderIcon) childAt).acceptDrop(obj);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x00be  */
    boolean createUserFolderIfNecessary(View view, long j, CellLayout cellLayout, int[] iArr, float f, boolean z, DragView dragView, Runnable runnable) {
        boolean z2;
        if (f > this.mMaxDistanceForFolderCreation) {
            return false;
        }
        View childAt = cellLayout.getChildAt(iArr[0], iArr[1]);
        if (L.DEBUG) {
            L.d(TAG, "createUserFolderIfNecessary: newView = " + view + ", mDragInfo = " + this.mDragInfo + ", container = " + j + ", target = " + cellLayout + ", targetCell[0] = " + iArr[0] + ", targetCell[1] = " + iArr[1] + ", external = " + z + ", dragView = " + dragView + ", v = " + childAt + ", mCreateUserFolderOnDrop = " + this.mCreateUserFolderOnDrop);
        }
        CellLayout.CellInfo cellInfo = this.mDragInfo;
        if (cellInfo != null) {
            CellLayout parentCellLayoutForView = getParentCellLayoutForView(cellInfo.cell);
            if (this.mDragInfo.cellX == iArr[0] && this.mDragInfo.cellY == iArr[1] && parentCellLayoutForView == cellLayout) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        if (childAt == null || z2 || !this.mCreateUserFolderOnDrop) {
            if (L.DEBUG) {
                L.d(TAG, "Do not create user folder: hasntMoved = " + z2 + ", mCreateUserFolderOnDrop = " + this.mCreateUserFolderOnDrop + ", v = " + childAt);
            }
            return false;
        }
        this.mCreateUserFolderOnDrop = false;
        int iIndexOfChild = iArr == null ? this.mDragInfo.screen : indexOfChild(cellLayout);
        boolean z3 = childAt.getTag() instanceof ShortcutInfo;
        boolean z4 = view.getTag() instanceof ShortcutInfo;
        if (L.DEBUG) {
            L.d(TAG, "createUserFolderIfNecessary: aboveShortcut = " + z3 + ", willBecomeShortcut = " + z4);
        }
        if (!z3 || !z4) {
            return false;
        }
        ShortcutInfo shortcutInfo = (ShortcutInfo) view.getTag();
        ShortcutInfo shortcutInfo2 = (ShortcutInfo) childAt.getTag();
        if (!z) {
            getParentCellLayoutForView(this.mDragInfo.cell).removeView(this.mDragInfo.cell);
        }
        Rect rect = new Rect();
        float descendantRectRelativeToSelf = this.mLauncher.getDragLayer().getDescendantRectRelativeToSelf(childAt, rect);
        cellLayout.removeView(childAt);
        FolderIcon folderIconAddFolder = this.mLauncher.addFolder(cellLayout, j, iIndexOfChild, iArr[0], iArr[1]);
        shortcutInfo2.cellX = -1;
        shortcutInfo2.cellY = -1;
        shortcutInfo.cellX = -1;
        shortcutInfo.cellY = -1;
        if (dragView != null) {
            folderIconAddFolder.performCreateAnimation(shortcutInfo2, childAt, shortcutInfo, dragView, rect, descendantRectRelativeToSelf, runnable);
        } else {
            folderIconAddFolder.addItem(shortcutInfo2);
            folderIconAddFolder.addItem(shortcutInfo);
        }
        return true;
    }

    boolean addToExistingFolderIfNecessary(View view, CellLayout cellLayout, int[] iArr, float f, DropTarget.DragObject dragObject, boolean z) {
        if (f > this.mMaxDistanceForFolderCreation) {
            return false;
        }
        View childAt = cellLayout.getChildAt(iArr[0], iArr[1]);
        if (L.DEBUG) {
            L.d(TAG, "createUserFolderIfNecessary: newView = " + view + ", target = " + cellLayout + ", targetCell[0] = " + iArr[0] + ", targetCell[1] = " + iArr[1] + ", external = " + z + ", d = " + dragObject + ", dropOverView = " + childAt);
        }
        if (!this.mAddToExistingFolderOnDrop) {
            return false;
        }
        this.mAddToExistingFolderOnDrop = false;
        if (childAt instanceof FolderIcon) {
            FolderIcon folderIcon = (FolderIcon) childAt;
            if (folderIcon.acceptDrop(dragObject.dragInfo)) {
                folderIcon.onDrop(dragObject);
                if (!z) {
                    getParentCellLayoutForView(this.mDragInfo.cell).removeView(this.mDragInfo.cell);
                }
                if (L.DEBUG) {
                    L.d(TAG, "addToExistingFolderIfNecessary: fi = " + folderIcon + ", d = " + dragObject);
                }
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [com.android.launcher2.DragLayer] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r32v2 */
    /* JADX WARN: Type inference failed for: r32v3 */
    /* JADX WARN: Type inference failed for: r32v7 */
    /* JADX WARN: Type inference failed for: r34v0, types: [android.view.View, com.android.launcher2.Workspace, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r6v3, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r9v2, types: [com.android.launcher2.CellLayout] */
    @Override // com.android.launcher2.DropTarget
    public void onDrop(DropTarget.DragObject dragObject) {
        ?? r15;
        ?? r8;
        char c;
        ?? r13;
        int i;
        ?? r32;
        View view;
        boolean z;
        int i2;
        int cellLayoutChildId;
        final LauncherAppWidgetHostView launcherAppWidgetHostView;
        AppWidgetProviderInfo appWidgetInfo;
        this.mDragViewVisualCenter = getDragViewVisualCenter(dragObject.x, dragObject.y, dragObject.xOffset, dragObject.yOffset, dragObject.dragView, this.mDragViewVisualCenter);
        final CellLayout cellLayout = this.mDropToLayout;
        final Runnable runnable = null;
        if (cellLayout != null) {
            if (this.mLauncher.isHotseatLayout(cellLayout)) {
                mapPointFromSelfToHotseatLayout(this.mLauncher.getHotseat(), this.mDragViewVisualCenter);
            } else {
                mapPointFromSelfToChild(cellLayout, this.mDragViewVisualCenter, null);
            }
        }
        if (L.DEBUG_DRAG) {
            L.d(TAG, "onDrop 1: drag view = " + dragObject.dragView + ", dragInfo = " + dragObject.dragInfo + ", dragSource  = " + dragObject.dragSource + ", dropTargetLayout = " + cellLayout + ", mDragInfo = " + this.mDragInfo + ", mInScrollArea = " + this.mInScrollArea + ", this = " + ((Object) this));
        }
        boolean z2 = false;
        if (dragObject.dragSource != this) {
            float[] fArr = this.mDragViewVisualCenter;
            onDropExternal(new int[]{(int) fArr[0], (int) fArr[1]}, dragObject.dragInfo, cellLayout, false, dragObject);
            return;
        }
        CellLayout.CellInfo cellInfo = this.mDragInfo;
        if (cellInfo != null) {
            View view2 = cellInfo.cell;
            if (cellLayout != null) {
                boolean z3 = getParentCellLayoutForView(view2) != cellLayout;
                boolean zIsHotseatLayout = this.mLauncher.isHotseatLayout(cellLayout);
                long j = zIsHotseatLayout ? -101L : -100L;
                int iIndexOfChild = this.mTargetCell[0] < 0 ? this.mDragInfo.screen : indexOfChild(cellLayout);
                CellLayout.CellInfo cellInfo2 = this.mDragInfo;
                int i3 = cellInfo2 != null ? cellInfo2.spanX : 1;
                CellLayout.CellInfo cellInfo3 = this.mDragInfo;
                int i4 = cellInfo3 != null ? cellInfo3.spanY : 1;
                float[] fArr2 = this.mDragViewVisualCenter;
                int[] iArrFindNearestArea = findNearestArea((int) fArr2[0], (int) fArr2[1], i3, i4, cellLayout, this.mTargetCell);
                this.mTargetCell = iArrFindNearestArea;
                float[] fArr3 = this.mDragViewVisualCenter;
                float distanceFromCell = cellLayout.getDistanceFromCell(fArr3[0], fArr3[1], iArrFindNearestArea);
                if (L.DEBUG_DRAG) {
                    view = view2;
                    L.d(TAG, "onDrop 2: cell = " + view + ",screen = " + iIndexOfChild + ", mInScrollArea = " + this.mInScrollArea + ", mTargetCell = " + this.mTargetCell + ", this = " + ((Object) this));
                } else {
                    view = view2;
                }
                if (!this.mInScrollArea && createUserFolderIfNecessary(view, j, cellLayout, this.mTargetCell, distanceFromCell, false, dragObject.dragView, null)) {
                    return;
                }
                if (addToExistingFolderIfNecessary(view, cellLayout, this.mTargetCell, distanceFromCell, dragObject, false)) {
                    return;
                }
                ItemInfo itemInfo = (ItemInfo) dragObject.dragInfo;
                int i5 = itemInfo.spanX;
                int i6 = itemInfo.spanY;
                if (itemInfo.minSpanX > 0 && itemInfo.minSpanY > 0) {
                    i5 = itemInfo.minSpanX;
                    i6 = itemInfo.minSpanY;
                }
                int[] iArr = new int[2];
                float[] fArr4 = this.mDragViewVisualCenter;
                r8 = 1;
                char c2 = 2;
                int[] iArrCreateArea = cellLayout.createArea((int) fArr4[0], (int) fArr4[1], i5, i6, i3, i4, view, this.mTargetCell, iArr, 1);
                this.mTargetCell = iArrCreateArea;
                boolean z4 = iArrCreateArea[0] >= 0 && iArrCreateArea[1] >= 0;
                View view3 = view;
                if (z4 && (view3 instanceof AppWidgetHostView) && (iArr[0] != itemInfo.spanX || iArr[1] != itemInfo.spanY)) {
                    itemInfo.spanX = iArr[0];
                    itemInfo.spanY = iArr[1];
                    AppWidgetResizeFrame.updateWidgetSizeRanges((AppWidgetHostView) view3, this.mLauncher, iArr[0], iArr[1]);
                    z = true;
                } else {
                    z = false;
                }
                if (this.mCurrentPage == iIndexOfChild || zIsHotseatLayout) {
                    i2 = -1;
                } else {
                    snapToPage(iIndexOfChild);
                    i2 = iIndexOfChild;
                }
                if (z4) {
                    final ItemInfo itemInfo2 = (ItemInfo) view3.getTag();
                    if (z3) {
                        getParentCellLayoutForView(view3).removeView(view3);
                        int[] iArr2 = this.mTargetCell;
                        addInScreen(view3, j, iIndexOfChild, iArr2[0], iArr2[1], itemInfo2.spanX, itemInfo2.spanY);
                    }
                    CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view3.getLayoutParams();
                    int i7 = this.mTargetCell[r7];
                    layoutParams.tmpCellX = i7;
                    layoutParams.cellX = i7;
                    r8 = 1;
                    int i8 = this.mTargetCell[1];
                    layoutParams.tmpCellY = i8;
                    layoutParams.cellY = i8;
                    layoutParams.cellHSpan = itemInfo.spanX;
                    layoutParams.cellVSpan = itemInfo.spanY;
                    layoutParams.isLockedToGrid = true;
                    if ((view3 instanceof AppWidgetHostView) && j == -100) {
                        int i9 = this.mDragInfo.screen;
                        int[] iArr3 = this.mTargetCell;
                        cellLayoutChildId = LauncherModel.getCellLayoutChildId(j + 1, i9, iArr3[0], iArr3[1], this.mDragInfo.spanX, this.mDragInfo.spanY);
                    } else {
                        int i10 = this.mDragInfo.screen;
                        int[] iArr4 = this.mTargetCell;
                        cellLayoutChildId = LauncherModel.getCellLayoutChildId(j, i10, iArr4[r7], iArr4[1], this.mDragInfo.spanX, this.mDragInfo.spanY);
                    }
                    view3.setId(cellLayoutChildId);
                    if (j == -101 || !(view3 instanceof LauncherAppWidgetHostView) || (appWidgetInfo = (launcherAppWidgetHostView = (LauncherAppWidgetHostView) view3).getAppWidgetInfo()) == null || appWidgetInfo.resizeMode == 0) {
                        runnable = null;
                    } else {
                        final Runnable runnable2 = new Runnable() { // from class: com.android.launcher2.Workspace.5
                            @Override // java.lang.Runnable
                            public void run() {
                                Workspace.this.mLauncher.getDragLayer().addResizeFrame(itemInfo2, launcherAppWidgetHostView, cellLayout);
                            }
                        };
                        runnable = new Runnable() { // from class: com.android.launcher2.Workspace.6
                            @Override // java.lang.Runnable
                            public void run() {
                                if (!Workspace.this.isPageMoving()) {
                                    runnable2.run();
                                } else {
                                    Workspace.this.mDelayedResizeRunnable = runnable2;
                                }
                            }
                        };
                    }
                    LauncherModel.moveItemInDatabase(this.mLauncher, itemInfo2, j, iIndexOfChild, layoutParams.cellX, layoutParams.cellY);
                    z2 = z;
                    i = i2;
                    r13 = view3;
                    r15 = r7;
                    c = c2;
                } else {
                    int i11 = i2;
                    r15 = 0;
                    CellLayout.LayoutParams layoutParams2 = (CellLayout.LayoutParams) view3.getLayoutParams();
                    this.mTargetCell[0] = layoutParams2.cellX;
                    this.mTargetCell[1] = layoutParams2.cellY;
                    ((CellLayout) view3.getParent().getParent()).markCellsAsOccupiedForView(view3);
                    z2 = z;
                    i = i11;
                    runnable = null;
                    r13 = view3;
                    c = c2;
                }
            } else {
                r15 = 0;
                r8 = 1;
                c = 2;
                r13 = view2;
                i = -1;
            }
            ?? r9 = (CellLayout) r13.getParent().getParent();
            Runnable runnable3 = new Runnable() { // from class: com.android.launcher2.Workspace.7
                @Override // java.lang.Runnable
                public void run() {
                    Workspace.this.mAnimatingViewIntoPlace = false;
                    Workspace.this.updateChildrenLayersEnabled(false);
                    Runnable runnable4 = runnable;
                    if (runnable4 != null) {
                        runnable4.run();
                    }
                }
            };
            this.mAnimatingViewIntoPlace = r8;
            if (dragObject.dragView.hasDrawn()) {
                ItemInfo itemInfo3 = (ItemInfo) r13.getTag();
                if (itemInfo3.itemType == 4) {
                    if (!z2) {
                        r32 = r15;
                    }
                    animateWidgetDrop(itemInfo3, r9, dragObject.dragView, runnable3, r32 == true ? 1 : 0, r13, false);
                } else {
                    this.mLauncher.getDragLayer().animateViewIntoPosition(dragObject.dragView, r13, i < 0 ? -1 : 300, runnable3, this);
                }
            } else {
                dragObject.deferDragViewCleanupPostAnimation = r15;
                r13.setVisibility(r15);
            }
            r9.onDropChild(r13);
            int[] iArr5 = this.mTargetCell;
            if (iArr5[r15] == -1 && iArr5[r8] == -1) {
                stopDragAppWidget(this.mDragInfo.screen);
            }
        }
    }

    public void setFinalScrollForPageChange(int i) {
        if (i >= 0) {
            this.mSavedScrollX = getScrollX();
            CellLayout cellLayout = (CellLayout) getChildAt(i);
            this.mSavedTranslationX = cellLayout.getTranslationX();
            this.mSavedRotationY = cellLayout.getRotationY();
            setScrollX(getChildOffset(i) - getRelativeChildOffset(i));
            cellLayout.setTranslationX(0.0f);
            cellLayout.setRotationY(0.0f);
        }
    }

    public void resetFinalScrollForPageChange(int i) {
        if (i >= 0) {
            CellLayout cellLayout = (CellLayout) getChildAt(i);
            setScrollX(this.mSavedScrollX);
            cellLayout.setTranslationX(this.mSavedTranslationX);
            cellLayout.setRotationY(this.mSavedRotationY);
        }
    }

    public void getViewLocationRelativeToSelf(View view, int[] iArr) {
        getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        view.getLocationInWindow(iArr);
        int i3 = iArr[0];
        int i4 = iArr[1];
        iArr[0] = i3 - i;
        iArr[1] = i4 - i2;
    }

    @Override // com.android.launcher2.DropTarget
    public void onDragEnter(DropTarget.DragObject dragObject) {
        if (L.DEBUG_DRAG) {
            L.d(TAG, "onDragEnter: d = " + dragObject + ", mDragTargetLayout = " + this.mDragTargetLayout);
        }
        this.mDragEnforcer.onDragEnter();
        this.mCreateUserFolderOnDrop = false;
        this.mAddToExistingFolderOnDrop = false;
        this.mDropToLayout = null;
        CellLayout currentDropLayout = getCurrentDropLayout();
        setCurrentDropLayout(currentDropLayout);
        setCurrentDragOverlappingLayout(currentDropLayout);
        if (LauncherApplication.isScreenLarge()) {
            showOutlines();
        }
    }

    static Rect getCellLayoutMetrics(Launcher launcher, int i) {
        Resources resources = launcher.getResources();
        Display defaultDisplay = launcher.getWindowManager().getDefaultDisplay();
        Point point = new Point();
        Point point2 = new Point();
        defaultDisplay.getCurrentSizeRange(point, point2);
        if (i == 0) {
            if (mLandscapeCellLayoutMetrics == null) {
                int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.workspace_left_padding_land);
                int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.workspace_right_padding_land);
                int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.workspace_top_padding_land);
                int dimensionPixelSize4 = resources.getDimensionPixelSize(R.dimen.workspace_bottom_padding_land);
                int i2 = (point2.x - dimensionPixelSize) - dimensionPixelSize2;
                int i3 = (point.y - dimensionPixelSize3) - dimensionPixelSize4;
                Rect rect = new Rect();
                mLandscapeCellLayoutMetrics = rect;
                CellLayout.getMetrics(rect, resources, i2, i3, LauncherModel.getCellCountX(), LauncherModel.getCellCountY(), i);
            }
            return mLandscapeCellLayoutMetrics;
        }
        if (i != 1) {
            return null;
        }
        if (mPortraitCellLayoutMetrics == null) {
            int dimensionPixelSize5 = resources.getDimensionPixelSize(R.dimen.workspace_left_padding_land);
            int dimensionPixelSize6 = resources.getDimensionPixelSize(R.dimen.workspace_right_padding_land);
            int dimensionPixelSize7 = resources.getDimensionPixelSize(R.dimen.workspace_top_padding_land);
            int dimensionPixelSize8 = resources.getDimensionPixelSize(R.dimen.workspace_bottom_padding_land);
            int i4 = (point.x - dimensionPixelSize5) - dimensionPixelSize6;
            int i5 = (point2.y - dimensionPixelSize7) - dimensionPixelSize8;
            Rect rect2 = new Rect();
            mPortraitCellLayoutMetrics = rect2;
            CellLayout.getMetrics(rect2, resources, i4, i5, LauncherModel.getCellCountX(), LauncherModel.getCellCountY(), i);
        }
        return mPortraitCellLayoutMetrics;
    }

    @Override // com.android.launcher2.DropTarget
    public void onDragExit(DropTarget.DragObject dragObject) {
        if (L.DEBUG_DRAG) {
            L.d(TAG, "onDragExit: d = " + dragObject);
        }
        this.mDragEnforcer.onDragExit();
        if (this.mInScrollArea) {
            if (isPageMoving()) {
                this.mDropToLayout = (CellLayout) getPageAt(getNextPage());
            } else {
                this.mDropToLayout = this.mDragOverlappingLayout;
            }
        } else {
            this.mDropToLayout = this.mDragTargetLayout;
        }
        int i = this.mDragMode;
        if (i == 1) {
            this.mCreateUserFolderOnDrop = true;
        } else if (i == 2) {
            this.mAddToExistingFolderOnDrop = true;
        }
        onResetScrollArea();
        if (L.DEBUG_DRAG) {
            L.d(TAG, "doDragExit: drag source = " + (dragObject != null ? dragObject.dragSource : null) + ", drag info = " + (dragObject != null ? dragObject.dragInfo : null) + ", mDragTargetLayout = " + this.mDragTargetLayout + ", mIsPageMoving = " + this.mIsPageMoving);
        }
        setCurrentDropLayout(null);
        setCurrentDragOverlappingLayout(null);
        this.mSpringLoadedDragController.cancel();
        if (this.mIsPageMoving) {
            return;
        }
        hideOutlines();
    }

    void setCurrentDropLayout(CellLayout cellLayout) {
        CellLayout cellLayout2 = this.mDragTargetLayout;
        if (cellLayout2 != null) {
            cellLayout2.revertTempState();
            this.mDragTargetLayout.onDragExit();
        }
        this.mDragTargetLayout = cellLayout;
        if (cellLayout != null) {
            cellLayout.onDragEnter();
        }
        cleanupReorder(true);
        cleanupFolderCreation();
        setCurrentDropOverCell(-1, -1);
    }

    void setCurrentDragOverlappingLayout(CellLayout cellLayout) {
        CellLayout cellLayout2 = this.mDragOverlappingLayout;
        if (cellLayout2 != null) {
            cellLayout2.setIsDragOverlapping(false);
        }
        this.mDragOverlappingLayout = cellLayout;
        if (cellLayout != null) {
            cellLayout.setIsDragOverlapping(true);
        }
        invalidate();
    }

    void setCurrentDropOverCell(int i, int i2) {
        if (i == this.mDragOverX && i2 == this.mDragOverY) {
            return;
        }
        this.mDragOverX = i;
        this.mDragOverY = i2;
        setDragMode(0);
    }

    void setDragMode(int i) {
        if (i != this.mDragMode) {
            if (i == 0) {
                cleanupAddToFolder();
                cleanupReorder(false);
                cleanupFolderCreation();
            } else if (i == 2) {
                cleanupReorder(true);
                cleanupFolderCreation();
            } else if (i == 1) {
                cleanupAddToFolder();
                cleanupReorder(true);
            } else if (i == 3) {
                cleanupAddToFolder();
                cleanupFolderCreation();
            }
            this.mDragMode = i;
        }
    }

    private void cleanupFolderCreation() {
        FolderIcon.FolderRingAnimator folderRingAnimator = this.mDragFolderRingAnimator;
        if (folderRingAnimator != null) {
            folderRingAnimator.animateToNaturalState();
        }
        this.mFolderCreationAlarm.cancelAlarm();
    }

    private void cleanupAddToFolder() {
        FolderIcon folderIcon = this.mDragOverFolderIcon;
        if (folderIcon != null) {
            folderIcon.onDragExit(null);
            this.mDragOverFolderIcon = null;
        }
    }

    private void cleanupReorder(boolean z) {
        if (z) {
            this.mReorderAlarm.cancelAlarm();
        }
        this.mLastReorderX = -1;
        this.mLastReorderY = -1;
    }

    void mapPointFromSelfToChild(View view, float[] fArr) {
        mapPointFromSelfToChild(view, fArr, null);
    }

    void mapPointFromSelfToChild(View view, float[] fArr, Matrix matrix) {
        if (matrix == null) {
            view.getMatrix().invert(this.mTempInverseMatrix);
            matrix = this.mTempInverseMatrix;
        }
        int scrollX = getScrollX();
        if (this.mNextPage != -1) {
            scrollX = this.mScroller.getFinalX();
        }
        fArr[0] = (fArr[0] + scrollX) - view.getLeft();
        fArr[1] = (fArr[1] + getScrollY()) - view.getTop();
        matrix.mapPoints(fArr);
    }

    void mapPointFromSelfToHotseatLayout(Hotseat hotseat, float[] fArr) {
        hotseat.getLayout().getMatrix().invert(this.mTempInverseMatrix);
        fArr[0] = (fArr[0] - hotseat.getLeft()) - hotseat.getLayout().getLeft();
        fArr[1] = (fArr[1] - hotseat.getTop()) - hotseat.getLayout().getTop();
        this.mTempInverseMatrix.mapPoints(fArr);
    }

    void mapPointFromChildToSelf(View view, float[] fArr) {
        view.getMatrix().mapPoints(fArr);
        int scrollX = getScrollX();
        if (this.mNextPage != -1) {
            scrollX = this.mScroller.getFinalX();
        }
        fArr[0] = fArr[0] - (scrollX - view.getLeft());
        fArr[1] = fArr[1] - (getScrollY() - view.getTop());
    }

    private static float squaredDistance(float[] fArr, float[] fArr2) {
        float f = fArr[0] - fArr2[0];
        float f2 = fArr2[1] - fArr2[1];
        return (f * f) + (f2 * f2);
    }

    boolean overlaps(CellLayout cellLayout, DragView dragView, int i, int i2, Matrix matrix) {
        float[] fArr = this.mTempDragCoordinates;
        fArr[0] = i;
        fArr[1] = i2;
        float[] fArr2 = this.mTempDragBottomRightCoordinates;
        fArr2[0] = fArr[0] + dragView.getDragRegionWidth();
        fArr2[1] = fArr[1] + dragView.getDragRegionHeight();
        mapPointFromSelfToChild(cellLayout, fArr, matrix);
        float fMax = Math.max(0.0f, fArr[0]);
        float fMax2 = Math.max(0.0f, fArr[1]);
        if (fMax <= cellLayout.getWidth() && fMax2 >= 0.0f) {
            mapPointFromSelfToChild(cellLayout, fArr2, matrix);
            float fMin = Math.min(cellLayout.getWidth(), fArr2[0]);
            float fMin2 = Math.min(cellLayout.getHeight(), fArr2[1]);
            if (fMin >= 0.0f && fMin2 <= cellLayout.getHeight() && (fMin - fMax) * (fMin2 - fMax2) > 0.0f) {
                return true;
            }
        }
        return false;
    }

    private CellLayout findMatchingPageForDragOver(DragView dragView, float f, float f2, boolean z) {
        int childCount = getChildCount();
        CellLayout cellLayout = null;
        float f3 = Float.MAX_VALUE;
        for (int i = 0; i < childCount; i++) {
            CellLayout cellLayout2 = (CellLayout) getChildAt(i);
            float[] fArr = {f, f2};
            cellLayout2.getMatrix().invert(this.mTempInverseMatrix);
            mapPointFromSelfToChild(cellLayout2, fArr, this.mTempInverseMatrix);
            if (fArr[0] >= 0.0f && fArr[0] <= cellLayout2.getWidth() && fArr[1] >= 0.0f && fArr[1] <= cellLayout2.getHeight()) {
                return cellLayout2;
            }
            if (!z) {
                float[] fArr2 = this.mTempCellLayoutCenterCoordinates;
                fArr2[0] = cellLayout2.getWidth() / 2;
                fArr2[1] = cellLayout2.getHeight() / 2;
                mapPointFromChildToSelf(cellLayout2, fArr2);
                fArr[0] = f;
                fArr[1] = f2;
                float fSquaredDistance = squaredDistance(fArr, fArr2);
                if (fSquaredDistance < f3) {
                    cellLayout = cellLayout2;
                    f3 = fSquaredDistance;
                }
                if (isSupportCycleSlidingScreen()) {
                    int iIndexOfChild = indexOfChild(cellLayout);
                    int i2 = childCount - 1;
                    if (iIndexOfChild == i2) {
                        cellLayout = (CellLayout) getChildAt(0);
                    } else if (iIndexOfChild == 0) {
                        cellLayout = (CellLayout) getChildAt(i2);
                    }
                }
            }
        }
        return cellLayout;
    }

    private float[] getDragViewVisualCenter(int i, int i2, int i3, int i4, DragView dragView, float[] fArr) {
        if (fArr == null) {
            fArr = new float[2];
        }
        int dimensionPixelSize = i + getResources().getDimensionPixelSize(R.dimen.dragViewOffsetX);
        int dimensionPixelSize2 = (i2 + getResources().getDimensionPixelSize(R.dimen.dragViewOffsetY)) - i4;
        fArr[0] = (dimensionPixelSize - i3) + (dragView.getDragRegion().width() / 2);
        fArr[1] = dimensionPixelSize2 + (dragView.getDragRegion().height() / 2);
        return fArr;
    }

    private boolean isDragWidget(DropTarget.DragObject dragObject) {
        return (dragObject.dragInfo instanceof LauncherAppWidgetInfo) || (dragObject.dragInfo instanceof PendingAddWidgetInfo);
    }

    private boolean isExternalDragWidget(DropTarget.DragObject dragObject) {
        return dragObject.dragSource != this && isDragWidget(dragObject);
    }

    @Override // com.android.launcher2.DropTarget
    public void onDragOver(DropTarget.DragObject dragObject) {
        int i;
        CellLayout cellLayout;
        L.d(TAG, "onDragOver: d = " + dragObject + ", dragInfo = " + dragObject.dragInfo + ", mInScrollArea = " + this.mInScrollArea + ", mIsSwitchingState = " + this.mIsSwitchingState);
        if (this.mInScrollArea || this.mIsSwitchingState || this.mState == State.SMALL) {
            return;
        }
        Rect rect = new Rect();
        ItemInfo itemInfo = (ItemInfo) dragObject.dragInfo;
        if (itemInfo.spanX < 0 || itemInfo.spanY < 0) {
            throw new RuntimeException("Improper spans found");
        }
        this.mDragViewVisualCenter = getDragViewVisualCenter(dragObject.x, dragObject.y, dragObject.xOffset, dragObject.yOffset, dragObject.dragView, this.mDragViewVisualCenter);
        CellLayout.CellInfo cellInfo = this.mDragInfo;
        View view = cellInfo == null ? null : cellInfo.cell;
        L.v("hede", "&&&&" + isSmall());
        if (isSmall()) {
            if (this.mLauncher.getHotseat() != null && !isExternalDragWidget(dragObject)) {
                this.mLauncher.getHotseat().getHitRect(rect);
                if (rect.contains(dragObject.x, dragObject.y)) {
                    return;
                }
            }
            CellLayout cellLayoutFindMatchingPageForDragOver = findMatchingPageForDragOver(dragObject.dragView, dragObject.x, dragObject.y, false);
            if (cellLayoutFindMatchingPageForDragOver != this.mDragTargetLayout) {
                setCurrentDropLayout(cellLayoutFindMatchingPageForDragOver);
                setCurrentDragOverlappingLayout(cellLayoutFindMatchingPageForDragOver);
                if (this.mState == State.SPRING_LOADED) {
                    if (this.mLauncher.isHotseatLayout(cellLayoutFindMatchingPageForDragOver)) {
                        this.mSpringLoadedDragController.cancel();
                    } else {
                        this.mSpringLoadedDragController.setAlarm(this.mDragTargetLayout);
                    }
                }
            }
        } else {
            if (this.mLauncher.getHotseat() != null && !isDragWidget(dragObject)) {
                this.mLauncher.getHotseat().getHitRect(rect);
                if (rect.contains(dragObject.x, dragObject.y)) {
                    return;
                }
            }
            CellLayout currentDropLayout = getCurrentDropLayout();
            if (currentDropLayout != this.mDragTargetLayout) {
                setCurrentDropLayout(currentDropLayout);
                setCurrentDragOverlappingLayout(currentDropLayout);
            }
        }
        CellLayout cellLayout2 = this.mDragTargetLayout;
        if (cellLayout2 != null) {
            if (this.mLauncher.isHotseatLayout(cellLayout2)) {
                mapPointFromSelfToHotseatLayout(this.mLauncher.getHotseat(), this.mDragViewVisualCenter);
            } else {
                mapPointFromSelfToChild(this.mDragTargetLayout, this.mDragViewVisualCenter, null);
            }
            ItemInfo itemInfo2 = (ItemInfo) dragObject.dragInfo;
            float[] fArr = this.mDragViewVisualCenter;
            int[] iArrFindNearestArea = findNearestArea((int) fArr[0], (int) fArr[1], itemInfo.spanX, itemInfo.spanY, this.mDragTargetLayout, this.mTargetCell);
            this.mTargetCell = iArrFindNearestArea;
            setCurrentDropOverCell(iArrFindNearestArea[0], iArrFindNearestArea[1]);
            CellLayout cellLayout3 = this.mDragTargetLayout;
            float[] fArr2 = this.mDragViewVisualCenter;
            float distanceFromCell = cellLayout3.getDistanceFromCell(fArr2[0], fArr2[1], this.mTargetCell);
            CellLayout cellLayout4 = this.mDragTargetLayout;
            int[] iArr = this.mTargetCell;
            manageFolderFeedback(itemInfo2, this.mDragTargetLayout, this.mTargetCell, distanceFromCell, cellLayout4.getChildAt(iArr[0], iArr[1]));
            int i2 = itemInfo.spanX;
            int i3 = itemInfo.spanY;
            if (itemInfo.minSpanX > 0 && itemInfo.minSpanY > 0) {
                i2 = itemInfo.minSpanX;
                i3 = itemInfo.minSpanY;
            }
            int i4 = i2;
            int i5 = i3;
            CellLayout cellLayout5 = this.mDragTargetLayout;
            float[] fArr3 = this.mDragViewVisualCenter;
            boolean zIsNearestDropLocationOccupied = cellLayout5.isNearestDropLocationOccupied((int) fArr3[0], (int) fArr3[1], itemInfo.spanX, itemInfo.spanY, view, this.mTargetCell);
            if (!zIsNearestDropLocationOccupied) {
                CellLayout cellLayout6 = this.mDragTargetLayout;
                Bitmap bitmap = this.mDragOutline;
                float[] fArr4 = this.mDragViewVisualCenter;
                int i6 = (int) fArr4[0];
                int i7 = (int) fArr4[1];
                int[] iArr2 = this.mTargetCell;
                cellLayout6.visualizeDropLocation(view, bitmap, i6, i7, iArr2[0], iArr2[1], itemInfo.spanX, itemInfo.spanY, false, dragObject.dragView.getDragVisualizeOffset(), dragObject.dragView.getDragRegion());
            } else {
                int i8 = this.mDragMode;
                if ((i8 == 0 || i8 == 3) && !this.mReorderAlarm.alarmPending()) {
                    int i9 = this.mLastReorderX;
                    int[] iArr3 = this.mTargetCell;
                    if (i9 != iArr3[0] || this.mLastReorderY != iArr3[1]) {
                        this.mReorderAlarm.setOnAlarmListener(new ReorderAlarmListener(this.mDragViewVisualCenter, i4, i5, itemInfo.spanX, itemInfo.spanY, dragObject.dragView, view));
                        this.mReorderAlarm.setAlarm(250L);
                    }
                }
                i = this.mDragMode;
                if ((i == 1 && i != 2 && zIsNearestDropLocationOccupied) || (cellLayout = this.mDragTargetLayout) == null) {
                    return;
                }
                cellLayout.revertTempState();
            }
            i = this.mDragMode;
            if (i == 1) {
            }
            cellLayout.revertTempState();
        }
    }

    private void manageFolderFeedback(ItemInfo itemInfo, CellLayout cellLayout, int[] iArr, float f, View view) {
        boolean zWillCreateUserFolder = willCreateUserFolder(itemInfo, cellLayout, iArr, f, false);
        if (this.mDragMode == 0 && zWillCreateUserFolder && !this.mFolderCreationAlarm.alarmPending()) {
            this.mFolderCreationAlarm.setOnAlarmListener(new FolderCreationAlarmListener(cellLayout, iArr[0], iArr[1]));
            this.mFolderCreationAlarm.setAlarm(0L);
            return;
        }
        boolean zWillAddToExistingUserFolder = willAddToExistingUserFolder(itemInfo, cellLayout, iArr, f);
        if (zWillAddToExistingUserFolder && this.mDragMode == 0) {
            FolderIcon folderIcon = (FolderIcon) view;
            this.mDragOverFolderIcon = folderIcon;
            folderIcon.onDragEnter(itemInfo);
            if (cellLayout != null) {
                cellLayout.clearDragOutlines();
            }
            setDragMode(2);
            return;
        }
        if (this.mDragMode == 2 && !zWillAddToExistingUserFolder) {
            setDragMode(0);
        }
        if (this.mDragMode != 1 || zWillCreateUserFolder) {
            return;
        }
        setDragMode(0);
    }

    class FolderCreationAlarmListener implements OnAlarmListener {
        int cellX;
        int cellY;
        CellLayout layout;

        public FolderCreationAlarmListener(CellLayout cellLayout, int i, int i2) {
            this.layout = cellLayout;
            this.cellX = i;
            this.cellY = i2;
        }

        @Override // com.android.launcher2.OnAlarmListener
        public void onAlarm(Alarm alarm) {
            if (Workspace.this.mDragFolderRingAnimator == null) {
                Workspace.this.mDragFolderRingAnimator = new FolderIcon.FolderRingAnimator(Workspace.this.mLauncher, null);
            }
            Workspace.this.mDragFolderRingAnimator.setCell(this.cellX, this.cellY);
            Workspace.this.mDragFolderRingAnimator.setCellLayout(this.layout);
            Workspace.this.mDragFolderRingAnimator.animateToAcceptState();
            this.layout.showFolderAccept(Workspace.this.mDragFolderRingAnimator);
            this.layout.clearDragOutlines();
            Workspace.this.setDragMode(1);
        }
    }

    class ReorderAlarmListener implements OnAlarmListener {
        View child;
        DragView dragView;
        float[] dragViewCenter;
        int minSpanX;
        int minSpanY;
        int spanX;
        int spanY;

        public ReorderAlarmListener(float[] fArr, int i, int i2, int i3, int i4, DragView dragView, View view) {
            this.dragViewCenter = fArr;
            this.minSpanX = i;
            this.minSpanY = i2;
            this.spanX = i3;
            this.spanY = i4;
            this.child = view;
            this.dragView = dragView;
        }

        @Override // com.android.launcher2.OnAlarmListener
        public void onAlarm(Alarm alarm) {
            int[] iArr = new int[2];
            Workspace workspace = Workspace.this;
            workspace.mTargetCell = workspace.findNearestArea((int) workspace.mDragViewVisualCenter[0], (int) Workspace.this.mDragViewVisualCenter[1], this.spanX, this.spanY, Workspace.this.mDragTargetLayout, Workspace.this.mTargetCell);
            Workspace workspace2 = Workspace.this;
            workspace2.mLastReorderX = workspace2.mTargetCell[0];
            Workspace workspace3 = Workspace.this;
            workspace3.mLastReorderY = workspace3.mTargetCell[1];
            Workspace workspace4 = Workspace.this;
            workspace4.mTargetCell = workspace4.mDragTargetLayout.createArea((int) Workspace.this.mDragViewVisualCenter[0], (int) Workspace.this.mDragViewVisualCenter[1], this.minSpanX, this.minSpanY, this.spanX, this.spanY, this.child, Workspace.this.mTargetCell, iArr, 0);
            if (Workspace.this.mTargetCell[0] < 0 || Workspace.this.mTargetCell[1] < 0) {
                Workspace.this.mDragTargetLayout.revertTempState();
            } else {
                Workspace.this.setDragMode(3);
            }
            Workspace.this.mDragTargetLayout.visualizeDropLocation(this.child, Workspace.this.mDragOutline, (int) Workspace.this.mDragViewVisualCenter[0], (int) Workspace.this.mDragViewVisualCenter[1], Workspace.this.mTargetCell[0], Workspace.this.mTargetCell[1], iArr[0], iArr[1], (iArr[0] == this.spanX && iArr[1] == this.spanY) ? false : true, this.dragView.getDragVisualizeOffset(), this.dragView.getDragRegion());
        }
    }

    @Override // android.view.View, com.android.launcher2.DropTarget
    public void getHitRect(Rect rect) {
        rect.set(0, 0, this.mDisplaySize.x, this.mDisplaySize.y);
    }

    public boolean addExternalItemToScreen(ItemInfo itemInfo, CellLayout cellLayout) {
        if (L.DEBUG) {
            L.d(TAG, "addExternalItemToScreen: dragInfo = " + itemInfo + ", layout = " + cellLayout);
        }
        if (cellLayout.findCellForSpan(this.mTempEstimate, itemInfo.spanX, itemInfo.spanY)) {
            onDropExternal(itemInfo.dropPos, itemInfo, cellLayout, false);
            return true;
        }
        Launcher launcher = this.mLauncher;
        launcher.showOutOfSpaceMessage(launcher.isHotseatLayout(cellLayout));
        return false;
    }

    private void onDropExternal(int[] iArr, Object obj, CellLayout cellLayout, boolean z) {
        onDropExternal(iArr, obj, cellLayout, z, null);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x010e  */
    private void onDropExternal(int[] iArr, Object obj, CellLayout cellLayout, boolean z, DropTarget.DragObject dragObject) {
        CellLayout cellLayout2;
        View viewCreateShortcut;
        ItemInfo itemInfo;
        char c;
        CellLayout cellLayout3;
        boolean z2;
        int i;
        boolean z3;
        Runnable runnable = new Runnable() { // from class: com.android.launcher2.Workspace.8
            @Override // java.lang.Runnable
            public void run() {
                Workspace.this.mLauncher.exitSpringLoadedDragModeDelayed(true, false, null);
            }
        };
        ItemInfo itemInfo2 = (ItemInfo) obj;
        int i2 = itemInfo2.spanX;
        int i3 = itemInfo2.spanY;
        CellLayout.CellInfo cellInfo = this.mDragInfo;
        if (cellInfo != null) {
            i2 = cellInfo.spanX;
            i3 = this.mDragInfo.spanY;
        }
        int i4 = i2;
        int i5 = i3;
        final long j = this.mLauncher.isHotseatLayout(cellLayout) ? -101L : -100L;
        final int iIndexOfChild = indexOfChild(cellLayout);
        if (!this.mLauncher.isHotseatLayout(cellLayout) && iIndexOfChild != this.mCurrentPage && this.mState != State.SPRING_LOADED) {
            snapToPage(iIndexOfChild);
        }
        if (L.DEBUG) {
            L.d(TAG, "onDropExternal: touchXY[0] = " + (iArr != null ? iArr[0] : -1) + ", touchXY[1] = " + (iArr != null ? iArr[1] : -1) + ", dragInfo = " + obj + ",info = " + itemInfo2 + ", cellLayout = " + cellLayout + ", insertAtFirst = " + z + ", dragInfo = " + dragObject.dragInfo + ", screen = " + iIndexOfChild + ", container = " + j);
        }
        if (itemInfo2 instanceof PendingAddItemInfo) {
            final PendingAddItemInfo pendingAddItemInfo = (PendingAddItemInfo) obj;
            if (pendingAddItemInfo.itemType == 1) {
                int[] iArrFindNearestArea = findNearestArea(iArr[0], iArr[1], i4, i5, cellLayout, this.mTargetCell);
                this.mTargetCell = iArrFindNearestArea;
                float[] fArr = this.mDragViewVisualCenter;
                float distanceFromCell = cellLayout.getDistanceFromCell(fArr[0], fArr[1], iArrFindNearestArea);
                if (willCreateUserFolder((ItemInfo) dragObject.dragInfo, cellLayout, this.mTargetCell, distanceFromCell, true) || willAddToExistingUserFolder((ItemInfo) dragObject.dragInfo, cellLayout, this.mTargetCell, distanceFromCell)) {
                    z2 = false;
                } else {
                    z2 = true;
                }
            } else {
                z2 = true;
            }
            final ItemInfo itemInfo3 = (ItemInfo) dragObject.dragInfo;
            if (z2) {
                int i6 = itemInfo3.spanX;
                int i7 = itemInfo3.spanY;
                if (itemInfo3.minSpanX > 0 && itemInfo3.minSpanY > 0) {
                    i6 = itemInfo3.minSpanX;
                    i7 = itemInfo3.minSpanY;
                }
                int[] iArr2 = new int[2];
                float[] fArr2 = this.mDragViewVisualCenter;
                i = 1;
                this.mTargetCell = cellLayout.createArea((int) fArr2[0], (int) fArr2[1], i6, i7, itemInfo2.spanX, itemInfo2.spanY, null, this.mTargetCell, iArr2, 2);
                z3 = (iArr2[0] == itemInfo3.spanX && iArr2[1] == itemInfo3.spanY) ? false : true;
                itemInfo3.spanX = iArr2[0];
                itemInfo3.spanY = iArr2[1];
            } else {
                i = 1;
                z3 = false;
            }
            Runnable runnable2 = new Runnable() { // from class: com.android.launcher2.Workspace.9
                @Override // java.lang.Runnable
                public void run() {
                    int i8 = pendingAddItemInfo.itemType;
                    if (i8 == 1) {
                        Workspace.this.mLauncher.processShortcutFromDrop(pendingAddItemInfo.componentName, j, iIndexOfChild, Workspace.this.mTargetCell, null);
                    } else {
                        if (i8 == 4) {
                            Workspace.this.mLauncher.addAppWidgetFromDrop((PendingAddWidgetInfo) pendingAddItemInfo, j, iIndexOfChild, Workspace.this.mTargetCell, new int[]{itemInfo3.spanX, itemInfo3.spanY}, null);
                            return;
                        }
                        throw new IllegalStateException("Unknown item type: " + pendingAddItemInfo.itemType);
                    }
                }
            };
            AppWidgetHostView appWidgetHostView = pendingAddItemInfo.itemType == 4 ? ((PendingAddWidgetInfo) pendingAddItemInfo).boundWidget : null;
            if ((appWidgetHostView instanceof AppWidgetHostView) && z3) {
                AppWidgetResizeFrame.updateWidgetSizeRanges(appWidgetHostView, this.mLauncher, itemInfo3.spanX, itemInfo3.spanY);
            }
            animateWidgetDrop(itemInfo2, cellLayout, dragObject.dragView, runnable2, (pendingAddItemInfo.itemType != 4 || ((PendingAddWidgetInfo) pendingAddItemInfo).info.configure == null) ? 0 : i, appWidgetHostView, true);
            return;
        }
        int i8 = itemInfo2.itemType;
        if (i8 == 0 || i8 == 1) {
            cellLayout2 = cellLayout;
            ItemInfo shortcutInfo = (itemInfo2.container == -1 && (itemInfo2 instanceof ApplicationInfo)) ? new ShortcutInfo((ApplicationInfo) itemInfo2) : itemInfo2;
            viewCreateShortcut = this.mLauncher.createShortcut(R.layout.application, cellLayout2, (ShortcutInfo) shortcutInfo);
            itemInfo = shortcutInfo;
        } else if (i8 == 2) {
            cellLayout2 = cellLayout;
            itemInfo = itemInfo2;
            viewCreateShortcut = FolderIcon.fromXml(R.layout.folder_icon, this.mLauncher, cellLayout2, (FolderInfo) itemInfo2, this.mIconCache);
        } else {
            throw new IllegalStateException("Unknown item type: " + itemInfo2.itemType);
        }
        if (iArr != null) {
            int[] iArrFindNearestArea2 = findNearestArea(iArr[0], iArr[1], i4, i5, cellLayout, this.mTargetCell);
            this.mTargetCell = iArrFindNearestArea2;
            float[] fArr3 = this.mDragViewVisualCenter;
            float distanceFromCell2 = cellLayout2.getDistanceFromCell(fArr3[0], fArr3[1], iArrFindNearestArea2);
            dragObject.postAnimationRunnable = runnable;
            if (createUserFolderIfNecessary(viewCreateShortcut, j, cellLayout, this.mTargetCell, distanceFromCell2, true, dragObject.dragView, dragObject.postAnimationRunnable)) {
                return;
            }
            if (addToExistingFolderIfNecessary(viewCreateShortcut, cellLayout, this.mTargetCell, distanceFromCell2, dragObject, true)) {
                return;
            }
        }
        if (iArr != null) {
            float[] fArr4 = this.mDragViewVisualCenter;
            cellLayout3 = cellLayout;
            c = 1;
            this.mTargetCell = cellLayout3.createArea((int) fArr4[0], (int) fArr4[1], 1, 1, 1, 1, null, this.mTargetCell, null, 2);
        } else {
            c = 1;
            cellLayout3 = cellLayout;
            cellLayout3.findCellForSpan(this.mTargetCell, 1, 1);
        }
        int[] iArr3 = this.mTargetCell;
        int i9 = iArr3[0];
        int i10 = iArr3[c];
        int i11 = itemInfo.spanX;
        int i12 = itemInfo.spanY;
        View view = viewCreateShortcut;
        addInScreen(viewCreateShortcut, j, iIndexOfChild, i9, i10, i11, i12, z);
        cellLayout3.onDropChild(view);
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
        cellLayout.getShortcutsAndWidgets().measureChild(view);
        LauncherModel.addOrMoveItemInDatabase(this.mLauncher, itemInfo, j, iIndexOfChild, layoutParams.cellX, layoutParams.cellY);
        if (dragObject.dragView != null) {
            setFinalTransitionTransform(cellLayout3);
            this.mLauncher.getDragLayer().animateViewIntoPosition(dragObject.dragView, view, runnable);
            resetTransitionTransform(cellLayout3);
        }
    }

    public Bitmap createWidgetBitmap(ItemInfo itemInfo, View view) {
        int[] iArrEstimateItemSize = this.mLauncher.getWorkspace().estimateItemSize(itemInfo.spanX, itemInfo.spanY, itemInfo, false);
        int visibility = view.getVisibility();
        view.setVisibility(0);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iArrEstimateItemSize[0], 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iArrEstimateItemSize[1], 1073741824);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArrEstimateItemSize[0], iArrEstimateItemSize[1], Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        view.layout(0, 0, iArrEstimateItemSize[0], iArrEstimateItemSize[1]);
        view.draw(canvas);
        canvas.setBitmap(null);
        view.setVisibility(visibility);
        return bitmapCreateBitmap;
    }

    private void getFinalPositionForDropAnimation(int[] iArr, float[] fArr, DragView dragView, CellLayout cellLayout, ItemInfo itemInfo, int[] iArr2, boolean z, boolean z2) {
        float fHeight;
        Rect rectEstimateItemPosition = estimateItemPosition(cellLayout, itemInfo, iArr2[0], iArr2[1], itemInfo.spanX, itemInfo.spanY);
        iArr[0] = rectEstimateItemPosition.left;
        iArr[1] = rectEstimateItemPosition.top;
        setFinalTransitionTransform(cellLayout);
        float descendantCoordRelativeToSelf = this.mLauncher.getDragLayer().getDescendantCoordRelativeToSelf(cellLayout, iArr);
        resetTransitionTransform(cellLayout);
        float f = 1.0f;
        if (z2) {
            float fWidth = (rectEstimateItemPosition.width() * 1.0f) / dragView.getMeasuredWidth();
            fHeight = (rectEstimateItemPosition.height() * 1.0f) / dragView.getMeasuredHeight();
            f = fWidth;
        } else {
            fHeight = 1.0f;
        }
        iArr[0] = (int) (iArr[0] - ((dragView.getMeasuredWidth() - (rectEstimateItemPosition.width() * descendantCoordRelativeToSelf)) / WALLPAPER_SCREENS_SPAN));
        iArr[1] = (int) (iArr[1] - ((dragView.getMeasuredHeight() - (rectEstimateItemPosition.height() * descendantCoordRelativeToSelf)) / WALLPAPER_SCREENS_SPAN));
        fArr[0] = f * descendantCoordRelativeToSelf;
        fArr[1] = fHeight * descendantCoordRelativeToSelf;
    }

    public void animateWidgetDrop(ItemInfo itemInfo, CellLayout cellLayout, DragView dragView, final Runnable runnable, int i, final View view, boolean z) {
        Rect rect = new Rect();
        this.mLauncher.getDragLayer().getViewRectRelativeToSelf(dragView, rect);
        int[] iArr = new int[2];
        float[] fArr = new float[2];
        boolean z2 = !(itemInfo instanceof PendingAddShortcutInfo);
        getFinalPositionForDropAnimation(iArr, fArr, dragView, cellLayout, itemInfo, this.mTargetCell, z, z2);
        int integer = this.mLauncher.getResources().getInteger(R.integer.config_dropAnimMaxDuration) - 200;
        if (L.DEBUG) {
            L.d(TAG, "animateWidgetDrop: info = " + itemInfo + ", animationType = " + i + ", finalPos = (" + iArr[0] + ", " + iArr[1] + "), scaleXY = (" + fArr[0] + ", " + fArr[1] + "), scalePreview = " + z2 + ",external = " + z);
        }
        if ((view instanceof AppWidgetHostView) && z) {
            L.d(TAG, "6557954 Animate widget drop, final view is appWidgetHostView");
            this.mLauncher.getDragLayer().removeView(view);
        }
        if ((i == 2 || z) && view != null) {
            dragView.setCrossFadeBitmap(createWidgetBitmap(itemInfo, view));
            dragView.crossFade((int) (integer * 0.8f));
        } else if (itemInfo.itemType == 4 && z) {
            float fMin = Math.min(fArr[0], fArr[1]);
            fArr[1] = fMin;
            fArr[0] = fMin;
        }
        DragLayer dragLayer = this.mLauncher.getDragLayer();
        if (i == 4) {
            this.mLauncher.getDragLayer().animateViewIntoPosition(dragView, iArr, 0.0f, 0.1f, 0.1f, 0, runnable, integer);
        } else {
            dragLayer.animateViewIntoPosition(dragView, rect.left, rect.top, iArr[0], iArr[1], 1.0f, 1.0f, 1.0f, fArr[0], fArr[1], new Runnable() { // from class: com.android.launcher2.Workspace.10
                @Override // java.lang.Runnable
                public void run() {
                    View view2 = view;
                    if (view2 != null) {
                        view2.setVisibility(0);
                    }
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            }, i == 1 ? 2 : 0, integer, this);
        }
    }

    public void setFinalTransitionTransform(CellLayout cellLayout) {
        if (isSwitchingState()) {
            int iIndexOfChild = indexOfChild(cellLayout);
            this.mCurrentScaleX = cellLayout.getScaleX();
            this.mCurrentScaleY = cellLayout.getScaleY();
            this.mCurrentTranslationX = cellLayout.getTranslationX();
            this.mCurrentTranslationY = cellLayout.getTranslationY();
            this.mCurrentRotationY = cellLayout.getRotationY();
            cellLayout.setScaleX(this.mNewScaleXs[iIndexOfChild]);
            cellLayout.setScaleY(this.mNewScaleYs[iIndexOfChild]);
            cellLayout.setTranslationX(this.mNewTranslationXs[iIndexOfChild]);
            cellLayout.setTranslationY(this.mNewTranslationYs[iIndexOfChild]);
            cellLayout.setRotationY(this.mNewRotationYs[iIndexOfChild]);
        }
    }

    public void resetTransitionTransform(CellLayout cellLayout) {
        if (isSwitchingState()) {
            this.mCurrentScaleX = cellLayout.getScaleX();
            this.mCurrentScaleY = cellLayout.getScaleY();
            this.mCurrentTranslationX = cellLayout.getTranslationX();
            this.mCurrentTranslationY = cellLayout.getTranslationY();
            this.mCurrentRotationY = cellLayout.getRotationY();
            cellLayout.setScaleX(this.mCurrentScaleX);
            cellLayout.setScaleY(this.mCurrentScaleY);
            cellLayout.setTranslationX(this.mCurrentTranslationX);
            cellLayout.setTranslationY(this.mCurrentTranslationY);
            cellLayout.setRotationY(this.mCurrentRotationY);
        }
    }

    public CellLayout getCurrentDropLayout() {
        return (CellLayout) getChildAt(getNextPage());
    }

    public CellLayout.CellInfo getDragInfo() {
        return this.mDragInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] findNearestArea(int i, int i2, int i3, int i4, CellLayout cellLayout, int[] iArr) {
        return cellLayout.findNearestArea(i, i2, i3, i4, iArr);
    }

    void setup(DragController dragController) {
        this.mSpringLoadedDragController = new SpringLoadedDragController(this.mLauncher);
        this.mDragController = dragController;
        updateChildrenLayersEnabled(false);
        setWallpaperDimension();
    }

    @Override // com.android.launcher2.DragSource
    public void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z, boolean z2) {
        CellLayout.CellInfo cellInfo;
        CellLayout layout;
        L.d(TAG, "onDropCompleted: target = " + view + ", d = " + dragObject + ", isFlingToDelete = " + z + ", mDragInfo = " + this.mDragInfo + ", success = " + z2);
        if (z2 || this.mLauncher.isHotseatLayout(view)) {
            if (view != this && (cellInfo = this.mDragInfo) != null) {
                getParentCellLayoutForView(cellInfo.cell).removeView(this.mDragInfo.cell);
                if (this.mDragInfo.cell instanceof DropTarget) {
                    this.mDragController.removeDropTarget((DropTarget) this.mDragInfo.cell);
                }
            }
        } else if (this.mDragInfo != null) {
            if (this.mLauncher.isHotseatLayout(view)) {
                layout = this.mLauncher.getHotseat().getLayout();
            } else {
                layout = (CellLayout) getChildAt(this.mDragInfo.screen);
            }
            layout.onDropChild(this.mDragInfo.cell);
            layout.markCellsAsOccupiedForView(this.mDragInfo.cell);
        }
        if (dragObject.cancelled && this.mDragInfo.cell != null) {
            this.mDragInfo.cell.setVisibility(0);
        }
        stopDragAppWidget(this.mCurrentPage);
        this.mDragOutline = null;
        this.mDragInfo = null;
        hideScrollingIndicator(false);
    }

    void updateItemLocationsInDatabase(CellLayout cellLayout) {
        int i;
        int childCount = cellLayout.getShortcutsAndWidgets().getChildCount();
        int iIndexOfChild = indexOfChild(cellLayout);
        if (this.mLauncher.isHotseatLayout(cellLayout)) {
            iIndexOfChild = -1;
            i = -101;
        } else {
            i = -100;
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ItemInfo itemInfo = (ItemInfo) cellLayout.getShortcutsAndWidgets().getChildAt(i2).getTag();
            if (itemInfo != null && itemInfo.requiresDbUpdate) {
                itemInfo.requiresDbUpdate = false;
                LauncherModel.modifyItemInDatabase(this.mLauncher, itemInfo, i, iIndexOfChild, itemInfo.cellX, itemInfo.cellY, itemInfo.spanX, itemInfo.spanY);
            }
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(parcelable);
        if (L.DEBUG) {
            L.d(TAG, "onRestoreInstanceState: state = " + parcelable + ", mCurrentPage = " + this.mCurrentPage);
        }
        Launcher.setScreen(this.mCurrentPage);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.mSavedStates = sparseArray;
    }

    public void restoreInstanceStateForChild(int i) {
        if (this.mSavedStates != null) {
            this.mRestoredPages.add(Integer.valueOf(i));
            ((CellLayout) getChildAt(i)).restoreInstanceState(this.mSavedStates);
        }
    }

    public void restoreInstanceStateForRemainingPages() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (!this.mRestoredPages.contains(Integer.valueOf(i))) {
                restoreInstanceStateForChild(i);
            }
        }
        this.mRestoredPages.clear();
    }

    @Override // com.android.launcher2.PagedView, com.android.launcher2.DragScroller
    public void scrollLeft() {
        if (!isSmall() && !this.mIsSwitchingState) {
            super.scrollLeft();
        }
        Folder openFolder = getOpenFolder();
        if (openFolder != null) {
            openFolder.completeDragExit();
        }
    }

    @Override // com.android.launcher2.PagedView, com.android.launcher2.DragScroller
    public void scrollRight() {
        if (!isSmall() && !this.mIsSwitchingState) {
            super.scrollRight();
        }
        Folder openFolder = getOpenFolder();
        if (openFolder != null) {
            openFolder.completeDragExit();
        }
    }

    @Override // com.android.launcher2.DragScroller
    public boolean onEnterScrollArea(int i, int i2, int i3) {
        boolean z = !LauncherApplication.isScreenLandscape(getContext());
        if (this.mLauncher.getHotseat() != null && z) {
            Rect rect = new Rect();
            this.mLauncher.getHotseat().getHitRect(rect);
            if (rect.contains(i, i2)) {
                return false;
            }
        }
        if (!isSmall() && !this.mIsSwitchingState) {
            this.mInScrollArea = true;
            int nextPage = getNextPage() + (i3 == 0 ? -1 : 1);
            if (isSupportCycleSlidingScreen()) {
                if (i3 == 1 && nextPage == getChildCount()) {
                    nextPage = 0;
                } else if (i3 == 0 && nextPage == -1) {
                    nextPage = getChildCount() - 1;
                }
            }
            setCurrentDropLayout(null);
            if (nextPage >= 0 && nextPage < getChildCount()) {
                setCurrentDragOverlappingLayout((CellLayout) getChildAt(nextPage));
                invalidate();
                return true;
            }
        }
        return false;
    }

    @Override // com.android.launcher2.DragScroller
    public boolean onExitScrollArea() {
        if (!this.mInScrollArea) {
            return false;
        }
        invalidate();
        CellLayout currentDropLayout = getCurrentDropLayout();
        setCurrentDropLayout(currentDropLayout);
        setCurrentDragOverlappingLayout(currentDropLayout);
        this.mInScrollArea = false;
        return true;
    }

    private void onResetScrollArea() {
        setCurrentDragOverlappingLayout(null);
        this.mInScrollArea = false;
    }

    CellLayout getParentCellLayoutForView(View view) {
        for (CellLayout cellLayout : getWorkspaceAndHotseatCellLayouts()) {
            if (cellLayout.getShortcutsAndWidgets().indexOfChild(view) > -1) {
                return cellLayout;
            }
        }
        return null;
    }

    ArrayList<CellLayout> getWorkspaceAndHotseatCellLayouts() {
        ArrayList<CellLayout> arrayList = new ArrayList<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            arrayList.add((CellLayout) getChildAt(i));
        }
        if (this.mLauncher.getHotseat() != null) {
            arrayList.add(this.mLauncher.getHotseat().getLayout());
        }
        return arrayList;
    }

    ArrayList<ShortcutAndWidgetContainer> getAllShortcutAndWidgetContainers() {
        ArrayList<ShortcutAndWidgetContainer> arrayList = new ArrayList<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            arrayList.add(((CellLayout) getChildAt(i)).getShortcutsAndWidgets());
        }
        if (this.mLauncher.getHotseat() != null) {
            arrayList.add(this.mLauncher.getHotseat().getLayout().getShortcutsAndWidgets());
        }
        return arrayList;
    }

    public Folder getFolderForTag(Object obj) {
        for (ShortcutAndWidgetContainer shortcutAndWidgetContainer : getAllShortcutAndWidgetContainers()) {
            int childCount = shortcutAndWidgetContainer.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = shortcutAndWidgetContainer.getChildAt(i);
                if (childAt instanceof Folder) {
                    Folder folder = (Folder) childAt;
                    if (folder.getInfo() == obj && folder.getInfo().opened) {
                        return folder;
                    }
                }
            }
        }
        return null;
    }

    public View getViewForTag(Object obj) {
        for (ShortcutAndWidgetContainer shortcutAndWidgetContainer : getAllShortcutAndWidgetContainers()) {
            int childCount = shortcutAndWidgetContainer.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = shortcutAndWidgetContainer.getChildAt(i);
                if (childAt.getTag() == obj) {
                    return childAt;
                }
            }
        }
        return null;
    }

    void clearDropTargets() {
        for (ShortcutAndWidgetContainer shortcutAndWidgetContainer : getAllShortcutAndWidgetContainers()) {
            int childCount = shortcutAndWidgetContainer.getChildCount();
            for (int i = 0; i < childCount; i++) {
                KeyEvent.Callback childAt = shortcutAndWidgetContainer.getChildAt(i);
                if (childAt instanceof DropTarget) {
                    this.mDragController.removeDropTarget((DropTarget) childAt);
                }
            }
        }
    }

    public void removeItems(ArrayList<String> arrayList) {
        final HashSet hashSet = new HashSet();
        hashSet.addAll(arrayList);
        if (L.DEBUG) {
            L.d(TAG, "removeFinalItem: packageNames = " + hashSet);
        }
        for (final CellLayout cellLayout : getWorkspaceAndHotseatCellLayouts()) {
            final ShortcutAndWidgetContainer shortcutsAndWidgets = cellLayout.getShortcutsAndWidgets();
            post(new Runnable() { // from class: com.android.launcher2.Workspace.11
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                @Override // java.lang.Runnable
                public void run() {
                    LauncherAppWidgetInfo launcherAppWidgetInfo;
                    ComponentName componentName;
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.clear();
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.clear();
                    int childCount = shortcutsAndWidgets.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        View childAt = shortcutsAndWidgets.getChildAt(i);
                        Object tag = childAt.getTag();
                        if (tag instanceof ShortcutInfo) {
                            ShortcutInfo shortcutInfo = (ShortcutInfo) tag;
                            ComponentName component = shortcutInfo.intent.getComponent();
                            if (component != null && hashSet.contains(component.getPackageName())) {
                                boolean zIsComponentEnabled = Utilities.isComponentEnabled(Workspace.this.getContext(), component);
                                if (L.DEBUG) {
                                    L.d(Workspace.TAG, "removeFinalItem: name = " + component + ",isComponentEnabled = " + zIsComponentEnabled);
                                }
                                if (!zIsComponentEnabled) {
                                    LauncherModel.deleteItemFromDatabase(Workspace.this.mLauncher, shortcutInfo);
                                    arrayList2.add(childAt);
                                }
                            }
                        } else if (tag instanceof FolderInfo) {
                            FolderInfo folderInfo = (FolderInfo) tag;
                            folderInfo.contents.size();
                            ArrayList arrayList4 = new ArrayList();
                            if (!Workspace.this.isNeedToDelayRemoveFolderItems(folderInfo, hashSet, arrayList4)) {
                                Workspace.this.removeFolderItems(folderInfo, arrayList4);
                            } else {
                                arrayList3.add(folderInfo);
                            }
                        } else if ((tag instanceof LauncherAppWidgetInfo) && (componentName = (launcherAppWidgetInfo = (LauncherAppWidgetInfo) tag).providerName) != null && hashSet.contains(componentName.getPackageName())) {
                            LauncherModel.deleteItemFromDatabase(Workspace.this.mLauncher, launcherAppWidgetInfo);
                            arrayList2.add(childAt);
                        }
                    }
                    int size = arrayList3.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        FolderInfo folderInfo2 = (FolderInfo) arrayList3.get(i2);
                        ArrayList arrayList5 = new ArrayList();
                        Workspace.this.getRemoveFolderItems(folderInfo2, hashSet, arrayList5);
                        Workspace.this.removeFolderItems(folderInfo2, arrayList5);
                    }
                    int size2 = arrayList2.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        View view = (View) arrayList2.get(i3);
                        cellLayout.removeViewInLayout(view);
                        if (view instanceof DropTarget) {
                            Workspace.this.mDragController.removeDropTarget((DropTarget) view);
                        }
                    }
                    if (size2 > 0) {
                        shortcutsAndWidgets.requestLayout();
                        shortcutsAndWidgets.invalidate();
                    }
                }
            });
        }
        final Context context = getContext();
        post(new Runnable() { // from class: com.android.launcher2.Workspace.12
            @Override // java.lang.Runnable
            public void run() {
                Set<String> stringSet = context.getSharedPreferences(LauncherApplication.getSharedPreferencesKey(), 0).getStringSet(InstallShortcutReceiver.NEW_APPS_LIST_KEY, null);
                if (stringSet != null) {
                    synchronized (stringSet) {
                        Iterator<String> it = stringSet.iterator();
                        while (it.hasNext()) {
                            try {
                                Intent uri = Intent.parseUri(it.next(), 0);
                                if (hashSet.contains(ItemInfo.getPackageName(uri))) {
                                    it.remove();
                                }
                                Iterator<ItemInfo> it2 = LauncherModel.getWorkspaceShortcutItemInfosWithIntent(uri).iterator();
                                while (it2.hasNext()) {
                                    LauncherModel.deleteItemFromDatabase(context, it2.next());
                                }
                            } catch (URISyntaxException unused) {
                            }
                        }
                    }
                }
            }
        });
    }

    public long getScreenIdForPageIndex(int i) {
        if (i < 0 || i >= this.mScreenOrder.size()) {
            return -1L;
        }
        return this.mScreenOrder.get(i).longValue();
    }

    void updateShortcuts(ArrayList<ApplicationInfo> arrayList) {
        if (L.DEBUG) {
            L.d(TAG, "updateShortcuts: apps = " + arrayList);
        }
        for (ShortcutAndWidgetContainer shortcutAndWidgetContainer : getAllShortcutAndWidgetContainers()) {
            int childCount = shortcutAndWidgetContainer.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = shortcutAndWidgetContainer.getChildAt(i);
                Object tag = childAt.getTag();
                if (tag instanceof ShortcutInfo) {
                    ShortcutInfo shortcutInfo = (ShortcutInfo) tag;
                    Intent intent = shortcutInfo.intent;
                    ComponentName component = intent.getComponent();
                    if (shortcutInfo.itemType == 0 && "android.intent.action.MAIN".equals(intent.getAction()) && component != null) {
                        int size = arrayList.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            ApplicationInfo applicationInfo = arrayList.get(i2);
                            if (applicationInfo.componentName.equals(component)) {
                                shortcutInfo.updateIcon(this.mIconCache);
                                shortcutInfo.title = applicationInfo.title.toString();
                                ((BubbleTextView) childAt).applyFromShortcutInfo(shortcutInfo, this.mIconCache);
                            }
                        }
                    }
                }
            }
        }
    }

    void moveToDefaultScreen(boolean z) {
        if (!isSmall()) {
            if (z) {
                snapToPage(this.mDefaultPage);
            } else {
                setCurrentPage(this.mDefaultPage);
            }
        }
        getChildAt(this.mDefaultPage).requestFocus();
    }

    @Override // com.android.launcher2.PagedView
    protected String getCurrentPageDescription() {
        return String.format(getContext().getString(R.string.workspace_scroll_format), Integer.valueOf((this.mNextPage != -1 ? this.mNextPage : this.mCurrentPage) + 1), Integer.valueOf(getChildCount()));
    }

    @Override // com.android.launcher2.DropTarget
    public void getLocationInDragLayer(int[] iArr) {
        this.mLauncher.getDragLayer().getLocationInDragLayer(this, iArr);
    }

    void setFadeForOverScroll(float f) {
        if (isScrollingIndicatorEnabled()) {
            this.mOverscrollFade = f;
            float f2 = 1.0f - f;
            View scrollingIndicator = getScrollingIndicator();
            cancelScrollingIndicatorAnimations();
            if (scrollingIndicator != null) {
                scrollingIndicator.setAlpha(f2);
            }
        }
    }

    public void updateShortcutsAndFoldersUnread() {
        if (L.DEBUG_UNREAD) {
            L.d(TAG, "updateShortcutsAndFolderUnread: this = " + this);
        }
        for (ShortcutAndWidgetContainer shortcutAndWidgetContainer : getAllShortcutAndWidgetContainers()) {
            int childCount = shortcutAndWidgetContainer.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = shortcutAndWidgetContainer.getChildAt(i);
                Object tag = childAt.getTag();
                if (L.DEBUG_UNREAD) {
                    L.d(TAG, "updateShortcutsAndFoldersUnread: tag = " + tag + ", j = " + i + ", view = " + childAt);
                }
                if (tag instanceof ShortcutInfo) {
                    ShortcutInfo shortcutInfo = (ShortcutInfo) tag;
                    shortcutInfo.unreadNum = MTKUnreadLoader.getUnreadNumberOfComponent(shortcutInfo.intent.getComponent());
                    ((BubbleTextView) childAt).invalidate();
                } else if (tag instanceof FolderInfo) {
                    FolderIcon folderIcon = (FolderIcon) childAt;
                    folderIcon.updateFolderUnreadNum();
                    folderIcon.invalidate();
                }
            }
        }
    }

    public void updateComponentUnreadChanged(ComponentName componentName, int i) {
        if (L.DEBUG_UNREAD) {
            L.d(TAG, "updateComponentUnreadChanged: component = " + componentName + ", unreadNum = " + i);
        }
        Iterator<ShortcutAndWidgetContainer> it = getAllShortcutAndWidgetContainers().iterator();
        while (it.hasNext()) {
            ShortcutAndWidgetContainer next = it.next();
            int childCount = next.getChildCount();
            int i2 = 0;
            while (i2 < childCount) {
                View childAt = next.getChildAt(i2);
                Object tag = childAt.getTag();
                if (L.DEBUG_UNREAD) {
                    L.d(TAG, "updateComponentUnreadChanged: component = " + componentName + ",tag = " + tag + ",j = " + i2 + ",view = " + childAt);
                }
                if (tag instanceof ShortcutInfo) {
                    ShortcutInfo shortcutInfo = (ShortcutInfo) tag;
                    Intent intent = shortcutInfo.intent;
                    ComponentName component = intent.getComponent();
                    if (L.DEBUG_UNREAD) {
                        L.d(TAG, "updateComponentUnreadChanged 2: find component = " + componentName + ",intent = " + intent + ",componentName = " + component);
                    }
                    if (component != null && component.equals(componentName)) {
                        L.d(TAG, "updateComponentUnreadChanged 1: find component = " + componentName + ",tag = " + tag + ",j = " + i2 + ",cellX = " + shortcutInfo.cellX + ",cellY = " + shortcutInfo.cellY);
                        shortcutInfo.unreadNum = i;
                        ((BubbleTextView) childAt).invalidate();
                    }
                } else {
                    it = it;
                    if (tag instanceof FolderInfo) {
                        FolderIcon folderIcon = (FolderIcon) childAt;
                        folderIcon.updateFolderUnreadNum(componentName, i);
                        folderIcon.invalidate();
                    }
                }
                i2++;
                it = it;
            }
        }
        Folder openFolder = getOpenFolder();
        if (openFolder != null) {
            openFolder.updateContentUnreadNum();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isNeedToDelayRemoveFolderItems(FolderInfo folderInfo, HashSet<String> hashSet, ArrayList<ShortcutInfo> arrayList) {
        int size = folderInfo.contents.size();
        int removeFolderItems = getRemoveFolderItems(folderInfo, hashSet, arrayList);
        if (L.DEBUG) {
            L.d(TAG, "isNeedToDelayRemoveFolderItems info = " + folderInfo + ", packageNames = " + hashSet + ", contentsCount = " + size + ", removeFolderItemsCount = " + removeFolderItems);
        }
        return removeFolderItems >= size - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRemoveFolderItems(FolderInfo folderInfo, HashSet<String> hashSet, ArrayList<ShortcutInfo> arrayList) {
        ArrayList<ShortcutInfo> arrayList2 = folderInfo.contents;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            ShortcutInfo shortcutInfo = arrayList2.get(i);
            ComponentName component = shortcutInfo.intent.getComponent();
            if (component != null && hashSet.contains(component.getPackageName())) {
                arrayList.add(shortcutInfo);
            }
        }
        if (L.DEBUG) {
            L.d(TAG, "getRemoveFolderItems info = " + folderInfo + ", packageNames = " + hashSet + ", appsToRemoveFromFolder.size() = " + arrayList.size());
        }
        return arrayList.size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeFolderItems(FolderInfo folderInfo, ArrayList<ShortcutInfo> arrayList) {
        for (ShortcutInfo shortcutInfo : arrayList) {
            folderInfo.remove(shortcutInfo);
            LauncherModel.deleteItemFromDatabase(this.mLauncher, shortcutInfo);
        }
    }

    public void refreshUI() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (getChildAt(i) instanceof CellLayout) {
                ((CellLayout) getChildAt(i)).refreshUI();
            }
        }
    }
}
