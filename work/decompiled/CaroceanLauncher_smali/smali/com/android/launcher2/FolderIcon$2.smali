.class Lcom/android/launcher2/FolderIcon$2;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderIcon;

.field final synthetic val$finalParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

.field final synthetic val$reverse:Z

.field final synthetic val$transX0:F

.field final synthetic val$transY0:F


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderIcon;ZFLcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;F)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/android/launcher2/FolderIcon$2;->this$0:Lcom/android/launcher2/FolderIcon;

    iput-boolean p2, p0, Lcom/android/launcher2/FolderIcon$2;->val$reverse:Z

    iput p3, p0, Lcom/android/launcher2/FolderIcon$2;->val$transX0:F

    iput-object p4, p0, Lcom/android/launcher2/FolderIcon$2;->val$finalParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iput p5, p0, Lcom/android/launcher2/FolderIcon$2;->val$transY0:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 596
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 597
    iget-boolean v0, p0, Lcom/android/launcher2/FolderIcon$2;->val$reverse:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    sub-float p1, v1, p1

    .line 599
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$2;->this$0:Lcom/android/launcher2/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher2/FolderIcon;->access$200(Lcom/android/launcher2/FolderIcon;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$2;->this$0:Lcom/android/launcher2/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher2/FolderIcon;->access$400(Lcom/android/launcher2/FolderIcon;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher2/FolderIcon$2;->val$transX0:F

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon$2;->val$finalParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v4, p0, Lcom/android/launcher2/FolderIcon$2;->val$transX0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v0, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 603
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$2;->this$0:Lcom/android/launcher2/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher2/FolderIcon;->access$400(Lcom/android/launcher2/FolderIcon;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher2/FolderIcon$2;->val$transY0:F

    iget-object v3, p0, Lcom/android/launcher2/FolderIcon$2;->val$finalParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v3, v3, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v4, p0, Lcom/android/launcher2/FolderIcon$2;->val$transY0:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v0, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 604
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$2;->this$0:Lcom/android/launcher2/FolderIcon;

    invoke-static {v0}, Lcom/android/launcher2/FolderIcon;->access$400(Lcom/android/launcher2/FolderIcon;)Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/FolderIcon$2;->val$finalParams:Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    sub-float/2addr v2, v1

    mul-float/2addr p1, v2

    add-float/2addr p1, v1

    iput p1, v0, Lcom/android/launcher2/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 605
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon$2;->this$0:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIcon;->invalidate()V

    return-void
.end method
