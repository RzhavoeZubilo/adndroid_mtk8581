.class Lcom/autochips/bluetooth/MainActivity$UIHandler;
.super Lcom/carocean/navicar/HandlerWeakReference;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/carocean/navicar/HandlerWeakReference<",
        "Lcom/autochips/bluetooth/MainActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/autochips/bluetooth/MainActivity;)V
    .locals 0

    .line 729
    invoke-direct {p0, p1}, Lcom/carocean/navicar/HandlerWeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 734
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity$UIHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/MainActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x2710

    .line 738
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_1

    .line 739
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/MainActivity;->updateID8Theme(I)V

    :cond_1
    return-void
.end method
