.class public Lcom/android/launcher2/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayout$CellInfo;,
        Lcom/android/launcher2/CellLayout$LayoutParams;,
        Lcom/android/launcher2/CellLayout$CellLayoutAnimationController;,
        Lcom/android/launcher2/CellLayout$CellAndSpan;,
        Lcom/android/launcher2/CellLayout$ItemConfiguration;,
        Lcom/android/launcher2/CellLayout$ReorderHintAnimation;,
        Lcom/android/launcher2/CellLayout$ViewCluster;
    }
.end annotation


# static fields
.field private static final DEBUG_VISUALIZE_OCCUPIED:Z = false

.field private static final DESTRUCTIVE_REORDER:Z = false

.field private static final INVALID_DIRECTION:I = -0x64

.field static final LANDSCAPE:I = 0x0

.field public static final MODE_ACCEPT_DROP:I = 0x3

.field public static final MODE_DRAG_OVER:I = 0x0

.field public static final MODE_ON_DROP:I = 0x1

.field public static final MODE_ON_DROP_EXTERNAL:I = 0x2

.field static final PORTRAIT:I = 0x1

.field private static final REORDER_ANIMATION_DURATION:I = 0x96

.field private static final REORDER_HINT_MAGNITUDE:F = 0.12f

.field static final TAG:Ljava/lang/String; = "CellLayout"

.field private static final sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field private final HOME_SCREEN_BLUE_NORMAL_HOLO_SUFFIX:Ljava/lang/String;

.field private mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mCellHeight:I

.field private final mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mCellWidth:I

.field private mCountX:I

.field private mCountY:I

