.class Lcom/android/launcher2/Workspace$9;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$container:J

.field final synthetic val$item:Lcom/android/launcher2/ItemInfo;

.field final synthetic val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

.field final synthetic val$screen:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/PendingAddItemInfo;Lcom/android/launcher2/ItemInfo;JI)V
    .locals 0

    .line 3321
    iput-object p1, p0, Lcom/android/launcher2/Workspace$9;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$9;->val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$9;->val$item:Lcom/android/launcher2/ItemInfo;

    iput-wide p4, p0, Lcom/android/launcher2/Workspace$9;->val$container:J

    iput p6, p0, Lcom/android/launcher2/Workspace$9;->val$screen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 3326
    iget-object v0, p0, Lcom/android/launcher2/Workspace$9;->val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

    iget v0, v0, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    new-array v8, v0, [I

    const/4 v0, 0x0

    .line 3329
    iget-object v2, p0, Lcom/android/launcher2/Workspace$9;->val$item:Lcom/android/launcher2/ItemInfo;

    iget v2, v2, Lcom/android/launcher2/ItemInfo;->spanX:I

    aput v2, v8, v0

    .line 3330
    iget-object v0, p0, Lcom/android/launcher2/Workspace$9;->val$item:Lcom/android/launcher2/ItemInfo;

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    aput v0, v8, v1

    .line 3331
    iget-object v0, p0, Lcom/android/launcher2/Workspace$9;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher2/Workspace$9;->val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

    move-object v3, v0

    check-cast v3, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget-wide v4, p0, Lcom/android/launcher2/Workspace$9;->val$container:J

    iget v6, p0, Lcom/android/launcher2/Workspace$9;->val$screen:I

    iget-object p0, p0, Lcom/android/launcher2/Workspace$9;->this$0:Lcom/android/launcher2/Workspace;

    .line 3332
    invoke-static {p0}, Lcom/android/launcher2/Workspace;->access$800(Lcom/android/launcher2/Workspace;)[I

    move-result-object v7

    const/4 v9, 0x0

    .line 3331
    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher2/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher2/PendingAddWidgetInfo;JI[I[I[I)V

    goto :goto_0

    .line 3339
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher2/Workspace$9;->val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

    iget p0, p0, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3335
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace$9;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/Workspace$9;->val$pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;

    iget-object v2, v0, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iget-wide v3, p0, Lcom/android/launcher2/Workspace$9;->val$container:J

    iget v5, p0, Lcom/android/launcher2/Workspace$9;->val$screen:I

    iget-object p0, p0, Lcom/android/launcher2/Workspace$9;->this$0:Lcom/android/launcher2/Workspace;

    .line 3336
    invoke-static {p0}, Lcom/android/launcher2/Workspace;->access$800(Lcom/android/launcher2/Workspace;)[I

    move-result-object v6

    const/4 v7, 0x0

    .line 3335
    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher2/Launcher;->processShortcutFromDrop(Landroid/content/ComponentName;JI[I[I)V

    :goto_0
    return-void
.end method
