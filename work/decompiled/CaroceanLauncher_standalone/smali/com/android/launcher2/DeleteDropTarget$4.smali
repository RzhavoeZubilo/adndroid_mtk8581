.class Lcom/android/launcher2/DeleteDropTarget$4;
.super Ljava/lang/Object;
.source "DeleteDropTarget.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeleteDropTarget;->createFlingToTrashAnimatorListener(Lcom/android/launcher2/DragLayer;Lcom/android/launcher2/DropTarget$DragObject;Landroid/graphics/PointF;Landroid/view/ViewConfiguration;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeleteDropTarget;

.field final synthetic val$dragLayer:Lcom/android/launcher2/DragLayer;

.field final synthetic val$scaleAlphaInterpolator:Landroid/animation/TimeInterpolator;

.field final synthetic val$x1:F

.field final synthetic val$x2:F

.field final synthetic val$x3:F

.field final synthetic val$y1:F

.field final synthetic val$y2:F

.field final synthetic val$y3:F


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeleteDropTarget;Lcom/android/launcher2/DragLayer;Landroid/animation/TimeInterpolator;FFFFFF)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/android/launcher2/DeleteDropTarget$4;->this$0:Lcom/android/launcher2/DeleteDropTarget;

    iput-object p2, p0, Lcom/android/launcher2/DeleteDropTarget$4;->val$dragLayer:Lcom/android/launcher2/DragLayer;

    iput-object p3, p0, Lcom/android/launcher2/DeleteDropTarget$4;->val$scaleAlphaInterpolator:Landroid/animation/TimeInterpolator;

    iput p4, p0, Lcom/android/launcher2/DeleteDropTarget$4;->val$x1:F

    iput p5, p0, Lcom/android/launcher2/DeleteDropTarget$4;->val$x2:F

    iput p6, p0, Lcom/android/launcher2/DeleteDropTarget$4;->val$x3:F

    iput p7, p0, Lcom/android/launcher2/DeleteDropTarget$4;->val$y1:F

    iput p8, p0, Lcom/android/launcher2/DeleteDropTarget$4;->val$y2:F

    iput p9, p0, Lcom/android/launcher2/DeleteDropTarget$4;->val$y3:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    .line 316
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget$4;->val$dragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragView;

    .line 317
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 318
    iget-object v1, p0, Lcom/android/launcher2/DeleteDropTarget$4;->val$scaleAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v1

    .line 319
    invoke-virtual {v0}, Lcom/android/launcher2/DragView;->getInitialScale()F

    move-result v2

    .line 321
    invoke-virtual {v0}, Lcom/android/launcher2/DragView;->getScaleX()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    .line 322
    invoke-virtual {v0}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 323
    invoke-virtual {v0}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v3, v7

    div-float/2addr v3, v6

    sub-float v7, v4, p1

    mul-float v8, v7, v7

    .line 324
    iget v9, p0, Lcom/android/launcher2/DeleteDropTarget$4;->val$x1:F

    sub-float/2addr v9, v5

    mul-float/2addr v9, v8

    mul-float/2addr v7, v6

    mul-float/2addr v7, p1

    iget v6, p0, Lcom/android/launcher2/DeleteDropTarget$4;->val$x2:F

    sub-float/2addr v6, v5

    mul-float/2addr v6, v7

    add-float/2addr v9, v6

    mul-float/2addr p1, p1

    iget v6, p0, Lcom/android/launcher2/DeleteDropTarget$4;->val$x3:F

    mul-float/2addr v6, p1

    add-float/2addr v9, v6

    .line 326
    iget v6, p0, Lcom/android/launcher2/DeleteDropTarget$4;->val$y1:F

    sub-float/2addr v6, v3

    mul-float/2addr v8, v6

    iget v3, p0, Lcom/android/launcher2/DeleteDropTarget$4;->val$y2:F

    sub-float/2addr v3, v5

    mul-float/2addr v7, v3

    add-float/2addr v8, v7

    iget p0, p0, Lcom/android/launcher2/DeleteDropTarget$4;->val$y3:F

    mul-float/2addr p1, p0

    add-float/2addr v8, p1

    .line 329
    invoke-virtual {v0, v9}, Lcom/android/launcher2/DragView;->setTranslationX(F)V

    .line 330
    invoke-virtual {v0, v8}, Lcom/android/launcher2/DragView;->setTranslationY(F)V

    sub-float/2addr v4, v1

    mul-float/2addr v2, v4

    .line 331
    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragView;->setScaleX(F)V

    .line 332
    invoke-virtual {v0, v2}, Lcom/android/launcher2/DragView;->setScaleY(F)V

    const/high16 p0, 0x3f000000    # 0.5f

    mul-float/2addr v4, p0

    add-float/2addr v4, p0

    .line 333
    invoke-virtual {v0, v4}, Lcom/android/launcher2/DragView;->setAlpha(F)V

    return-void
.end method
