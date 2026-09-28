.class public abstract Lcom/android/launcher2/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/android/launcher2/ScreenEffect;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedView$SavedState;,
        Lcom/android/launcher2/PagedView$ScrollInterpolator;,
        Lcom/android/launcher2/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field static final AUTOMATIC_PAGE_SPACING:I = -0x1

.field private static final DEBUG:Z = false

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field protected static final MAX_PAGE_SNAP_DURATION:I = 0x2ee

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field protected static final PAGE_SNAP_ANIMATION_DURATION:I = 0x226

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field protected static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field private static final TAG:Ljava/lang/String; = "PagedView"

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static sCanCallEnterAppWidget:Z = true

.field private static sCanSendMessage:Z = true

.field protected static final sScrollIndicatorFadeInDuration:I = 0x96

.field protected static final sScrollIndicatorFadeOutDuration:I = 0x28a

.field protected static final sScrollIndicatorFlashDuration:I = 0x28a


# instance fields
.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field private isShowScreenIndicator:Z

.field private isShowScrollIndicator:Z

.field protected mActivePointerId:I

.field protected mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field private mAllowPagedViewAnimations:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCenterPagesVertically:Z

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field protected mDeferScrollUpdate:Z

.field protected mDensity:F

.field private mDensityDpi:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownMotionX:F

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field private mHasScrollIndicator:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field protected mMinSnapVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field protected mOverScrollX:I

.field private mPageIndicatorViewId:I

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutPaddingBottom:I

.field protected mPageLayoutPaddingLeft:I

.field protected mPageLayoutPaddingRight:I

.field protected mPageLayoutPaddingTop:I

.field protected mPageLayoutWidthGap:I

.field protected mPageSpacing:I

.field private mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

.field private mPagingTouchSlop:I

.field private mScreenIndicator:Landroid/widget/ImageView;

.field private mScrollIndicator:Landroid/view/View;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mScrollingPaused:Z

.field private mShouldShowScrollIndicator:Z

.field private mShouldShowScrollIndicatorImmediately:Z

.field protected mSmoothingTime:F

.field private mSwitchIconView:Lcom/android/launcher2/popuView/SwitchIconView;

