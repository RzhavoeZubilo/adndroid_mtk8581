.class public Lcom/android/launcher2/Workspace;
.super Lcom/android/launcher2/SmoothPagedView;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher2/DropTarget;
.implements Lcom/android/launcher2/DragSource;
.implements Lcom/android/launcher2/DragScroller;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/DragController$DragListener;
.implements Lcom/android/launcher2/Launcher$LauncherTransitionable;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Workspace$ReorderAlarmListener;,
        Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;,
        Lcom/android/launcher2/Workspace$ZoomInInterpolator;,
        Lcom/android/launcher2/Workspace$ZoomOutInterpolator;,
        Lcom/android/launcher2/Workspace$InverseZInterpolator;,
        Lcom/android/launcher2/Workspace$ZInterpolator;,
        Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;,
        Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;,
        Lcom/android/launcher2/Workspace$State;
    }
.end annotation


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field public static final ANIMATE_INTO_POSITION_AND_DISAPPEAR:I = 0x0

.field public static final ANIMATE_INTO_POSITION_AND_REMAIN:I = 0x1

.field public static final ANIMATE_INTO_POSITION_AND_RESIZE:I = 0x2

.field private static final BACKGROUND_FADE_OUT_DURATION:I = 0x15e

.field public static final CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x4

.field private static final CHILDREN_OUTLINE_FADE_IN_DURATION:I = 0x64

.field private static final CHILDREN_OUTLINE_FADE_OUT_DELAY:I = 0x0

.field private static final CHILDREN_OUTLINE_FADE_OUT_DURATION:I = 0x177

.field public static final COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x3

.field private static final CUSTOM_CONTENT_SCREEN_ID:J = -0x12dL

.field private static final DEFAULT_CELL_COUNT_X:I = 0x5

.field private static final DEFAULT_CELL_COUNT_Y:I = 0x3

.field private static final DEFAULT_WALLPAPER:Ljava/lang/String; = "default_wallpaper"

.field public static final DRAG_BITMAP_PADDING:I = 0x2

.field private static final DRAG_MODE_ADD_TO_FOLDER:I = 0x2

.field private static final DRAG_MODE_CREATE_FOLDER:I = 0x1

.field private static final DRAG_MODE_NONE:I = 0x0

.field private static final DRAG_MODE_REORDER:I = 0x3

.field private static final EXTRA_EMPTY_SCREEN_ID:J = -0xc9L

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field private static final FOLDER_CREATION_TIMEOUT:I = 0x0

.field static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static final REORDER_TIMEOUT:I = 0xfa

.field static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field private static final TAG:Ljava/lang/String; = "Workspace"

.field static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f

.field private static final WALLPAPER_SCREENS_SPAN:F = 2.0f

.field private static final WORKSPACE_OVERSCROLL_ROTATION:F = 24.0f

.field static mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

.field static mPortraitCellLayoutMetrics:Landroid/graphics/Rect;


# instance fields
.field private mAddToExistingFolderOnDrop:Z

.field mAnimatingViewIntoPlace:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field private mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

.field private mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

.field private final mBindPages:Ljava/lang/Runnable;

.field private mCameraDistance:I

.field mChildrenLayersEnabled:Z

.field private mChildrenOutlineAlpha:F

.field private mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

.field private mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private mCreateUserFolderOnDrop:Z

.field private mCurrentRotationY:F

.field private mCurrentScaleX:F

.field private mCurrentScaleY:F

.field private mCurrentTranslationX:F

.field private mCurrentTranslationY:F

.field private mDefaultPage:I

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

.field private mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

.field private mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mDragMode:I

.field private mDragOutline:Landroid/graphics/Bitmap;

.field private mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

.field private mDragTargetLayout:Lcom/android/launcher2/CellLayout;

