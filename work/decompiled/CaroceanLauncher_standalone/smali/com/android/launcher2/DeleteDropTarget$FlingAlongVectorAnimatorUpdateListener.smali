.class Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "DeleteDropTarget.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DeleteDropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlingAlongVectorAnimatorUpdateListener"
.end annotation


# instance fields
.field private final mAlphaInterpolator:Landroid/animation/TimeInterpolator;

.field private mDragLayer:Lcom/android/launcher2/DragLayer;

.field private mFriction:F

.field private mFrom:Landroid/graphics/Rect;

.field private mHasOffsetForScale:Z

.field private mPrevTime:J

.field private mVelocity:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/DragLayer;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V
    .locals 2

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    .line 355
    iput-object p1, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 356
    iput-object p2, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    .line 357
    iput-object p3, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    .line 358
    iput-wide p4, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mPrevTime:J

    .line 359
    invoke-virtual {p1}, Lcom/android/launcher2/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p6

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFriction:F

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    .line 364
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragView;

    .line 365
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 366
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 368
    iget-boolean v3, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mHasOffsetForScale:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 369
    iput-boolean v3, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mHasOffsetForScale:Z

    .line 370
    invoke-virtual {v0}, Lcom/android/launcher2/DragView;->getScaleX()F

    move-result v3

    sub-float/2addr v3, v4

    .line 371
    invoke-virtual {v0}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 372
    invoke-virtual {v0}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v3, v7

    div-float/2addr v3, v6

    .line 374
    iget-object v6, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    float-to-int v5, v7

    iput v5, v6, Landroid/graphics/Rect;->left:I

    .line 375
    iget-object v5, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    float-to-int v3, v6

    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 378
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    iget-wide v7, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mPrevTime:J

    sub-long v7, v1, v7

    long-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/graphics/Rect;->left:I

    .line 379
    iget-object v3, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-wide v8, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mPrevTime:J

    sub-long v8, v1, v8

    long-to-float v8, v8

    mul-float/2addr v6, v8

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 381
    iget-object v3, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragView;->setTranslationX(F)V

    .line 382
    iget-object v3, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFrom:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/android/launcher2/DragView;->setTranslationY(F)V

    .line 383
    iget-object v3, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    sub-float/2addr v4, p1

    invoke-virtual {v0, v4}, Lcom/android/launcher2/DragView;->setAlpha(F)V

    .line 385
    iget-object p1, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFriction:F

    mul-float/2addr v0, v3

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 386
    iget-object p1, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mVelocity:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mFriction:F

    mul-float/2addr v0, v3

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 387
    iput-wide v1, p0, Lcom/android/launcher2/DeleteDropTarget$FlingAlongVectorAnimatorUpdateListener;->mPrevTime:J

    return-void
.end method