.field private mDirectionVector:[I

.field private final mDragCell:[I

.field private final mDragCenter:Landroid/graphics/Point;

.field private mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Rect;

.field private mDragging:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mFolderLeaveBehindCell:[I

.field private mFolderOuterRings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/FolderIcon$FolderRingAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundAlpha:I

.field private mForegroundPadding:I

.field private mForegroundRect:Landroid/graphics/Rect;

.field private mHeightGap:I

.field private mHotseatScale:F

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIntersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragOverlapping:Z

.field private mIsHotseat:Z

.field private mItemPlacementDirty:Z

.field private mLastDownOnOccupiedCell:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mMaxGap:I

.field private mNormalBackground:Landroid/graphics/drawable/Drawable;

.field mOccupied:[[Z

.field private mOccupiedRect:Landroid/graphics/Rect;

.field private mOriginalHeightGap:I

.field private mOriginalWidthGap:I

.field private mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverScrollLeft:Landroid/graphics/drawable/Drawable;

.field private mOverScrollRight:Landroid/graphics/drawable/Drawable;

.field private mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

.field mPreviousReorderDirection:[I

.field private final mRect:Landroid/graphics/Rect;

.field private mReorderAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/launcher2/CellLayout$LayoutParams;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mReorderHintAnimationMagnitude:F

.field private mScrollingTransformsDirty:Z

.field private mShakeAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellLayout$ReorderHintAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

.field mTempLocation:[I

.field private final mTempRectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mTmpOccupied:[[Z

.field private final mTmpPoint:[I

.field private final mTmpXY:[I

.field private mWidthGap:I

.field temp:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 169
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/launcher2/CellLayout;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    .line 171
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/CellLayout;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 182
    const-class v0, Z

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    .line 80
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mScrollingTransformsDirty:Z

    .line 82
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 83
    new-instance v2, Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-direct {v2}, Lcom/android/launcher2/CellLayout$CellInfo;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 87
    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    new-array v3, v2, [I

    .line 88
    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    new-array v3, v2, [I

    .line 89
    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    .line 93
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    new-array v3, v2, [I

    .line 98
    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    .line 100
    iput v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 102
    iput v3, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 114
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 115
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    const/4 v3, 0x4

    new-array v4, v3, [Landroid/graphics/Rect;

    .line 119
    iput-object v4, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    .line 120
    array-length v5, v4

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    .line 121
    array-length v4, v4

    new-array v4, v4, [Lcom/android/launcher2/InterruptibleInOutAnimator;

    iput-object v4, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 125
    iput v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 126
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 130
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    .line 132
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    .line 135
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mItemPlacementDirty:Z

    new-array v4, v2, [I

    .line 138
    iput-object v4, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    .line 140
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 145
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mIsHotseat:Z

    const v5, 0x3e4ccccd    # 0.2f

    .line 146
    iput v5, p0, Lcom/android/launcher2/CellLayout;->mHotseatScale:F

    .line 162
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 163
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    new-array v5, v2, [I

    .line 164
    iput-object v5, p0, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    new-array v5, v2, [I

    .line 165
    iput-object v5, p0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const-string v5, "_homescreen_blue_normal_holo"

    .line 303
    iput-object v5, p0, Lcom/android/launcher2/CellLayout;->HOME_SCREEN_BLUE_NORMAL_HOLO_SUFFIX:Ljava/lang/String;

    .line 450
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/CellLayout;->temp:Landroid/graphics/Rect;

    .line 1376
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 183
    new-instance v5, Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-direct {v5, p1}, Lcom/android/launcher2/DropTarget$DragEnforcer;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher2/CellLayout;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->setWillNotDraw(Z)V

    .line 188
    move-object v5, p1

    check-cast v5, Lcom/android/launcher2/Launcher;

    iput-object v5, p0, Lcom/android/launcher2/CellLayout;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 190
    sget-object v5, Lcom/yecon/launcher1/R$styleable;->CellLayout:[I

    invoke-virtual {p1, p2, v5, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    const/16 v5, 0xa

    .line 192
    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 193
    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 194
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/CellLayout;->mOriginalWidthGap:I

    iput v3, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 195
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/CellLayout;->mOriginalHeightGap:I

    iput v3, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    const/4 v3, 0x3

    .line 196
    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/CellLayout;->mMaxGap:I

    .line 197
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 198
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 199
    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    new-array v6, v2, [I

    aput v3, v6, p3

    aput v5, v6, v1

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    iput-object v3, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 200
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    new-array v2, v2, [I

    aput v5, v2, p3

    aput v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    .line 201
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    const/16 v2, -0x64

    aput v2, v0, v1

    .line 202
    aput v2, v0, p3

    .line 204
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 206
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f090028

    .line 209
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mHotseatScale:F

    const v0, 0x7f0701f3

    .line 211
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0701f4

    .line 212
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0702f6

    .line 214
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0702f7

    .line 215
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0600cd

    .line 217
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    .line 219
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    const v2, 0x3df5c28f    # 0.12f

    if-eqz v0, :cond_0

    const v0, 0x7f060003

    .line 221
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mReorderHintAnimationMagnitude:F

    goto :goto_2

    .line 223
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isMRWCustomer()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomerTheme1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 228
    :cond_1
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f060004

    goto :goto_0

    :cond_2
    const v0, 0x7f060007

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mReorderHintAnimationMagnitude:F

    goto :goto_2

    :cond_3
    :goto_1
    const v0, 0x7f060005

    .line 225
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mReorderHintAnimationMagnitude:F

    .line 231
    :goto_2
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 236
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    const/4 v0, -0x1

    aput v0, v4, p3

    aput v0, v4, v1

    move p3, v1

    .line 240
    :goto_3
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v3, v2

    if-ge p3, v3, :cond_4

    .line 241
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_4
    const p3, 0x7f090016

    .line 248
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    const v0, 0x7f090017

    .line 250
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    .line 252
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 254
    :goto_4
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 255
    new-instance v0, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v3, p3

    invoke-direct {v0, v3, v4, v2, p2}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    .line 257
    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 259
    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/CellLayout$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/launcher2/CellLayout$1;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 283
    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/CellLayout$2;

    invoke-direct {v4, p0, v0}, Lcom/android/launcher2/CellLayout$2;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 291
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 294
    :cond_5
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    .line 295
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    .line 297
    new-instance p2, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-direct {p2, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 298
    iget p1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget p3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setCellDimensions(IIII)V

    .line 299
    iget-object p1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/launcher2/CellLayout;)[F
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher2/CellLayout;)[Landroid/graphics/Rect;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher2/CellLayout;)Ljava/util/HashMap;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher2/CellLayout;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/launcher2/CellLayout;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/launcher2/CellLayout;)[I
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/launcher2/CellLayout;)F
    .locals 0

    .line 65
    iget p0, p0, Lcom/android/launcher2/CellLayout;->mReorderHintAnimationMagnitude:F

    return p0
.end method

.method static synthetic access$700(Lcom/android/launcher2/CellLayout;)Ljava/util/HashMap;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    return-object p0
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher2/CellLayout$ItemConfiguration;)Z
    .locals 10

    .line 1606
    iget-object p4, p4, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1608
    iget v1, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v2, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v4, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    .line 1609
    iget-object p4, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v0, 0x1

    invoke-direct {p0, p2, p4, v0}, Lcom/android/launcher2/CellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 1611
    iget v2, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v3, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v4, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v5, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 p2, 0x0

    move-object v8, p2

    check-cast v8, [[Z

    iget-object v9, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1613
    iget-object p2, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    const/4 p3, 0x0

    aget p4, p2, p3

    if-ltz p4, :cond_0

    aget p4, p2, v0

    if-ltz p4, :cond_0

    .line 1614
    aget p2, p2, p3

    iput p2, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .line 1615
    iget-object p2, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    aget p2, p2, v0

    iput p2, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    goto :goto_0

    :cond_0
    move v0, p3

    .line 1618
    :goto_0
    iget v2, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v3, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v4, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v5, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    return v0
.end method

.method private addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    .line 1954
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_0

    return v11

    :cond_0
    const/4 v0, 0x0

    .line 1959
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v12, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1960
    iget-object v2, v10, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    if-nez v12, :cond_1

    .line 1962
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v0, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v6, v0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v12, v2

    goto :goto_0

    .line 1964
    :cond_1
    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v0, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v5, v0

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    .line 1969
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1970
    iget-object v1, v10, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1971
    iget v1, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, v9, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    .line 1974
    :cond_3
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v11

    const/4 v13, 0x0

    aput v0, v2, v13

    const-class v0, Z

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [[Z

    .line 1975
    iget v8, v12, Landroid/graphics/Rect;->top:I

    .line 1976
    iget v14, v12, Landroid/graphics/Rect;->left:I

    .line 1979
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1980
    iget-object v1, v10, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1981
    iget v1, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    sub-int/2addr v1, v14

    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    sub-int/2addr v2, v8

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_2

    .line 1984
    :cond_4
    iget-object v0, v9, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    move-object/from16 v1, p2

    invoke-direct {v9, v1, v0, v11}, Lcom/android/launcher2/CellLayout;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    .line 1986
    iget v1, v12, Landroid/graphics/Rect;->left:I

    iget v2, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1987
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v6, v9, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    iget-object v8, v9, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    .line 1986
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1990
    iget-object v0, v9, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    aget v1, v0, v13

    if-ltz v1, :cond_5

    aget v1, v0, v11

    if-ltz v1, :cond_5

    .line 1991
    aget v0, v0, v13

    iget v1, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 1992
    iget-object v1, v9, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    aget v1, v1, v11

    iget v2, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 1993
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1994
    iget-object v4, v10, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1995
    iget v4, v3, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .line 1996
    iget v4, v3, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    goto :goto_3

    :cond_5
    move v11, v13

    .line 2002
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2003
    iget-object v1, v10, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 2004
    iget v1, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, v9, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_4

    :cond_7
    return v11
.end method

.method private animateItemsToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    .line 2272
    iget-object v0, v8, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    move-object v10, v0

    check-cast v10, [[Z

    const/4 v0, 0x0

    move v1, v0

    .line 2273
    :goto_0
    iget v2, v8, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 2274
    :goto_1
    iget v3, v8, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v2, v3, :cond_0

    .line 2275
    aget-object v3, v10, v1

    aput-boolean v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2279
    :cond_1
    iget-object v1, v8, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    move v12, v0

    :goto_2
    if-ge v12, v11, :cond_4

    .line 2281
    iget-object v0, v8, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v12}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v13, p2

    if-ne v1, v13, :cond_2

    goto :goto_3

    .line 2283
    :cond_2
    iget-object v0, v9, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/launcher2/CellLayout$CellAndSpan;

    if-eqz v14, :cond_3

    .line 2285
    iget v2, v14, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v3, v14, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    const/16 v4, 0x96

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2287
    iget v1, v14, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v2, v14, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, v14, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v4, v14, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    const/4 v6, 0x1

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    .line 2291
    iget v1, v9, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewX:I

    iget v2, v9, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewY:I

    iget v3, v9, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanX:I

    iget v4, v9, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanY:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    :cond_5
    return-void
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2018
    aget v1, p3, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    aget v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    if-le v1, v2, :cond_4

    .line 2021
    aget v1, p3, v2

    .line 2022
    aput v0, p3, v2

    .line 2024
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    .line 2028
    :cond_0
    aput v1, p3, v2

    .line 2029
    aget v1, p3, v0

    .line 2030
    aput v0, p3, v0

    .line 2032
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 2037
    :cond_1
    aput v1, p3, v0

    .line 2040
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    .line 2041
    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    .line 2042
    aget v1, p3, v2

    .line 2043
    aput v0, p3, v2

    .line 2044
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    .line 2049
    :cond_2
    aput v1, p3, v2

    .line 2050
    aget v1, p3, v0

    .line 2051
    aput v0, p3, v0

    .line 2052
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    .line 2057
    :cond_3
    aput v1, p3, v0

    .line 2058
    aget p0, p3, v0

    mul-int/lit8 p0, p0, -0x1

    aput p0, p3, v0

    .line 2059
    aget p0, p3, v2

    mul-int/lit8 p0, p0, -0x1

    aput p0, p3, v2

    goto :goto_0

    .line 2064
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v2

    .line 2069
    :cond_5
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    .line 2070
    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    .line 2071
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    .line 2076
    :cond_6
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    .line 2077
    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    .line 2083
    aget v1, p3, v2

    .line 2084
    aget v3, p3, v0

    aput v3, p3, v2

    .line 2085
    aput v1, p3, v0

    .line 2086
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_7

    return v2

    .line 2092
    :cond_7
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    .line 2093
    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    .line 2094
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v2

    .line 2099
    :cond_8
    aget p0, p3, v0

    mul-int/lit8 p0, p0, -0x1

    aput p0, p3, v0

    .line 2100
    aget p0, p3, v2

    mul-int/lit8 p0, p0, -0x1

    aput p0, p3, v2

    .line 2103
    aget p0, p3, v2

    .line 2104
    aget p1, p3, v0

    aput p1, p3, v2

    .line 2105
    aput p0, p3, v0

    :goto_0
    return v0
.end method

.method private beginOrAdjustHintAnimations(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;I)V
    .locals 12

    .line 2298
    iget-object p3, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {p3}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 2300
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v4, p2, :cond_0

    goto :goto_1

    .line 2302
    :cond_0
    iget-object v1, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 2303
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 2305
    new-instance v11, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v6, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v7, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v8, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v9, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v10, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    move-object v2, v11

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;-><init>(Lcom/android/launcher2/CellLayout;Landroid/view/View;IIIIII)V

    .line 2307
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->animate()V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private clearOccupiedCells()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 3128
    :goto_0
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 3129
    :goto_1
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v2, v3, :cond_0

    .line 3130
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v3, v3, v1

    aput-boolean v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearTagCellInfo()V
    .locals 2

    .line 822
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    const/4 v1, 0x0

    .line 823
    iput-object v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 v1, -0x1

    .line 824
    iput v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 825
    iput v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    const/4 v1, 0x0

    .line 826
    iput v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 827
    iput v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 828
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private commitTempPlacement()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 2435
    :goto_0
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 2436
    :goto_1
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v2, v3, :cond_0

    .line 2437
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    aget-object v4, v4, v1

    aget-boolean v4, v4, v2

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2440
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_5

    .line 2442
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2443
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2444
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    if-eqz v2, :cond_4

    .line 2448
    iget v4, v2, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    if-ne v4, v5, :cond_2

    iget v4, v2, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v4, v5, :cond_2

    iget v4, v2, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v4, v5, :cond_2

    iget v4, v2, Lcom/android/launcher2/ItemInfo;->spanY:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v4, v5, :cond_3

    :cond_2
    const/4 v4, 0x1

    .line 2450
    iput-boolean v4, v2, Lcom/android/launcher2/ItemInfo;->requiresDbUpdate:Z

    .line 2452
    :cond_3
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v4, v2, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 2453
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v4, v2, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 2454
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v4, v2, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 2455
    iget v3, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v3, v2, Lcom/android/launcher2/ItemInfo;->spanY:I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2458
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Workspace;->updateItemLocationsInDatabase(Lcom/android/launcher2/CellLayout;)V

    return-void
.end method

.method private completeAndClearReorderHintAnimations()V
    .locals 2

    .line 2428
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    .line 2429
    invoke-static {v1}, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->access$800(Lcom/android/launcher2/CellLayout$ReorderHintAnimation;)V

    goto :goto_0

    .line 2431
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private computeDirectionVector(FF[I)V
    .locals 7

    div-float p0, p2, p1

    float-to-double v0, p0

    .line 2169
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const/4 p0, 0x0

    .line 2171
    aput p0, p3, p0

    const/4 v2, 0x1

    .line 2172
    aput p0, p3, v2

    .line 2173
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    .line 2174
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    aput p1, p3, p0

    .line 2176
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpl-double p0, p0, v5

    if-lez p0, :cond_1

    .line 2177
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    aput p0, p3, v2

    :cond_1
    return-void
.end method

.method private copyCurrentStateToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Z)V
    .locals 10

    .line 2230
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v6

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, v6, :cond_1

    .line 2232
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v7}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2233
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-eqz p2, :cond_0

    .line 2236
    new-instance v9, Lcom/android/launcher2/CellLayout$CellAndSpan;

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout$CellAndSpan;-><init>(Lcom/android/launcher2/CellLayout;IIII)V

    goto :goto_1

    .line 2238
    :cond_0
    new-instance v9, Lcom/android/launcher2/CellLayout$CellAndSpan;

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout$CellAndSpan;-><init>(Lcom/android/launcher2/CellLayout;IIII)V

    .line 2240
    :goto_1
    invoke-virtual {p1, v8, v9}, Lcom/android/launcher2/CellLayout$ItemConfiguration;->add(Landroid/view/View;Lcom/android/launcher2/CellLayout$CellAndSpan;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private copyOccupiedArray([[Z)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 2182
    :goto_0
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 2183
    :goto_1
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v2, v3, :cond_0

    .line 2184
    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v1

    aget-boolean v4, v4, v2

    aput-boolean v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private copySolutionToTempState(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    .line 2245
    :goto_0
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 2246
    :goto_1
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v2, v3, :cond_0

    .line 2247
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    aget-object v3, v3, v1

    aput-boolean v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2251
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_4

    .line 2253
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p2, :cond_2

    goto :goto_3

    .line 2255
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2256
    iget-object v4, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$CellAndSpan;

    if-eqz v2, :cond_3

    .line 2258
    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    .line 2259
    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    .line 2260
    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 2261
    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 2262
    iget v6, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v7, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v8, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v9, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v11, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2265
    :cond_4
    iget v3, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewX:I

    iget v4, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewY:I

    iget v5, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanX:I

    iget v6, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanY:I

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    return-void
.end method

.method private findNearestArea(IIII[I[[Z[[Z[I)[I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    if-eqz p8, :cond_0

    move-object/from16 v3, p8

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    :goto_0
    const/high16 v4, -0x80000000

    .line 1559
    iget v5, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1560
    iget v6, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    const/4 v9, 0x0

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    :goto_1
    add-int/lit8 v11, v2, -0x1

    sub-int v11, v6, v11

    const/4 v12, 0x1

    if-ge v9, v11, :cond_8

    const/4 v11, 0x0

    :goto_2
    add-int/lit8 v13, v1, -0x1

    sub-int v13, v5, v13

    if-ge v11, v13, :cond_7

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v1, :cond_3

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v2, :cond_2

    add-int v15, v11, v13

    .line 1568
    aget-object v15, p6, v15

    add-int v16, v9, v14

    aget-boolean v15, v15, v16

    if-eqz v15, :cond_1

    if-eqz p7, :cond_6

    aget-object v15, p7, v13

    aget-boolean v15, v15, v14

    if-eqz v15, :cond_1

    goto :goto_6

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    sub-int v13, v11, p1

    mul-int v14, v13, v13

    sub-int v15, v9, p2

    mul-int v16, v15, v15

    add-int v14, v14, v16

    int-to-double v7, v14

    .line 1575
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 1576
    iget-object v8, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    int-to-float v13, v13

    int-to-float v14, v15

    .line 1577
    invoke-direct {v0, v13, v14, v8}, Lcom/android/launcher2/CellLayout;->computeDirectionVector(FF[I)V

    const/4 v13, 0x0

    .line 1580
    aget v14, p5, v13

    aget v15, v8, v13

    mul-int/2addr v14, v15

    aget v15, p5, v12

    aget v16, v8, v12

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    .line 1583
    aget v15, p5, v13

    aget v12, v8, v13

    if-ne v15, v12, :cond_4

    aget v12, p5, v13

    aget v8, v8, v13

    if-ne v12, v8, :cond_4

    const/4 v8, 0x1

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    .line 1586
    :goto_5
    invoke-static {v7, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-ltz v8, :cond_5

    invoke-static {v7, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_6

    if-le v14, v4, :cond_6

    :cond_5
    const/4 v4, 0x0

    .line 1590
    aput v11, v3, v4

    const/4 v4, 0x1

    .line 1591
    aput v9, v3, v4

    move v10, v7

    move v4, v14

    :cond_6
    :goto_6
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_8
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v10, v4

    if-nez v0, :cond_9

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1598
    aput v0, v3, v1

    const/4 v1, 0x1

    .line 1599
    aput v0, v3, v1

    :cond_9
    return-object v3
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_6

    move v2, v0

    :goto_1
    if-ge v2, p3, :cond_5

    .line 3108
    aget-object v3, p5, v2

    aget-boolean v3, v3, v1

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    move v5, v2

    :goto_2
    add-int v6, v2, p1

    sub-int/2addr v6, v4

    if-ge v5, v6, :cond_3

    if-ge v2, p3, :cond_3

    move v6, v1

    :goto_3
    add-int v7, v1, p2

    sub-int/2addr v7, v4

    if-ge v6, v7, :cond_2

    if-ge v1, p4, :cond_2

    if-eqz v3, :cond_0

    .line 3111
    aget-object v3, p5, v5

    aget-boolean v3, v3, v6

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_4

    :cond_0
    move v3, v0

    :goto_4
    if-nez v3, :cond_1

    goto :goto_5

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 3117
    aput v2, p0, v0

    .line 3118
    aput v1, p0, v4

    return v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method private getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .locals 15

    move-object v8, p0

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    const/4 v0, 0x2

    new-array v6, v0, [I

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v6

    .line 2504
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    .line 2505
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    const/4 v12, 0x0

    .line 2506
    aget v1, v6, v12

    const/4 v13, 0x1

    aget v2, v6, v13

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2507
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2509
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 2510
    aget v1, v6, v12

    aget v2, v6, v13

    iget-object v7, v8, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v0, p0

    move-object/from16 v5, p5

    move-object v6, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2513
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 2514
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 2516
    iget v1, v14, Landroid/graphics/Rect;->left:I

    iget v2, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2517
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v5, v14

    .line 2516
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    .line 2519
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v0, v0, p1

    div-int/2addr v0, v9

    .line 2520
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, v1, p2

    div-int/2addr v1, v10

    .line 2522
    iget v2, v8, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-eq v6, v2, :cond_0

    if-ne v9, v2, :cond_1

    :cond_0
    move v0, v12

    .line 2525
    :cond_1
    iget v2, v8, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-eq v7, v2, :cond_2

    if-ne v10, v2, :cond_3

    :cond_2
    move v1, v12

    :cond_3
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 2531
    aput v13, v11, v12

    .line 2532
    aput v12, v11, v13

    goto :goto_0

    :cond_4
    int-to-float v0, v0

    int-to-float v1, v1

    .line 2534
    invoke-direct {p0, v0, v1, v11}, Lcom/android/launcher2/CellLayout;->computeDirectionVector(FF[I)V

    :goto_0
    return-void
.end method

.method static getMetrics(Landroid/graphics/Rect;Landroid/content/res/Resources;IIIII)V
    .locals 12

    move-object v0, p1

    add-int/lit8 v1, p4, -0x1

    add-int/lit8 v2, p5, -0x1

    const v3, 0x7f0600cc

    .line 977
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-nez p6, :cond_0

    const v4, 0x7f0600bb

    .line 979
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0600b8

    .line 980
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0600dc

    .line 981
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0600c2

    .line 982
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f060033

    .line 983
    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x7f060036

    .line 984
    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x7f060039

    .line 985
    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f060030

    .line 986
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const v4, 0x7f0600bc

    .line 989
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f0600b9

    .line 990
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0600dd

    .line 991
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0600c3

    .line 992
    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f060034

    .line 993
    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x7f060037

    .line 994
    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x7f06003a

    .line 995
    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x7f060031

    .line 996
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    if-ltz v6, :cond_2

    if-gez v7, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v0, p0

    goto :goto_4

    :cond_2
    :goto_2
    sub-int v6, p2, v8

    sub-int/2addr v6, v9

    sub-int v7, p3, v10

    sub-int/2addr v7, v0

    mul-int v0, p4, v4

    sub-int/2addr v6, v0

    mul-int v0, p5, v5

    sub-int/2addr v7, v0

    const/4 v0, 0x0

    if-lez v1, :cond_3

    .line 1004
    div-int/2addr v6, v1

    goto :goto_3

    :cond_3
    move v6, v0

    :goto_3
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-lez v2, :cond_4

    .line 1005
    div-int v0, v7, v2

    :cond_4
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    .line 1007
    :goto_4
    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p6, :cond_0

    add-int v0, p1, p3

    add-int v1, p2, p4

    .line 2542
    invoke-virtual {p6, p1, p2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2544
    :cond_0
    invoke-virtual {p7}, Ljava/util/ArrayList;->clear()V

    .line 2545
    new-instance p7, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {p7, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2546
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2547
    iget-object p2, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {p2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_3

    .line 2549
    iget-object p4, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {p4, p3}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    if-ne p4, p5, :cond_1

    goto :goto_1

    .line 2551
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2552
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2553
    invoke-static {p7, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2554
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_2

    .line 2556
    invoke-virtual {p6, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_2
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static heightInLandscape(Landroid/content/res/Resources;I)I
    .locals 3

    const v0, 0x7f0600b7

    .line 335
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0600db

    .line 336
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0600c1

    .line 337
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 336
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/lit8 v1, p1, -0x1

    mul-int/2addr p0, v1

    mul-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method private invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V
    .locals 5

    .line 368
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v0

    .line 369
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v0

    .line 370
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 371
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 372
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr p1, v4

    add-int/2addr p1, v0

    .line 369
    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/launcher2/CellLayout;->invalidate(IIII)V

    return-void
.end method

.method private lazyInitTempRectStack()V
    .locals 3

    .line 1378
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1379
    :goto_0
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1380
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private markCellsForRect(Landroid/graphics/Rect;[[ZZ)V
    .locals 7

    .line 2010
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    return-void
.end method

.method private markCellsForView(IIII[[ZZ)V
    .locals 3

    if-ltz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_2

    :cond_0
    move v0, p1

    :goto_0
    add-int v1, p1, p3

    if-ge v0, v1, :cond_2

    .line 3161
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v0, v1, :cond_2

    move v1, p2

    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_1

    .line 3162
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_1

    .line 3163
    aget-object v2, p5, v0

    aput-boolean p6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher2/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v8, p5

    .line 1860
    new-instance v9, Lcom/android/launcher2/CellLayout$ViewCluster;

    move-object/from16 v1, p1

    invoke-direct {v9, v7, v1, v8}, Lcom/android/launcher2/CellLayout$ViewCluster;-><init>(Lcom/android/launcher2/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher2/CellLayout$ItemConfiguration;)V

    .line 1861
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v10, 0x0

    .line 1868
    aget v3, p3, v10

    const/4 v11, 0x1

    if-gez v3, :cond_0

    .line 1870
    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    move v12, v2

    move v13, v10

    goto :goto_1

    .line 1871
    :cond_0
    aget v3, p3, v10

    if-lez v3, :cond_1

    const/4 v3, 0x2

    .line 1873
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    :goto_0
    sub-int v2, v0, v2

    move v12, v2

    move v13, v3

    goto :goto_1

    .line 1874
    :cond_1
    aget v3, p3, v11

    if-gez v3, :cond_2

    .line 1876
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    move v12, v2

    move v13, v11

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    .line 1879
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :goto_1
    if-gtz v12, :cond_3

    return v10

    .line 1888
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1889
    iget-object v1, v8, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1890
    iget v1, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, v7, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_2

    .line 1896
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher2/CellLayout$ItemConfiguration;->save()V

    .line 1901
    invoke-virtual {v9, v13}, Lcom/android/launcher2/CellLayout$ViewCluster;->sortConfigurationForEdgePush(I)V

    move v14, v10

    :goto_3
    if-lez v12, :cond_8

    if-nez v14, :cond_8

    .line 1904
    iget-object v0, v8, Lcom/android/launcher2/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1908
    iget-object v1, v9, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object/from16 v6, p4

    if-eq v0, v6, :cond_5

    .line 1909
    invoke-virtual {v9, v0, v13}, Lcom/android/launcher2/CellLayout$ViewCluster;->isViewTouchingEdge(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1910
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1911
    iget-boolean v1, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->canReorder:Z

    if-nez v1, :cond_6

    move v14, v11

    goto :goto_5

    .line 1916
    :cond_6
    invoke-virtual {v9, v0}, Lcom/android/launcher2/CellLayout$ViewCluster;->addView(Landroid/view/View;)V

    .line 1917
    iget-object v1, v8, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1920
    iget v1, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, v7, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_4

    :cond_7
    :goto_5
    add-int/lit8 v12, v12, -0x1

    .line 1928
    invoke-virtual {v9, v13, v11}, Lcom/android/launcher2/CellLayout$ViewCluster;->shift(II)V

    goto :goto_3

    .line 1932
    :cond_8
    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v14, :cond_9

    .line 1936
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-ltz v1, :cond_9

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v7, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-gt v1, v2, :cond_9

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ltz v1, :cond_9

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v7, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-gt v0, v1, :cond_9

    move v10, v11

    goto :goto_6

    .line 1940
    :cond_9
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher2/CellLayout$ItemConfiguration;->restore()V

    .line 1944
    :goto_6
    iget-object v0, v9, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1945
    iget-object v1, v8, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1946
    iget v1, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v2, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    iget v4, v0, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    iget-object v5, v7, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    goto :goto_7

    :cond_a
    return v10
.end method

.method private rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z
    .locals 8

    const/4 v0, 0x0

    if-ltz p1, :cond_a

    if-gez p2, :cond_0

    goto/16 :goto_1

    .line 2115
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2116
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p6, :cond_1

    .line 2120
    iget-object v1, p7, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$CellAndSpan;

    if-eqz v1, :cond_1

    .line 2122
    iput p1, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .line 2123
    iput p2, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .line 2126
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2127
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2128
    iget-object p2, p7, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-ne p3, p6, :cond_3

    goto :goto_0

    .line 2130
    :cond_3
    iget-object p4, p7, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 2131
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2132
    iget v3, p4, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v4, p4, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v5, p4, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v6, p4, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    iget v6, p4, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget p4, p4, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v6, p4

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2133
    invoke-static {v1, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 2134
    iget-boolean p4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->canReorder:Z

    if-nez p4, :cond_4

    return v0

    .line 2137
    :cond_4
    iget-object p4, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2144
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    return p2

    .line 2150
    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v1, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_7

    return p2

    .line 2156
    :cond_7
    iget-object p1, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 2157
    iget-object p4, p0, Lcom/android/launcher2/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, p5, p7}, Lcom/android/launcher2/CellLayout;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result p3

    if-nez p3, :cond_8

    return v0

    :cond_9
    return p2

    :cond_a
    :goto_1
    return v0
.end method

.method public static rectToCell(Landroid/content/res/Resources;II[I)[I
    .locals 2

    const v0, 0x7f0600ba

    .line 3043
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0600b7

    .line 3044
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 3045
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    float-to-double v0, p1

    .line 3048
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-float p2, p2

    div-float/2addr p2, p0

    float-to-double v0, p2

    .line 3049
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 p3, 0x2

    new-array p3, p3, [I

    aput p1, p3, v0

    aput p0, p3, p2

    return-object p3

    .line 3054
    :cond_0
    aput p1, p3, v0

    .line 3055
    aput p0, p3, p2

    return-object p3
.end method

.method private recycleTempRects(Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1386
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static widthInPortrait(Landroid/content/res/Resources;I)I
    .locals 3

    const v0, 0x7f0600ba

    .line 324
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0600db

    .line 325
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0600c1

    .line 326
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 325
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/lit8 v1, p1, -0x1

    mul-int/2addr p0, v1

    mul-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z
    .locals 3

    .line 655
    instance-of v0, p1, Lcom/android/launcher2/BubbleTextView;

    if-eqz v0, :cond_1

    .line 656
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/BubbleTextView;

    .line 658
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 659
    iget-boolean v2, p0, Lcom/android/launcher2/CellLayout;->mIsHotseat:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f050016

    .line 662
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BubbleTextView;->setTextColor(I)V

    .line 666
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenScale()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 667
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenScale()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 671
    iget v0, p4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ltz v0, :cond_5

    iget v0, p4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_5

    iget v0, p4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ltz v0, :cond_5

    iget v0, p4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_5

    .line 674
    iget v0, p4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iput v0, p4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 675
    :cond_2
    iget v0, p4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iput v0, p4, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 677
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 679
    iget-object p3, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {p3, p1, p2, p4}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_4

    .line 681
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_4
    return v2

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .locals 14

    move-object v8, p0

    move-object v9, p1

    move/from16 v0, p2

    move/from16 v1, p3

    .line 1131
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 1132
    iget-object v3, v8, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    if-nez p6, :cond_0

    .line 1134
    iget-object v3, v8, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    .line 1137
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_5

    .line 1138
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1139
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ItemInfo;

    .line 1142
    iget-object v5, v8, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1143
    iget-object v5, v8, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 1144
    iget-object v5, v8, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    :cond_1
    iget v5, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 1148
    iget v7, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    const/4 v11, 0x1

    if-eqz p7, :cond_2

    .line 1150
    iget v12, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    aget-object v12, v3, v12

    iget v13, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    aput-boolean v6, v12, v13

    .line 1151
    aget-object v3, v3, v0

    aput-boolean v11, v3, v1

    .line 1153
    :cond_2
    iput-boolean v11, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz p6, :cond_3

    .line 1155
    iput v0, v4, Lcom/android/launcher2/ItemInfo;->cellX:I

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 1156
    iput v1, v4, Lcom/android/launcher2/ItemInfo;->cellY:I

    iput v1, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    goto :goto_0

    .line 1158
    :cond_3
    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    .line 1159
    iput v1, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    .line 1161
    :goto_0
    invoke-virtual {v2, v10}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    .line 1162
    iput-boolean v6, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1163
    iget v4, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 1164
    iget v6, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 1166
    iput v5, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 1167
    iput v7, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    if-ne v5, v4, :cond_4

    if-ne v7, v6, :cond_4

    .line 1171
    iput-boolean v11, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    return v11

    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1175
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    move/from16 v0, p4

    int-to-long v0, v0

    .line 1176
    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1177
    iget-object v0, v8, Lcom/android/launcher2/CellLayout;->mReorderAnimators:Ljava/util/HashMap;

    invoke-virtual {v0, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    new-instance v13, Lcom/android/launcher2/CellLayout$3;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v10

    move v3, v5

    move v5, v7

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/CellLayout$3;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$LayoutParams;IIIILandroid/view/View;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1188
    new-instance v0, Lcom/android/launcher2/CellLayout$4;

    invoke-direct {v0, p0, v10, p1}, Lcom/android/launcher2/CellLayout$4;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move/from16 v0, p5

    int-to-long v0, v0

    .line 1206
    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1207
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    return v11

    :cond_5
    return v6

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public buildHardwareLayer()V
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->buildLayer()V

    return-void
.end method

.method public calculateSpans(Lcom/android/launcher2/ItemInfo;)V
    .locals 4

    .line 3073
    instance-of v0, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3074
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    iget v2, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->minWidth:I

    .line 3075
    iget v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->minHeight:I

    goto :goto_0

    .line 3076
    :cond_0
    instance-of v0, p1, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v0, :cond_1

    .line 3077
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v2, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->minWidth:I

    .line 3078
    iget v0, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->minHeight:I

    :goto_0
    const/4 v3, 0x0

    .line 3084
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/launcher2/CellLayout;->rectToCell(II[I)[I

    move-result-object p0

    const/4 v0, 0x0

    .line 3085
    aget v0, p0, v0

    iput v0, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3086
    aget p0, p0, v1

    iput p0, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    return-void

    .line 3081
    :cond_1
    iput v1, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    iput v1, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .line 623
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 626
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 628
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 629
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cellSpansToSize(II)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3061
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v1, p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr p1, v3

    add-int/2addr v1, p1

    const/4 p1, 0x0

    aput v1, v0, p1

    .line 3062
    iget p1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr p1, p2

    sub-int/2addr p2, v2

    iget p0, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr p2, p0

    add-int/2addr p1, p2

    aput p1, v0, v2

    return-object v0
.end method

.method cellToCenterPoint(II[I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 892
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->regionToCenterPoint(IIII[I)V

    return-void
.end method

.method cellToPoint(II[I)V
    .locals 4

    .line 876
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 877
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 879
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v2, v3

    mul-int/2addr p1, v2

    add-int/2addr v0, p1

    const/4 p1, 0x0

    aput v0, p3, p1

    .line 880
    iget p1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget p0, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr p1, p0

    mul-int/2addr p2, p1

    add-int/2addr v1, p2

    const/4 p0, 0x1

    aput v1, p3, p0

    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/Rect;)V
    .locals 6

    .line 3011
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 3012
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 3013
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 3014
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 3016
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v4

    .line 3017
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result p0

    mul-int v5, p3, v0

    add-int/lit8 p3, p3, -0x1

    mul-int/2addr p3, v2

    add-int/2addr v5, p3

    mul-int p3, p4, v1

    add-int/lit8 p4, p4, -0x1

    mul-int/2addr p4, v3

    add-int/2addr p3, p4

    add-int/2addr v0, v2

    mul-int/2addr p1, v0

    add-int/2addr v4, p1

    add-int/2addr v1, v3

    mul-int/2addr p2, v1

    add-int/2addr p0, p2

    add-int/2addr v5, v4

    add-int/2addr p3, p0

    .line 3025
    invoke-virtual {p5, v4, p0, v5, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 3193
    instance-of p0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    return p0
.end method

.method public clearDragOutlines()V
    .locals 2

    .line 1312
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1313
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1314
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v0, 0x1

    const/4 v1, -0x1

    aput v1, p0, v0

    const/4 v0, 0x0

    aput v1, p0, v0

    return-void
.end method

.method public clearFolderLeaveBehind()V
    .locals 3

    .line 607
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 608
    aput v2, v0, v1

    .line 609
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    return-void
.end method

.method createArea(IIIIIILandroid/view/View;[I[II)[I
    .locals 19

    move-object/from16 v11, p0

    move-object/from16 v12, p7

    move/from16 v13, p10

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p8

    .line 2621
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v14

    const/4 v15, 0x2

    if-nez p9, :cond_0

    new-array v0, v15, [I

    move-object/from16 v16, v0

    goto :goto_0

    :cond_0
    move-object/from16 v16, p9

    :goto_0
    const/4 v10, 0x0

    const/4 v9, 0x1

    if-eq v13, v9, :cond_1

    if-eq v13, v15, :cond_1

    const/4 v0, 0x3

    if-ne v13, v0, :cond_3

    .line 2630
    :cond_1
    iget-object v0, v11, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    aget v1, v0, v10

    const/16 v2, -0x64

    if-eq v1, v2, :cond_3

    .line 2632
    iget-object v1, v11, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    aget v3, v0, v10

    aput v3, v1, v10

    .line 2633
    aget v3, v0, v9

    aput v3, v1, v9

    if-eq v13, v9, :cond_2

    if-ne v13, v15, :cond_4

    .line 2636
    :cond_2
    aput v2, v0, v10

    .line 2637
    aput v2, v0, v9

    goto :goto_1

    .line 2640
    :cond_3
    iget-object v6, v11, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    .line 2641
    iget-object v0, v11, Lcom/android/launcher2/CellLayout;->mPreviousReorderDirection:[I

    iget-object v1, v11, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    aget v2, v1, v10

    aput v2, v0, v10

    .line 2642
    aget v1, v1, v9

    aput v1, v0, v9

    .line 2645
    :cond_4
    :goto_1
    iget-object v7, v11, Lcom/android/launcher2/CellLayout;->mDirectionVector:[I

    const/16 v17, 0x1

    new-instance v8, Lcom/android/launcher2/CellLayout$ItemConfiguration;

    const/4 v6, 0x0

    invoke-direct {v8, v11, v6}, Lcom/android/launcher2/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$1;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v15, v6

    move/from16 v6, p6

    move-object/from16 v18, v8

    move-object/from16 v8, p7

    move/from16 v9, v17

    move-object/from16 v10, v18

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher2/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;

    move-result-object v9

    .line 2649
    new-instance v8, Lcom/android/launcher2/CellLayout$ItemConfiguration;

    invoke-direct {v8, v11, v15}, Lcom/android/launcher2/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$1;)V

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/CellLayout;->findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;

    move-result-object v6

    .line 2653
    iget-boolean v0, v9, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_5

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout$ItemConfiguration;->area()I

    move-result v0

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout$ItemConfiguration;->area()I

    move-result v1

    if-lt v0, v1, :cond_5

    move-object v6, v9

    goto :goto_2

    .line 2655
    :cond_5
    iget-boolean v0, v6, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move-object v6, v15

    :goto_2
    const/4 v0, 0x1

    .line 2661
    invoke-virtual {v11, v0}, Lcom/android/launcher2/CellLayout;->setUseTempCoords(Z)V

    if-eqz v6, :cond_c

    .line 2665
    iget v1, v6, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewX:I

    const/4 v2, 0x0

    aput v1, v14, v2

    .line 2666
    iget v1, v6, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewY:I

    aput v1, v14, v0

    .line 2667
    iget v1, v6, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanX:I

    aput v1, v16, v2

    .line 2668
    iget v1, v6, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanY:I

    aput v1, v16, v0

    if-eqz v13, :cond_7

    if-eq v13, v0, :cond_7

    const/4 v1, 0x2

    if-ne v13, v1, :cond_b

    .line 2675
    :cond_7
    invoke-direct {v11, v6, v12}, Lcom/android/launcher2/CellLayout;->copySolutionToTempState(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2677
    invoke-virtual {v11, v0}, Lcom/android/launcher2/CellLayout;->setItemPlacementDirty(Z)V

    if-ne v13, v0, :cond_8

    move v10, v0

    goto :goto_3

    :cond_8
    move v10, v2

    .line 2678
    :goto_3
    invoke-direct {v11, v6, v12, v10}, Lcom/android/launcher2/CellLayout;->animateItemsToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    if-eq v13, v0, :cond_a

    const/4 v1, 0x2

    if-ne v13, v1, :cond_9

    goto :goto_4

    :cond_9
    const/16 v1, 0x96

    .line 2686
    invoke-direct {v11, v6, v12, v1}, Lcom/android/launcher2/CellLayout;->beginOrAdjustHintAnimations(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_5

    .line 2682
    :cond_a
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->commitTempPlacement()V

    .line 2683
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->completeAndClearReorderHintAnimations()V

    .line 2684
    invoke-virtual {v11, v2}, Lcom/android/launcher2/CellLayout;->setItemPlacementDirty(Z)V

    :cond_b
    :goto_5
    move v10, v0

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 2692
    aput v1, v16, v0

    aput v1, v16, v2

    aput v1, v14, v0

    aput v1, v14, v2

    move v10, v2

    :goto_6
    if-eq v13, v0, :cond_d

    if-nez v10, :cond_e

    .line 2696
    :cond_d
    invoke-virtual {v11, v2}, Lcom/android/launcher2/CellLayout;->setUseTempCoords(Z)V

    .line 2699
    :cond_e
    iget-object v0, v11, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->requestLayout()V

    return-object v14
.end method

.method createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v13, p7

    const/4 v0, 0x2

    new-array v6, v0, [I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v6

    .line 2590
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->regionToCenterPoint(IIII[I)V

    const/4 v14, 0x0

    .line 2593
    aget v1, v6, v14

    const/4 v15, 0x1

    aget v2, v6, v15

    new-instance v10, Lcom/android/launcher2/CellLayout$ItemConfiguration;

    const/4 v0, 0x0

    invoke-direct {v10, v11, v0}, Lcom/android/launcher2/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellLayout$1;)V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher2/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;

    move-result-object v0

    .line 2596
    invoke-virtual {v11, v15}, Lcom/android/launcher2/CellLayout;->setUseTempCoords(Z)V

    if-eqz v0, :cond_1

    .line 2597
    iget-boolean v1, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v1, :cond_1

    .line 2601
    invoke-direct {v11, v0, v12}, Lcom/android/launcher2/CellLayout;->copySolutionToTempState(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2602
    invoke-virtual {v11, v15}, Lcom/android/launcher2/CellLayout;->setItemPlacementDirty(Z)V

    .line 2603
    invoke-direct {v11, v0, v12, v13}, Lcom/android/launcher2/CellLayout;->animateItemsToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    if-eqz v13, :cond_0

    .line 2606
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->commitTempPlacement()V

    .line 2607
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->completeAndClearReorderHintAnimations()V

    .line 2608
    invoke-virtual {v11, v14}, Lcom/android/launcher2/CellLayout;->setItemPlacementDirty(Z)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x96

    .line 2610
    invoke-direct {v11, v0, v12, v1}, Lcom/android/launcher2/CellLayout;->beginOrAdjustHintAnimations(Lcom/android/launcher2/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    .line 2613
    :goto_0
    iget-object v1, v11, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->requestLayout()V

    .line 2615
    :cond_1
    iget-boolean v0, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    return v0
.end method

.method public disableHardwareLayers()V
    .locals 2

    .line 347
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    sget-object v0, Lcom/android/launcher2/CellLayout;->sPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 579
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 580
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    if-lez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 582
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 583
    sget-object v1, Lcom/android/launcher2/CellLayout;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 584
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p0, 0x0

    .line 585
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 2

    .line 343
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    sget-object v0, Lcom/android/launcher2/CellLayout;->sPaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method estimateDropCell(IIII[I)V
    .locals 2

    .line 1223
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1224
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 1228
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/launcher2/CellLayout;->pointToCellRounded(II[I)V

    const/4 p0, 0x0

    .line 1231
    aget p1, p5, p0

    add-int/2addr p1, p3

    sub-int/2addr p1, v0

    if-lez p1, :cond_0

    .line 1233
    aget p2, p5, p0

    sub-int/2addr p2, p1

    aput p2, p5, p0

    .line 1235
    :cond_0
    aget p1, p5, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    aput p1, p5, p0

    const/4 p1, 0x1

    .line 1236
    aget p2, p5, p1

    add-int/2addr p2, p4

    sub-int/2addr p2, v1

    if-lez p2, :cond_1

    .line 1238
    aget p3, p5, p1

    sub-int/2addr p3, p2

    aput p3, p5, p1

    .line 1240
    :cond_1
    aget p2, p5, p1

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    aput p0, p5, p1

    return-void
.end method

.method existsEmptyCell()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2827
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result p0

    return p0
.end method

.method findCellForSpan([III)Z
    .locals 8

    .line 2844
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z

    move-result p0

    return p0
.end method

.method findCellForSpanIgnoring([IIILandroid/view/View;)Z
    .locals 8

    .line 2858
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z

    move-result p0

    return p0
.end method

.method findCellForSpanThatIntersects([IIIII)Z
    .locals 8

    .line 2876
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z

    move-result p0

    return p0
.end method

.method findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;[[Z)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    .line 2886
    invoke-virtual {v0, v3, v4}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    const/4 v6, 0x0

    move/from16 v7, p4

    move/from16 v8, p5

    move v9, v6

    :goto_0
    if-ltz v7, :cond_0

    add-int/lit8 v10, v1, -0x1

    sub-int v10, v7, v10

    .line 2892
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_1

    :cond_0
    move v10, v6

    .line 2894
    :goto_1
    iget v11, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v12, v1, -0x1

    sub-int/2addr v11, v12

    const/4 v13, 0x1

    if-ltz v7, :cond_2

    add-int/2addr v12, v7

    if-ne v1, v13, :cond_1

    move v14, v13

    goto :goto_2

    :cond_1
    move v14, v6

    :goto_2
    add-int/2addr v12, v14

    .line 2896
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    :cond_2
    if-ltz v8, :cond_3

    add-int/lit8 v12, v2, -0x1

    sub-int v12, v8, v12

    .line 2900
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_3

    :cond_3
    move v12, v6

    .line 2902
    :goto_3
    iget v14, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v15, v2, -0x1

    sub-int/2addr v14, v15

    if-ltz v8, :cond_5

    add-int/2addr v15, v8

    if-ne v2, v13, :cond_4

    move/from16 v16, v13

    goto :goto_4

    :cond_4
    move/from16 v16, v6

    :goto_4
    add-int v15, v15, v16

    .line 2904
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    :cond_5
    :goto_5
    if-ge v12, v14, :cond_b

    if-nez v9, :cond_b

    move v15, v10

    :goto_6
    if-ge v15, v11, :cond_a

    move v5, v6

    :goto_7
    if-ge v5, v1, :cond_8

    move v13, v6

    :goto_8
    if-ge v13, v2, :cond_7

    add-int v17, v15, v5

    .line 2912
    aget-object v18, v4, v17

    add-int v19, v12, v13

    aget-boolean v18, v18, v19

    if-eqz v18, :cond_6

    add-int/lit8 v15, v17, 0x1

    const/4 v13, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    const/4 v13, 0x1

    goto :goto_7

    :cond_8
    if-eqz p1, :cond_9

    .line 2921
    aput v15, p1, v6

    const/4 v5, 0x1

    .line 2922
    aput v12, p1, v5

    goto :goto_9

    :cond_9
    const/4 v5, 0x1

    :goto_9
    move v9, v5

    goto :goto_a

    :cond_a
    move v5, v13

    :goto_a
    add-int/lit8 v12, v12, 0x1

    move v13, v5

    goto :goto_5

    :cond_b
    const/4 v5, -0x1

    if-ne v7, v5, :cond_c

    if-ne v8, v5, :cond_c

    .line 2940
    invoke-virtual {v0, v3, v4}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    return v9

    :cond_c
    move v7, v5

    move v8, v7

    goto :goto_0
.end method

.method findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .locals 13

    move-object/from16 v0, p8

    const/4 v1, 0x2

    new-array v12, v1, [I

    new-array v1, v1, [I

    const/4 v9, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object v10, v12

    move-object v11, v1

    .line 2473
    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIIIILandroid/view/View;[I[I)[I

    const/4 v2, 0x0

    .line 2475
    aget v3, v12, v2

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    aget v4, v12, v3

    if-ltz v4, :cond_0

    move-object v4, p0

    .line 2476
    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Z)V

    .line 2477
    aget v4, v12, v2

    iput v4, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewX:I

    .line 2478
    aget v4, v12, v3

    iput v4, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewY:I

    .line 2479
    aget v2, v1, v2

    iput v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2480
    aget v1, v1, v3

    iput v1, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanY:I

    .line 2481
    iput-boolean v3, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0

    .line 2483
    :cond_0
    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    :goto_0
    return-object v0
.end method

.method findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p11

    .line 1410
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->lazyInitTempRectStack()V

    .line 1412
    invoke-virtual {v0, v5, v6}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    move/from16 v7, p1

    int-to-float v7, v7

    .line 1417
    iget v8, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v9, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v8, v9

    add-int/lit8 v9, v3, -0x1

    mul-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v7, v7

    move/from16 v8, p2

    int-to-float v8, v8

    .line 1418
    iget v10, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v11, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v10, v11

    add-int/lit8 v11, v4, -0x1

    mul-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v10, v9

    sub-float/2addr v8, v10

    float-to-int v8, v8

    if-eqz p9, :cond_0

    move-object/from16 v9, p9

    goto :goto_0

    :cond_0
    const/4 v9, 0x2

    new-array v9, v9, [I

    .line 1423
    :goto_0
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v11, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1424
    new-instance v12, Ljava/util/Stack;

    invoke-direct {v12}, Ljava/util/Stack;-><init>()V

    .line 1426
    iget v13, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 1427
    iget v14, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-lez v1, :cond_1d

    if-lez v2, :cond_1d

    if-lez v3, :cond_1d

    if-lez v4, :cond_1d

    if-lt v3, v1, :cond_1d

    if-ge v4, v2, :cond_1

    goto/16 :goto_13

    :cond_1
    const/16 v17, 0x0

    move/from16 v11, v17

    const-wide v18, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_1
    add-int/lit8 v20, v2, -0x1

    sub-int v15, v14, v20

    const/16 v16, 0x1

    if-ge v11, v15, :cond_1b

    move/from16 v15, v17

    :goto_2
    add-int/lit8 v20, v1, -0x1

    sub-int v5, v13, v20

    if-ge v15, v5, :cond_1a

    if-eqz p8, :cond_13

    move/from16 v5, v17

    :goto_3
    if-ge v5, v1, :cond_4

    move-object/from16 p2, v9

    move/from16 v9, v17

    :goto_4
    if-ge v9, v2, :cond_3

    add-int v20, v15, v5

    .line 1443
    aget-object v20, v6, v20

    add-int v21, v11, v9

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_2

    move/from16 v22, v7

    move/from16 v21, v8

    move-object v5, v10

    move/from16 v20, v13

    move/from16 v23, v14

    goto/16 :goto_12

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, p2

    goto :goto_3

    :cond_4
    move-object/from16 p2, v9

    if-lt v1, v3, :cond_5

    move/from16 v5, v16

    goto :goto_5

    :cond_5
    move/from16 v5, v17

    :goto_5
    if-lt v2, v4, :cond_6

    move/from16 v9, v16

    goto :goto_6

    :cond_6
    move/from16 v9, v17

    :goto_6
    move/from16 v20, v16

    :goto_7
    if-eqz v5, :cond_8

    if-nez v9, :cond_7

    goto :goto_8

    :cond_7
    move/from16 v22, v7

    move/from16 v21, v8

    move-object/from16 p9, v10

    goto/16 :goto_e

    :cond_8
    :goto_8
    if-eqz v20, :cond_c

    if-nez v5, :cond_c

    move-object/from16 p9, v10

    move/from16 v10, v17

    :goto_9
    if-ge v10, v2, :cond_b

    move/from16 v21, v8

    add-int v8, v15, v1

    move/from16 v22, v7

    add-int/lit8 v7, v13, -0x1

    if-gt v8, v7, :cond_9

    .line 1460
    aget-object v7, v6, v8

    add-int v8, v11, v10

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_a

    :cond_9
    move/from16 v5, v16

    :cond_a
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, v21

    move/from16 v7, v22

    goto :goto_9

    :cond_b
    move/from16 v22, v7

    move/from16 v21, v8

    if-nez v5, :cond_10

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_c
    move/from16 v22, v7

    move/from16 v21, v8

    move-object/from16 p9, v10

    if-nez v9, :cond_10

    move/from16 v7, v17

    :goto_a
    if-ge v7, v1, :cond_f

    add-int v8, v11, v2

    add-int/lit8 v10, v14, -0x1

    if-gt v8, v10, :cond_d

    add-int v10, v15, v7

    .line 1470
    aget-object v10, v6, v10

    aget-boolean v8, v10, v8

    if-eqz v8, :cond_e

    :cond_d
    move/from16 v9, v16

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_f
    if-nez v9, :cond_10

    add-int/lit8 v2, v2, 0x1

    :cond_10
    :goto_b
    if-lt v1, v3, :cond_11

    move/from16 v7, v16

    goto :goto_c

    :cond_11
    move/from16 v7, v17

    :goto_c
    or-int/2addr v5, v7

    if-lt v2, v4, :cond_12

    move/from16 v7, v16

    goto :goto_d

    :cond_12
    move/from16 v7, v17

    :goto_d
    or-int/2addr v9, v7

    xor-int/lit8 v20, v20, 0x1

    move-object/from16 v10, p9

    move/from16 v8, v21

    move/from16 v7, v22

    goto :goto_7

    :cond_13
    move/from16 v22, v7

    move/from16 v21, v8

    move-object/from16 p2, v9

    move-object/from16 p9, v10

    const/4 v1, -0x1

    const/4 v2, -0x1

    .line 1487
    :goto_e
    iget-object v5, v0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 1488
    invoke-virtual {v0, v15, v11, v5}, Lcom/android/launcher2/CellLayout;->cellToCenterPoint(II[I)V

    .line 1493
    iget-object v7, v0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    add-int v8, v15, v1

    add-int v9, v11, v2

    .line 1494
    invoke-virtual {v7, v15, v11, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1496
    invoke-virtual {v12}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_14
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 1497
    invoke-virtual {v9, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_14

    move/from16 v8, v16

    goto :goto_f

    :cond_15
    move/from16 v8, v17

    .line 1502
    :goto_f
    invoke-virtual {v12, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    aget v9, v5, v17

    sub-int v9, v9, v22

    int-to-double v9, v9

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    aget v5, v5, v16

    sub-int v5, v5, v21

    move/from16 v20, v13

    move/from16 v23, v14

    int-to-double v13, v5

    .line 1504
    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v9, v3

    .line 1503
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    cmpg-double v5, v3, v18

    if-gtz v5, :cond_17

    if-eqz v8, :cond_16

    goto :goto_10

    :cond_16
    move-object/from16 v5, p9

    goto :goto_11

    :cond_17
    :goto_10
    move-object/from16 v5, p9

    .line 1507
    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1509
    :goto_11
    aput v15, p2, v17

    .line 1510
    aput v11, p2, v16

    if-eqz p10, :cond_18

    .line 1512
    aput v1, p10, v17

    .line 1513
    aput v2, p10, v16

    .line 1515
    :cond_18
    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-wide/from16 v18, v3

    :cond_19
    :goto_12
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v10, v5

    move/from16 v13, v20

    move/from16 v8, v21

    move/from16 v7, v22

    move/from16 v14, v23

    move-object/from16 v5, p7

    goto/16 :goto_2

    :cond_1a
    move/from16 v22, v7

    move/from16 v21, v8

    move-object/from16 p2, v9

    move-object v5, v10

    move/from16 v20, v13

    move/from16 v23, v14

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    goto/16 :goto_1

    :cond_1b
    move-object v1, v5

    move-object/from16 p2, v9

    .line 1520
    invoke-virtual {v0, v1, v6}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v1, v18, v1

    if-nez v1, :cond_1c

    const/4 v1, -0x1

    .line 1524
    aput v1, p2, v17

    .line 1525
    aput v1, p2, v16

    .line 1527
    :cond_1c
    invoke-direct {v0, v12}, Lcom/android/launcher2/CellLayout;->recycleTempRects(Ljava/util/Stack;)V

    return-object p2

    :cond_1d
    :goto_13
    move-object/from16 p2, v9

    return-object p2
.end method

.method findNearestArea(IIIILandroid/view/View;Z[I)[I
    .locals 12

    move-object v0, p0

    .line 1372
    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    const/4 v10, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestArea(IIII[I)[I
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    .line 2823
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object p0

    return-object p0
.end method

.method findNearestVacantArea(IIIIIILandroid/view/View;[I[I)[I
    .locals 12

    move-object v0, p0

    .line 2804
    iget-object v11, v0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    const/4 v8, 0x1

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v11}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIIIILandroid/view/View;Z[I[I[[Z)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIIII[I[I)[I
    .locals 10

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 1352
    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIIIILandroid/view/View;[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIILandroid/view/View;[I)[I
    .locals 8

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 2784
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIIILandroid/view/View;Z[I)[I

    move-result-object p0

    return-object p0
.end method

.method findNearestVacantArea(IIII[I)[I
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 1332
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3188
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 3198
    new-instance p0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getBackgroundAlpha()F
    .locals 0

    .line 1090
    iget p0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    return p0
.end method

.method public getBackgroundAlphaMultiplier()F
    .locals 0

    .line 1101
    iget p0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    return p0
.end method

.method getCellHeight()I
    .locals 0

    .line 940
    iget p0, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    return p0
.end method

.method getCellWidth()I
    .locals 0

    .line 936
    iget p0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    return p0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 0

    .line 1126
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildrenScale()F
    .locals 1

    .line 355
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsHotseat:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/launcher2/CellLayout;->mHotseatScale:F

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method getContentRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    if-nez p1, :cond_0

    .line 953
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 955
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 956
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 957
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 958
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v3, p0

    .line 959
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1
.end method

.method getCountX()I
    .locals 0

    .line 639
    iget p0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    return p0
.end method

.method getCountY()I
    .locals 0

    .line 643
    iget p0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    return p0
.end method

.method public getDesiredHeight()I
    .locals 3

    .line 3174
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 3175
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget p0, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .locals 3

    .line 3169
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 3170
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget p0, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public getDistanceFromCell(FF[I)F
    .locals 5

    const/4 v0, 0x0

    .line 929
    aget v1, p3, v0

    const/4 v2, 0x1

    aget p3, p3, v2

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    invoke-virtual {p0, v1, p3, v3}, Lcom/android/launcher2/CellLayout;->cellToCenterPoint(II[I)V

    .line 930
    iget-object p3, p0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    aget p3, p3, v0

    int-to-float p3, p3

    sub-float/2addr p1, p3

    float-to-double v0, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    aget p0, p0, v2

    int-to-float p0, p0

    sub-float/2addr p2, p0

    float-to-double p0, p2

    .line 931
    invoke-static {p0, p1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    .line 930
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method getHeightGap()I
    .locals 0

    .line 948
    iget p0, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    return p0
.end method

.method getIsDragOverlapping()Z
    .locals 0

    .line 421
    iget-boolean p0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    return p0
.end method

.method public getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .locals 1

    .line 1119
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1120
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTag()Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 0

    .line 832
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/CellLayout$CellInfo;

    return-object p0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getTag()Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object p0

    return-object p0
.end method

.method public getVacantCell([III)Z
    .locals 6

    .line 3100
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result p0

    return p0
.end method

.method getWidthGap()I
    .locals 0

    .line 944
    iget p0, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    return p0
.end method

.method public hideFolderAccept(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    return-void
.end method

.method isItemPlacementDirty()Z
    .locals 0

    .line 2707
    iget-boolean p0, p0, Lcom/android/launcher2/CellLayout;->mItemPlacementDirty:Z

    return p0
.end method

.method isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 2564
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 2565
    aget v1, p1, p2

    const/4 p2, 0x1

    aget v2, p1, p2

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2567
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, p2

    return p0
.end method

.method public isOccupied(II)Z
    .locals 1

    .line 3179
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    .line 3180
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object p0, p0, p1

    aget-boolean p0, p0, p2

    return p0

    .line 3182
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Position exceeds the bound of this CellLayout"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public lastDownOnOccupiedCell()Z
    .locals 0

    .line 3377
    iget-boolean p0, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    return p0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 1

    .line 3141
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;[[Z)V

    return-void
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;[[Z)V
    .locals 7

    if-eqz p1, :cond_1

    .line 3144
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3145
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 3146
    iget v1, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 1

    .line 3150
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V

    return-void
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;[[Z)V
    .locals 7

    if-eqz p1, :cond_1

    .line 3153
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3154
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 3155
    iget v1, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 742
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 743
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    iput p0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    return-void
.end method

.method onDragEnter()V
    .locals 2

    .line 2950
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 2951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragEnter: mDragging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CellLayout"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2954
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {v0}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragEnter()V

    const/4 v0, 0x1

    .line 2955
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    return-void
.end method

.method onDragExit()V
    .locals 4

    .line 2962
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 2963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragExit: mDragging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CellLayout"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2966
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {v0}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragExit()V

    .line 2970
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2971
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 2975
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v2, -0x1

    const/4 v3, 0x1

    aput v2, v0, v3

    aput v2, v0, v1

    .line 2976
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 2977
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    add-int/2addr v0, v3

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 2978
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->revertTempState()V

    .line 2979
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 467
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 470
    iget-boolean v2, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eqz v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 474
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .line 477
    :goto_0
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    mul-float/2addr v0, v3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 478
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 479
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move v3, v2

    .line 483
    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v5, v4

    const/4 v6, 0x0

    if-ge v3, v5, :cond_3

    .line 484
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    aget v5, v5, v3

    cmpl-float v7, v5, v1

    if-lez v7, :cond_2

    .line 486
    aget-object v4, v4, v3

    .line 487
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->temp:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenScale()F

    move-result v8

    invoke-virtual {p0, v4, v7, v8}, Lcom/android/launcher2/CellLayout;->scaleRectAboutCenter(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 488
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 489
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 490
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->temp:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v6, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 496
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    if-eqz v0, :cond_4

    .line 497
    invoke-virtual {v0}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v0

    .line 498
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackground()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 500
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    .line 501
    invoke-virtual {v3}, Lcom/android/launcher2/BubbleTextView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    .line 502
    invoke-virtual {v4}, Lcom/android/launcher2/BubbleTextView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v0

    int-to-float v0, v4

    .line 500
    invoke-virtual {p1, v1, v3, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 524
    :cond_4
    sget v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sPreviewSize:I

    move v1, v2

    .line 527
    :goto_2
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_5

    .line 528
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 531
    sget-object v5, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sSharedOuterRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 532
    invoke-virtual {v3}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->getOuterRingSize()F

    move-result v6

    float-to-int v6, v6

    .line 534
    iget v7, v3, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellX:I

    iget v8, v3, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellY:I

    iget-object v9, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 536
    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    aget v8, v7, v2

    iget v9, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 537
    aget v7, v7, v4

    div-int/lit8 v9, v0, 0x2

    add-int/2addr v7, v9

    .line 539
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 540
    div-int/lit8 v10, v6, 0x2

    sub-int/2addr v8, v10

    int-to-float v8, v8

    sub-int/2addr v7, v10

    int-to-float v7, v7

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 541
    invoke-virtual {v5, v2, v2, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 542
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 543
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 546
    sget-object v5, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->sSharedInnerRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 547
    invoke-virtual {v3}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->getInnerRingSize()F

    move-result v6

    float-to-int v6, v6

    .line 549
    iget v7, v3, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellX:I

    iget v3, v3, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mCellY:I

    iget-object v8, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v7, v3, v8}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 551
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    aget v7, v3, v2

    iget v8, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    .line 552
    aget v3, v3, v4

    add-int/2addr v3, v9

    .line 553
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 554
    div-int/lit8 v4, v6, 0x2

    sub-int/2addr v7, v4

    int-to-float v7, v7

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v7, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 555
    invoke-virtual {v5, v2, v2, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 556
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 557
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 560
    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    aget v3, v1, v2

    if-ltz v3, :cond_6

    aget v1, v1, v4

    if-ltz v1, :cond_6

    .line 561
    sget-object v1, Lcom/android/launcher2/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    .line 562
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 563
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 565
    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    aget v7, v6, v2

    aget v6, v6, v4

    iget-object v8, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v7, v6, v8}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 566
    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mTempLocation:[I

    aget v7, v6, v2

    iget p0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v7, p0

    .line 567
    aget p0, v6, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p0, v0

    .line 569
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 570
    div-int/lit8 v0, v3, 0x2

    sub-int/2addr v7, v0

    int-to-float v4, v7

    sub-int/2addr p0, v0

    int-to-float p0, p0

    invoke-virtual {p1, v4, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 571
    invoke-virtual {v1, v2, v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 572
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 573
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 1

    .line 2990
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz p0, :cond_0

    .line 2991
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDropChild: child = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CellLayout"

    invoke-static {v0, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 2995
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/CellLayout$LayoutParams;

    const/4 v0, 0x1

    .line 2996
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 2997
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 804
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 807
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearTagCellInfo()V

    .line 810
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-nez v0, :cond_2

    .line 815
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/CellLayout;->setTagToCellInfoForPoint(II)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 1063
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1065
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1066
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v3

    sub-int v4, p4, p2

    .line 1067
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v5, p5, p3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1066
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 1012
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1013
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1015
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1016
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 1022
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    add-int/lit8 v1, v1, -0x1

    .line 1023
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    add-int/lit8 v2, v2, -0x1

    .line 1025
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mOriginalWidthGap:I

    const/4 v4, 0x0

    if-ltz v3, :cond_1

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mOriginalHeightGap:I

    if-gez v5, :cond_0

    goto :goto_0

    .line 1034
    :cond_0
    iput v3, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 1035
    iput v5, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    goto :goto_3

    .line 1026
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    .line 1027
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v5

    sub-int v5, p2, v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1028
    iget v6, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v6, v7

    sub-int/2addr v3, v6

    .line 1029
    iget v6, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget v7, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 1030
    iget v6, p0, Lcom/android/launcher2/CellLayout;->mMaxGap:I

    if-lez v1, :cond_2

    div-int/2addr v3, v1

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 1031
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mMaxGap:I

    if-lez v2, :cond_3

    div-int/2addr v5, v2

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 1032
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    invoke-virtual {v2, v3, v5, v6, v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setCellDimensions(IIII)V

    :goto_3
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_4

    .line 1042
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    iget p2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v0, p2

    add-int/2addr p1, v0

    add-int/lit8 p2, p2, -0x1

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    .line 1044
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v1, v0

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 1046
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    .line 1049
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    :goto_4
    if-ge v4, v0, :cond_5

    .line 1051
    invoke-virtual {p0, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1052
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    .line 1053
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    .line 1052
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1054
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v5

    sub-int v5, p2, v5

    .line 1055
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1054
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1056
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1058
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    return-void

    .line 1019
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onMove(Landroid/view/View;IIII)V
    .locals 7

    .line 3136
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 3137
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIII[[ZZ)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1073
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1074
    iget-object p3, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1075
    iget-object p3, p0, Lcom/android/launcher2/CellLayout;->mForegroundRect:Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/launcher2/CellLayout;->mForegroundPadding:I

    sub-int/2addr p1, p0

    sub-int/2addr p2, p0

    invoke-virtual {p3, p0, p0, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 3

    .line 842
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 843
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr p1, v0

    .line 845
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v0, v2

    div-int/2addr p1, v0

    const/4 v0, 0x0

    aput p1, p3, v0

    sub-int/2addr p2, v1

    .line 846
    iget p1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr p1, v1

    div-int/2addr p2, p1

    const/4 p1, 0x1

    aput p2, p3, p1

    .line 848
    iget p2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 849
    iget p0, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 851
    aget v1, p3, v0

    if-gez v1, :cond_0

    aput v0, p3, v0

    .line 852
    :cond_0
    aget v1, p3, v0

    if-lt v1, p2, :cond_1

    sub-int/2addr p2, p1

    aput p2, p3, v0

    .line 853
    :cond_1
    aget p2, p3, p1

    if-gez p2, :cond_2

    aput v0, p3, p1

    .line 854
    :cond_2
    aget p2, p3, p1

    if-lt p2, p0, :cond_3

    sub-int/2addr p0, p1

    aput p0, p3, p1

    :cond_3
    return-void
.end method

.method pointToCellRounded(II[I)V
    .locals 1

    .line 864
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    return-void
.end method

.method public prepareChildForDrag(Landroid/view/View;)V
    .locals 0

    .line 2489
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    return-void
.end method

.method public rectToCell(II[I)[I
    .locals 0

    .line 3037
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object p0

    return-object p0
.end method

.method public refreshUI()V
    .locals 5

    .line 306
    invoke-static {}, Lcom/android/launcher2/Launcher;->getCurrentScene()Ljava/lang/String;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 308
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701f3

    if-eqz v0, :cond_1

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_homescreen_blue_normal_holo"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "drawable"

    invoke-virtual {v2, v0, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v3, v0

    .line 314
    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method regionToCenterPoint(IIII[I)V
    .locals 5

    .line 904
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 905
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 906
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int v4, v2, v3

    mul-int/2addr p1, v4

    add-int/2addr v0, p1

    mul-int/2addr v2, p3

    const/4 p1, 0x1

    sub-int/2addr p3, p1

    mul-int/2addr p3, v3

    add-int/2addr v2, p3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    const/4 p3, 0x0

    aput v0, p5, p3

    .line 908
    iget p3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget p0, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int v0, p3, p0

    mul-int/2addr p2, v0

    add-int/2addr v1, p2

    mul-int/2addr p3, p4

    sub-int/2addr p4, p1

    mul-int/2addr p4, p0

    add-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    add-int/2addr v1, p3

    aput v1, p5, p1

    return-void
.end method

.method regionToRect(IIIILandroid/graphics/Rect;)V
    .locals 5

    .line 920
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 921
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v1

    .line 922
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int v4, v2, v3

    mul-int/2addr p1, v4

    add-int/2addr v0, p1

    .line 923
    iget p1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget p0, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int v4, p1, p0

    mul-int/2addr p2, v4

    add-int/2addr v1, p2

    mul-int/2addr v2, p3

    add-int/lit8 p3, p3, -0x1

    mul-int/2addr p3, v3

    add-int/2addr v2, p3

    add-int/2addr v2, v0

    mul-int/2addr p1, p4

    add-int/lit8 p4, p4, -0x1

    mul-int/2addr p4, p0

    add-int/2addr p1, p4

    add-int/2addr p1, v1

    .line 924
    invoke-virtual {p5, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public removeAllViews()V
    .locals 0

    .line 690
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearOccupiedCells()V

    .line 691
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeAllViews()V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 697
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearOccupiedCells()V

    .line 698
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeAllViewsInLayout()V

    :cond_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 708
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 709
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 715
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0

    .line 720
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 721
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public removeViewWithoutMarkingCells(Landroid/view/View;)V
    .locals 0

    .line 703
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViews(II)V
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 729
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeViews(II)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->removeViewsInLayout(II)V

    return-void
.end method

.method public requestChildLayout()V
    .locals 2

    .line 3384
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestChildLayout: mShortcutsAndWidgets = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CellLayout"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3387
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    if-eqz p0, :cond_1

    .line 3388
    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->requestLayout()V

    :cond_1
    return-void
.end method

.method protected resetOverscrollTransforms()V
    .locals 2

    .line 429
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mScrollingTransformsDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setOverscrollTransformsDirty(Z)V

    const/4 v1, 0x0

    .line 431
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 432
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 435
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayout;->setOverScrollAmount(FZ)V

    .line 436
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    .line 437
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    :cond_0
    return-void
.end method

.method public restoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 618
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method revertTempState()V
    .locals 12

    .line 2571
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->isItemPlacementDirty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2572
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2574
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2575
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2576
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne v4, v6, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-eq v4, v6, :cond_1

    .line 2577
    :cond_0
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    .line 2578
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    .line 2579
    iget v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    const/16 v8, 0x96

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/launcher2/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2583
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->completeAndClearReorderHintAnimations()V

    .line 2584
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->setItemPlacementDirty(Z)V

    :cond_3
    return-void
.end method

.method public scaleRect(Landroid/graphics/Rect;F)V
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-eqz p0, :cond_0

    .line 443
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    mul-float/2addr p0, p2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 444
    iget p0, p1, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    mul-float/2addr p0, p2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 445
    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    mul-float/2addr p0, p2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 446
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    mul-float/2addr p0, p2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method scaleRectAboutCenter(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 3

    .line 452
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 453
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 454
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    neg-int p1, v0

    neg-int v2, v1

    .line 455
    invoke-virtual {p2, p1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 456
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/CellLayout;->scaleRect(Landroid/graphics/Rect;F)V

    .line 457
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1

    .line 1105
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1106
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    .line 1107
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBackgroundAlphaMultiplier(F)V
    .locals 1

    .line 1094
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1095
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 1096
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 0

    .line 1081
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0

    .line 1086
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public setFolderLeaveBehindCell(II)V
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mFolderLeaveBehindCell:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 602
    aput p2, v0, p1

    .line 603
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    return-void
.end method

.method public setGridSize(II)V
    .locals 4

    .line 359
    const-class v0, Z

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 360
    iput p2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput p2, v2, v3

    const/4 p2, 0x0

    aput p1, v2, p2

    .line 361
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Z

    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 362
    iget p1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    new-array v1, v1, [I

    aput v2, v1, v3

    aput p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Z

    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    .line 363
    iget-object p1, p0, Lcom/android/launcher2/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    .line 364
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->requestLayout()V

    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    .line 415
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 416
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIsHotseat(Z)V
    .locals 0

    .line 647
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsHotseat:Z

    return-void
.end method

.method setItemPlacementDirty(Z)V
    .locals 0

    .line 2704
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mItemPlacementDirty:Z

    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method setOverScrollAmount(FZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollLeft:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 377
    iput-object v1, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 378
    iget-object p2, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollRight:Landroid/graphics/drawable/Drawable;

    if-eq p2, v0, :cond_1

    .line 379
    iput-object v0, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p1, p2

    .line 382
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/CellLayout;->mForegroundAlpha:I

    .line 383
    iget-object p2, p0, Lcom/android/launcher2/CellLayout;->mOverScrollForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 384
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    return-void
.end method

.method protected setOverscrollTransformsDirty(Z)V
    .locals 0

    .line 425
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mScrollingTransformsDirty:Z

    return-void
.end method

.method setPressedOrFocusedIcon(Lcom/android/launcher2/BubbleTextView;)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    .line 404
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0, v0}, Lcom/android/launcher2/CellLayout;->invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    if-eqz p1, :cond_1

    .line 409
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayout;->invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V

    :cond_1
    return-void
.end method

.method public setShortcutAndWidgetAlpha(F)V
    .locals 3

    .line 1112
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1114
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTagToCellInfoForPoint(II)V
    .locals 12

    .line 747
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 748
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 749
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScrollX()I

    move-result v2

    add-int/2addr p1, v2

    .line 750
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getScrollY()I

    move-result v2

    add-int/2addr p2, v2

    .line 751
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    const/4 v4, 0x0

    if-ltz v2, :cond_3

    .line 755
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 756
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 758
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-eqz v7, :cond_2

    :cond_0
    iget-boolean v7, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v7, :cond_2

    .line 760
    invoke-virtual {v5, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 762
    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v1

    .line 763
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v10

    .line 764
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 768
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPaddingTop()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 769
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v1

    mul-float/2addr v8, v9

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v8, v1

    float-to-int v8, v8

    .line 770
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v9

    div-float/2addr v10, v1

    float-to-int v1, v10

    .line 769
    invoke-virtual {v7, v8, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 772
    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 773
    iput-object v5, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 774
    iget v1, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 775
    iget v1, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 776
    iget v1, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 777
    iget v1, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move v1, v3

    goto :goto_1

    :cond_1
    move-object v1, v7

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    move v1, v4

    .line 784
    :goto_1
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mLastDownOnOccupiedCell:Z

    if-nez v1, :cond_4

    .line 787
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpXY:[I

    .line 788
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    const/4 p1, 0x0

    .line 790
    iput-object p1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 791
    aget p1, v1, v4

    iput p1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 792
    aget p1, v1, v3

    iput p1, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 793
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 794
    iput v3, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 796
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setUseTempCoords(Z)V
    .locals 3

    .line 2462
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2464
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher2/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2465
    iput-boolean p1, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showFolderAccept(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V
    .locals 0

    .line 590
    iget-object p0, p0, Lcom/android/launcher2/CellLayout;->mFolderOuterRings:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;
    .locals 16

    move-object/from16 v8, p0

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p10

    const/4 v13, 0x0

    .line 2192
    invoke-direct {v8, v12, v13}, Lcom/android/launcher2/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher2/CellLayout$ItemConfiguration;Z)V

    .line 2195
    iget-object v0, v8, Lcom/android/launcher2/CellLayout;->mTmpOccupied:[[Z

    invoke-direct {v8, v0}, Lcom/android/launcher2/CellLayout;->copyOccupiedArray([[Z)V

    const/4 v0, 0x2

    new-array v5, v0, [I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    .line 2200
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v14

    .line 2205
    aget v1, v14, v13

    const/4 v15, 0x1

    aget v2, v14, v15

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/CellLayout;->rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher2/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-nez v0, :cond_3

    move/from16 v3, p3

    if-le v10, v3, :cond_1

    if-eq v9, v11, :cond_0

    if-eqz p9, :cond_1

    :cond_0
    add-int/lit8 v5, v10, -0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move v9, v10

    move-object/from16 v10, p10

    .line 2212
    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher2/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;

    move-result-object v0

    return-object v0

    :cond_1
    if-le v11, v9, :cond_2

    add-int/lit8 v6, v11, -0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move v9, v11

    move-object/from16 v10, p10

    .line 2215
    invoke-virtual/range {v0 .. v10}, Lcom/android/launcher2/CellLayout;->simpleSwap(IIIIII[ILandroid/view/View;ZLcom/android/launcher2/CellLayout$ItemConfiguration;)Lcom/android/launcher2/CellLayout$ItemConfiguration;

    move-result-object v0

    return-object v0

    .line 2218
    :cond_2
    iput-boolean v13, v12, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0

    .line 2220
    :cond_3
    iput-boolean v15, v12, Lcom/android/launcher2/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2221
    aget v0, v14, v13

    iput v0, v12, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewX:I

    .line 2222
    aget v0, v14, v15

    iput v0, v12, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewY:I

    .line 2223
    iput v10, v12, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanX:I

    .line 2224
    iput v11, v12, Lcom/android/launcher2/CellLayout$ItemConfiguration;->dragViewSpanY:I

    :goto_0
    return-object v12
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 13

    move-object v6, p0

    move-object v7, p2

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p10

    .line 1245
    iget-object v5, v6, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v8, 0x0

    aget v9, v5, v8

    const/4 v10, 0x1

    .line 1246
    aget v5, v5, v10

    if-eqz p1, :cond_0

    if-nez v4, :cond_0

    .line 1249
    iget-object v11, v6, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v0, v12

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v1, v12

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 1251
    :cond_0
    iget-object v11, v6, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Point;->set(II)V

    :goto_0
    if-nez v7, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-ne v2, v9, :cond_2

    if-eq v3, v5, :cond_6

    .line 1259
    :cond_2
    iget-object v0, v6, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v2, v0, v8

    .line 1260
    aput v3, v0, v10

    .line 1262
    iget-object v0, v6, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    .line 1263
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 1265
    aget v1, v0, v8

    .line 1266
    aget v0, v0, v10

    if-eqz p1, :cond_3

    if-nez v4, :cond_3

    .line 1271
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1272
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    .line 1273
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v4

    .line 1278
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    .line 1280
    iget v4, v6, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int v4, v4, p7

    add-int/lit8 v5, p7, -0x1

    iget v8, v6, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v8

    add-int/2addr v4, v5

    .line 1281
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    if-eqz p11, :cond_4

    .line 1286
    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v8, v6, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int v8, v8, p7

    add-int/lit8 v9, p7, -0x1

    iget v11, v6, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v9, v11

    add-int/2addr v8, v9

    .line 1287
    invoke-virtual/range {p11 .. p11}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    add-int/2addr v1, v5

    .line 1288
    iget v4, v4, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 1291
    :cond_4
    iget v4, v6, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int v4, v4, p7

    add-int/lit8 v5, p7, -0x1

    iget v8, v6, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v5, v8

    add-int/2addr v4, v5

    .line 1292
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    .line 1293
    iget v4, v6, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int v4, v4, p8

    add-int/lit8 v5, p8, -0x1

    iget v8, v6, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v5, v8

    add-int/2addr v4, v5

    .line 1294
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    :goto_1
    add-int/2addr v0, v4

    .line 1297
    :goto_2
    iget v4, v6, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1298
    iget-object v5, v6, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    add-int/2addr v4, v10

    .line 1299
    iget-object v5, v6, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Rect;

    array-length v8, v5

    rem-int/2addr v4, v8

    iput v4, v6, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1300
    aget-object v5, v5, v4

    .line 1301
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v8, v0

    invoke-virtual {v5, v1, v0, v4, v8}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p9, :cond_5

    move-object v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    .line 1303
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 1306
    :cond_5
    iget-object v0, v6, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v1, v6, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lcom/android/launcher2/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 1307
    iget-object v0, v6, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v1, v6, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    :cond_6
    return-void
.end method
