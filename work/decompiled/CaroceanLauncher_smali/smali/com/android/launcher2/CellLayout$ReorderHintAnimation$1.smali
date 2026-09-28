.class Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayout$ReorderHintAnimation;)V
    .locals 0

    .line 2377
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 2380
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2381
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget v0, v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget v2, v2, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->initDeltaX:F

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 2382
    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget v2, v2, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget v3, v3, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->initDeltaY:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    .line 2383
    iget-object v3, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget-object v3, v3, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 2384
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget-object v0, v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2385
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget v0, v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->finalScale:F

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget v0, v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->initScale:F

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    .line 2386
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget-object v0, v0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 2387
    iget-object p0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$1;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget-object p0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
