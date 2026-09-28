.class Lcom/android/launcher2/DragLayer$4;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragLayer;->fadeOutDragView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragLayer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragLayer;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/android/launcher2/DragLayer$4;->this$0:Lcom/android/launcher2/DragLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 724
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 727
    iget-object p0, p0, Lcom/android/launcher2/DragLayer$4;->this$0:Lcom/android/launcher2/DragLayer;

    invoke-static {p0}, Lcom/android/launcher2/DragLayer;->access$000(Lcom/android/launcher2/DragLayer;)Lcom/android/launcher2/DragView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragView;->setAlpha(F)V

    return-void
.end method
