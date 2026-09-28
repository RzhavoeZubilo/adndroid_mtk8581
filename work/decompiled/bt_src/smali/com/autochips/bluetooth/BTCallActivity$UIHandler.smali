.class Lcom/autochips/bluetooth/BTCallActivity$UIHandler;
.super Lcom/carocean/navicar/HandlerWeakReference;
.source "BTCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/BTCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/carocean/navicar/HandlerWeakReference<",
        "Lcom/autochips/bluetooth/BTCallActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/autochips/bluetooth/BTCallActivity;)V
    .locals 0

    .line 952
    invoke-direct {p0, p1}, Lcom/carocean/navicar/HandlerWeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 957
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity$UIHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/BTCallActivity;

    if-nez v0, :cond_0

    return-void

    .line 961
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x2711

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2712

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 967
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->updateID8Theme(I)V

    goto :goto_0

    .line 963
    :cond_2
    invoke-static {v0}, Lcom/autochips/bluetooth/BTCallActivity;->access$800(Lcom/autochips/bluetooth/BTCallActivity;)V

    const-wide/16 v0, 0x1f4

    .line 964
    invoke-virtual {p0, v2, v0, v1}, Lcom/autochips/bluetooth/BTCallActivity$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
