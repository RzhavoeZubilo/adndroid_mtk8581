.class Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher2/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderCreationAlarmListener"
.end annotation


# instance fields
.field cellX:I

.field cellY:I

.field layout:Lcom/android/launcher2/CellLayout;

.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;II)V
    .locals 0

    .line 3151
    iput-object p1, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3152
    iput-object p2, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher2/CellLayout;

    .line 3153
    iput p3, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->cellX:I

    .line 3154
    iput p4, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->cellY:I

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher2/Alarm;)V
    .locals 3

    .line 3158
    iget-object p1, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {p1}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3159
    iget-object p1, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    new-instance v0, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/FolderIcon;)V

    invoke-static {p1, v0}, Lcom/android/launcher2/Workspace;->access$702(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 3161
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {p1}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    move-result-object p1

    iget v0, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->cellX:I

    iget v1, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->cellY:I

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->setCell(II)V

    .line 3162
    iget-object p1, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {p1}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->setCellLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3163
    iget-object p1, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {p1}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToAcceptState()V

    .line 3164
    iget-object p1, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher2/CellLayout;

    iget-object v0, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/CellLayout;->showFolderAccept(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V

    .line 3165
    iget-object p1, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 3166
    iget-object p0, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    return-void
.end method
