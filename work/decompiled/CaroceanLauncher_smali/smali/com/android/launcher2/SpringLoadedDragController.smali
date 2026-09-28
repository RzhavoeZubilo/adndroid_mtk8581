.class public Lcom/android/launcher2/SpringLoadedDragController;
.super Ljava/lang/Object;
.source "SpringLoadedDragController.java"

# interfaces
.implements Lcom/android/launcher2/OnAlarmListener;


# instance fields
.field final ENTER_SPRING_LOAD_CANCEL_HOVER_TIME:J

.field final ENTER_SPRING_LOAD_HOVER_TIME:J

.field final EXIT_SPRING_LOAD_HOVER_TIME:J

.field mAlarm:Lcom/android/launcher2/Alarm;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mScreen:Lcom/android/launcher2/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    .line 21
    iput-wide v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->ENTER_SPRING_LOAD_HOVER_TIME:J

    const-wide/16 v0, 0x3b6

    .line 22
    iput-wide v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->ENTER_SPRING_LOAD_CANCEL_HOVER_TIME:J

    const-wide/16 v0, 0xc8

    .line 23
    iput-wide v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->EXIT_SPRING_LOAD_HOVER_TIME:J

    .line 32
    iput-object p1, p0, Lcom/android/launcher2/SpringLoadedDragController;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 33
    new-instance p1, Lcom/android/launcher2/Alarm;

    invoke-direct {p1}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/SpringLoadedDragController;->mAlarm:Lcom/android/launcher2/Alarm;

    .line 34
    invoke-virtual {p1, p0}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    return-void
.end method

.method public onAlarm(Lcom/android/launcher2/Alarm;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/android/launcher2/SpringLoadedDragController;->mScreen:Lcom/android/launcher2/CellLayout;

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/android/launcher2/SpringLoadedDragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object p1

    .line 54
    iget-object p0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mScreen:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p1, p0}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result p0

    .line 55
    invoke-virtual {p1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    if-eq p0, v0, :cond_1

    .line 56
    invoke-virtual {p1, p0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getDragController()Lcom/android/launcher2/DragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAlarm(Lcom/android/launcher2/CellLayout;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 44
    iget-object v0, p0, Lcom/android/launcher2/SpringLoadedDragController;->mAlarm:Lcom/android/launcher2/Alarm;

    if-nez p1, :cond_0

    const-wide/16 v1, 0x3b6

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1f4

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 46
    iput-object p1, p0, Lcom/android/launcher2/SpringLoadedDragController;->mScreen:Lcom/android/launcher2/CellLayout;

    return-void
.end method
