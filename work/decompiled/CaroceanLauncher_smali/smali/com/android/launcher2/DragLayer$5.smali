.class Lcom/android/launcher2/DragLayer$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragLayer.java"


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

    .line 730
    iput-object p1, p0, Lcom/android/launcher2/DragLayer$5;->this$0:Lcom/android/launcher2/DragLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 732
    iget-object p1, p0, Lcom/android/launcher2/DragLayer$5;->this$0:Lcom/android/launcher2/DragLayer;

    invoke-static {p1}, Lcom/android/launcher2/DragLayer;->access$000(Lcom/android/launcher2/DragLayer;)Lcom/android/launcher2/DragView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 733
    iget-object p1, p0, Lcom/android/launcher2/DragLayer$5;->this$0:Lcom/android/launcher2/DragLayer;

    invoke-static {p1}, Lcom/android/launcher2/DragLayer;->access$400(Lcom/android/launcher2/DragLayer;)Lcom/android/launcher2/DragController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher2/DragLayer$5;->this$0:Lcom/android/launcher2/DragLayer;

    invoke-static {v0}, Lcom/android/launcher2/DragLayer;->access$000(Lcom/android/launcher2/DragLayer;)Lcom/android/launcher2/DragView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/DragController;->onDeferredEndDrag(Lcom/android/launcher2/DragView;)V

    .line 735
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/DragLayer$5;->this$0:Lcom/android/launcher2/DragLayer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher2/DragLayer;->access$002(Lcom/android/launcher2/DragLayer;Lcom/android/launcher2/DragView;)Lcom/android/launcher2/DragView;

    .line 736
    iget-object p0, p0, Lcom/android/launcher2/DragLayer$5;->this$0:Lcom/android/launcher2/DragLayer;

    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->invalidate()V

    return-void
.end method
