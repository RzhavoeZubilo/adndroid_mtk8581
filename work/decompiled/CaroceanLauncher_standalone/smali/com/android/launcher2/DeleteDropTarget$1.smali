.class Lcom/android/launcher2/DeleteDropTarget$1;
.super Ljava/lang/Object;
.source "DeleteDropTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DeleteDropTarget;->animateToTrashAndCompleteDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeleteDropTarget;

.field final synthetic val$d:Lcom/android/launcher2/DropTarget$DragObject;


# direct methods
.method constructor <init>(Lcom/android/launcher2/DeleteDropTarget;Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/launcher2/DeleteDropTarget$1;->this$0:Lcom/android/launcher2/DeleteDropTarget;

    iput-object p2, p0, Lcom/android/launcher2/DeleteDropTarget$1;->val$d:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget$1;->this$0:Lcom/android/launcher2/DeleteDropTarget;

    iget-object v0, v0, Lcom/android/launcher2/DeleteDropTarget;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    invoke-virtual {v0}, Lcom/android/launcher2/SearchDropTargetBar;->onDragEnd()V

    .line 232
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget$1;->this$0:Lcom/android/launcher2/DeleteDropTarget;

    iget-object v0, v0, Lcom/android/launcher2/DeleteDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragMode()V

    .line 233
    iget-object v0, p0, Lcom/android/launcher2/DeleteDropTarget$1;->this$0:Lcom/android/launcher2/DeleteDropTarget;

    iget-object p0, p0, Lcom/android/launcher2/DeleteDropTarget$1;->val$d:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-static {v0, p0}, Lcom/android/launcher2/DeleteDropTarget;->access$000(Lcom/android/launcher2/DeleteDropTarget;Lcom/android/launcher2/DropTarget$DragObject;)V

    return-void
.end method
