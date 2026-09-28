.class Lcom/android/launcher2/FolderIcon$FolderRingAnimator$1;
.super Ljava/lang/Object;
.source "FolderIcon.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToAcceptState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

.field final synthetic val$previewSize:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;I)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$1;->this$0:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    iput p2, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$1;->val$previewSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 212
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 213
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$1;->this$0:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iget v3, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$1;->val$previewSize:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iput v1, v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mOuterRingSize:F

    .line 214
    iget-object v0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$1;->this$0:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    const v1, 0x3e19999a    # 0.15f

    mul-float/2addr p1, v1

    add-float/2addr p1, v2

    iget v1, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$1;->val$previewSize:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iput p1, v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->mInnerRingSize:F

    .line 215
    iget-object p1, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$1;->this$0:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-static {p1}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->access$100(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)Lcom/android/launcher2/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p0, p0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator$1;->this$0:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-static {p0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->access$100(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)Lcom/android/launcher2/CellLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    :cond_0
    return-void
.end method
