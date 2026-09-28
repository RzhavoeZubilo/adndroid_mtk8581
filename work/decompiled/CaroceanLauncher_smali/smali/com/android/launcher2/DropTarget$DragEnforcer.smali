.class public Lcom/android/launcher2/DropTarget$DragEnforcer;
.super Ljava/lang/Object;
.source "DropTarget.java"

# interfaces
.implements Lcom/android/launcher2/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragEnforcer"
.end annotation


# instance fields
.field dragParity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    .line 74
    check-cast p1, Lcom/android/launcher2/Launcher;

    .line 75
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getDragController()Lcom/android/launcher2/DragController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 2

    .line 101
    iget v0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragExit: Drag contract violated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DropTarget"

    invoke-static {v0, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method onDragEnter()V
    .locals 2

    .line 79
    iget v0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    if-eq v0, v1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragEnter: Drag contract violated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DropTarget"

    invoke-static {v0, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method onDragExit()V
    .locals 2

    .line 86
    iget v0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragExit: Drag contract violated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DropTarget"

    invoke-static {v0, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 0

    .line 94
    iget p1, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    if-eqz p1, :cond_0

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onDragEnter: Drag contract violated: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher2/DropTarget$DragEnforcer;->dragParity:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DropTarget"

    invoke-static {p1, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
