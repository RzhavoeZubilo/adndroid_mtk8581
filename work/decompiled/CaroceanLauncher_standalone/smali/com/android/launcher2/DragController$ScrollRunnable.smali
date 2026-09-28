.class Lcom/android/launcher2/DragController$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/android/launcher2/DragController;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragController;)V
    .locals 0

    .line 841
    iput-object p1, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    invoke-static {v0}, Lcom/android/launcher2/DragController;->access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 846
    iget v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    invoke-static {v0}, Lcom/android/launcher2/DragController;->access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/DragScroller;->scrollLeft()V

    goto :goto_0

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    invoke-static {v0}, Lcom/android/launcher2/DragController;->access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/DragScroller;->scrollRight()V

    .line 851
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/DragController;->access$102(Lcom/android/launcher2/DragController;I)I

    .line 852
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    invoke-static {v0, v1}, Lcom/android/launcher2/DragController;->access$202(Lcom/android/launcher2/DragController;I)I

    .line 853
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    invoke-static {v0}, Lcom/android/launcher2/DragController;->access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher2/DragScroller;->onExitScrollArea()Z

    .line 854
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    invoke-static {v0}, Lcom/android/launcher2/DragController;->access$300(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->onExitScrollArea()V

    .line 856
    iget-object v0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 858
    iget-object p0, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->this$0:Lcom/android/launcher2/DragController;

    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->forceMoveEvent()V

    :cond_1
    return-void
.end method

.method setDirection(I)V
    .locals 0

    .line 864
    iput p1, p0, Lcom/android/launcher2/DragController$ScrollRunnable;->mDirection:I

    return-void
.end method