.field protected mTempVisiblePagesRange:[I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 225
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    const/4 v1, -0x1

    .line 99
    iput v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 109
    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    const/4 v2, 0x0

    .line 120
    iput v2, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 121
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    .line 125
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 138
    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 139
    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 141
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 143
    iput-object v4, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    const/high16 v4, 0x3f800000    # 1.0f

    .line 152
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 156
    iput v1, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 163
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    .line 166
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    .line 170
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    .line 174
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    .line 176
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 179
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    .line 184
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowPagedViewAnimations:Z

    .line 192
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    .line 193
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicator:Z

    .line 194
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 198
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mScrollingPaused:Z

    .line 199
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->isShowScrollIndicator:Z

    .line 200
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->isShowScreenIndicator:Z

    .line 1852
    new-instance v4, Lcom/android/launcher2/PagedView$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/PagedView$1;-><init>(Lcom/android/launcher2/PagedView;)V

    iput-object v4, p0, Lcom/android/launcher2/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 227
    sget-object v4, Lcom/yecon/launcher1/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v4, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x7

    .line 229
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->setPageSpacing(I)V

    const/4 p2, 0x5

    .line 230
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingTop:I

    .line 232
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingBottom:I

    const/4 p2, 0x3

    .line 234
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingLeft:I

    const/4 p2, 0x4

    .line 236
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingRight:I

    const/4 p2, 0x6

    .line 238
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/PagedView;->mPageLayoutWidthGap:I

    .line 240
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/PagedView;->mPageLayoutHeightGap:I

    .line 246
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/PagedView;->mPageIndicatorViewId:I

    .line 248
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 250
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 251
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/PagedView;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object p0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1427
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1428
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1430
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private getCurrentScreen(II)I
    .locals 1

    .line 1981
    iget p0, p0, Lcom/android/launcher2/PagedView;->mDensityDpi:F

    const/high16 v0, 0x43160000    # 150.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/16 p0, 0x48

    int-to-float p2, p2

    int-to-float p0, p0

    sub-float/2addr p2, p0

    int-to-float p0, p1

    div-float/2addr p2, p0

    .line 1983
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    int-to-float p0, p2

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 1985
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 1443
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1444
    iget v2, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1449
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1450
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    const/4 v1, 0x0

    .line 1451
    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1452
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1453
    iget-object p0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_1

    .line 1454
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 1434
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1435
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1436
    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private searchIMTKWidget(Landroid/view/View;)Landroid/view/View;
    .locals 3

    .line 2281
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2282
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2284
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->searchIMTKWidget(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private updateScrollingIndicator()V
    .locals 2

    .line 1937
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 1938
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1940
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 1941
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1942
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    .line 1944
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicator:Z

    if-eqz v0, :cond_3

    .line 1945
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->showScrollingIndicator(Z)V

    :cond_3
    return-void
.end method

.method private updateScrollingIndicatorPosition()V
    .locals 7

    .line 1950
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1951
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 1952
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1953
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v1

    const/4 v2, 0x0

    .line 1954
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1955
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    sub-int/2addr v3, v2

    .line 1956
    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int/2addr v1, v2

    .line 1957
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    .line 1958
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1960
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    int-to-float v3, v3

    div-float/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1961
    div-int v0, v1, v0

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v3, v1

    float-to-int v1, v3

    .line 1962
    iget v3, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int/2addr v1, v3

    .line 1964
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mScreenIndicator:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 1965
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/PagedView;->getCurrentScreen(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 1968
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->hasElasticScrollIndicator()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1969
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v2, v0, :cond_4

    .line 1970
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1971
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 1974
    :cond_3
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 1977
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    int-to-float v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 5

    .line 1189
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return-void

    .line 1198
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1199
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v1, v3

    :cond_1
    mul-float/2addr v1, v0

    .line 1202
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    .line 1204
    iput v0, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    const/4 p1, 0x0

    .line 1205
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0

    .line 1207
    :cond_2
    iget p1, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1208
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1210
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 941
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 942
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_1

    .line 945
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 946
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    .line 949
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 950
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public allowLongPress()Z
    .locals 0

    .line 1667
    iget-boolean p0, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    return p0
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 1

    .line 1156
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1157
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1161
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1163
    invoke-virtual {p0}, Landroid/view/View;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method public cancelScrollingIndicatorAnimations()V
    .locals 0

    .line 1890
    iget-object p0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 1891
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .line 507
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 5

    .line 465
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 467
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 469
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 472
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    return v1

    .line 474
    :cond_2
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    .line 475
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 476
    iput v2, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 477
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 480
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v0, :cond_3

    .line 481
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 482
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 487
    :cond_3
    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v0, :cond_4

    .line 488
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageEndMoving()V

    .line 493
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "accessibility"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 494
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1000

    .line 496
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_5
    return v1

    :cond_6
    return v3
.end method

.method protected dampedOverScroll(F)V
    .locals 5

    .line 1214
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v1, p1, v0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    return-void

    .line 1219
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v1

    mul-float/2addr v3, v1

    .line 1222
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_1

    .line 1223
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v3, v1

    :cond_1
    const v1, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v1

    mul-float/2addr v3, v0

    .line 1226
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    .line 1228
    iput v0, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    const/4 p1, 0x0

    .line 1229
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0

    .line 1231
    :cond_2
    iget p1, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1232
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1234
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1113
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 5

    .line 1125
    iget v0, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1129
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1130
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1131
    iget v0, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 1132
    iget v2, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 1134
    iget v2, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v2, v2

    mul-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 1135
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-le v0, p2, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-le p1, p2, :cond_3

    move v3, v4

    :cond_3
    if-nez v0, :cond_4

    if-nez v2, :cond_4

    if-eqz v3, :cond_7

    .line 1140
    :cond_4
    iget-boolean p1, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    if-eqz p1, :cond_5

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 1142
    :goto_2
    iput v4, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1143
    iget p1, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget p2, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1144
    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    const/4 p1, 0x0

    .line 1145
    iput p1, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1146
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1147
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    long-to-float p1, p1

    const p2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1148
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1151
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    :cond_7
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 859
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 862
    iget v1, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    add-int/2addr v1, v0

    .line 864
    iget v0, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    if-eqz v0, :cond_1

    .line 867
    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    .line 868
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->screenScrolled(I)V

    .line 869
    iput v1, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 873
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 875
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getVisiblePages([I)V

    .line 876
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v0, v2

    const/4 v3, 0x1

    .line 877
    aget v0, v0, v3

    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    if-eq v0, v4, :cond_5

    .line 879
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getDrawingTime()J

    move-result-wide v4

    .line 881
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 882
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getRight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    .line 883
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getBottom()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    .line 882
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 885
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v3

    :goto_0
    if-ltz v6, :cond_4

    .line 886
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 887
    iget-boolean v7, p0, Lcom/android/launcher2/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v7, :cond_2

    if-gt v1, v6, :cond_3

    if-gt v6, v0, :cond_3

    .line 888
    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 889
    :cond_2
    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/launcher2/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 892
    :cond_4
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 893
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 926
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 927
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 931
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 932
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    return v0

    .line 936
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 2

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr p0, v0

    double-to-float p0, p0

    float-to-double p0, p0

    .line 1543
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public enterAppWidget(I)V
    .locals 0

    .line 2057
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getMTKWidgetView(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2060
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG_SURFACEWIDGET:Z

    :cond_0
    return-void
.end method

.method public flashScrollingIndicator(Z)V
    .locals 2

    .line 1859
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    xor-int/lit8 p1, p1, 0x1

    .line 1860
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->showScrollingIndicator(Z)V

    .line 1861
    iget-object p1, p0, Lcom/android/launcher2/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x28a

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    .line 964
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    move-object v1, p1

    :goto_0
    if-ne v1, v0, :cond_0

    .line 968
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    :cond_0
    if-ne v1, p0, :cond_1

    return-void

    .line 974
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 975
    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_2

    .line 976
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getAppPageNum()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x0

    .line 1755
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 0

    .line 1758
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result p0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p0, p0, -0x1

    .line 1759
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method protected getChildIndexForRelativeOffset(I)I
    .locals 4

    .line 1471
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1475
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 1476
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    if-gt v2, p1, :cond_1

    if-gt p1, v3, :cond_1

    .line 1478
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 1479
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getChildIndexForRelativeOffset i = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PagedView"

    invoke-static {p1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method protected getChildOffset(I)I
    .locals 5

    .line 764
    iget v0, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    :goto_0
    if-eqz v0, :cond_1

    .line 767
    aget v1, v0, p1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 768
    aget p0, v0, p1

    return p0

    .line 770
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 773
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    :goto_1
    if-ge v2, p1, :cond_3

    .line 775
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 778
    aput v1, v0, p1

    :cond_4
    return v1
.end method

.method protected getChildWidth(I)I
    .locals 3

    .line 1490
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1491
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_0

    .line 1492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChildWidth: index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", child = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", measured width = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", mMinimumWidth = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mMinimumWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PagedView"

    invoke-static {v1, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    :cond_0
    iget p0, p0, Lcom/android/launcher2/PagedView;->mMinimumWidth:I

    if-le p0, v0, :cond_1

    move v0, p0

    :cond_1
    return v0
.end method

.method public getCurrentPage()I
    .locals 0

    .line 310
    iget p0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    return p0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    .line 2042
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0025

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2043
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getNextPage()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    .line 2042
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMTKWidgetView(I)Landroid/view/View;
    .locals 0

    .line 2234
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2235
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->searchIMTKWidget(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getNextPage()I
    .locals 2

    .line 313
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    :goto_0
    return v0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 0

    .line 321
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getPageCount()I
    .locals 0

    .line 317
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 3

    if-eqz p1, :cond_1

    .line 1652
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 1653
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1655
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 7

    .line 1502
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1503
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    const v2, 0x7fffffff

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 1505
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    .line 1506
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 1507
    div-int/lit8 v5, v5, 0x2

    .line 1508
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr v6, v0

    .line 1509
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v2, :cond_0

    move v3, v4

    move v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1515
    :cond_1
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPageNearestToCenterOfScreen: minDistanceFromScreenCenterIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScrollX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1517
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PagedView"

    .line 1516
    invoke-static {v0, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v3
.end method

.method protected getRelativeChildOffset(I)I
    .locals 6

    .line 785
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    const-string v1, ", this = "

    const-string v2, "PagedView"

    if-eqz v0, :cond_1

    aget v0, v0, p1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 786
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAW:Z

    if-eqz v0, :cond_0

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRelativeChildOffset 1: index = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mChildRelativeOffsets["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aget p0, p0, p1

    return p0

    .line 793
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingRight()I

    move-result v3

    add-int/2addr v0, v3

    .line 794
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v3

    .line 795
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildWidth(I)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 796
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    if-eqz v4, :cond_2

    .line 797
    aput v3, v4, p1

    .line 799
    :cond_2
    sget-boolean v4, Lcom/android/launcher2/uitl/L;->DEBUG_DRAW:Z

    if-eqz v4, :cond_3

    .line 800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRelativeChildOffset 2: index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ", mPaddingLeft = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 801
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ", mPaddingRight = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingRight()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ", padding = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", offset = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", measure width = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 803
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 800
    invoke-static {v2, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v3
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 1

    .line 812
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 813
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMinimumWidth:I

    if-le v0, p1, :cond_0

    move p1, v0

    :cond_0
    int-to-float p1, p1

    .line 815
    iget p0, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method protected getScaledRelativeChildOffset(I)I
    .locals 3

    .line 819
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 820
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    .line 821
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v2, p0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    return v1
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 2

    .line 1169
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1171
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result p2

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr p2, v1

    .line 1172
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v1

    .line 1173
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result p0

    sub-int/2addr v1, p0

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    int-to-float p0, p1

    int-to-float p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    div-float/2addr p0, p1

    .line 1176
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 p1, -0x40800000    # -1.0f

    .line 1177
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method protected getScrollingIndicator()Landroid/view/View;
    .locals 3

    .line 1830
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1831
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const v1, 0x7f08009e

    .line 1833
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1836
    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    if-eqz v2, :cond_1

    .line 1837
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->isShowScrollIndicator:Z

    if-eqz v2, :cond_1

    .line 1838
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1840
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScreenIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->isShowScreenIndicator:Z

    if-nez v1, :cond_2

    const/16 v1, 0x8

    .line 1841
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1845
    :cond_2
    iget-object p0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object p0
.end method

.method protected getVisiblePages([I)V
    .locals 9

    .line 825
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_2

    .line 828
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v3

    .line 831
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    move v5, v1

    :goto_0
    add-int/lit8 v6, v0, -0x1

    if-ge v5, v6, :cond_0

    .line 833
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 834
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v7, v4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v7, v4

    if-gez v4, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 836
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v5, 0x1

    .line 839
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_1

    .line 841
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v7, v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float v0, v7, v0

    if-gez v0, :cond_1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v4, 0x1

    .line 843
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 845
    :cond_1
    aput v5, p1, v1

    .line 846
    aput v4, p1, v2

    goto :goto_2

    :cond_2
    const/4 p0, -0x1

    .line 848
    aput p0, p1, v1

    .line 849
    aput p0, p1, v2

    :goto_2
    return-void
.end method

.method protected hasElasticScrollIndicator()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public hideScrollIndicatorTrack()V
    .locals 0

    return-void
.end method

.method public hideScrollingIndicator(Z)V
    .locals 3

    .line 1896
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 1897
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1899
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 1900
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1902
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    .line 1903
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelScrollingIndicatorAnimations()V

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 1904
    iget-boolean p1, p0, Lcom/android/launcher2/PagedView;->mScrollingPaused:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1908
    :cond_2
    iget-object p1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const-string v0, "alpha"

    invoke-static {p1, v0, v1}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x28a

    .line 1909
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1910
    iget-object p1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/launcher2/PagedView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/PagedView$2;-><init>(Lcom/android/launcher2/PagedView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1923
    iget-object p0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 1905
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1906
    iget-object p0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected hitsNextPage(FF)Z
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result p2

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v0

    sub-int/2addr p2, v0

    iget p0, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr p2, p0

    int-to-float p0, p2

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 0

    .line 1001
    iget p2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result p2

    iget p0, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    sub-int/2addr p2, p0

    int-to-float p0, p2

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected indexToPage(I)I
    .locals 0

    return p1
.end method

.method protected init()V
    .locals 3

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v1, 0x20

    .line 259
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 260
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/PagedView$ScrollInterpolator;

    invoke-direct {v2}, Lcom/android/launcher2/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x0

    .line 261
    iput v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    const/4 v0, 0x1

    .line 262
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mCenterPagesVertically:Z

    .line 264
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    .line 266
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    .line 267
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    .line 268
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    .line 269
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mDensityDpi:F

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDensityDpi==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mDensityDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vvvvvv"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget v0, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mFlingThresholdVelocity:I

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 273
    iput v1, p0, Lcom/android/launcher2/PagedView;->mMinFlingVelocity:I

    const v1, 0x44bb8000    # 1500.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 274
    iput v0, p0, Lcom/android/launcher2/PagedView;->mMinSnapVelocity:I

    .line 275
    invoke-virtual {p0, p0}, Lcom/android/launcher2/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    .line 745
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 747
    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    .line 748
    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    .line 749
    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    return-void

    .line 753
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    .line 754
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    .line 755
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 757
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 758
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 759
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected invalidatePageData()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1777
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    return-void
.end method

.method protected invalidatePageData(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1781
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 5

    .line 1785
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalidatePageData: currentPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", immediateAndOnly = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsDataReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContentIsRefreshable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScrollX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1789
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagedView"

    .line 1786
    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v0, :cond_1

    return-void

    .line 1796
    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v0, :cond_4

    .line 1798
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    const/4 v0, -0x1

    .line 1799
    iput v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1802
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncPages()V

    .line 1806
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1807
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1806
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PagedView;->measure(II)V

    if-le p1, v0, :cond_2

    .line 1811
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 1815
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result p1

    .line 1816
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 1818
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1822
    :cond_3
    iget p1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    .line 1823
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->requestLayout()V

    :cond_4
    return-void
.end method

.method protected isDataReady()Z
    .locals 0

    .line 301
    iget-boolean p0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    return p0
.end method

.method protected isPageMoving()Z
    .locals 0

    .line 410
    iget-boolean p0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    return p0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportCycleSlidingScreen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public leaveAppWidget(I)V
    .locals 0

    .line 2073
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getMTKWidgetView(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2076
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG_SURFACEWIDGET:Z

    :cond_0
    return-void
.end method

.method public loadAssociatedPages(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1709
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    return-void
.end method

.method public loadAssociatedPages(IZ)V
    .locals 8

    .line 1713
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v1, "PagedView"

    if-eqz v0, :cond_0

    .line 1714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAssociatedPages: page = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", immediateAndOnly = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",mContentIsRefreshable = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDirtyPageContent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v0, :cond_9

    .line 1720
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_9

    .line 1722
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAssociatedLowerPageBound(I)I

    move-result v2

    .line 1723
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAssociatedUpperPageBound(I)I

    move-result v3

    .line 1724
    sget-boolean v4, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 1725
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAssociatedPages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", page = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v0, :cond_5

    .line 1730
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Page;

    if-lt v4, v2, :cond_2

    if-le v4, v3, :cond_4

    .line 1732
    :cond_2
    invoke-interface {v6}, Lcom/android/launcher2/Page;->getPageChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1733
    invoke-interface {v6}, Lcom/android/launcher2/Page;->removeAllViewsOnPage()V

    .line 1735
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_9

    if-eq v4, p1, :cond_6

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    if-gt v2, v4, :cond_8

    if-gt v4, v3, :cond_8

    .line 1744
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    if-ne v4, p1, :cond_7

    if-eqz p2, :cond_7

    move v6, v5

    goto :goto_2

    :cond_7
    move v6, v1

    .line 1745
    :goto_2
    invoke-virtual {p0, v4, v6}, Lcom/android/launcher2/PagedView;->syncPageItems(IZ)V

    .line 1746
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method protected maxOverScroll()F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1245
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result p0

    mul-float/2addr v1, p0

    const p0, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, p0

    return v1
.end method

.method public moveInAppWidget(I)V
    .locals 0

    .line 2121
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getMTKWidgetView(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 2124
    sput-boolean p0, Lcom/android/launcher2/PagedView;->sCanSendMessage:Z

    .line 2125
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG_SURFACEWIDGET:Z

    :cond_0
    return-void
.end method

.method public moveOutAppWidget(I)Z
    .locals 0

    .line 2139
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getMTKWidgetView(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    .line 2141
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG_SURFACEWIDGET:Z

    const/4 p0, 0x0

    .line 2144
    sput-boolean p0, Lcom/android/launcher2/PagedView;->sCanSendMessage:Z

    :cond_0
    return p1
.end method

.method protected notifyPageSwitchListener()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    .line 391
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget p0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, p0}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 735
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    .line 736
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 737
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 1400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 1405
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1407
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    move v2, v3

    goto :goto_0

    .line 1409
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    const/16 v2, 0xa

    .line 1410
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    move v5, v2

    move v2, v0

    move v0, v5

    :goto_0
    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_5

    :cond_2
    if-gtz v0, :cond_4

    cmpl-float p1, v2, v3

    if-lez p1, :cond_3

    goto :goto_1

    .line 1416
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollLeft()V

    goto :goto_2

    .line 1414
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollRight()V

    :goto_2
    return v1

    .line 1423
    :cond_5
    :goto_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 2010
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    .line 2011
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2012
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    .line 2013
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 2014
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 2015
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1998
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1999
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2000
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    const/16 v0, 0x1000

    .line 2001
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2003
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result p0

    if-lez p0, :cond_2

    const/16 p0, 0x2000

    .line 2004
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1018
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1021
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1028
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 1029
    iget v3, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v3, v2, :cond_1

    return v2

    :cond_1
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    const/4 v5, -0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_3

    .line 1100
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1101
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_3

    .line 1040
    :cond_3
    iget v0, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    if-eq v0, v5, :cond_5

    .line 1041
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 1093
    :cond_4
    iput v4, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1094
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1095
    iput v5, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1096
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto :goto_3

    .line 1052
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1053
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1055
    iput v0, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    .line 1056
    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1057
    iput v5, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    const/4 v6, 0x0

    .line 1058
    iput v6, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1059
    iput v6, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1060
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1061
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1068
    iget-object p1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    move-result p1

    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    sub-int/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1069
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_7

    iget v6, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    if-ge p1, v6, :cond_6

    goto :goto_0

    :cond_6
    move p1, v4

    goto :goto_1

    :cond_7
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_8

    .line 1071
    iput v4, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1072
    iget-object p1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_2

    .line 1074
    :cond_8
    iput v2, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1079
    :goto_2
    iget p1, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq p1, v1, :cond_a

    if-eq p1, v3, :cond_a

    .line 1080
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_a

    .line 1081
    invoke-virtual {p0, v0, v5}, Lcom/android/launcher2/PagedView;->hitsPreviousPage(FF)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1082
    iput v1, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_3

    .line 1083
    :cond_9
    invoke-virtual {p0, v0, v5}, Lcom/android/launcher2/PagedView;->hitsNextPage(FF)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1084
    iput v3, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1109
    :cond_a
    :goto_3
    iget p0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz p0, :cond_b

    goto :goto_4

    :cond_b
    move v2, v4

    :goto_4
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 678
    iget-boolean p1, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez p1, :cond_0

    return-void

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 684
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    .line 685
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result p4

    move p5, p3

    :goto_0
    if-ge p5, p2, :cond_3

    .line 688
    invoke-virtual {p0, p5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    .line 690
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v1

    .line 691
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 692
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingTop()I

    move-result v3

    .line 693
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mCenterPagesVertically:Z

    if-eqz v4, :cond_1

    .line 694
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, p1

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 699
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, p4

    add-int/2addr v2, v3

    .line 698
    invoke-virtual {v0, p4, v3, v4, v2}, Landroid/view/View;->layout(IIII)V

    .line 700
    iget v0, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v1, v0

    add-int/2addr p4, v1

    :cond_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 704
    :cond_3
    iget-boolean p1, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 705
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 706
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateCurrentPageScroll()V

    const/4 p1, 0x1

    .line 707
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 708
    iput-boolean p3, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 512
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v0, :cond_0

    .line 513
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    .line 517
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 518
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 519
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 520
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_a

    if-lez v1, :cond_9

    if-gtz v3, :cond_1

    goto/16 :goto_4

    .line 538
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 539
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    .line 547
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    const/high16 v8, -0x80000000

    if-ge v6, v0, :cond_5

    .line 550
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v9

    .line 551
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 554
    iget v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v12, -0x2

    if-ne v11, v12, :cond_2

    move v11, v8

    goto :goto_1

    :cond_2
    move v11, v4

    .line 561
    :goto_1
    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v10, v12, :cond_3

    goto :goto_2

    :cond_3
    move v8, v4

    :goto_2
    sub-int v10, v1, p2

    .line 568
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    sub-int v12, v3, p1

    .line 570
    invoke-static {v12, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 572
    invoke-virtual {v9, v10, v12}, Landroid/view/View;->measure(II)V

    .line 573
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 574
    sget-boolean v10, Lcom/android/launcher2/uitl/L;->DEBUG_LAYOUT:Z

    if-eqz v10, :cond_4

    .line 575
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "measure-child "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ": child = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", childWidthMode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", childHeightMode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", this = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PagedView"

    invoke-static {v9, v8}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    if-ne v2, v8, :cond_6

    add-int v3, v7, p1

    .line 585
    :cond_6
    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/PagedView;->setMeasuredDimension(II)V

    .line 590
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    if-lez v0, :cond_7

    .line 597
    iget p1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_7

    .line 602
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result p1

    sub-int/2addr v1, p1

    .line 604
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr v1, p2

    .line 603
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 605
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->setPageSpacing(I)V

    .line 609
    :cond_7
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    if-lez v0, :cond_8

    add-int/lit8 v0, v0, -0x1

    .line 612
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result p1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    goto :goto_3

    .line 614
    :cond_8
    iput v5, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    :goto_3
    return-void

    .line 527
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    .line 522
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Workspace can only be used in EXACTLY mode."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onPageBeginMoving()V
    .locals 0

    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    return-void
.end method

.method public onPauseWhenShown(I)V
    .locals 0

    .line 2187
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getMTKWidgetView(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2190
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG_SURFACEWIDGET:Z

    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 911
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 914
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 916
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 918
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onResumeWhenShown(I)V
    .locals 0

    .line 2202
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getMTKWidgetView(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2205
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG_SURFACEWIDGET:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1252
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 1254
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v2, :cond_8

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_7

    .line 1390
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_7

    .line 1381
    :cond_2
    iget p1, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne p1, v2, :cond_3

    .line 1382
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 1384
    :cond_3
    iput v1, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1385
    iput v3, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1386
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_7

    .line 1279
    :cond_4
    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v0, v2, :cond_7

    .line 1281
    iget v0, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1282
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 1283
    iget v0, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v0, v3

    sub-float/2addr v0, p1

    .line 1285
    iget v3, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1290
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_6

    .line 1291
    iget v3, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    add-float/2addr v3, v0

    iput v3, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1292
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-float v3, v3

    const v4, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1293
    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-nez v3, :cond_5

    float-to-int v3, v0

    .line 1294
    invoke-virtual {p0, v3, v1}, Lcom/android/launcher2/PagedView;->scrollBy(II)V

    goto :goto_0

    .line 1297
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 1299
    :goto_0
    iput p1, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    float-to-int p1, v0

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 1300
    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_7

    .line 1302
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->awakenScrollBars()Z

    goto/16 :goto_7

    .line 1305
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_7

    .line 1310
    :cond_8
    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne v0, v2, :cond_14

    .line 1311
    iget v0, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1312
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 1313
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 1314
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    .line 1315
    iget v6, p0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1316
    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 1317
    iget v4, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    sub-float v4, p1, v4

    float-to-int v4, v4

    .line 1318
    iget v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 1319
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v5, v5

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v7, v5

    cmpl-float v6, v6, v7

    if-lez v6, :cond_9

    move v6, v2

    goto :goto_1

    :cond_9
    move v6, v1

    .line 1322
    :goto_1
    iget v7, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v8, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    iget v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v8, v9

    sub-float/2addr v8, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v7, p1

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    const/high16 p1, 0x41c80000    # 25.0f

    cmpl-float p1, v7, p1

    if-lez p1, :cond_a

    .line 1325
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v7, p0, Lcom/android/launcher2/PagedView;->mFlingThresholdVelocity:I

    if-le p1, v7, :cond_a

    move p1, v2

    goto :goto_2

    :cond_a
    move p1, v1

    .line 1331
    :goto_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v5, v8

    cmpl-float v5, v7, v5

    if-lez v5, :cond_b

    int-to-float v5, v0

    .line 1332
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    int-to-float v7, v4

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_b

    if-eqz p1, :cond_b

    move v5, v2

    goto :goto_3

    :cond_b
    move v5, v1

    :goto_3
    if-eqz v6, :cond_c

    if-lez v4, :cond_c

    if-eqz p1, :cond_d

    :cond_c
    if-eqz p1, :cond_f

    if-lez v0, :cond_f

    .line 1340
    :cond_d
    iget v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v7, :cond_f

    if-eqz v5, :cond_e

    goto :goto_4

    :cond_e
    add-int/lit8 v7, v7, -0x1

    .line 1343
    :goto_4
    invoke-virtual {p0, v7, v0}, Lcom/android/launcher2/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_6

    :cond_f
    if-eqz v6, :cond_10

    if-gez v4, :cond_10

    if-eqz p1, :cond_11

    :cond_10
    if-eqz p1, :cond_13

    if-gez v0, :cond_13

    .line 1344
    :cond_11
    iget p1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 1346
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge p1, v4, :cond_13

    .line 1347
    iget p1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eqz v5, :cond_12

    goto :goto_5

    :cond_12
    add-int/2addr p1, v2

    .line 1348
    :goto_5
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_6

    .line 1350
    :cond_13
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto :goto_6

    :cond_14
    if-ne v0, v5, :cond_16

    .line 1356
    iget p1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1357
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_15

    .line 1358
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_6

    .line 1360
    :cond_15
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto :goto_6

    :cond_16
    if-ne v0, v4, :cond_18

    .line 1366
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v2

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1367
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_17

    .line 1368
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_6

    .line 1370
    :cond_17
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto :goto_6

    .line 1373
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    .line 1375
    :goto_6
    iput v1, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1376
    iput v3, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1377
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto :goto_7

    .line 1264
    :cond_19
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1265
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1269
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    iput v0, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    const/4 v0, 0x0

    .line 1270
    iput v0, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1271
    iput v0, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1272
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1273
    iget p1, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-ne p1, v2, :cond_1b

    .line 1274
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    :cond_1b
    :goto_7
    return v2
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected overScroll(F)V
    .locals 0

    .line 1238
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->dampedOverScroll(F)V

    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    .line 396
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 398
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageBeginMoving()V

    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .line 403
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 404
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageEndMoving()V

    :cond_0
    return-void
.end method

.method pauseScrolling()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 353
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 354
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mScrollingPaused:Z

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 2021
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x1000

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 2032
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result p1

    if-lez p1, :cond_3

    .line 2033
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollLeft()V

    return v0

    .line 2026
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_3

    .line 2027
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollRight()V

    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1463
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1464
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 1465
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result p2

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1466
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 900
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result p1

    .line 901
    iget p2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 902
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 991
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 992
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 994
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method resumeScrolling()V
    .locals 1

    const/4 v0, 0x0

    .line 362
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mScrollingPaused:Z

    return-void
.end method

.method protected screenScrolled(I)V
    .locals 4

    .line 713
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicator()V

    .line 716
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    iget v2, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 718
    :goto_1
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    .line 719
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 720
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 722
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 723
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v3, v2

    .line 724
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 727
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    :cond_5
    return-void
.end method

.method public scrollBy(II)V
    .locals 1

    .line 437
    iget v0, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollY()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .line 1634
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1635
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 1637
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .line 1642
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1643
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 1645
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    .line 442
    iput p1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    if-gez p1, :cond_0

    const/4 v0, 0x0

    .line 445
    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 446
    iget-boolean p2, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    if-eqz p2, :cond_2

    int-to-float p2, p1

    .line 447
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    goto :goto_0

    .line 449
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_1

    .line 450
    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 451
    iget-boolean p2, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    if-eqz p2, :cond_2

    .line 452
    iget p2, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int p2, p1, p2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    goto :goto_0

    .line 455
    :cond_1
    iput p1, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 456
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_2
    :goto_0
    int-to-float p1, p1

    .line 459
    iput p1, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 460
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    long-to-float p1, p1

    const p2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    return-void
.end method

.method protected scrollToNewPageWithoutMovingPages(I)V
    .locals 6

    .line 619
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 620
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v1

    sub-int v1, v0, v1

    .line 622
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v2

    .line 623
    sget-boolean v3, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 624
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scroll to new page without moving pages: newCurrentPage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mScrollX = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 625
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PagedView"

    .line 624
    invoke-static {v3, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 629
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 630
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    int-to-float v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    return-void
.end method

.method public searchIMTKWidget(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 5

    .line 2251
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2252
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2254
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/launcher2/PagedView;->searchIMTKWidget(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2256
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 2257
    instance-of v4, v3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v4, :cond_0

    .line 2258
    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2259
    invoke-virtual {v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 2260
    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public setAllowLongPress(Z)V
    .locals 0

    .line 1675
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    return-void
.end method

.method public setAppWidgetIdAndScreen(Landroid/view/View;II)V
    .locals 0

    .line 2220
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->searchIMTKWidget(Landroid/view/View;)Landroid/view/View;

    return-void
.end method

.method setCurrentPage(I)V
    .locals 2

    .line 368
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentPage: currentPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrentPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScrollX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 370
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagedView"

    .line 369
    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 382
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 383
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateCurrentPageScroll()V

    .line 384
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicator()V

    .line 385
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 386
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    return-void
.end method

.method protected setDataIsReady()V
    .locals 1

    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    return-void
.end method

.method public setLayoutScale(F)V
    .locals 7

    .line 639
    iput p1, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 640
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    .line 643
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result p1

    .line 644
    new-array v0, p1, [F

    .line 645
    new-array v1, p1, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_0

    .line 647
    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 648
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v5

    aput v5, v0, v3

    .line 649
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 653
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 654
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->requestLayout()V

    .line 655
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/PagedView;->measure(II)V

    .line 657
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v3

    if-eqz v3, :cond_1

    .line 658
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/launcher2/PagedView;->layout(IIII)V

    :cond_1
    :goto_1
    if-ge v2, p1, :cond_2

    .line 661
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 662
    aget v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    .line 663
    aget v4, v1, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setY(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 668
    :cond_2
    iget p1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->scrollToNewPageWithoutMovingPages(I)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 428
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 429
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 431
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0

    .line 672
    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    .line 673
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    return-void
.end method

.method public setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V
    .locals 1

    .line 279
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz p1, :cond_0

    .line 281
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {p1, v0, p0}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setShowScreenIndicator(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->isShowScreenIndicator:Z

    return-void
.end method

.method public setShowScrollIndicator(Z)V
    .locals 0

    .line 286
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->isShowScrollIndicator:Z

    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 0

    .line 854
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showScrollIndicatorTrack()V
    .locals 0

    return-void
.end method

.method public showScrollingIndicator(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 1865
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicator:Z

    .line 1866
    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 1867
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    if-gt v1, v0, :cond_0

    return-void

    .line 1868
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 1870
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mShouldShowScrollIndicator:Z

    .line 1871
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 1872
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 1874
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    .line 1875
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->isShowScrollIndicator:Z

    if-eqz v2, :cond_2

    .line 1876
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1878
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelScrollingIndicatorAnimations()V

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p1, :cond_4

    .line 1879
    iget-boolean p1, p0, Lcom/android/launcher2/PagedView;->mScrollingPaused:Z

    if-eqz p1, :cond_3

    goto :goto_0

    .line 1882
    :cond_3
    iget-object p1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    new-array v0, v0, [F

    aput v2, v0, v1

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x96

    .line 1883
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1884
    iget-object p0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 1880
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected snapToDestination()V
    .locals 2

    .line 1523
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x226

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    return-void
.end method

.method protected snapToPage(I)V
    .locals 1

    const/16 v0, 0x226

    .line 1585
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    return-void
.end method

.method protected snapToPage(II)V
    .locals 2

    .line 1589
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1594
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1595
    iget v1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int/2addr v0, v1

    .line 1597
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    return-void
.end method

.method protected snapToPage(III)V
    .locals 6

    .line 1601
    iput p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1603
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1604
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq p1, v1, :cond_0

    .line 1605
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 1606
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1609
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1610
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->awakenScrollBars(I)Z

    if-nez p3, :cond_1

    .line 1612
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    :cond_1
    move v5, p3

    .line 1615
    iget-object p1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1616
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1620
    iget-boolean p1, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-eqz p1, :cond_3

    .line 1621
    iget p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 1623
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 1625
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 1626
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 5

    .line 1547
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1548
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1553
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1554
    iget v2, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int/2addr v1, v2

    .line 1557
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/PagedView;->mMinFlingVelocity:I

    if-ge v2, v3, :cond_0

    const/16 p2, 0x226

    .line 1560
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    return-void

    .line 1568
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v0, v0

    .line 1570
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    mul-float/2addr v2, v0

    add-float/2addr v0, v2

    .line 1572
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1573
    iget v2, p0, Lcom/android/launcher2/PagedView;->mMinSnapVelocity:I

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 1578
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x4

    const/16 v0, 0x2ee

    .line 1579
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1581
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    return-void
.end method

.method public startCovered(I)V
    .locals 0

    .line 2157
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getMTKWidgetView(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2160
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG_SURFACEWIDGET:Z

    :cond_0
    return-void
.end method

.method public startDragAppWidget(I)V
    .locals 0

    .line 2089
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getMTKWidgetView(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2092
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG_SURFACEWIDGET:Z

    :cond_0
    return-void
.end method

.method public stopCovered(I)V
    .locals 0

    .line 2172
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getMTKWidgetView(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2175
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG_SURFACEWIDGET:Z

    :cond_0
    return-void
.end method

.method public stopDragAppWidget(I)V
    .locals 0

    .line 2105
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getMTKWidgetView(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2109
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG_SURFACEWIDGET:Z

    :cond_0
    return-void
.end method

.method public abstract syncPageItems(IZ)V
.end method

.method public abstract syncPages()V
.end method

.method protected updateCurrentPageScroll()V
    .locals 3

    .line 336
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 337
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v0

    .line 338
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 341
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 342
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 343
    iget-object p0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method