.field private mDragViewVisualCenter:[F

.field mDrawBackground:Z

.field private mDropToLayout:Lcom/android/launcher2/CellLayout;

.field private final mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mInScrollArea:Z

.field mIsDragOccuring:Z

.field private mIsStaticWallpaper:Z

.field private mIsSwitchingState:Z

.field private mLastReorderX:I

.field private mLastReorderY:I

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mMaxDistanceForFolderCreation:F

.field private mNewAlphas:[F

.field private mNewBackgroundAlphas:[F

.field private mNewRotationYs:[F

.field private mNewScaleXs:[F

.field private mNewScaleYs:[F

.field private mNewTranslationXs:[F

.field private mNewTranslationYs:[F

.field private mOldAlphas:[F

.field private mOldBackgroundAlphas:[F

.field private mOldScaleXs:[F

.field private mOldScaleYs:[F

.field private mOldTranslationXs:[F

.field private mOldTranslationYs:[F

.field private mOriginalPageSpacing:I

.field private final mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field private mOverScrollMaxBackgroundAlpha:F

.field private mOverscrollFade:F

.field private mOverscrollTransformsSet:Z

.field private final mReorderAlarm:Lcom/android/launcher2/Alarm;

.field private final mRestoredPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedRotationY:F

.field private mSavedScrollX:I

.field private mSavedStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedTranslationX:F

.field private mScreenOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

.field private mSpringLoadedPageSpacing:I

.field private mSpringLoadedShrinkFactor:F

.field private mState:Lcom/android/launcher2/Workspace$State;

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempCellLayoutCenterCoordinates:[F

.field private mTempDragBottomRightCoordinates:[F

.field private mTempDragCoordinates:[F

.field private mTempEstimate:[I

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTempVisiblePagesRange:[I

.field private final mTempXY:[I

.field private mTransitionProgress:F

.field mUpdateWallpaperOffsetImmediately:Z

.field mWallpaperHeight:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

.field private mWallpaperScrollRatio:F

.field private mWallpaperTravelWidth:I

.field mWallpaperWidth:I

.field private mWindowToken:Landroid/os/IBinder;

.field private mWorkspaceFadeInAdjacentScreens:Z

.field private mXDown:F

.field private mYDown:F

.field private final mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 300
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 111
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    .line 112
    iput v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    .line 113
    iput v0, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 115
    iput v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 132
    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, -0x1

    .line 133
    iput v3, p0, Lcom/android/launcher2/Workspace;->mDragOverX:I

    .line 134
    iput v3, p0, Lcom/android/launcher2/Workspace;->mDragOverY:I

    const/4 v4, 0x0

    .line 142
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 146
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    .line 151
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    new-array v5, v2, [I

    .line 159
    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    new-array v5, v2, [I

    .line 160
    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mTempEstimate:[I

    new-array v5, v2, [F

    .line 161
    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    new-array v5, v2, [F

    .line 162
    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mTempDragCoordinates:[F

    new-array v5, v2, [F

    .line 163
    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mTempCellLayoutCenterCoordinates:[F

    new-array v5, v2, [F

    .line 164
    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mTempDragBottomRightCoordinates:[F

    .line 165
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 177
    sget-object v5, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    const/4 v5, 0x0

    .line 178
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 180
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    .line 181
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 182
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    .line 185
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 187
    new-instance v6, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v6}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    iput-object v6, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 188
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 189
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/launcher2/Workspace;->mTempRect:Landroid/graphics/Rect;

    new-array v6, v2, [I

    .line 190
    iput-object v6, p0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    new-array v6, v2, [I

    .line 191
    iput-object v6, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    .line 192
    iput v0, p0, Lcom/android/launcher2/Workspace;->mOverscrollFade:F

    .line 201
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 204
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iput-object v6, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    .line 213
    new-instance v6, Lcom/android/launcher2/Alarm;

    invoke-direct {v6}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v6, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    .line 214
    new-instance v6, Lcom/android/launcher2/Alarm;

    invoke-direct {v6}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v6, p0, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    .line 215
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 216
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 217
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 218
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 241
    iput v5, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    .line 242
    iput v3, p0, Lcom/android/launcher2/Workspace;->mLastReorderX:I

    .line 243
    iput v3, p0, Lcom/android/launcher2/Workspace;->mLastReorderY:I

    .line 246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    .line 272
    new-instance v3, Lcom/android/launcher2/Workspace$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$1;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mBindPages:Ljava/lang/Runnable;

    .line 1600
    new-instance v3, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v3}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    .line 301
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mContentIsRefreshable:Z

    .line 302
    iget v3, p0, Lcom/android/launcher2/Workspace;->mPageSpacing:I

    iput v3, p0, Lcom/android/launcher2/Workspace;->mOriginalPageSpacing:I

    .line 304
    new-instance v3, Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-direct {v3, p1}, Lcom/android/launcher2/DropTarget$DragEnforcer;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    .line 306
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setDataIsReady()V

    .line 308
    move-object v3, p1

    check-cast v3, Lcom/android/launcher2/Launcher;

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 309
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040004

    .line 310
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    .line 311
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mFadeInAdjacentScreens:Z

    .line 312
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 317
    sget-object v4, Lcom/yecon/launcher1/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 320
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result p3

    if-eqz p3, :cond_1

    new-array p3, v1, [I

    const v4, 0x10102eb

    aput v4, p3, v5

    .line 326
    invoke-virtual {p1, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 327
    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    .line 329
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 330
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 331
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, p3, v0}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    move v0, v1

    :goto_0
    add-int/lit8 v4, v0, 0x1

    .line 334
    invoke-static {v3, v4}, Lcom/android/launcher2/CellLayout;->widthInPortrait(Landroid/content/res/Resources;I)I

    move-result v6

    iget v7, p3, Landroid/graphics/Point;->x:I

    if-gt v6, v7, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_1
    add-int/lit8 v6, v4, 0x1

    .line 339
    invoke-static {v3, v6}, Lcom/android/launcher2/CellLayout;->heightInLandscape(Landroid/content/res/Resources;I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, p1

    iget v8, p3, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_2

    move v4, v6

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    const/4 v4, 0x3

    :cond_2
    const p1, 0x7f090020

    .line 346
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    iput p1, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    const p1, 0x7f0600d2

    .line 348
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedPageSpacing:I

    const p1, 0x7f090013

    .line 349
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/Workspace;->mCameraDistance:I

    .line 352
    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 353
    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 354
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    .line 355
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 357
    invoke-virtual {p0, p0}, Lcom/android/launcher2/Workspace;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 359
    invoke-static {p1, p3}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 360
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 362
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->initWorkspace()V

    .line 365
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 368
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 369
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setImportantForAccessibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Workspace;)Landroid/app/WallpaperManager;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/CellLayout;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Workspace;IIIILcom/android/launcher2/CellLayout;[I)[I
    .locals 0

    .line 82
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/launcher2/Workspace;I)I
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/launcher2/Workspace;->mLastReorderX:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/launcher2/Workspace;I)I
    .locals 0

    .line 82
    iput p1, p0, Lcom/android/launcher2/Workspace;->mLastReorderY:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/launcher2/Workspace;)Landroid/graphics/Bitmap;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)Z
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->isNeedToDelayRemoveFolderItems(Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderInfo;Ljava/util/ArrayList;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Workspace;->removeFolderItems(Lcom/android/launcher2/FolderInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)I
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->getRemoveFolderItems(Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher2/Workspace;)Landroid/graphics/Point;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher2/Workspace;)[F
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Workspace;)[F
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/launcher2/Workspace;Z)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/launcher2/Workspace;)[I
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/launcher2/Workspace;[I)[I
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/launcher2/Workspace;)[F
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    return-object p0
.end method

.method private animateBackgroundGradient(FZ)V
    .locals 2

    .line 1217
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1219
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1220
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    .line 1222
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 1223
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1224
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1226
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getBackgroundAlpha()F

    move-result v0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    aput v0, p2, v1

    const/4 v0, 0x1

    aput p1, p2, v0

    .line 1229
    invoke-static {p2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1230
    new-instance p2, Lcom/android/launcher2/Workspace$3;

    invoke-direct {p2, p0}, Lcom/android/launcher2/Workspace$3;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1235
    iget-object p1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1236
    iget-object p1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1237
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1239
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->setBackgroundAlpha(F)V

    :cond_4
    :goto_0
    return-void
.end method

.method private cleanupAddToFolder()V
    .locals 2

    .line 2758
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2759
    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIcon;->onDragExit(Ljava/lang/Object;)V

    .line 2760
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    :cond_0
    return-void
.end method

.method private cleanupFolderCreation()V
    .locals 1

    .line 2751
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    if-eqz v0, :cond_0

    .line 2752
    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 2754
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    return-void
.end method

.method private cleanupReorder(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2767
    iget-object p1, p0, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    :cond_0
    const/4 p1, -0x1

    .line 2769
    iput p1, p0, Lcom/android/launcher2/Workspace;->mLastReorderX:I

    .line 2770
    iput p1, p0, Lcom/android/launcher2/Workspace;->mLastReorderY:I

    return-void
.end method

.method private computeWallpaperScrollRatio(I)V
    .locals 5

    .line 1040
    iget v0, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 1041
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getRelativeChildOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1042
    iput v2, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 1043
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getRelativeChildOffset(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 1044
    iput v0, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    if-lez v1, :cond_0

    mul-float/2addr v3, v2

    int-to-float v0, v1

    div-float/2addr v3, v0

    .line 1046
    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    goto :goto_0

    .line 1048
    :cond_0
    iput v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    .line 1050
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/launcher2/Launcher;->setPackageIndex(IIZ)V

    return-void
.end method

.method private createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIIZ)Landroid/graphics/Bitmap;
    .locals 8

    .line 1949
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060012

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->getThemeColor(Landroid/content/res/Resources;I)I

    move-result v6

    .line 1951
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1952
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1954
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int v2, p4, p3

    int-to-float v2, v2

    .line 1955
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-int p3, p5, p3

    int-to-float p3, p3

    .line 1956
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p3, v3

    .line 1955
    invoke-static {v2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 1957
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    .line 1958
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr p3, v3

    float-to-int p3, p3

    .line 1959
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    sub-int/2addr p4, v2

    .line 1962
    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    invoke-virtual {v3, p4, p5}, Landroid/graphics/Rect;->offset(II)V

    const/4 p3, 0x0

    .line 1964
    invoke-virtual {p2, p1, v1, v3, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1965
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    move-object v3, v0

    move-object v4, p2

    move v5, v6

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V

    .line 1967
    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 1930
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060012

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->getThemeColor(Landroid/content/res/Resources;I)I

    move-result v0

    .line 1933
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1932
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1935
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x1

    .line 1936
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 1937
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {p0, v1, p2, v0, v0}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    const/4 p0, 0x0

    .line 1938
    invoke-virtual {p2, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 4

    .line 1861
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 1862
    invoke-virtual {p1, p0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1866
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 1867
    instance-of v0, p1, Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 1868
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v1

    .line 1869
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0, v2, v2, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1870
    div-int/lit8 p3, p3, 0x2

    int-to-float p0, p3

    invoke-virtual {p2, p0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1871
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 1873
    :cond_0
    instance-of p4, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz p4, :cond_1

    .line 1876
    move-object p4, p1

    check-cast p4, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {p4}, Lcom/android/launcher2/FolderIcon;->getTextVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1877
    invoke-virtual {p4, v2}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    move v2, v1

    goto :goto_0

    .line 1880
    :cond_1
    instance-of p4, p1, Lcom/android/launcher2/BubbleTextView;

    if-eqz p4, :cond_2

    .line 1881
    move-object p4, p1

    check-cast p4, Lcom/android/launcher2/BubbleTextView;

    .line 1882
    invoke-virtual {p4}, Lcom/android/launcher2/BubbleTextView;->getExtendedPaddingTop()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 1883
    invoke-virtual {p4}, Lcom/android/launcher2/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object p4

    invoke-virtual {p4, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p4

    add-int/2addr v0, p4

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 1885
    move-object p4, p1

    check-cast p4, Landroid/widget/TextView;

    .line 1886
    invoke-virtual {p4}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    invoke-virtual {p4}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v3

    sub-int/2addr v0, v3

    .line 1887
    invoke-virtual {p4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p4

    invoke-virtual {p4, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p4

    add-int/2addr v0, p4

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 1889
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result p4

    neg-int p4, p4

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p3

    int-to-float p4, p4

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v0

    neg-int v0, v0

    add-int/2addr v0, p3

    int-to-float p3, v0

    invoke-virtual {p2, p4, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1890
    sget-object p3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, p0, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1891
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v2, :cond_4

    .line 1895
    check-cast p1, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {p1, v1}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    .line 1898
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 7

    .line 1489
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_6

    .line 1490
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 1491
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getVisiblePages([I)V

    .line 1492
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    .line 1493
    aget v1, v1, v4

    if-ne v3, v1, :cond_1

    add-int/lit8 v4, v0, -0x1

    if-ge v1, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    add-int/lit8 v3, v3, -0x1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_4

    .line 1503
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    if-gt v3, v4, :cond_2

    if-gt v4, v1, :cond_2

    .line 1504
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->shouldDrawChild(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1505
    :cond_2
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->disableHardwareLayers()V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v2, v0, :cond_6

    .line 1509
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    if-gt v3, v2, :cond_5

    if-gt v2, v1, :cond_5

    .line 1510
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->shouldDrawChild(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1511
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->enableHardwareLayers()V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private findMatchingPageForDragOver(Lcom/android/launcher2/DragView;FFZ)Lcom/android/launcher2/CellLayout;
    .locals 11

    .line 2892
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v0

    :goto_0
    if-ge v3, p1, :cond_4

    .line 2897
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput p2, v6, v0

    const/4 v7, 0x1

    aput p3, v6, v7

    .line 2902
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2903
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v4, v6, v8}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2905
    aget v8, v6, v0

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    aget v8, v6, v0

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_0

    aget v8, v6, v7

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_0

    aget v8, v6, v7

    .line 2906
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    return-object v4

    :cond_0
    if-nez p4, :cond_3

    .line 2912
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 2913
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v9, v9

    aput v9, v8, v0

    .line 2914
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v5, v9

    aput v5, v8, v7

    .line 2915
    invoke-virtual {p0, v4, v8}, Lcom/android/launcher2/Workspace;->mapPointFromChildToSelf(Landroid/view/View;[F)V

    aput p2, v6, v0

    aput p3, v6, v7

    .line 2922
    invoke-static {v6, v8}, Lcom/android/launcher2/Workspace;->squaredDistance([F[F)F

    move-result v5

    cmpg-float v6, v5, v2

    if-gez v6, :cond_1

    move-object v1, v4

    move v2, v5

    .line 2930
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSupportCycleSlidingScreen()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2931
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v4

    add-int/lit8 v5, p1, -0x1

    if-ne v4, v5, :cond_2

    .line 2933
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    .line 2935
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v1
.end method

.method private findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I
    .locals 6

    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 3604
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p0

    return-object p0
.end method

.method static getCellLayoutMetrics(Lcom/android/launcher2/Launcher;I)Landroid/graphics/Rect;
    .locals 7

    .line 2614
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2615
    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 2616
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2617
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 2618
    invoke-virtual {p0, v0, v2}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    const p0, 0x7f0600b5

    const v3, 0x7f0600d6

    const v4, 0x7f0600d0

    const v5, 0x7f0600ca

    if-nez p1, :cond_1

    .line 2620
    sget-object v6, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez v6, :cond_0

    .line 2621
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 2622
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2623
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2624
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 2625
    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v5

    sub-int/2addr v2, v4

    .line 2626
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v3

    sub-int v3, v0, p0

    .line 2627
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 2629
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v4

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v5

    move v6, p1

    .line 2628
    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->getMetrics(Landroid/graphics/Rect;Landroid/content/res/Resources;IIIII)V

    .line 2632
    :cond_0
    sget-object p0, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    return-object p0

    :cond_1
    const/4 v6, 0x1

    if-ne p1, v6, :cond_3

    .line 2634
    sget-object v6, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez v6, :cond_2

    .line 2635
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 2636
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2637
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2638
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 2639
    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v5

    sub-int v4, v0, v4

    .line 2640
    iget v0, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v3

    sub-int v3, v0, p0

    .line 2641
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 2643
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result p0

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v5

    move v2, v4

    move v4, p0

    move v6, p1

    .line 2642
    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->getMetrics(Landroid/graphics/Rect;Landroid/content/res/Resources;IIIII)V

    .line 2646
    :cond_2
    sget-object p0, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F
    .locals 3

    const/4 v0, 0x2

    if-nez p6, :cond_0

    new-array p6, v0, [F

    .line 2958
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr p1, v1

    .line 2959
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06004d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p2, p0

    sub-int/2addr p1, p3

    sub-int/2addr p2, p4

    const/4 p0, 0x0

    .line 2969
    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    div-int/2addr p3, v0

    add-int/2addr p1, p3

    int-to-float p1, p1

    aput p1, p6, p0

    const/4 p0, 0x1

    .line 2970
    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/2addr p1, v0

    add-int/2addr p2, p1

    int-to-float p1, p2

    aput p1, p6, p0

    return-object p6
.end method

.method private getFinalPositionForDropAnimation([I[FLcom/android/launcher2/DragView;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;[IZZ)V
    .locals 13

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p4

    move-object/from16 v2, p5

    .line 3455
    iget v5, v2, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3456
    iget v6, v2, Lcom/android/launcher2/ItemInfo;->spanY:I

    const/4 v10, 0x0

    .line 3458
    aget v3, p6, v10

    const/4 v11, 0x1

    aget v4, p6, v11

    move-object v0, p0

    move-object/from16 v1, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 3459
    iget v1, v0, Landroid/graphics/Rect;->left:I

    aput v1, v8, v10

    .line 3460
    iget v1, v0, Landroid/graphics/Rect;->top:I

    aput v1, v8, v11

    .line 3462
    invoke-virtual {p0, v9}, Lcom/android/launcher2/Workspace;->setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 3463
    iget-object v1, v7, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 3464
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v9, p1}, Lcom/android/launcher2/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v1

    .line 3465
    invoke-virtual {p0, v9}, Lcom/android/launcher2/Workspace;->resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p8, :cond_0

    .line 3470
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 3471
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v4, v2

    move v12, v3

    move v3, v2

    move v2, v12

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3479
    :goto_0
    aget v4, v8, v10

    int-to-float v4, v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v8, v10

    .line 3480
    aget v4, v8, v11

    int-to-float v4, v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sub-float/2addr v5, v0

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v0, v4

    aput v0, v8, v11

    mul-float/2addr v2, v1

    .line 3482
    aput v2, p2, v10

    mul-float/2addr v3, v1

    .line 3483
    aput v3, p2, v11

    return-void
.end method

.method private getRemoveFolderItems(Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/FolderInfo;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;)I"
        }
    .end annotation

    .line 4282
    iget-object p0, p1, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 4283
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4286
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ShortcutInfo;

    .line 4287
    iget-object v3, v2, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 4288
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4290
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4291
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4295
    :cond_1
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 4296
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRemoveFolderItems info = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", packageNames = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", appsToRemoveFromFolder.size() = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 4297
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Workspace"

    .line 4296
    invoke-static {p1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4299
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method private getScrollRange()I
    .locals 2

    .line 900
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private hitsPage(IFF)Z
    .locals 3

    .line 642
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [F

    aput p2, v1, v0

    const/4 p2, 0x1

    aput p3, v1, p2

    .line 645
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 646
    aget p0, v1, v0

    const/4 p3, 0x0

    cmpl-float p0, p0, p3

    if-ltz p0, :cond_0

    aget p0, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float p0, p0, v2

    if-gez p0, :cond_0

    aget p0, v1, p2

    cmpl-float p0, p0, p3

    if-ltz p0, :cond_0

    aget p0, v1, p2

    .line 647
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    move v0, p2

    :cond_0
    return v0
.end method

.method private initAnimationArrays()V
    .locals 2

    .line 1637
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 1638
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    if-eqz v1, :cond_0

    return-void

    .line 1639
    :cond_0
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    .line 1640
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationYs:[F

    .line 1641
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldScaleXs:[F

    .line 1642
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldScaleYs:[F

    .line 1643
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    .line 1644
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    .line 1645
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    .line 1646
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    .line 1647
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    .line 1648
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    .line 1649
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    .line 1650
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    .line 1651
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    return-void
.end method

.method private isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 0

    .line 2976
    iget-object p0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of p0, p0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of p0, p0, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isExternalDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 1

    .line 2980
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    if-eq v0, p0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNeedToDelayRemoveFolderItems(Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/FolderInfo;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .line 4261
    iget-object v0, p1, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 4262
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4263
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->getRemoveFolderItems(Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)I

    move-result p0

    .line 4264
    sget-boolean p3, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p3, :cond_0

    .line 4265
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedToDelayRemoveFolderItems info = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", packageNames = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", contentsCount = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", removeFolderItemsCount = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Workspace"

    invoke-static {p2, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    sub-int/2addr v0, p1

    if-lt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private manageFolderFeedback(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFLandroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 3112
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFZ)Z

    move-result v0

    .line 3115
    iget v1, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    .line 3116
    invoke-virtual {v1}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3117
    iget-object p1, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    new-instance p4, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;

    aget p5, p3, v3

    aget p3, p3, v2

    invoke-direct {p4, p0, p2, p5, p3}, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;II)V

    invoke-virtual {p1, p4}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    .line 3119
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    return-void

    .line 3124
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher2/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[IF)Z

    move-result p3

    const/4 p4, 0x2

    if-eqz p3, :cond_2

    .line 3126
    iget v1, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-nez v1, :cond_2

    .line 3127
    check-cast p5, Lcom/android/launcher2/FolderIcon;

    iput-object p5, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 3128
    invoke-virtual {p5, p1}, Lcom/android/launcher2/FolderIcon;->onDragEnter(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 3130
    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 3132
    :cond_1
    invoke-virtual {p0, p4}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    return-void

    .line 3136
    :cond_2
    iget p1, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-ne p1, p4, :cond_3

    if-nez p3, :cond_3

    .line 3137
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    .line 3139
    :cond_3
    iget p1, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-ne p1, v2, :cond_4

    if-nez v0, :cond_4

    .line 3140
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    :cond_4
    return-void
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 3238
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V

    return-void
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V
    .locals 27

    move-object/from16 v10, p0

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    move-object/from16 v8, p5

    .line 3251
    new-instance v15, Lcom/android/launcher2/Workspace$8;

    invoke-direct {v15, v10}, Lcom/android/launcher2/Workspace$8;-><init>(Lcom/android/launcher2/Workspace;)V

    .line 3258
    move-object v7, v0

    check-cast v7, Lcom/android/launcher2/ItemInfo;

    .line 3259
    iget v1, v7, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3260
    iget v2, v7, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3261
    iget-object v3, v10, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v3, :cond_0

    .line 3262
    iget v1, v3, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 3263
    iget-object v2, v10, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    :cond_0
    move v3, v1

    move v4, v2

    .line 3266
    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v9}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, -0x65

    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x64

    :goto_0
    move-wide v13, v1

    .line 3269
    invoke-virtual {v10, v9}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v12

    .line 3270
    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v9}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, v10, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    if-eq v12, v1, :cond_2

    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v2, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-eq v1, v2, :cond_2

    .line 3272
    invoke-virtual {v10, v12}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 3275
    :cond_2
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const/16 v22, 0x0

    const/4 v11, 0x1

    if-eqz v1, :cond_5

    .line 3276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDropExternal: touchXY[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz p1, :cond_3

    aget v5, p1, v22

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", touchXY[1] = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_4

    aget v2, p1, v11

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dragInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ",info = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", cellLayout = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", insertAtFirst = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v6, p4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", screen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", container = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Workspace"

    invoke-static {v2, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move/from16 v6, p4

    .line 3284
    :goto_2
    instance-of v1, v7, Lcom/android/launcher2/PendingAddItemInfo;

    const/4 v5, 0x2

    if-eqz v1, :cond_f

    .line 3285
    move-object v15, v0

    check-cast v15, Lcom/android/launcher2/PendingAddItemInfo;

    .line 3288
    iget v0, v15, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    if-ne v0, v11, :cond_7

    .line 3289
    aget v1, p1, v22

    aget v2, p1, v11

    iget-object v6, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3291
    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v22

    aget v1, v1, v11

    invoke-virtual {v9, v2, v1, v0}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v6

    .line 3293
    iget-object v0, v8, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    iget-object v3, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFZ)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v8, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3294
    invoke-virtual {v10, v0, v9, v1, v6}, Lcom/android/launcher2/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move/from16 v0, v22

    goto :goto_3

    :cond_7
    move v0, v11

    .line 3300
    :goto_3
    iget-object v1, v8, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcom/android/launcher2/ItemInfo;

    if-eqz v0, :cond_b

    .line 3303
    iget v0, v6, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3304
    iget v1, v6, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3305
    iget v2, v6, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    if-lez v2, :cond_8

    iget v2, v6, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    if-lez v2, :cond_8

    .line 3306
    iget v0, v6, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 3307
    iget v1, v6, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    :cond_8
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 3310
    iget-object v3, v10, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v4, v3, v22

    float-to-int v4, v4

    aget v3, v3, v11

    float-to-int v3, v3

    iget v5, v7, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v9, v7, Lcom/android/launcher2/ItemInfo;->spanY:I

    const/16 v18, 0x0

    move-object/from16 v23, v7

    iget-object v7, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/16 v21, 0x2

    move v8, v11

    move-object/from16 v11, p3

    move/from16 v24, v12

    move v12, v4

    move-wide/from16 v25, v13

    move v13, v3

    move v14, v0

    move-object v4, v15

    move v15, v1

    move/from16 v16, v5

    move/from16 v17, v9

    move-object/from16 v19, v7

    move-object/from16 v20, v2

    invoke-virtual/range {v11 .. v21}, Lcom/android/launcher2/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3314
    aget v0, v2, v22

    iget v1, v6, Lcom/android/launcher2/ItemInfo;->spanX:I

    if-ne v0, v1, :cond_a

    aget v0, v2, v8

    iget v1, v6, Lcom/android/launcher2/ItemInfo;->spanY:I

    if-eq v0, v1, :cond_9

    goto :goto_4

    :cond_9
    move/from16 v11, v22

    goto :goto_5

    :cond_a
    :goto_4
    move v11, v8

    .line 3317
    :goto_5
    aget v0, v2, v22

    iput v0, v6, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3318
    aget v0, v2, v8

    iput v0, v6, Lcom/android/launcher2/ItemInfo;->spanY:I

    goto :goto_6

    :cond_b
    move-object/from16 v23, v7

    move v8, v11

    move/from16 v24, v12

    move-wide/from16 v25, v13

    move-object v4, v15

    move/from16 v11, v22

    .line 3321
    :goto_6
    new-instance v7, Lcom/android/launcher2/Workspace$9;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v6

    move-object v9, v4

    move-wide/from16 v4, v25

    move-object v12, v6

    move/from16 v6, v24

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace$9;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/PendingAddItemInfo;Lcom/android/launcher2/ItemInfo;JI)V

    .line 3344
    iget v0, v9, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    move-object v15, v9

    check-cast v15, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget-object v0, v15, Lcom/android/launcher2/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    :goto_7
    move-object v6, v0

    .line 3347
    instance-of v0, v6, Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_d

    if-eqz v11, :cond_d

    .line 3348
    move-object v0, v6

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 3349
    iget-object v2, v10, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v3, v12, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v4, v12, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-static {v0, v2, v3, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    .line 3354
    :cond_d
    iget v0, v9, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    if-ne v0, v1, :cond_e

    move-object v15, v9

    check-cast v15, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget-object v0, v15, Lcom/android/launcher2/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_e

    move v5, v8

    move-object/from16 v8, p5

    goto :goto_8

    :cond_e
    move-object/from16 v8, p5

    move/from16 v5, v22

    .line 3358
    :goto_8
    iget-object v3, v8, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    move-object v4, v7

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/Workspace;->animateWidgetDrop(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto/16 :goto_c

    :cond_f
    move v2, v5

    move-object v0, v7

    move/from16 v24, v12

    move-wide/from16 v25, v13

    move v14, v11

    .line 3364
    iget v1, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-eqz v1, :cond_11

    if-eq v1, v14, :cond_11

    if-ne v1, v2, :cond_10

    const v1, 0x7f0a0038

    .line 3375
    iget-object v2, v10, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v7, v0

    check-cast v7, Lcom/android/launcher2/FolderInfo;

    iget-object v5, v10, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v9, p3

    invoke-static {v1, v2, v9, v7, v5}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v1

    move-object v12, v0

    move-object v13, v1

    goto :goto_a

    .line 3379
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    move-object/from16 v9, p3

    .line 3367
    iget-wide v1, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v11, -0x1

    cmp-long v1, v1, v11

    if-nez v1, :cond_12

    instance-of v1, v0, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v1, :cond_12

    .line 3369
    new-instance v1, Lcom/android/launcher2/ShortcutInfo;

    move-object v7, v0

    check-cast v7, Lcom/android/launcher2/ApplicationInfo;

    invoke-direct {v1, v7}, Lcom/android/launcher2/ShortcutInfo;-><init>(Lcom/android/launcher2/ApplicationInfo;)V

    move-object v7, v1

    goto :goto_9

    :cond_12
    move-object v7, v0

    .line 3371
    :goto_9
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v1, 0x7f0a0002

    move-object v2, v7

    check-cast v2, Lcom/android/launcher2/ShortcutInfo;

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    move-object v12, v7

    :goto_a
    if-eqz p1, :cond_14

    .line 3385
    aget v1, p1, v22

    aget v2, p1, v14

    iget-object v7, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3387
    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v22

    aget v1, v1, v14

    invoke-virtual {v9, v2, v1, v0}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v11

    .line 3389
    iput-object v15, v8, Lcom/android/launcher2/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 3390
    iget-object v5, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    iget-object v6, v8, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    iget-object v4, v8, Lcom/android/launcher2/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide/from16 v2, v25

    move-object/from16 v16, v4

    move-object/from16 v4, p3

    move-object/from16 v17, v6

    move v6, v11

    move-object/from16 v8, v17

    move-object/from16 v9, v16

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IFZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 3394
    :cond_13
    iget-object v3, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p3

    move v4, v11

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[IFLcom/android/launcher2/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    if-eqz p1, :cond_15

    .line 3402
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v22

    float-to-int v1, v1

    aget v0, v0, v14

    float-to-int v0, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    iget-object v4, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/16 v20, 0x0

    const/16 v21, 0x2

    move-object/from16 v11, p3

    move-object v9, v12

    move v12, v1

    move-object v8, v13

    move v13, v0

    move v0, v14

    move v14, v2

    move-object v7, v15

    move v15, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v11 .. v21}, Lcom/android/launcher2/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v1

    iput-object v1, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    goto :goto_b

    :cond_15
    move-object v9, v12

    move-object v8, v13

    move v0, v14

    move-object v7, v15

    .line 3406
    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v11, p3

    invoke-virtual {v11, v1, v0, v0}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    .line 3408
    :goto_b
    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    aget v5, v1, v22

    aget v6, v1, v0

    iget v12, v9, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v13, v9, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    move-object v1, v8

    move-wide/from16 v2, v25

    move/from16 v4, v24

    move-object v14, v7

    move v7, v12

    move-object v12, v8

    move v8, v13

    move-object v13, v9

    move/from16 v9, p4

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 3410
    invoke-virtual {v11, v12}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 3411
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 3412
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 3415
    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v16, v1

    move-object/from16 v17, v13

    move-wide/from16 v18, v25

    move/from16 v20, v24

    move/from16 v21, v2

    move/from16 v22, v0

    invoke-static/range {v16 .. v22}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    move-object/from16 v0, p5

    .line 3418
    iget-object v1, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    if-eqz v1, :cond_16

    .line 3422
    invoke-virtual {v10, v11}, Lcom/android/launcher2/Workspace;->setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 3423
    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v1, v0, v12, v14}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3425
    invoke-virtual {v10, v11}, Lcom/android/launcher2/Workspace;->resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    :cond_16
    :goto_c
    return-void
.end method

.method private onResetScrollArea()V
    .locals 1

    const/4 v0, 0x0

    .line 3821
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    const/4 v0, 0x0

    .line 3822
    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    return-void
.end method

.method private removeFolderItems(Lcom/android/launcher2/FolderInfo;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/FolderInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .line 4309
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 4310
    invoke-virtual {p1, v0}, Lcom/android/launcher2/FolderInfo;->remove(Lcom/android/launcher2/ShortcutInfo;)V

    .line 4311
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setChildrenBackgroundAlphaMultipliers(F)V
    .locals 2

    const/4 v0, 0x0

    .line 1303
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1304
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1305
    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static squaredDistance([F[F)F
    .locals 2

    const/4 v0, 0x0

    .line 2835
    aget p0, p0, v0

    aget v0, p1, v0

    sub-float/2addr p0, v0

    const/4 v0, 0x1

    .line 2836
    aget v1, p1, v0

    aget p1, p1, v0

    sub-float/2addr v1, p1

    mul-float/2addr p0, p0

    mul-float/2addr v1, v1

    add-float/2addr p0, v1

    return p0
.end method

.method private syncWallpaperOffsetWithScroll()V
    .locals 1

    .line 972
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->wallpaperOffsetForCurrentScroll()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    :cond_0
    return-void
.end method

.method private updateChildrenLayersEnabled(Z)V
    .locals 4

    .line 1472
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-nez p1, :cond_3

    if-nez v0, :cond_3

    .line 1473
    iget-boolean p1, p0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    .line 1475
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    if-eq v3, p1, :cond_5

    .line 1476
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v3, :cond_4

    .line 1478
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->enableHwLayersOnVisiblePages()V

    goto :goto_4

    .line 1480
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result p1

    if-ge v2, p1, :cond_5

    .line 1481
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/CellLayout;

    .line 1482
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->disableHardwareLayers()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method private updatePageAlphaValues(I)V
    .locals 6

    .line 1280
    iget v0, p0, Lcom/android/launcher2/Workspace;->mOverScrollX:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/launcher2/Workspace;->mOverScrollX:I

    iget v2, p0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1281
    :goto_1
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v2, :cond_4

    if-nez v0, :cond_4

    .line 1285
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1286
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_3

    .line 1288
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v2

    .line 1289
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    .line 1290
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setAlpha(F)V

    .line 1291
    iget-boolean v3, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-nez v3, :cond_2

    .line 1293
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v2

    .line 1292
    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    goto :goto_3

    .line 1295
    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private updateWallpaperOffsets()V
    .locals 5

    .line 985
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 988
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 989
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    goto :goto_0

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 994
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 995
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    .line 996
    invoke-virtual {v3}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v4

    .line 995
    invoke-virtual {v2, v0, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    :cond_1
    if-eqz v1, :cond_2

    .line 1000
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    :cond_2
    return-void
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 6

    .line 929
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 934
    iget v0, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 935
    iput v2, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    .line 936
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v1

    .line 939
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v3

    .line 941
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSupportCycleSlidingScreen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 942
    iget v4, p0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    if-le v3, v4, :cond_0

    .line 943
    iget v4, p0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    sub-int/2addr v3, v4

    .line 944
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    mul-float/2addr v4, v2

    float-to-int v3, v4

    goto :goto_0

    :cond_0
    if-gez v3, :cond_1

    .line 946
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    neg-int v3, v3

    mul-int/2addr v3, v2

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 949
    iget v4, p0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    .line 950
    iget v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    mul-float/2addr v2, v3

    .line 951
    iput v0, p0, Lcom/android/launcher2/Workspace;->mLayoutScale:F

    int-to-float v0, v1

    div-float/2addr v2, v0

    .line 956
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    if-eqz v0, :cond_2

    .line 960
    iget v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    iget v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    mul-float/2addr v1, v2

    .line 962
    iget p0, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    sub-int v0, p0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v1, v0

    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1

    :cond_2
    return v2
.end method

.method private wallpaperTravelToScreenWidthRatio(II)F
    .locals 0

    int-to-float p0, p1

    int-to-float p1, p2

    div-float/2addr p0, p1

    const p1, 0x3e9d89d7

    mul-float/2addr p0, p1

    const p1, 0x3f80fc10

    add-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 2099
    iget-object v15, v7, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 2100
    iget-object v0, v8, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    const/16 v20, 0x1

    if-eq v0, v7, :cond_a

    const/16 v21, 0x0

    if-nez v15, :cond_0

    return v21

    .line 2105
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_1

    return v21

    .line 2107
    :cond_1
    iget v1, v8, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget v2, v8, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    iget v3, v8, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    iget v4, v8, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    iget-object v5, v8, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    iget-object v6, v7, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 2111
    iget-object v0, v7, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v15}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2112
    iget-object v0, v7, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    iget-object v1, v7, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher2/Hotseat;[F)V

    goto :goto_0

    .line 2114
    :cond_2
    iget-object v0, v7, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v1, 0x0

    invoke-virtual {v7, v15, v0, v1}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2119
    :goto_0
    iget-object v0, v7, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v0, :cond_3

    .line 2121
    iget v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 2122
    iget v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    goto :goto_1

    .line 2124
    :cond_3
    iget-object v0, v8, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    .line 2125
    iget v1, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 2126
    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    :goto_1
    move/from16 v16, v0

    move v14, v1

    .line 2131
    iget-object v0, v8, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v0, :cond_4

    .line 2132
    iget-object v0, v8, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v0, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->minSpanX:I

    .line 2133
    iget-object v1, v8, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v1, v1, Lcom/android/launcher2/PendingAddWidgetInfo;->minSpanY:I

    move v12, v0

    move v13, v1

    goto :goto_2

    :cond_4
    move v12, v14

    move/from16 v13, v16

    .line 2136
    :goto_2
    iget-object v0, v7, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v21

    float-to-int v1, v1

    aget v0, v0, v20

    float-to-int v2, v0

    iget-object v6, v7, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move v3, v12

    move v4, v13

    move-object v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2139
    iget-object v1, v7, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v21

    aget v1, v1, v20

    invoke-virtual {v15, v2, v1, v0}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v6

    .line 2141
    iget-object v0, v8, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    iget-object v3, v7, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v2, v15

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFZ)Z

    move-result v0

    if-eqz v0, :cond_5

    return v20

    .line 2145
    :cond_5
    iget-object v0, v8, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    iget-object v1, v7, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    invoke-virtual {v7, v0, v15, v1, v6}, Lcom/android/launcher2/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_6

    return v20

    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2151
    iget-object v1, v7, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v21

    float-to-int v10, v2

    aget v1, v1, v20

    float-to-int v11, v1

    const/4 v1, 0x0

    iget-object v2, v7, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/16 v19, 0x3

    move-object v9, v15

    move-object v3, v15

    move/from16 v15, v16

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v0

    invoke-virtual/range {v9 .. v19}, Lcom/android/launcher2/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2154
    aget v1, v0, v21

    if-ltz v1, :cond_7

    aget v0, v0, v20

    if-ltz v0, :cond_7

    move/from16 v0, v20

    goto :goto_3

    :cond_7
    move/from16 v0, v21

    :goto_3
    if-nez v0, :cond_9

    .line 2160
    iget-object v0, v7, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    .line 2161
    iget-object v1, v7, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 2162
    iget-object v1, v7, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    .line 2163
    iget-object v2, v7, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    aget v3, v2, v21

    aget v2, v2, v20

    .line 2164
    invoke-virtual {v1, v3, v2}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v2

    .line 2163
    invoke-virtual {v1, v2}, Lcom/android/launcher2/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v1

    if-eqz v1, :cond_8

    return v21

    .line 2169
    :cond_8
    iget-object v1, v7, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    return v21

    .line 2175
    :cond_9
    iget-object v0, v8, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v0, :cond_a

    .line 2176
    iget-object v0, v8, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 2177
    iget-object v1, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v7, v1}, Lcom/android/launcher2/Workspace;->searchIMTKWidget(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2178
    iget-object v1, v7, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->showOnlyOneWidgetMessage(Lcom/android/launcher2/PendingAddWidgetInfo;)V

    return v21

    :cond_a
    return v20
.end method

.method addApplicationShortcut(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/CellLayout;JIIIZII)V
    .locals 18

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 2074
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v1, 0x7f0a0002

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x2

    new-array v12, v0, [I

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v3, v12

    move/from16 v6, p9

    move/from16 v7, p10

    .line 2077
    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    .line 2078
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    .line 2079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addApplicationShortcut: info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", view = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", container = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v8, p3

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", screen = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, p5

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", cellXY[0] = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v12, v14

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", cellXY[1] = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v12, v13

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", insertAtFirst = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v7, p8

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Workspace"

    invoke-static {v2, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-wide/from16 v8, p3

    move/from16 v15, p5

    move/from16 v7, p8

    .line 2085
    :goto_0
    aget v5, v12, v14

    aget v6, v12, v13

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, p3

    move/from16 v4, p5

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 2086
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    aget v5, v12, v14

    aget v6, v12, v13

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    return-void
.end method

.method public addExternalItemToScreen(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)Z
    .locals 3

    .line 3224
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addExternalItemToScreen: dragInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", layout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Workspace"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3228
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempEstimate:[I

    iget v1, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v2, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3229
    iget-object v0, p1, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;Z)V

    const/4 p0, 0x1

    return p0

    .line 3232
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0, p2}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    return v1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1427
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1429
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 1431
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIII)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 527
    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIIIZ)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p4

    move/from16 v7, p7

    move/from16 v8, p8

    const-wide/16 v3, -0x64

    cmp-long v3, p2, v3

    const-string v9, "Workspace"

    if-nez v3, :cond_1

    if-ltz v2, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 546
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The screen must be >= 0 and < "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "); skipping child"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-wide/16 v4, -0x65

    cmp-long v4, p2, v4

    const/4 v10, 0x0

    if-nez v4, :cond_4

    .line 554
    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v4

    const/4 v5, 0x0

    .line 555
    invoke-virtual {p1, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 558
    instance-of v5, v1, Lcom/android/launcher2/FolderIcon;

    if-eqz v5, :cond_2

    .line 559
    move-object v5, v1

    check-cast v5, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v5, v10}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    :cond_2
    if-gez v2, :cond_3

    .line 563
    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual {v2, v5, v6}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v2

    goto :goto_0

    .line 567
    :cond_3
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/launcher2/Hotseat;->getCellXFromOrder(I)I

    move-result v5

    .line 568
    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/launcher2/Hotseat;->getCellYFromOrder(I)I

    move-result v6

    goto :goto_0

    :cond_4
    move/from16 v5, p5

    move/from16 v6, p6

    .line 572
    instance-of v4, v1, Lcom/android/launcher2/FolderIcon;

    if-eqz v4, :cond_5

    .line 573
    move-object v4, v1

    check-cast v4, Lcom/android/launcher2/FolderIcon;

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    .line 576
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 577
    new-instance v11, Lcom/android/launcher2/IconKeyEventListener;

    invoke-direct {v11}, Lcom/android/launcher2/IconKeyEventListener;-><init>()V

    invoke-virtual {p1, v11}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :goto_0
    move-object v11, v4

    move v4, v2

    .line 580
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 582
    instance-of v12, v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-nez v12, :cond_6

    goto :goto_1

    .line 585
    :cond_6
    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 586
    iput v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 587
    iput v6, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 588
    iput v7, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 589
    iput v8, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_2

    .line 583
    :cond_7
    :goto_1
    new-instance v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    :goto_2
    move-object v12, v2

    if-gez v7, :cond_8

    if-gez v8, :cond_8

    .line 593
    iput-boolean v10, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 614
    :cond_8
    instance-of v2, v1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_9

    if-nez v3, :cond_9

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    move/from16 v7, p7

    move/from16 v8, p8

    .line 616
    invoke-static/range {v2 .. v8}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v2

    goto :goto_3

    :cond_9
    move-wide v2, p2

    move/from16 v7, p7

    move/from16 v8, p8

    .line 618
    invoke-static/range {v2 .. v8}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v2

    .line 621
    :goto_3
    instance-of v3, v1, Lcom/android/launcher2/Folder;

    xor-int/lit8 v4, v3, 0x1

    if-eqz p9, :cond_a

    move v5, v10

    goto :goto_4

    :cond_a
    const/4 v5, -0x1

    :goto_4
    move-object p2, v11

    move-object/from16 p3, p1

    move/from16 p4, v5

    move/from16 p5, v2

    move-object/from16 p6, v12

    move/from16 p7, v4

    .line 622
    invoke-virtual/range {p2 .. p7}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    move-result v2

    if-nez v2, :cond_b

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add to item at ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") to CellLayout"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/android/launcher2/uitl/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-nez v3, :cond_c

    .line 630
    invoke-virtual {p1, v10}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 631
    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 633
    :cond_c
    instance-of v2, v1, Lcom/android/launcher2/DropTarget;

    if-eqz v2, :cond_d

    .line 634
    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    check-cast v1, Lcom/android/launcher2/DropTarget;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    :cond_d
    return-void
.end method

.method addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[IFLcom/android/launcher2/DropTarget$DragObject;Z)Z
    .locals 6

    .line 2311
    iget v0, p0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float p4, p4, v0

    const/4 v0, 0x0

    if-lez p4, :cond_0

    return v0

    .line 2315
    :cond_0
    aget p4, p3, v0

    const/4 v1, 0x1

    aget v2, p3, v1

    invoke-virtual {p2, p4, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p4

    .line 2316
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v3, ", d = "

    const-string v4, "Workspace"

    if-eqz v2, :cond_1

    .line 2317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUserFolderIfNecessary: newView = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", target = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", targetCell[0] = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget p2, p3, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", targetCell[1] = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget p2, p3, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", external = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", dropOverView = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    :cond_1
    iget-boolean p1, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    if-nez p1, :cond_2

    return v0

    .line 2324
    :cond_2
    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2326
    instance-of p1, p4, Lcom/android/launcher2/FolderIcon;

    if-eqz p1, :cond_5

    .line 2327
    check-cast p4, Lcom/android/launcher2/FolderIcon;

    .line 2328
    iget-object p1, p5, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {p4, p1}, Lcom/android/launcher2/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2329
    invoke-virtual {p4, p5}, Lcom/android/launcher2/FolderIcon;->onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    if-nez p6, :cond_3

    .line 2333
    iget-object p1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object p0, p0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2335
    :cond_3
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_4

    .line 2336
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "addToExistingFolderIfNecessary: fi = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1

    :cond_5
    return v0
.end method

.method public animateWidgetDrop(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 20

    move-object/from16 v14, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    .line 3489
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 3490
    iget-object v0, v14, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v10, v15}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v8, 0x2

    new-array v7, v8, [I

    new-array v6, v8, [F

    .line 3494
    instance-of v0, v9, Lcom/android/launcher2/PendingAddShortcutInfo;

    const/4 v5, 0x1

    xor-int/lit8 v4, v0, 0x1

    .line 3495
    iget-object v3, v14, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v6

    move-object/from16 v16, v3

    move-object/from16 v3, p3

    move/from16 v17, v4

    move-object/from16 v4, p2

    move-object/from16 v18, v15

    move v15, v5

    move-object/from16 v5, p1

    move-object/from16 v19, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    move/from16 v7, p7

    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/Workspace;->getFinalPositionForDropAnimation([I[FLcom/android/launcher2/DragView;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;[IZZ)V

    .line 3498
    iget-object v0, v14, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090019

    .line 3499
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit16 v8, v0, -0xc8

    .line 3501
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v1, "Workspace"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animateWidgetDrop: info = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", animationType = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", finalPos = ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, v16, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v4, v16, v15

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "), scaleXY = ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v4, v19, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, v19, v15

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), scalePreview = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v3, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",external = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3508
    :cond_0
    instance-of v0, v12, Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_1

    if-eqz v13, :cond_1

    const-string v0, "6557954 Animate widget drop, final view is appWidgetHostView"

    .line 3509
    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3510
    iget-object v0, v14, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x4

    const/4 v1, 0x2

    if-eq v11, v1, :cond_2

    if-eqz v13, :cond_3

    :cond_2
    if-eqz v12, :cond_3

    .line 3513
    invoke-virtual {v14, v9, v12}, Lcom/android/launcher2/Workspace;->createWidgetBitmap(Lcom/android/launcher2/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3514
    invoke-virtual {v10, v3}, Lcom/android/launcher2/DragView;->setCrossFadeBitmap(Landroid/graphics/Bitmap;)V

    int-to-float v3, v8

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 3515
    invoke-virtual {v10, v3}, Lcom/android/launcher2/DragView;->crossFade(I)V

    goto :goto_0

    .line 3516
    :cond_3
    iget v3, v9, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-ne v3, v0, :cond_4

    if-eqz v13, :cond_4

    .line 3517
    aget v3, v19, v2

    aget v4, v19, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v19, v15

    aput v3, v19, v2

    .line 3520
    :cond_4
    :goto_0
    iget-object v3, v14, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v3

    if-ne v11, v0, :cond_5

    .line 3522
    iget-object v0, v14, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3dcccccd    # 0.1f

    const/4 v6, 0x0

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;[IFFFILjava/lang/Runnable;I)V

    goto :goto_2

    :cond_5
    if-ne v11, v15, :cond_6

    move v13, v1

    goto :goto_1

    :cond_6
    move v13, v2

    .line 3532
    :goto_1
    new-instance v11, Lcom/android/launcher2/Workspace$10;

    move-object/from16 v0, p4

    invoke-direct {v11, v14, v12, v0}, Lcom/android/launcher2/Workspace$10;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V

    move-object/from16 v0, v18

    .line 3543
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    aget v6, v16, v2

    aget v7, v16, v15

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    aget v17, v19, v2

    aget v15, v19, v15

    move-object v0, v3

    move-object/from16 v1, p3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v9

    move v7, v12

    move/from16 v18, v8

    move/from16 v8, v16

    move/from16 v9, v17

    move v10, v15

    move v12, v13

    move/from16 v13, v18

    move-object/from16 v14, p0

    invoke-virtual/range {v0 .. v14}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    :goto_2
    return-void
.end method

.method backgroundAlphaInterpolator(F)F
    .locals 1

    const p0, 0x3dcccccd    # 0.1f

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    sub-float/2addr p1, p0

    const p0, 0x3e99999a    # 0.3f

    div-float/2addr p1, p0

    return p1
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2010
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2013
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/launcher2/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2015
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 2016
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 2018
    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v7

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    invoke-virtual {v7, v1, v8}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v14

    .line 2019
    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    const/4 v15, 0x0

    aget v7, v7, v15

    int-to-float v7, v7

    int-to-float v8, v5

    .line 2020
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v14

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 2021
    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    const/4 v10, 0x1

    aget v8, v8, v10

    int-to-float v8, v8

    int-to-float v6, v6

    mul-float v11, v14, v6

    sub-float/2addr v6, v11

    div-float/2addr v6, v9

    sub-float/2addr v8, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v8, v6

    .line 2022
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 2024
    sget-boolean v8, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v8, :cond_0

    .line 2025
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "beginDragShared: child = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", source = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", dragLayerX = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", dragLayerY = "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "Workspace"

    invoke-static {v11, v8}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v9, p2

    .line 2031
    :goto_0
    instance-of v8, v1, Lcom/android/launcher2/BubbleTextView;

    const/4 v11, 0x0

    if-nez v8, :cond_3

    instance-of v12, v1, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v12, :cond_1

    goto :goto_1

    .line 2051
    :cond_1
    instance-of v4, v1, Lcom/android/launcher2/FolderIcon;

    if-eqz v4, :cond_2

    const v4, 0x7f060058

    .line 2052
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2053
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-direct {v4, v15, v15, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v13, v4

    move v2, v6

    move-object v12, v11

    goto :goto_4

    :cond_2
    move v2, v6

    move-object v12, v11

    move-object v13, v12

    goto :goto_4

    .line 2032
    :cond_3
    :goto_1
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v11

    if-eqz v11, :cond_4

    const v11, 0x7f060004

    goto :goto_2

    :cond_4
    const v11, 0x7f060007

    :goto_2
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 2033
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v12

    if-eqz v12, :cond_5

    const v11, 0x7f060003

    .line 2034
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto :goto_3

    .line 2036
    :cond_5
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isMRWCustomer()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomerTheme1()Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_6
    const v11, 0x7f060005

    .line 2037
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    :cond_7
    :goto_3
    const v12, 0x7f060006

    .line 2040
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2041
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    sub-int/2addr v5, v11

    .line 2042
    div-int/2addr v5, v4

    add-int v4, v5, v11

    add-int/2addr v11, v12

    add-int/2addr v6, v12

    .line 2048
    new-instance v13, Landroid/graphics/Point;

    const/4 v15, -0x1

    sub-int/2addr v2, v10

    invoke-direct {v13, v15, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 2050
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v12, v4, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v12, v13

    move-object v13, v2

    move v2, v6

    :goto_4
    if-eqz v8, :cond_8

    .line 2058
    move-object v4, v1

    check-cast v4, Lcom/android/launcher2/BubbleTextView;

    .line 2059
    invoke-virtual {v4}, Lcom/android/launcher2/BubbleTextView;->clearPressedOrFocusedBackground()V

    .line 2063
    :cond_8
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    move-object v6, v3

    move v8, v2

    move-object/from16 v9, p2

    invoke-virtual/range {v5 .. v14}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)V

    .line 2066
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    .line 2069
    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->showScrollingIndicator(Z)V

    return-void
.end method

.method public buildPageHardwareLayers()V
    .locals 4

    const/4 v0, 0x1

    .line 1519
    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1520
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1521
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1523
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 1524
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->buildHardwareLayer()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1527
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    return-void
.end method

.method clearChildrenCache()V
    .locals 5

    .line 1460
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1462
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 1463
    invoke-virtual {v3, v1}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1465
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1466
    invoke-virtual {v3, v1}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method clearDropTargets()V
    .locals 6

    .line 3906
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v0

    .line 3907
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 3908
    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 3910
    invoke-virtual {v1, v3}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3911
    instance-of v5, v4, Lcom/android/launcher2/DropTarget;

    if-eqz v5, :cond_1

    .line 3912
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    check-cast v4, Lcom/android/launcher2/DropTarget;

    invoke-virtual {v5, v4}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .line 1166
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScroll()V

    return-void
.end method

.method public createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 1908
    instance-of v0, p1, Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1909
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v1

    .line 1910
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, p3

    .line 1911
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, p3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1910
    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1914
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1913
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1917
    :goto_0
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1918
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    const/4 p0, 0x0

    .line 1919
    invoke-virtual {p2, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IFZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p7

    move-object/from16 v7, p8

    .line 2241
    iget v3, v0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v3, p6, v3

    const/4 v8, 0x0

    if-lez v3, :cond_0

    return v8

    .line 2242
    :cond_0
    aget v3, p5, v8

    const/4 v9, 0x1

    aget v4, p5, v9

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v10

    .line 2243
    sget-boolean v3, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v4, ", mCreateUserFolderOnDrop = "

    const-string v5, ", v = "

    const-string v6, "Workspace"

    if-eqz v3, :cond_1

    .line 2244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createUserFolderIfNecessary: newView = "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v11, p1

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ", mDragInfo = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v12, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, ", container = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v12, p2

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ", target = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ", targetCell[0] = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v14, p5, v8

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ", targetCell[1] = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v14, p5, v9

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ", external = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ", dragView = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v14, v0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    .line 2252
    :goto_0
    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v3, :cond_2

    .line 2253
    iget-object v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v3

    .line 2254
    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v14, v14, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    aget v15, p5, v8

    if-ne v14, v15, :cond_2

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v14, v14, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    aget v15, p5, v9

    if-ne v14, v15, :cond_2

    if-ne v3, v1, :cond_2

    move v3, v9

    goto :goto_1

    :cond_2
    move v3, v8

    :goto_1
    if-eqz v10, :cond_a

    if-nez v3, :cond_a

    .line 2258
    iget-boolean v14, v0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v14, :cond_3

    goto/16 :goto_4

    .line 2265
    :cond_3
    iput-boolean v8, v0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez p5, :cond_4

    .line 2266
    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v3

    :goto_2
    move v4, v3

    .line 2268
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/ShortcutInfo;

    .line 2269
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher2/ShortcutInfo;

    .line 2271
    sget-boolean v14, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v14, :cond_5

    .line 2272
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "createUserFolderIfNecessary: aboveShortcut = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", willBecomeShortcut = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v3, :cond_9

    if-eqz v5, :cond_9

    .line 2277
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/launcher2/ShortcutInfo;

    .line 2278
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/launcher2/ShortcutInfo;

    if-nez v2, :cond_6

    .line 2281
    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2284
    :cond_6
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 2285
    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v10, v15}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v16

    .line 2286
    invoke-virtual {v1, v10}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2288
    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    aget v5, p5, v8

    aget v6, p5, v9

    move-object/from16 v1, p4

    move-wide/from16 v2, p2

    .line 2289
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Launcher;->addFolder(Lcom/android/launcher2/CellLayout;JIII)Lcom/android/launcher2/FolderIcon;

    move-result-object v0

    const/4 v1, -0x1

    .line 2290
    iput v1, v14, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 2291
    iput v1, v14, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    .line 2292
    iput v1, v11, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 2293
    iput v1, v11, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    if-eqz v7, :cond_7

    move v8, v9

    :cond_7
    if-eqz v8, :cond_8

    move-object/from16 p0, v0

    move-object/from16 p1, v14

    move-object/from16 p2, v10

    move-object/from16 p3, v11

    move-object/from16 p4, p8

    move-object/from16 p5, v15

    move/from16 p6, v16

    move-object/from16 p7, p9

    .line 2298
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher2/FolderIcon;->performCreateAnimation(Lcom/android/launcher2/ShortcutInfo;Landroid/view/View;Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V

    goto :goto_3

    .line 2301
    :cond_8
    invoke-virtual {v0, v14}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    .line 2302
    invoke-virtual {v0, v11}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    :goto_3
    return v9

    :cond_9
    return v8

    .line 2259
    :cond_a
    :goto_4
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 2260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not create user folder: hasntMoved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return v8
.end method

.method public createWidgetBitmap(Lcom/android/launcher2/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7

    .line 3431
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object p0

    iget v0, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v1, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/launcher2/Workspace;->estimateItemSize(IILcom/android/launcher2/ItemInfo;Z)[I

    move-result-object p0

    .line 3433
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    .line 3434
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3436
    aget v0, p0, v2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v3, 0x1

    .line 3437
    aget v4, p0, v3

    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3438
    aget v4, p0, v2

    aget v5, p0, v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 3440
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3442
    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 3443
    aget v0, p0, v2

    aget p0, p0, v3

    invoke-virtual {p2, v2, v2, v0, p0}, Landroid/view/View;->layout(IIII)V

    .line 3444
    invoke-virtual {p2, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const/4 p0, 0x0

    .line 3445
    invoke-virtual {v5, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3446
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-object v4
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 4

    .line 758
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 759
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 761
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 762
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    .line 764
    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    div-float v2, v1, v0

    float-to-double v2, v2

    .line 767
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 769
    iget v3, p0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    .line 770
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    :cond_4
    const v0, 0x3f860a92

    cmpl-float v0, v2, v0

    if-lez v0, :cond_5

    return-void

    :cond_5
    const v0, 0x3f060a92

    cmpl-float v1, v2, v0

    if-lez v1, :cond_6

    sub-float/2addr v2, v0

    div-float/2addr v2, v0

    float-to-double v0, v2

    .line 783
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 784
    invoke-super {p0, p1, v0}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0

    .line 787
    :cond_6
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method

.method disableBackground()V
    .locals 1

    const/4 v0, 0x0

    .line 1210
    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 3719
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mSavedStates:Landroid/util/SparseArray;

    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    .line 704
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 708
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method enableBackground()V
    .locals 1

    const/4 v0, 0x1

    .line 1213
    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    return-void
.end method

.method enableChildrenCache(II)V
    .locals 3

    if-le p1, p2, :cond_0

    move v2, p2

    move p2, p1

    move p1, v2

    .line 1447
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    .line 1449
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1450
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    if-gt p1, p2, :cond_1

    .line 1453
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1454
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1455
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/Rect;
    .locals 6

    .line 396
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p0

    .line 397
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    return-object p0
.end method

.method public estimateItemSize(IILcom/android/launcher2/ItemInfo;Z)[I
    .locals 11

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 378
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 379
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/launcher2/CellLayout;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v6, p3

    move v9, p1

    move v10, p2

    .line 380
    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher2/Workspace;->estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/Rect;

    move-result-object p1

    .line 381
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    aput p2, v0, v3

    .line 382
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    aput p1, v0, v2

    if-eqz p4, :cond_0

    .line 384
    aget p1, v0, v3

    int-to-float p1, p1

    iget p0, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr p1, p0

    float-to-int p1, p1

    aput p1, v0, v3

    .line 385
    aget p1, v0, v2

    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    aput p0, v0, v2

    :cond_0
    return-object v0

    :cond_1
    const p0, 0x7fffffff

    aput p0, v0, v3

    aput p0, v0, v2

    return-object v0
.end method

.method public exitWidgetResizeMode()V
    .locals 0

    .line 1632
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object p0

    .line 1633
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->clearAllResizeFrames()V

    return-void
.end method

.method getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ShortcutAndWidgetContainer;",
            ">;"
        }
    .end annotation

    .line 3859
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3861
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3863
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3865
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3866
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 0

    .line 1252
    iget p0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    return p0
.end method

.method getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;Z)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    .line 1655
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;->getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;ZI)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;ZI)Landroid/animation/Animator;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1659
    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    return-object v3

    .line 1664
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->initAnimationArrays()V

    if-eqz p2, :cond_1

    .line 1666
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v3

    .line 1669
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getNextPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 1671
    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 1672
    sget-object v4, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    const/4 v6, 0x0

    if-ne v2, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v6

    .line 1673
    :goto_0
    sget-object v7, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v7, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    move v7, v6

    .line 1674
    :goto_1
    sget-object v8, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v8, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v6

    .line 1675
    :goto_2
    iput-object v1, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 1676
    sget-object v8, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v8, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    move v8, v6

    .line 1677
    :goto_3
    sget-object v9, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v9, :cond_6

    const/4 v9, 0x1

    goto :goto_4

    :cond_6
    move v9, v6

    .line 1678
    :goto_4
    sget-object v10, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-ne v1, v10, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    move v10, v6

    :goto_5
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-eqz v9, :cond_8

    move v13, v11

    goto :goto_6

    :cond_8
    move v13, v12

    .line 1685
    :goto_6
    sget-object v14, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-eq v1, v14, :cond_a

    .line 1690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "#####"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v14, "hede"

    invoke-static {v14, v1}, Lcom/android/launcher2/uitl/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    iget v1, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedPageSpacing:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setPageSpacing(I)V

    if-eqz v4, :cond_9

    if-eqz v10, :cond_9

    .line 1694
    invoke-virtual {v0, v11}, Lcom/android/launcher2/Workspace;->setLayoutScale(F)V

    .line 1695
    invoke-direct {v0, v6}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    move v1, v6

    goto :goto_8

    .line 1698
    :cond_9
    invoke-virtual {v0, v11}, Lcom/android/launcher2/Workspace;->setLayoutScale(F)V

    move v13, v11

    goto :goto_7

    .line 1701
    :cond_a
    iget v1, v0, Lcom/android/launcher2/Workspace;->mOriginalPageSpacing:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setPageSpacing(I)V

    .line 1702
    invoke-virtual {v0, v11}, Lcom/android/launcher2/Workspace;->setLayoutScale(F)V

    :goto_7
    const/4 v1, 0x1

    :goto_8
    if-eqz v1, :cond_b

    .line 1706
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v14, 0x7f090021

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_9

    .line 1707
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v14, 0x7f09000f

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_9
    move v14, v6

    .line 1708
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v15

    if-ge v14, v15, :cond_14

    .line 1709
    invoke-virtual {v0, v14}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/CellLayout;

    .line 1710
    iget-boolean v5, v0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v5, :cond_d

    if-nez v9, :cond_d

    iget v5, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    if-ne v14, v5, :cond_c

    goto :goto_b

    :cond_c
    move v5, v12

    goto :goto_c

    :cond_d
    :goto_b
    move v5, v11

    .line 1712
    :goto_c
    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v16

    if-eqz v2, :cond_e

    if-nez v8, :cond_f

    :cond_e
    if-eqz v4, :cond_12

    if-eqz v10, :cond_12

    .line 1721
    :cond_f
    iget v5, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    if-eq v14, v5, :cond_11

    if-eqz p2, :cond_11

    if-eqz v7, :cond_10

    goto :goto_d

    :cond_10
    move v5, v12

    move/from16 v16, v5

    goto :goto_e

    :cond_11
    :goto_d
    move v5, v11

    .line 1729
    :cond_12
    :goto_e
    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    aput v16, v6, v14

    .line 1730
    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    aput v5, v6, v14

    if-eqz p2, :cond_13

    .line 1732
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v6

    aput v6, v5, v14

    .line 1733
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mOldTranslationYs:[F

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getTranslationY()F

    move-result v6

    aput v6, v5, v14

    .line 1734
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mOldScaleXs:[F

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v6

    aput v6, v5, v14

    .line 1735
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mOldScaleYs:[F

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v6

    aput v6, v5, v14

    .line 1736
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayout;->getBackgroundAlpha()F

    move-result v6

    aput v6, v5, v14

    .line 1738
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    aput v12, v5, v14

    .line 1739
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    aput v12, v5, v14

    .line 1740
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    aput v11, v5, v14

    .line 1741
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    aput v11, v5, v14

    .line 1742
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    aput v13, v5, v14

    goto :goto_f

    .line 1744
    :cond_13
    invoke-virtual {v15, v12}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 1745
    invoke-virtual {v15, v12}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 1746
    invoke-virtual {v15, v11}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 1747
    invoke-virtual {v15, v11}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 1748
    invoke-virtual {v15, v13}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1749
    invoke-virtual {v15, v5}, Lcom/android/launcher2/CellLayout;->setShortcutAndWidgetAlpha(F)V

    :goto_f
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    goto/16 :goto_a

    :cond_14
    if-eqz p2, :cond_1b

    const/4 v2, 0x0

    .line 1754
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1a

    .line 1756
    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 1757
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getAlpha()F

    move-result v5

    .line 1758
    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    aget v6, v6, v2

    cmpl-float v6, v6, v12

    if-nez v6, :cond_15

    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    aget v6, v6, v2

    cmpl-float v6, v6, v12

    if-nez v6, :cond_15

    .line 1759
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 1760
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 1761
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 1762
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 1763
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1764
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 1765
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    goto/16 :goto_11

    .line 1767
    :cond_15
    new-instance v6, Lcom/android/launcher2/LauncherViewPropertyAnimator;

    invoke-direct {v6, v4}, Lcom/android/launcher2/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 1768
    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->translationX(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v7

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    aget v8, v8, v2

    .line 1769
    invoke-virtual {v7, v8}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v7

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    aget v8, v8, v2

    .line 1770
    invoke-virtual {v7, v8}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v7

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    aget v8, v8, v2

    .line 1771
    invoke-virtual {v7, v8}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v7

    int-to-long v10, v1

    .line 1772
    invoke-virtual {v7, v10, v11}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v7

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    .line 1773
    invoke-virtual {v7, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1774
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1776
    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    aget v6, v6, v2

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    aget v8, v7, v2

    cmpl-float v6, v6, v8

    if-nez v6, :cond_16

    aget v6, v7, v2

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_17

    .line 1777
    :cond_16
    new-instance v5, Lcom/android/launcher2/LauncherViewPropertyAnimator;

    .line 1778
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/launcher2/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 1779
    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v6

    .line 1780
    invoke-virtual {v6, v10, v11}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    .line 1781
    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1782
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1784
    :cond_17
    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    aget v5, v5, v2

    cmpl-float v5, v5, v12

    if-nez v5, :cond_18

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    aget v5, v5, v2

    cmpl-float v5, v5, v12

    if-eqz v5, :cond_19

    :cond_18
    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 1786
    fill-array-data v5, :array_0

    invoke-static {v5}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 1787
    iget-object v6, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1788
    new-instance v6, Lcom/android/launcher2/Workspace$4;

    invoke-direct {v6, v0, v4, v2}, Lcom/android/launcher2/Workspace$4;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1795
    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_19
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    .line 1799
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->buildPageHardwareLayers()V

    move/from16 v1, p3

    int-to-long v1, v1

    .line 1800
    invoke-virtual {v3, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_1b
    if-eqz v9, :cond_1c

    .line 1807
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace;->animateBackgroundGradient(FZ)V

    goto :goto_12

    :cond_1c
    const/4 v1, 0x1

    .line 1811
    invoke-direct {v0, v12, v1}, Lcom/android/launcher2/Workspace;->animateBackgroundGradient(FZ)V

    :goto_12
    return-object v3

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getChildrenOutlineAlpha()F
    .locals 0

    .line 1206
    iget p0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    return p0
.end method

.method public getContent()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getCurrentDropLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    .line 3584
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/CellLayout;

    return-object p0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    .line 4136
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    .line 4137
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0147

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    add-int/2addr v0, v4

    .line 4138
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    .line 4137
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .line 1418
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p0, 0x60000

    return p0

    .line 1421
    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->getDescendantFocusability()I

    move-result p0

    return p0
.end method

.method public getDragInfo()Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 0

    .line 3594
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    return-object p0
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;
    .locals 5

    .line 3873
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object p0

    .line 3874
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 3875
    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3877
    invoke-virtual {v0, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3878
    instance-of v4, v3, Lcom/android/launcher2/Folder;

    if-eqz v4, :cond_1

    .line 3879
    check-cast v3, Lcom/android/launcher2/Folder;

    .line 3880
    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 2

    .line 3216
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getLocationInDragLayer([I)V
    .locals 1

    .line 4142
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    return-void
.end method

.method getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 4

    .line 498
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object p0

    .line 499
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 501
    invoke-virtual {p0, v1}, Lcom/android/launcher2/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 502
    instance-of v3, v2, Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_0

    .line 503
    check-cast v2, Lcom/android/launcher2/Folder;

    .line 504
    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;
    .locals 3

    .line 3829
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object p0

    .line 3830
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3831
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getScreenIdForPageIndex(I)J
    .locals 1

    if-ltz p1, :cond_0

    .line 4073
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 4074
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method protected getScrollMode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 5

    .line 3891
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object p0

    .line 3892
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 3893
    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3895
    invoke-virtual {v0, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3896
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getViewLocationRelativeToSelf(Landroid/view/View;[I)V
    .locals 4

    .line 2579
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Workspace;->getLocationInWindow([I)V

    const/4 p0, 0x0

    .line 2580
    aget v0, p2, p0

    const/4 v1, 0x1

    .line 2581
    aget v2, p2, v1

    .line 2583
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2584
    aget p1, p2, p0

    .line 2585
    aget v3, p2, v1

    sub-int/2addr p1, v0

    .line 2587
    aput p1, p2, p0

    sub-int/2addr v3, v2

    .line 2588
    aput v3, p2, v1

    return-void
.end method

.method getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation

    .line 3842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3843
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3845
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3847
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3848
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method hideOutlines()V
    .locals 3

    .line 1181
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_2

    .line 1182
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v1, "childrenOutlineAlpha"

    .line 1184
    invoke-static {p0, v1, v0}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x177

    .line 1185
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1186
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1187
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void
.end method

.method protected hitsNextPage(FF)Z
    .locals 3

    .line 667
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    .line 671
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    add-int/2addr v0, v2

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 3

    .line 656
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    .line 660
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    sub-int/2addr v0, v2

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method protected initWorkspace()V
    .locals 4

    .line 433
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 434
    iget v1, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    .line 435
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-static {v1}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 436
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 437
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    const/4 v0, 0x0

    .line 438
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setWillNotDraw(Z)V

    const/4 v0, 0x1

    .line 439
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 441
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070007

    .line 443
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :catch_0
    new-instance v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    .line 449
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 450
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 451
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 452
    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    .line 454
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v1

    const v2, 0x3f0ccccd    # 0.55f

    if-eqz v1, :cond_0

    const v1, 0x7f060003

    .line 455
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    goto :goto_2

    .line 457
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isMRWCustomer()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomerTheme1()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 460
    :cond_1
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f060004

    goto :goto_0

    :cond_2
    const v1, 0x7f060007

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    goto :goto_2

    :cond_3
    :goto_1
    const v1, 0x7f060005

    .line 458
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    :goto_2
    const/high16 v0, 0x43fa0000    # 500.0f

    .line 463
    iget v1, p0, Lcom/android/launcher2/Workspace;->mDensity:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/android/launcher2/Workspace;->mFlingThresholdVelocity:I

    return-void
.end method

.method isDrawingBackgroundGradient()Z
    .locals 2

    .line 1400
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDropEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFinishedSwitchingState()Z
    .locals 1

    .line 695
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/launcher2/Workspace;->mTransitionProgress:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSmall()Z
    .locals 2

    .line 1437
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v0, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSupportCycleSlidingScreen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSwitchingState()Z
    .locals 0

    .line 689
    iget-boolean p0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return p0
.end method

.method isTouchActive()Z
    .locals 0

    .line 512
    iget p0, p0, Lcom/android/launcher2/Workspace;->mTouchState:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method mapPointFromChildToSelf(Landroid/view/View;[F)V
    .locals 4

    .line 2825
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2826
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v0

    .line 2827
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2828
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    .line 2830
    aget v2, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    sub-float/2addr v2, v0

    aput v2, p2, v1

    const/4 v0, 0x1

    .line 2831
    aget v1, p2, v0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollY()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-float p0, p0

    sub-float/2addr v1, p0

    aput v1, p2, v0

    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 1

    const/4 v0, 0x0

    .line 2784
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V
    .locals 3

    if-nez p3, :cond_0

    .line 2799
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2800
    iget-object p3, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 2802
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v0

    .line 2803
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2804
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    :cond_1
    const/4 v1, 0x0

    .line 2806
    aget v2, p2, v1

    int-to-float v0, v0

    add-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    aput v2, p2, v1

    const/4 v0, 0x1

    .line 2807
    aget v1, p2, v0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollY()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v1, p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    aput v1, p2, v0

    .line 2808
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method mapPointFromSelfToHotseatLayout(Lcom/android/launcher2/Hotseat;[F)V
    .locals 3

    .line 2812
    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    const/4 v0, 0x0

    .line 2813
    aget v1, p2, v0

    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    const/4 v0, 0x1

    .line 2814
    aget v1, p2, v0

    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    aput v1, p2, v0

    .line 2815
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method moveToDefaultScreen(Z)V
    .locals 1

    .line 4116
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 4118
    iget p1, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_0

    .line 4120
    :cond_0
    iget p1, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 4123
    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method protected notifyPageSwitchListener()V
    .locals 0

    .line 867
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->notifyPageSwitchListener()V

    .line 868
    iget p0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1351
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onAttachedToWindow()V

    .line 1352
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1353
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow: mWindowToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Workspace"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->computeScroll()V

    .line 1357
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/DragController;->setWindowToken(Landroid/os/IBinder;)V

    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 473
    instance-of p1, p2, Lcom/android/launcher2/CellLayout;

    if-eqz p1, :cond_0

    .line 476
    check-cast p2, Lcom/android/launcher2/CellLayout;

    .line 477
    invoke-virtual {p2, p0}, Lcom/android/launcher2/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    .line 478
    invoke-virtual {p2, p1}, Lcom/android/launcher2/CellLayout;->setClickable(Z)V

    .line 479
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0146

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 480
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v2

    .line 479
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/launcher2/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 474
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "A Workspace can only have CellLayout children."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1361
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetachedFromWindow: mWindowToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Workspace"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 1364
    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method public onDragEnd()V
    .locals 2

    .line 416
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragEnd: mIsDragOccuring = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Workspace"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 420
    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 421
    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 422
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/Launcher;->unlockScreenOrientation(Z)V

    .line 425
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/InstallShortcutReceiver;->disableAndFlushInstallQueue(Landroid/content/Context;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/UninstallShortcutReceiver;->disableAndFlushUninstallQueue(Landroid/content/Context;)V

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 2

    .line 2592
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 2593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragEnter: d = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mDragTargetLayout = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Workspace"

    invoke-static {v0, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/Workspace;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {p1}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragEnter()V

    const/4 p1, 0x0

    .line 2598
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2599
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    const/4 p1, 0x0

    .line 2601
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 2602
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object p1

    .line 2603
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2604
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2608
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2609
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->showOutlines()V

    :cond_1
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 4

    .line 2652
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    const-string v1, "Workspace"

    if-eqz v0, :cond_0

    .line 2653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragExit: d = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2656
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {v0}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragExit()V

    .line 2660
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v0, :cond_2

    .line 2661
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2664
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    goto :goto_0

    .line 2666
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    goto :goto_0

    .line 2669
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 2672
    :goto_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2673
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 2675
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2679
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->onResetScrollArea()V

    .line 2680
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 2681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doDragExit: drag source = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_5

    iget-object v3, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    goto :goto_2

    :cond_5
    move-object v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", drag info = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    goto :goto_3

    :cond_6
    move-object p1, v2

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mDragTargetLayout = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mIsPageMoving = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsPageMoving:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2686
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2688
    iget-object p1, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    invoke-virtual {p1}, Lcom/android/launcher2/SpringLoadedDragController;->cancel()V

    .line 2690
    iget-boolean p1, p0, Lcom/android/launcher2/Workspace;->mIsPageMoving:Z

    if-nez p1, :cond_8

    .line 2691
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->hideOutlines()V

    :cond_8
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 24

    move-object/from16 v9, p0

    move-object/from16 v7, p1

    .line 2985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragOver: d = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dragInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInScrollArea = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v9, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsSwitchingState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v9, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Workspace"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2990
    iget-boolean v0, v9, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-nez v0, :cond_11

    iget-boolean v0, v9, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_11

    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    .line 2992
    :cond_0
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 2994
    iget-object v0, v7, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/android/launcher2/ItemInfo;

    .line 2997
    iget v0, v10, Lcom/android/launcher2/ItemInfo;->spanX:I

    if-ltz v0, :cond_10

    iget v0, v10, Lcom/android/launcher2/ItemInfo;->spanY:I

    if-ltz v0, :cond_10

    .line 2998
    iget v1, v7, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget v2, v7, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    iget v3, v7, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    iget v4, v7, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    iget-object v5, v7, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    iget-object v6, v9, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v0

    iput-object v0, v9, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 3001
    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object/from16 v18, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v18, v0

    .line 3003
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&&&&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "hede"

    invoke-static {v2, v0}, Lcom/android/launcher2/uitl/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3004
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    const/4 v15, 0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_5

    .line 3005
    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->isExternalDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3006
    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 3007
    iget v0, v7, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget v2, v7, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 3013
    :cond_2
    iget-object v0, v7, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    iget v2, v7, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    int-to-float v2, v2

    iget v3, v7, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    int-to-float v3, v3

    invoke-direct {v9, v0, v2, v3, v14}, Lcom/android/launcher2/Workspace;->findMatchingPageForDragOver(Lcom/android/launcher2/DragView;FFZ)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 3015
    iget-object v2, v9, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eq v0, v2, :cond_7

    .line 3017
    invoke-virtual {v9, v0}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3018
    invoke-virtual {v9, v0}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3020
    iget-object v2, v9, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_3

    move v2, v15

    goto :goto_1

    :cond_3
    move v2, v14

    :goto_1
    if-eqz v2, :cond_7

    .line 3022
    iget-object v2, v9, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3023
    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher2/SpringLoadedDragController;->cancel()V

    goto :goto_2

    .line 3025
    :cond_4
    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    iget-object v2, v9, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/SpringLoadedDragController;->setAlarm(Lcom/android/launcher2/CellLayout;)V

    goto :goto_2

    .line 3031
    :cond_5
    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3032
    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 3033
    iget v0, v7, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget v2, v7, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    invoke-virtual {v8, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 3039
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 3041
    iget-object v2, v9, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eq v0, v2, :cond_7

    .line 3042
    invoke-virtual {v9, v0}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3043
    invoke-virtual {v9, v0}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3048
    :cond_7
    :goto_2
    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_f

    .line 3050
    iget-object v2, v9, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3051
    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    iget-object v1, v9, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher2/Hotseat;[F)V

    goto :goto_3

    .line 3053
    :cond_8
    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v2, v9, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v9, v0, v2, v1}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 3056
    :goto_3
    iget-object v0, v7, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/launcher2/ItemInfo;

    .line 3058
    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v14

    float-to-int v1, v1

    aget v0, v0, v15

    float-to-int v2, v0

    iget v3, v10, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v4, v10, Lcom/android/launcher2/ItemInfo;->spanY:I

    iget-object v5, v9, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v6, v9, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v9, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3062
    aget v1, v0, v14

    aget v0, v0, v15

    invoke-virtual {v9, v1, v0}, Lcom/android/launcher2/Workspace;->setCurrentDropOverCell(II)V

    .line 3064
    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v1, v9, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v14

    aget v1, v1, v15

    iget-object v3, v9, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v4

    .line 3067
    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v1, v9, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    aget v2, v1, v14

    aget v1, v1, v15

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    .line 3070
    iget-object v2, v9, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v3, v9, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Workspace;->manageFolderFeedback(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFLandroid/view/View;)V

    .line 3073
    iget v0, v10, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3074
    iget v1, v10, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3075
    iget v2, v10, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    if-lez v2, :cond_9

    iget v2, v10, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    if-lez v2, :cond_9

    .line 3076
    iget v0, v10, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 3077
    iget v1, v10, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    :cond_9
    move v3, v0

    move v4, v1

    .line 3080
    iget-object v11, v9, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v14

    float-to-int v12, v1

    aget v0, v0, v15

    float-to-int v13, v0

    iget v0, v10, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v1, v10, Lcom/android/launcher2/ItemInfo;->spanY:I

    iget-object v2, v9, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move v5, v14

    move v14, v0

    move v8, v15

    move v15, v1

    move-object/from16 v16, v18

    move-object/from16 v17, v2

    invoke-virtual/range {v11 .. v17}, Lcom/android/launcher2/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v23

    if-nez v23, :cond_b

    .line 3085
    iget-object v11, v9, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iget-object v13, v9, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v5

    float-to-int v14, v1

    aget v0, v0, v8

    float-to-int v15, v0

    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    aget v16, v0, v5

    aget v17, v0, v8

    iget v0, v10, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v1, v10, Lcom/android/launcher2/ItemInfo;->spanY:I

    const/16 v20, 0x0

    iget-object v2, v7, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    .line 3088
    invoke-virtual {v2}, Lcom/android/launcher2/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v21

    iget-object v2, v7, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v2}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v22

    move-object/from16 v12, v18

    move/from16 v18, v0

    move/from16 v19, v1

    .line 3085
    invoke-virtual/range {v11 .. v22}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    :cond_a
    move v10, v8

    goto :goto_4

    .line 3089
    :cond_b
    iget v0, v9, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-eqz v0, :cond_c

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    :cond_c
    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    .line 3090
    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, v9, Lcom/android/launcher2/Workspace;->mLastReorderX:I

    iget-object v1, v9, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    aget v2, v1, v5

    if-ne v0, v2, :cond_d

    iget v0, v9, Lcom/android/launcher2/Workspace;->mLastReorderY:I

    aget v1, v1, v8

    if-eq v0, v1, :cond_a

    .line 3095
    :cond_d
    new-instance v11, Lcom/android/launcher2/Workspace$ReorderAlarmListener;

    iget-object v2, v9, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    iget v5, v10, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v6, v10, Lcom/android/launcher2/ItemInfo;->spanY:I

    iget-object v7, v7, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object v0, v11

    move-object/from16 v1, p0

    move v10, v8

    move-object/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/Workspace$ReorderAlarmListener;-><init>(Lcom/android/launcher2/Workspace;[FIIIILcom/android/launcher2/DragView;Landroid/view/View;)V

    .line 3097
    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0, v11}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    .line 3098
    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 3101
    :goto_4
    iget v0, v9, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-eq v0, v10, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    if-nez v23, :cond_f

    .line 3103
    :cond_e
    iget-object v0, v9, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_f

    .line 3104
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->revertTempState()V

    :cond_f
    return-void

    .line 2997
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_5
    return-void
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 2

    .line 402
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragStart: source = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", info = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", dragAction = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Workspace"

    invoke-static {p2, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 406
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    const/4 p1, 0x0

    .line 407
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 408
    iget-object p1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->lockScreenOrientation()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 409
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->setChildrenBackgroundAlphaMultipliers(F)V

    .line 411
    invoke-static {}, Lcom/android/launcher2/InstallShortcutReceiver;->enableInstallQueue()V

    .line 412
    invoke-static {}, Lcom/android/launcher2/UninstallShortcutReceiver;->enableUninstallQueue()V

    return-void
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 2

    .line 1612
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 1613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragStartedWithItem: v = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Workspace"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    const/4 v1, 0x2

    .line 1618
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onDragStartedWithItem(Lcom/android/launcher2/PendingAddItemInfo;Landroid/graphics/Bitmap;Z)V
    .locals 7

    .line 1622
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 1624
    iget v0, p1, Lcom/android/launcher2/PendingAddItemInfo;->spanX:I

    iget v1, p1, Lcom/android/launcher2/PendingAddItemInfo;->spanY:I

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/android/launcher2/Workspace;->estimateItemSize(IILcom/android/launcher2/ItemInfo;Z)[I

    move-result-object p1

    .line 1627
    aget v4, p1, v3

    const/4 v0, 0x1

    aget v5, p1, v0

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1385
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1387
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1388
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 1389
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredHeight()I

    move-result v4

    .line 1388
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1390
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1393
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1396
    iget-object p1, p0, Lcom/android/launcher2/Workspace;->mBindPages:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 34

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 2346
    iget v1, v11, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget v2, v11, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    iget v3, v11, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    iget v4, v11, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    iget-object v5, v11, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    iget-object v6, v10, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 2349
    iget-object v15, v10, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    const/4 v14, 0x0

    if-eqz v15, :cond_1

    .line 2353
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v15}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2354
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v0

    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v10, v0, v1}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher2/Hotseat;[F)V

    goto :goto_0

    .line 2356
    :cond_0
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v10, v15, v0, v14}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2359
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    const-string v7, ", this = "

    const-string v8, ", mInScrollArea = "

    const-string v9, "Workspace"

    if-eqz v0, :cond_2

    .line 2360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrop 1: drag view = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v11, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dragInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v11, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dragSource  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v11, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dropTargetLayout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDragInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v10, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    :cond_2
    iget-object v0, v11, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v6, 0x0

    if-eq v0, v10, :cond_3

    new-array v1, v13, [I

    .line 2369
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v2, v0, v6

    float-to-int v2, v2

    aput v2, v1, v6

    aget v0, v0, v12

    float-to-int v0, v0

    aput v0, v1, v12

    .line 2371
    iget-object v2, v11, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v3, v15

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V

    goto/16 :goto_11

    .line 2372
    :cond_3
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v0, :cond_1b

    .line 2373
    iget-object v5, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 v4, -0x1

    if-eqz v15, :cond_16

    .line 2378
    invoke-virtual {v10, v5}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    if-eq v0, v15, :cond_4

    move/from16 v23, v12

    goto :goto_1

    :cond_4
    move/from16 v23, v6

    .line 2379
    :goto_1
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v15}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v24

    const-wide/16 v25, -0x65

    const-wide/16 v27, -0x64

    if-eqz v24, :cond_5

    move-wide/from16 v29, v25

    goto :goto_2

    :cond_5
    move-wide/from16 v29, v27

    .line 2384
    :goto_2
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    aget v0, v0, v6

    if-gez v0, :cond_6

    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    goto :goto_3

    .line 2385
    :cond_6
    invoke-virtual {v10, v15}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    :goto_3
    move v3, v0

    .line 2386
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move/from16 v17, v0

    goto :goto_4

    :cond_7
    move/from16 v17, v12

    .line 2387
    :goto_4
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v0, :cond_8

    iget v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move/from16 v18, v0

    goto :goto_5

    :cond_8
    move/from16 v18, v12

    .line 2391
    :goto_5
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v6

    float-to-int v1, v1

    aget v0, v0, v12

    float-to-int v2, v0

    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move v13, v3

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v31, v5

    move-object v5, v15

    move v12, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2393
    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v12

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v15, v2, v1, v0}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v16

    .line 2395
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v0, :cond_9

    .line 2396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrop 2: cell = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v6, v31

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",screen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v10, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTargetCell = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    move-object/from16 v6, v31

    .line 2403
    :goto_6
    iget-boolean v0, v10, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-nez v0, :cond_a

    iget-object v5, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    iget-object v8, v11, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, v29

    move-object v4, v15

    move-object/from16 v31, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IFZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_a
    move-object/from16 v31, v6

    .line 2408
    :cond_b
    iget-object v3, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object v2, v15

    move/from16 v4, v16

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[IFLcom/android/launcher2/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 2415
    :cond_c
    iget-object v0, v11, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/android/launcher2/ItemInfo;

    .line 2416
    iget v0, v9, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 2417
    iget v1, v9, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 2418
    iget v2, v9, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    if-lez v2, :cond_d

    iget v2, v9, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    if-lez v2, :cond_d

    .line 2419
    iget v0, v9, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 2420
    iget v1, v9, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    :cond_d
    move/from16 v16, v1

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 2424
    iget-object v3, v10, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    aget v4, v3, v12

    float-to-int v4, v4

    const/4 v5, 0x1

    aget v3, v3, v5

    float-to-int v3, v3

    iget-object v6, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/16 v22, 0x1

    move v8, v5

    move v7, v12

    move-object v12, v15

    move/from16 v32, v1

    move v5, v13

    move v13, v4

    move-object/from16 v33, v14

    move v14, v3

    move-object v4, v15

    move v15, v0

    move-object/from16 v19, v31

    move-object/from16 v20, v6

    move-object/from16 v21, v2

    invoke-virtual/range {v12 .. v22}, Lcom/android/launcher2/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2428
    aget v1, v0, v7

    if-ltz v1, :cond_e

    aget v0, v0, v8

    if-ltz v0, :cond_e

    move v12, v8

    goto :goto_7

    :cond_e
    move v12, v7

    :goto_7
    move-object/from16 v13, v31

    if-eqz v12, :cond_10

    .line 2431
    instance-of v0, v13, Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_10

    aget v0, v2, v7

    iget v1, v9, Lcom/android/launcher2/ItemInfo;->spanX:I

    if-ne v0, v1, :cond_f

    aget v0, v2, v8

    iget v1, v9, Lcom/android/launcher2/ItemInfo;->spanY:I

    if-eq v0, v1, :cond_10

    .line 2434
    :cond_f
    aget v0, v2, v7

    iput v0, v9, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 2435
    aget v0, v2, v8

    iput v0, v9, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 2436
    move-object v0, v13

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 2437
    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    aget v3, v2, v7

    aget v2, v2, v8

    invoke-static {v0, v1, v3, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    move v14, v8

    goto :goto_8

    :cond_10
    move v14, v7

    .line 2441
    :goto_8
    iget v0, v10, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    if-eq v0, v5, :cond_11

    if-nez v24, :cond_11

    .line 2443
    invoke-virtual {v10, v5}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    move v15, v5

    goto :goto_9

    :cond_11
    const/4 v15, -0x1

    :goto_9
    if-eqz v12, :cond_15

    .line 2447
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/launcher2/ItemInfo;

    if-eqz v23, :cond_12

    .line 2450
    invoke-virtual {v10, v13}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2451
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    aget v6, v0, v7

    aget v16, v0, v8

    iget v2, v12, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v3, v12, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v17, v2

    move/from16 v18, v3

    move-wide/from16 v2, v29

    move/from16 v23, v14

    move-object v14, v4

    move v4, v5

    move/from16 v24, v5

    move v5, v6

    move/from16 v6, v16

    move/from16 v31, v15

    move v15, v7

    move/from16 v7, v17

    move/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIII)V

    goto :goto_a

    :cond_12
    move/from16 v24, v5

    move/from16 v23, v14

    move/from16 v31, v15

    move-object v14, v4

    move v15, v7

    .line 2456
    :goto_a
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2457
    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    aget v1, v1, v15

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 2458
    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v8, 0x1

    aget v1, v1, v8

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 2459
    iget v1, v9, Lcom/android/launcher2/ItemInfo;->spanX:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 2460
    iget v1, v9, Lcom/android/launcher2/ItemInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 2461
    iput-boolean v8, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2465
    instance-of v1, v13, Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_13

    cmp-long v1, v29, v27

    if-nez v1, :cond_13

    const-wide/16 v1, 0x1

    add-long v16, v29, v1

    .line 2467
    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    iget-object v2, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    aget v19, v2, v15

    aget v20, v2, v8

    iget-object v2, v10, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    iget-object v3, v10, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move/from16 v18, v1

    move/from16 v21, v2

    move/from16 v22, v3

    invoke-static/range {v16 .. v22}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v1

    goto :goto_b

    .line 2471
    :cond_13
    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    iget-object v2, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    aget v19, v2, v15

    aget v20, v2, v8

    iget-object v2, v10, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    iget-object v3, v10, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move-wide/from16 v16, v29

    move/from16 v18, v1

    move/from16 v21, v2

    move/from16 v22, v3

    invoke-static/range {v16 .. v22}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v1

    .line 2474
    :goto_b
    invoke-virtual {v13, v1}, Landroid/view/View;->setId(I)V

    cmp-long v1, v29, v25

    if-eqz v1, :cond_14

    .line 2476
    instance-of v1, v13, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v1, :cond_14

    .line 2482
    move-object v5, v13

    check-cast v5, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2483
    invoke-virtual {v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 2484
    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v1, :cond_14

    .line 2486
    new-instance v1, Lcom/android/launcher2/Workspace$5;

    invoke-direct {v1, v10, v12, v5, v14}, Lcom/android/launcher2/Workspace$5;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 2492
    new-instance v2, Lcom/android/launcher2/Workspace$6;

    invoke-direct {v2, v10, v1}, Lcom/android/launcher2/Workspace$6;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)V

    move-object v14, v2

    goto :goto_c

    :cond_14
    move-object/from16 v14, v33

    .line 2504
    :goto_c
    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v16, v1

    move-object/from16 v17, v12

    move-wide/from16 v18, v29

    move/from16 v20, v24

    move/from16 v21, v2

    move/from16 v22, v0

    invoke-static/range {v16 .. v22}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    move/from16 v6, v23

    move/from16 v4, v31

    goto :goto_d

    :cond_15
    move/from16 v23, v14

    move/from16 v31, v15

    move v15, v7

    .line 2508
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2509
    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    aput v2, v1, v15

    .line 2510
    iget-object v1, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    aput v0, v1, v8

    .line 2511
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2512
    invoke-virtual {v0, v13}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    move/from16 v6, v23

    move/from16 v4, v31

    move-object/from16 v14, v33

    goto :goto_d

    :cond_16
    move v15, v6

    move v8, v12

    move/from16 v32, v13

    move-object/from16 v33, v14

    move-object v13, v5

    const/4 v4, -0x1

    .line 2516
    :goto_d
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/launcher2/CellLayout;

    .line 2520
    new-instance v5, Lcom/android/launcher2/Workspace$7;

    invoke-direct {v5, v10, v14}, Lcom/android/launcher2/Workspace$7;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)V

    .line 2530
    iput-boolean v8, v10, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    .line 2531
    iget-object v0, v11, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v0}, Lcom/android/launcher2/DragView;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2532
    invoke-virtual {v13}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 2533
    iget v0, v1, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_18

    if-eqz v6, :cond_17

    goto :goto_e

    :cond_17
    move/from16 v32, v15

    .line 2536
    :goto_e
    iget-object v3, v11, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v2, v9

    move-object v4, v5

    move/from16 v5, v32

    move-object v6, v13

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/Workspace;->animateWidgetDrop(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_10

    :cond_18
    if-gez v4, :cond_19

    const/4 v3, -0x1

    goto :goto_f

    :cond_19
    const/16 v0, 0x12c

    move v3, v0

    .line 2540
    :goto_f
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    iget-object v1, v11, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object v2, v13

    move-object v4, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto :goto_10

    .line 2544
    :cond_1a
    iput-boolean v15, v11, Lcom/android/launcher2/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 2545
    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2547
    :goto_10
    invoke-virtual {v9, v13}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 2550
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    aget v1, v0, v15

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    aget v0, v0, v8

    if-ne v0, v2, :cond_1b

    .line 2551
    iget-object v0, v10, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    invoke-virtual {v10, v0}, Lcom/android/launcher2/Workspace;->stopDragAppWidget(I)V

    :cond_1b
    :goto_11
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;ZZ)V
    .locals 2

    .line 3624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDropCompleted: target = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", d = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFlingToDelete = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", mDragInfo = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", success = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Workspace"

    invoke-static {v0, p3}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_2

    .line 3628
    iget-object p3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p3, p1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    .line 3637
    :cond_0
    iget-object p3, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz p3, :cond_3

    .line 3639
    iget-object p3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p3, p1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3640
    iget-object p1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object p1

    goto :goto_0

    .line 3642
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget p1, p1, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/CellLayout;

    .line 3646
    :goto_0
    iget-object p3, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object p3, p3, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 3647
    iget-object p3, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object p3, p3, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    :goto_1
    if-eq p1, p0, :cond_3

    .line 3630
    iget-object p1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz p1, :cond_3

    .line 3631
    iget-object p1, p1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object p1

    iget-object p3, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object p3, p3, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 3632
    iget-object p1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of p1, p1, Lcom/android/launcher2/DropTarget;

    if-eqz p1, :cond_3

    .line 3633
    iget-object p1, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    iget-object p3, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object p3, p3, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast p3, Lcom/android/launcher2/DropTarget;

    invoke-virtual {p1, p3}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 3649
    :cond_3
    :goto_2
    iget-boolean p1, p2, Lcom/android/launcher2/DropTarget$DragObject;->cancelled:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 3650
    iget-object p1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object p1, p1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3654
    :cond_4
    iget p1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->stopDragAppWidget(I)V

    const/4 p1, 0x0

    .line 3655
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 3656
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 3659
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    return-void
.end method

.method public onEnterScrollArea(III)Z
    .locals 4

    .line 3765
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/LauncherApplication;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 3766
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 3767
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3768
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Hotseat;->getHitRect(Landroid/graphics/Rect;)V

    .line 3769
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    return v3

    .line 3775
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez p1, :cond_4

    .line 3776
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3778
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getNextPage()I

    move-result p1

    const/4 p2, -0x1

    if-nez p3, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    add-int/2addr p1, v0

    .line 3781
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSupportCycleSlidingScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p3, v1, :cond_2

    .line 3782
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    if-ne p1, v0, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    if-ne p1, p2, :cond_3

    .line 3785
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v1

    :cond_3
    :goto_1
    const/4 p2, 0x0

    .line 3790
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    if-ltz p1, :cond_4

    .line 3792
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 3793
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/CellLayout;

    .line 3794
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3798
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    return v1
.end method

.method public onExitScrollArea()Z
    .locals 2

    .line 3808
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3809
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 3810
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 3811
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3812
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    const/4 v0, 0x1

    .line 3815
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    move v1, v0

    :cond_0
    return v1
.end method

.method public onFlingToDelete(Lcom/android/launcher2/DropTarget$DragObject;IILandroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 713
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_MOTION:Z

    if-eqz v0, :cond_0

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterceptTouchEvent: ev = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScrollX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Workspace"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 723
    :cond_1
    iget v0, p0, Lcom/android/launcher2/Workspace;->mTouchState:I

    if-nez v0, :cond_3

    .line 724
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 725
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v0

    if-nez v0, :cond_3

    .line 726
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 718
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    .line 719
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    .line 730
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 0

    const/4 p1, 0x0

    .line 1833
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 1834
    iget-object p2, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {p2, p1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setOverrideHorizontalCatchupConstant(Z)V

    .line 1835
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1840
    iget-boolean p2, p0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-nez p2, :cond_0

    .line 1841
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 1842
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/launcher2/CellLayout;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 1843
    invoke-virtual {p2, p3}, Lcom/android/launcher2/CellLayout;->setShortcutAndWidgetAlpha(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 0

    const/4 p1, 0x1

    .line 1818
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 1819
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelScrollingIndicatorAnimations()V

    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 0

    return-void
.end method

.method public onLauncherTransitionStep(Lcom/android/launcher2/Launcher;F)V
    .locals 0

    .line 1828
    iput p2, p0, Lcom/android/launcher2/Workspace;->mTransitionProgress:F

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1369
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mFirstLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1370
    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 1372
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/SmoothPagedView;->onLayout(ZIIII)V

    .line 1374
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    if-eqz p0, :cond_1

    .line 1375
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLayout: changed = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", left = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", top = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", right = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", bottom = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Workspace"

    invoke-static {p1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 4

    .line 792
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageBeginMoving()V

    .line 794
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 795
    invoke-direct {p0, v2}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    goto :goto_0

    .line 797
    :cond_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 799
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    iget v3, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/Workspace;->enableChildrenCache(II)V

    goto :goto_0

    .line 803
    :cond_1
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    sub-int/2addr v0, v1

    iget v3, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/Workspace;->enableChildrenCache(II)V

    .line 808
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 809
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->showOutlines()V

    .line 810
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    .line 815
    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-nez v0, :cond_4

    move v0, v2

    .line 816
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 817
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayout;->setShortcutAndWidgetAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 822
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->showScrollingIndicator(Z)V

    return-void
.end method

.method protected onPageEndMoving()V
    .locals 2

    .line 826
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onPageEndMoving()V

    .line 828
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isHardwareAccelerated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 829
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    goto :goto_0

    .line 831
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->clearChildrenCache()V

    .line 835
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 839
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->forceMoveEvent()V

    goto :goto_1

    .line 843
    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 844
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->hideOutlines()V

    .line 848
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_3

    .line 849
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 852
    iput v0, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 854
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 855
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 856
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 859
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 860
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 861
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    :cond_5
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1406
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1408
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    .line 1410
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 3706
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3707
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestoreInstanceState: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mCurrentPage = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Workspace"

    invoke-static {v0, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3711
    :cond_0
    iget p0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 681
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_MOTION:Z

    if-eqz v0, :cond_0

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouch: v = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", event = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", isFinishedSwitchingState() = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 683
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isFinishedSwitchingState()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mState = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mScrollX = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Workspace"

    .line 682
    invoke-static {p2, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isFinishedSwitchingState()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 12

    .line 1531
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 1532
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    .line 1534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/4 v2, 0x0

    .line 1535
    aget v3, v0, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v0, v2

    const/4 v3, 0x1

    .line 1536
    aget v4, v0, v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v4, v1

    aput v4, v0, v3

    .line 1538
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    .line 1539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-ne p0, v3, :cond_0

    const-string p0, "android.wallpaper.tap"

    goto :goto_0

    :cond_0
    const-string p0, "android.wallpaper.secondaryTap"

    :goto_0
    move-object v7, p0

    aget v8, v0, v2

    aget v9, v0, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1538
    invoke-virtual/range {v5 .. v11}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 699
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method protected overScroll(F)V
    .locals 0

    .line 1347
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->acceleratedOverScroll(F)V

    return-void
.end method

.method overScrollBackgroundAlphaInterpolator(F)F
    .locals 2

    .line 1270
    iget v0, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    .line 1271
    iput p1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    goto :goto_0

    :cond_0
    cmpg-float p0, p1, v0

    if-gez p0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    const p0, 0x3da3d70a    # 0.08f

    div-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1276
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method overlaps(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;IILandroid/graphics/Matrix;)Z
    .locals 4

    .line 2848
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempDragCoordinates:[F

    int-to-float p3, p3

    const/4 v1, 0x0

    .line 2849
    aput p3, v0, v1

    int-to-float p3, p4

    const/4 p4, 0x1

    .line 2850
    aput p3, v0, p4

    .line 2851
    iget-object p3, p0, Lcom/android/launcher2/Workspace;->mTempDragBottomRightCoordinates:[F

    .line 2852
    aget v2, v0, v1

    invoke-virtual {p2}, Lcom/android/launcher2/DragView;->getDragRegionWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, p3, v1

    .line 2853
    aget v2, v0, p4

    invoke-virtual {p2}, Lcom/android/launcher2/DragView;->getDragRegionHeight()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr v2, p2

    aput v2, p3, p4

    .line 2857
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2858
    aget p2, v0, v1

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 2859
    aget v0, v0, p4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 2861
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_0

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_0

    .line 2864
    invoke-virtual {p0, p1, p3, p5}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2865
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    aget p5, p3, v1

    invoke-static {p0, p5}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 2866
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result p5

    int-to-float p5, p5

    aget p3, p3, p4

    invoke-static {p5, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    cmpl-float p5, p0, v2

    if-ltz p5, :cond_0

    .line 2868
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_0

    sub-float/2addr p0, p2

    sub-float/2addr p3, v0

    mul-float/2addr p0, p3

    cmpl-float p0, p0, v2

    if-lez p0, :cond_0

    return p4

    :cond_0
    return v1
.end method

.method public refreshUI()V
    .locals 3

    .line 4325
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4327
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_0

    .line 4328
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 4329
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->refreshUI()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected reinflateWidgetsIfNecessary()V
    .locals 10

    .line 734
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 736
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 737
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v4

    .line 738
    invoke-virtual {v4}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v5

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    .line 740
    invoke-virtual {v4, v6}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 742
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-eqz v8, :cond_0

    .line 743
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 744
    iget-object v8, v7, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v8, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v8, :cond_0

    .line 745
    invoke-virtual {v8}, Lcom/android/launcher2/LauncherAppWidgetHostView;->orientationChangedSincedInflation()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 746
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v9, v7}, Lcom/android/launcher2/Launcher;->removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    .line 748
    invoke-virtual {v3, v8}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 749
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v8, v7}, Lcom/android/launcher2/Launcher;->bindAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeItems(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3919
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3920
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 3922
    sget-boolean p1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 3923
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeFinalItem: packageNames = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Workspace"

    invoke-static {v1, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3926
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object p1

    .line 3927
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 3928
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 3931
    new-instance v3, Lcom/android/launcher2/Workspace$11;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/android/launcher2/Workspace$11;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4021
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 4022
    new-instance v1, Lcom/android/launcher2/Workspace$12;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher2/Workspace$12;-><init>(Lcom/android/launcher2/Workspace;Landroid/content/Context;Ljava/util/HashSet;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetFinalScrollForPageChange(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 2571
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/CellLayout;

    .line 2572
    iget v0, p0, Lcom/android/launcher2/Workspace;->mSavedScrollX:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setScrollX(I)V

    .line 2573
    iget v0, p0, Lcom/android/launcher2/Workspace;->mSavedTranslationX:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 2574
    iget p0, p0, Lcom/android/launcher2/Workspace;->mSavedRotationY:F

    invoke-virtual {p1, p0}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    :cond_0
    return-void
.end method

.method public resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V
    .locals 1

    .line 3565
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3566
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    .line 3567
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    .line 3568
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    .line 3569
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    .line 3570
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    .line 3571
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 3572
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 3573
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 3574
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 3575
    iget p0, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    invoke-virtual {p1, p0}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    :cond_0
    return-void
.end method

.method public restoreInstanceStateForChild(I)V
    .locals 2

    .line 3723
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 3724
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3725
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/CellLayout;

    .line 3726
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Lcom/android/launcher2/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public restoreInstanceStateForRemainingPages()V
    .locals 4

    .line 3731
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3733
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3734
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->restoreInstanceStateForChild(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3737
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected screenScrolled(I)V
    .locals 1

    .line 1311
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->screenScrolled(I)V

    .line 1313
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->updatePageAlphaValues(I)V

    .line 1314
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1316
    iget p1, p0, Lcom/android/launcher2/Workspace;->mOverScrollX:I

    if-ltz p1, :cond_2

    iget p1, p0, Lcom/android/launcher2/Workspace;->mOverScrollX:I

    iget v0, p0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1334
    :cond_0
    iget p1, p0, Lcom/android/launcher2/Workspace;->mOverscrollFade:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    .line 1335
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setFadeForOverScroll(F)V

    .line 1337
    :cond_1
    iget-boolean p1, p0, Lcom/android/launcher2/Workspace;->mOverscrollTransformsSet:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 1338
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mOverscrollTransformsSet:Z

    .line 1339
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->resetOverscrollTransforms()V

    .line 1340
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->resetOverscrollTransforms()V

    :cond_2
    :goto_0
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .line 3742
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    .line 3743
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollLeft()V

    .line 3745
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3747
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 1

    .line 3753
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_0

    .line 3754
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollRight()V

    .line 3756
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3758
    invoke-virtual {p0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    :cond_1
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1

    .line 1245
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1246
    iput p1, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    .line 1247
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    :cond_0
    return-void
.end method

.method public setChildrenOutlineAlpha(F)V
    .locals 2

    .line 1198
    iput p1, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    const/4 v0, 0x0

    .line 1199
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1200
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1201
    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V
    .locals 2

    .line 2710
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2711
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2713
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 2715
    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2717
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    return-void
.end method

.method setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V
    .locals 1

    .line 2696
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 2697
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->revertTempState()V

    .line 2698
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2700
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz p1, :cond_1

    .line 2702
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    :cond_1
    const/4 p1, 0x1

    .line 2704
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->cleanupReorder(Z)V

    .line 2705
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation()V

    const/4 p1, -0x1

    .line 2706
    invoke-virtual {p0, p1, p1}, Lcom/android/launcher2/Workspace;->setCurrentDropOverCell(II)V

    return-void
.end method

.method setCurrentDropOverCell(II)V
    .locals 1

    .line 2721
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragOverY:I

    if-eq p2, v0, :cond_1

    .line 2722
    :cond_0
    iput p1, p0, Lcom/android/launcher2/Workspace;->mDragOverX:I

    .line 2723
    iput p2, p0, Lcom/android/launcher2/Workspace;->mDragOverY:I

    const/4 p1, 0x0

    .line 2724
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    :cond_1
    return-void
.end method

.method setDragMode(I)V
    .locals 2

    .line 2729
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_4

    if-nez p1, :cond_0

    .line 2731
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupAddToFolder()V

    const/4 v0, 0x0

    .line 2734
    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->cleanupReorder(Z)V

    .line 2735
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 2737
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->cleanupReorder(Z)V

    .line 2738
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 2740
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupAddToFolder()V

    .line 2741
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->cleanupReorder(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 2743
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupAddToFolder()V

    .line 2744
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation()V

    .line 2746
    :cond_3
    :goto_0
    iput p1, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    :cond_4
    return-void
.end method

.method setFadeForOverScroll(F)V
    .locals 1

    .line 4146
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4148
    :cond_0
    iput p1, p0, Lcom/android/launcher2/Workspace;->mOverscrollFade:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 4150
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 4153
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollingIndicator()Landroid/view/View;

    move-result-object p1

    .line 4155
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelScrollingIndicatorAnimations()V

    if-eqz p1, :cond_1

    .line 4159
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public setFinalScrollForPageChange(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 2558
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mSavedScrollX:I

    .line 2559
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2560
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mSavedTranslationX:F

    .line 2561
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mSavedRotationY:F

    .line 2562
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getRelativeChildOffset(I)I

    move-result p1

    sub-int/2addr v1, p1

    .line 2563
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setScrollX(I)V

    const/4 p0, 0x0

    .line 2564
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 2565
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    :cond_0
    return-void
.end method

.method public setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V
    .locals 2

    .line 3550
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3551
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3552
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    .line 3553
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    .line 3554
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    .line 3555
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getTranslationY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    .line 3556
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    .line 3557
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 3558
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 3559
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 3560
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 3561
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    aget p0, p0, v0

    invoke-virtual {p1, p0}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    :cond_0
    return-void
.end method

.method protected setWallpaperDimension()V
    .locals 3

    .line 904
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 905
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 906
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 908
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 909
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 913
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-float v2, v1

    .line 914
    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 915
    iput v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 917
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 918
    iput v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    .line 920
    :goto_0
    new-instance v0, Lcom/android/launcher2/Workspace$2;

    const-string v1, "setWallpaperDimension"

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/Workspace$2;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;)V

    .line 924
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$2;->start()V

    return-void
.end method

.method setup(Lcom/android/launcher2/DragController;)V
    .locals 2

    .line 3609
    new-instance v0, Lcom/android/launcher2/SpringLoadedDragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/SpringLoadedDragController;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    .line 3610
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    const/4 p1, 0x0

    .line 3614
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 3615
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setWallpaperDimension()V

    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 1

    .line 488
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 489
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 490
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getAlpha()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-gtz p0, :cond_0

    .line 491
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getBackgroundAlpha()F

    move-result p0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method showOutlines()V
    .locals 3

    .line 1171
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_2

    .line 1172
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1173
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const-string v1, "childrenOutlineAlpha"

    .line 1174
    invoke-static {p0, v1, v0}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    .line 1175
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1176
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    return-void
.end method

.method public showOutlinesTemporarily()V
    .locals 1

    .line 1192
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1193
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    :cond_0
    return-void
.end method

.method protected snapToPage(I)V
    .locals 3

    .line 1013
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    .line 1015
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "snapToPage: whichPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScrollX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Workspace"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher2/Launcher;->setPackageIndex(IIZ)V

    .line 1019
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->computeWallpaperScrollRatio(I)V

    return-void
.end method

.method protected snapToPage(II)V
    .locals 0

    .line 1024
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(II)V

    .line 1025
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->computeWallpaperScrollRatio(I)V

    return-void
.end method

.method protected snapToPage(ILjava/lang/Runnable;)V
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1030
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1032
    :cond_0
    iput-object p2, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    const/16 p2, 0x3b6

    .line 1033
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Workspace;->snapToPage(II)V

    return-void
.end method

.method startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V
    .locals 5

    .line 1973
    iget-object v0, p1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1974
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    const-string v2, ",child = "

    const-string v3, "Workspace"

    if-eqz v1, :cond_0

    .line 1975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDrag cellInfo = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 1981
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1982
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abnormal start drag: cellInfo = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1987
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1988
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 1989
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The child "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is not in touch mode."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/launcher2/uitl/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1994
    :cond_3
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    const/4 p1, 0x4

    .line 1995
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1996
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/CellLayout;

    .line 1997
    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->prepareChildForDrag(Landroid/view/View;)V

    .line 1999
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    const/4 p1, 0x0

    .line 2000
    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 2002
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    const/4 v1, 0x2

    .line 2005
    invoke-direct {p0, v0, p1, v1}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2006
    invoke-virtual {p0, v0, p0}, Lcom/android/launcher2/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V

    return-void
.end method

.method public supportsFlingToDelete()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public syncPageItems(IZ)V
    .locals 0

    return-void
.end method

.method public syncPages()V
    .locals 0

    return-void
.end method

.method public transitionStateShouldAllowDrop()Z
    .locals 2

    .line 2091
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v0, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateComponentUnreadChanged(Landroid/content/ComponentName;I)V
    .locals 17

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 4205
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    const-string v3, "updateComponentUnreadChanged: component = "

    const-string v4, "Workspace"

    if-eqz v2, :cond_0

    .line 4206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", unreadNum = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4209
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v2

    .line 4213
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 4214
    invoke-virtual {v5}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    .line 4216
    invoke-virtual {v5, v7}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4217
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 4218
    sget-boolean v10, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    const-string v11, ",j = "

    const-string v12, ",tag = "

    if-eqz v10, :cond_2

    .line 4219
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ",view = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4222
    :cond_2
    instance-of v10, v9, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v10, :cond_4

    .line 4223
    move-object v10, v9

    check-cast v10, Lcom/android/launcher2/ShortcutInfo;

    .line 4224
    iget-object v13, v10, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 4225
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 4226
    sget-boolean v15, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz v15, :cond_3

    .line 4227
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    const-string v2, "updateComponentUnreadChanged 2: find component = "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ",intent = "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ",componentName = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v16, v2

    :goto_1
    if-eqz v14, :cond_5

    .line 4230
    invoke-virtual {v14, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateComponentUnreadChanged 1: find component = "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ",cellX = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v9, v10, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ",cellY = "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v9, v10, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4234
    iput v1, v10, Lcom/android/launcher2/ShortcutInfo;->unreadNum:I

    .line 4235
    check-cast v8, Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {v8}, Lcom/android/launcher2/BubbleTextView;->invalidate()V

    goto :goto_2

    :cond_4
    move-object/from16 v16, v2

    .line 4237
    instance-of v2, v9, Lcom/android/launcher2/FolderInfo;

    if-eqz v2, :cond_5

    .line 4238
    check-cast v8, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v8, v0, v1}, Lcom/android/launcher2/FolderIcon;->updateFolderUnreadNum(Landroid/content/ComponentName;I)V

    .line 4239
    invoke-virtual {v8}, Lcom/android/launcher2/FolderIcon;->invalidate()V

    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v16

    goto/16 :goto_0

    .line 4245
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 4247
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->updateContentUnreadNum()V

    :cond_7
    return-void
.end method

.method protected updateCurrentPageScroll()V
    .locals 1

    .line 1006
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->updateCurrentPageScroll()V

    .line 1007
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->computeWallpaperScrollRatio(I)V

    return-void
.end method

.method updateItemLocationsInDatabase(Lcom/android/launcher2/CellLayout;)V
    .locals 14

    .line 3663
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 3665
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 3668
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, -0x1

    const/16 v2, -0x65

    goto :goto_0

    :cond_0
    const/16 v2, -0x64

    :goto_0
    const/4 v12, 0x0

    move v13, v12

    :goto_1
    if-ge v13, v0, :cond_2

    .line 3674
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3675
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/launcher2/ItemInfo;

    if-eqz v4, :cond_1

    .line 3677
    iget-boolean v3, v4, Lcom/android/launcher2/ItemInfo;->requiresDbUpdate:Z

    if-eqz v3, :cond_1

    .line 3678
    iput-boolean v12, v4, Lcom/android/launcher2/ItemInfo;->requiresDbUpdate:Z

    .line 3679
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    int-to-long v5, v2

    iget v8, v4, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v9, v4, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v10, v4, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v11, v4, Lcom/android/launcher2/ItemInfo;->spanY:I

    move v7, v1

    invoke-static/range {v3 .. v11}, Lcom/android/launcher2/LauncherModel;->modifyItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIII)V

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 4080
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateShortcuts: apps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Workspace"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4084
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v0

    .line 4085
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 4086
    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 4088
    invoke-virtual {v1, v4}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4089
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 4090
    instance-of v7, v6, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v7, :cond_3

    .line 4091
    check-cast v6, Lcom/android/launcher2/ShortcutInfo;

    .line 4095
    iget-object v7, v6, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 4096
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 4097
    iget v9, v6, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    if-nez v9, :cond_3

    .line 4098
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v8, :cond_3

    .line 4099
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_3

    .line 4101
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/ApplicationInfo;

    .line 4102
    iget-object v11, v10, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v11, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4103
    move-object v11, v5

    check-cast v11, Lcom/android/launcher2/BubbleTextView;

    .line 4104
    iget-object v12, p0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v6, v12}, Lcom/android/launcher2/ShortcutInfo;->updateIcon(Lcom/android/launcher2/IconCache;)V

    .line 4105
    iget-object v10, v10, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 4106
    iget-object v10, p0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v11, v6, v10}, Lcom/android/launcher2/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/IconCache;)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public updateShortcutsAndFoldersUnread()V
    .locals 8

    .line 4167
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    const-string v1, "Workspace"

    if-eqz v0, :cond_0

    .line 4168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateShortcutsAndFolderUnread: this = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4170
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object p0

    .line 4174
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 4175
    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 4177
    invoke-virtual {v0, v3}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4178
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 4179
    sget-boolean v6, Lcom/android/launcher2/uitl/L;->DEBUG_UNREAD:Z

    if-eqz v6, :cond_2

    .line 4180
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateShortcutsAndFoldersUnread: tag = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", j = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", view = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4183
    :cond_2
    instance-of v6, v5, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v6, :cond_3

    .line 4184
    check-cast v5, Lcom/android/launcher2/ShortcutInfo;

    .line 4185
    iget-object v6, v5, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 4186
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 4187
    invoke-static {v6}, Lcom/android/launcher2/MTKUnreadLoader;->getUnreadNumberOfComponent(Landroid/content/ComponentName;)I

    move-result v6

    iput v6, v5, Lcom/android/launcher2/ShortcutInfo;->unreadNum:I

    .line 4188
    check-cast v4, Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {v4}, Lcom/android/launcher2/BubbleTextView;->invalidate()V

    goto :goto_1

    .line 4189
    :cond_3
    instance-of v5, v5, Lcom/android/launcher2/FolderInfo;

    if-eqz v5, :cond_4

    .line 4190
    check-cast v4, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderIcon;->updateFolderUnreadNum()V

    .line 4191
    invoke-virtual {v4}, Lcom/android/launcher2/FolderIcon;->invalidate()V

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public updateWallpaperOffsetImmediately()V
    .locals 1

    const/4 v0, 0x1

    .line 979
    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    return-void
.end method

.method willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[IF)Z
    .locals 2

    .line 2219
    iget p0, p0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float p0, p4, p0

    const/4 p4, 0x0

    if-lez p0, :cond_0

    return p4

    .line 2220
    :cond_0
    aget p0, p3, p4

    const/4 v0, 0x1

    aget p3, p3, v0

    invoke-virtual {p2, p0, p3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2223
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2224
    iget-boolean p3, p2, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz p3, :cond_2

    iget p3, p2, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v1, p2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne p3, v1, :cond_1

    iget p3, p2, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget p2, p2, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    if-eq p3, p2, :cond_2

    :cond_1
    return p4

    .line 2229
    :cond_2
    instance-of p2, p0, Lcom/android/launcher2/FolderIcon;

    if-eqz p2, :cond_3

    .line 2230
    check-cast p0, Lcom/android/launcher2/FolderIcon;

    .line 2231
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return p4
.end method

.method willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
