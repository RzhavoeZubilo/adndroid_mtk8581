.class Lcom/android/launcher2/DragView$1;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragView;-><init>(Lcom/android/launcher2/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragView;

.field final synthetic val$initialScale:F

.field final synthetic val$offsetX:F

.field final synthetic val$offsetY:F

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragView;FFFF)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    iput p2, p0, Lcom/android/launcher2/DragView$1;->val$offsetX:F

    iput p3, p0, Lcom/android/launcher2/DragView$1;->val$offsetY:F

    iput p4, p0, Lcom/android/launcher2/DragView$1;->val$initialScale:F

    iput p5, p0, Lcom/android/launcher2/DragView$1;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 91
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 93
    iget v1, p0, Lcom/android/launcher2/DragView$1;->val$offsetX:F

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-static {v2}, Lcom/android/launcher2/DragView;->access$000(Lcom/android/launcher2/DragView;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 94
    iget v2, p0, Lcom/android/launcher2/DragView$1;->val$offsetY:F

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-static {v3}, Lcom/android/launcher2/DragView;->access$100(Lcom/android/launcher2/DragView;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 96
    iget-object v3, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-static {v3}, Lcom/android/launcher2/DragView;->access$000(Lcom/android/launcher2/DragView;)F

    move-result v4

    int-to-float v1, v1

    add-float/2addr v4, v1

    invoke-static {v3, v4}, Lcom/android/launcher2/DragView;->access$002(Lcom/android/launcher2/DragView;F)F

    .line 97
    iget-object v3, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-static {v3}, Lcom/android/launcher2/DragView;->access$100(Lcom/android/launcher2/DragView;)F

    move-result v4

    int-to-float v2, v2

    add-float/2addr v4, v2

    invoke-static {v3, v4}, Lcom/android/launcher2/DragView;->access$102(Lcom/android/launcher2/DragView;F)F

    .line 98
    iget-object v3, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    iget v4, p0, Lcom/android/launcher2/DragView$1;->val$initialScale:F

    iget v5, p0, Lcom/android/launcher2/DragView$1;->val$scale:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DragView;->setScaleX(F)V

    .line 99
    iget-object v3, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    iget v4, p0, Lcom/android/launcher2/DragView$1;->val$initialScale:F

    iget v5, p0, Lcom/android/launcher2/DragView$1;->val$scale:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DragView;->setScaleY(F)V

    .line 100
    invoke-static {}, Lcom/android/launcher2/DragView;->access$200()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-static {}, Lcom/android/launcher2/DragView;->access$200()F

    move-result v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v0

    add-float/2addr v5, v4

    invoke-virtual {v3, v5}, Lcom/android/launcher2/DragView;->setAlpha(F)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-virtual {v0}, Lcom/android/launcher2/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 105
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-virtual {p1}, Lcom/android/launcher2/DragView;->getTranslationX()F

    move-result v0

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/launcher2/DragView;->setTranslationX(F)V

    .line 108
    iget-object p0, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-virtual {p0}, Lcom/android/launcher2/DragView;->getTranslationY()F

    move-result p1

    add-float/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/DragView;->setTranslationY(F)V

    :goto_0
    return-void
.end method
