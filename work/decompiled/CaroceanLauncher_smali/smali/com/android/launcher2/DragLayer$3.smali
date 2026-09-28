.class Lcom/android/launcher2/DragLayer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragLayer;->animateView(Lcom/android/launcher2/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragLayer;

.field final synthetic val$animationEndStyle:I

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragLayer;Ljava/lang/Runnable;I)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/android/launcher2/DragLayer$3;->this$0:Lcom/android/launcher2/DragLayer;

    iput-object p2, p0, Lcom/android/launcher2/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/launcher2/DragLayer$3;->val$animationEndStyle:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 684
    iget-object p1, p0, Lcom/android/launcher2/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 685
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 687
    :cond_0
    iget p1, p0, Lcom/android/launcher2/DragLayer$3;->val$animationEndStyle:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 692
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/DragLayer$3;->this$0:Lcom/android/launcher2/DragLayer;

    invoke-static {p0}, Lcom/android/launcher2/DragLayer;->access$300(Lcom/android/launcher2/DragLayer;)V

    goto :goto_0

    .line 689
    :cond_2
    iget-object p0, p0, Lcom/android/launcher2/DragLayer$3;->this$0:Lcom/android/launcher2/DragLayer;

    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->clearAnimatedView()V

    :goto_0
    return-void
.end method
