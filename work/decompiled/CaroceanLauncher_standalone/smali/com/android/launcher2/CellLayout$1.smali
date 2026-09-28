.class Lcom/android/launcher2/CellLayout$1;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CellLayout;

.field final synthetic val$anim:Lcom/android/launcher2/InterruptibleInOutAnimator;

.field final synthetic val$thisIndex:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;I)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$1;->this$0:Lcom/android/launcher2/CellLayout;

    iput-object p2, p0, Lcom/android/launcher2/CellLayout$1;->val$anim:Lcom/android/launcher2/InterruptibleInOutAnimator;

    iput p3, p0, Lcom/android/launcher2/CellLayout$1;->val$thisIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$1;->val$anim:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$1;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v0}, Lcom/android/launcher2/CellLayout;->access$000(Lcom/android/launcher2/CellLayout;)[F

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/CellLayout$1;->val$thisIndex:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, v1

    .line 277
    iget-object p1, p0, Lcom/android/launcher2/CellLayout$1;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$100(Lcom/android/launcher2/CellLayout;)[Landroid/graphics/Rect;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher2/CellLayout$1;->val$thisIndex:I

    aget-object p0, v0, p0

    invoke-virtual {p1, p0}, Lcom/android/launcher2/CellLayout;->invalidate(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method
