.class public abstract Lcom/android/launcher2/SmoothPagedView;
.super Lcom/android/launcher2/PagedView;
.source "SmoothPagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;
    }
.end annotation


# static fields
.field static final DEFAULT_MODE:I = 0x0

.field private static final SMOOTHING_CONSTANT:F

.field private static final SMOOTHING_SPEED:F = 0.75f

.field static final X_LARGE_MODE:I = 0x1


# instance fields
.field private mBaseLineFlingVelocity:F

.field private mFlingVelocityInfluence:F

.field private mScrollInterpolator:Landroid/view/animation/Interpolator;

.field mScrollMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3f90624dd2f1a9fcL    # 0.016

    div-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, Lcom/android/launcher2/SmoothPagedView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/android/launcher2/SmoothPagedView;->mUsePagingTouchSlop:Z

    .line 86
    iget p2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    move p1, p3

    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher2/SmoothPagedView;->mDeferScrollUpdate:Z

    return-void
.end method

.method private snapToPageWithVelocity(IIZ)V
    .locals 4

    .line 130
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 132
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mCurrentPage:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->getChildOffset(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->getRelativeChildOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 134
    iget v2, p0, Lcom/android/launcher2/SmoothPagedView;->mUnboundedScrollX:I

    sub-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x64

    .line 137
    iget-object v3, p0, Lcom/android/launcher2/SmoothPagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/android/launcher2/SmoothPagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    if-eqz p3, :cond_1

    .line 142
    iget-object p3, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    check-cast p3, Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;

    invoke-virtual {p3, v0}, Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;->setDistance(I)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object p3, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    check-cast p3, Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;

    invoke-virtual {p3}, Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;->disableSettle()V

    .line 147
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_2

    int-to-float p3, v2

    int-to-float p2, p2

    .line 149
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mBaseLineFlingVelocity:F

    div-float/2addr p2, v0

    div-float p2, p3, p2

    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mFlingVelocityInfluence:F

    mul-float/2addr p2, v0

    add-float/2addr p3, p2

    float-to-int p2, p3

    goto :goto_1

    :cond_2
    add-int/lit8 p2, v2, 0x64

    .line 154
    :goto_1
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(III)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 168
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 169
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->computeScroll()V

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScrollHelper()Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mTouchState:I

    if-ne v0, v1, :cond_2

    .line 174
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    .line 175
    iget v1, p0, Lcom/android/launcher2/SmoothPagedView;->mSmoothingTime:F

    sub-float v1, v0, v1

    sget v2, Lcom/android/launcher2/SmoothPagedView;->SMOOTHING_CONSTANT:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 177
    iget v2, p0, Lcom/android/launcher2/SmoothPagedView;->mTouchX:F

    iget v3, p0, Lcom/android/launcher2/SmoothPagedView;->mUnboundedScrollX:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 178
    iget v3, p0, Lcom/android/launcher2/SmoothPagedView;->mUnboundedScrollX:I

    int-to-float v3, v3

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/SmoothPagedView;->scrollTo(II)V

    .line 179
    iput v0, p0, Lcom/android/launcher2/SmoothPagedView;->mSmoothingTime:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    if-gtz v0, :cond_1

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected getScrollMode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected init()V
    .locals 3

    .line 98
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->init()V

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getScrollMode()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    if-nez v0, :cond_0

    const v0, 0x451c4000    # 2500.0f

    .line 102
    iput v0, p0, Lcom/android/launcher2/SmoothPagedView;->mBaseLineFlingVelocity:F

    const v0, 0x3ecccccd    # 0.4f

    .line 103
    iput v0, p0, Lcom/android/launcher2/SmoothPagedView;->mFlingVelocityInfluence:F

    .line 104
    new-instance v0, Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;

    invoke-direct {v0}, Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 105
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScroller:Landroid/widget/Scroller;

    :cond_0
    return-void
.end method

.method protected snapToDestination()V
    .locals 2

    .line 111
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 112
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPageWithVelocity(II)V

    :goto_0
    return-void
.end method

.method protected snapToPage(I)V
    .locals 2

    .line 159
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 160
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher2/SmoothPagedView;->snapToPageWithVelocity(IIZ)V

    :goto_0
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 2

    .line 120
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView;->mScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 121
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 123
    invoke-direct {p0, p1, p2, v1}, Lcom/android/launcher2/SmoothPagedView;->snapToPageWithVelocity(IIZ)V

    :goto_0
    return-void
.end method
