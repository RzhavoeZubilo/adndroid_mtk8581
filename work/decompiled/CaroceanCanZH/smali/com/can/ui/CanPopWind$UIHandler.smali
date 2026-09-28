.class Lcom/can/ui/CanPopWind$UIHandler;
.super Lcom/carocean/navicar/HandlerWeakReference;
.source "CanPopWind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/CanPopWind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/carocean/navicar/HandlerWeakReference<",
        "Lcom/can/ui/CanPopWind;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/can/ui/CanPopWind;)V
    .locals 0

    .line 1014
    invoke-direct {p0, p1}, Lcom/carocean/navicar/HandlerWeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1019
    iget-object v0, p0, Lcom/can/ui/CanPopWind$UIHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/ui/CanPopWind;

    if-nez v0, :cond_0

    return-void

    .line 1023
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    .line 1024
    invoke-static {v0}, Lcom/can/ui/CanPopWind;->access$1200(Lcom/can/ui/CanPopWind;)Lcom/can/ui/draw/TouchScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/can/ui/draw/TouchScreen;->IsShow()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1025
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/can/ui/CanPopWind;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1026
    sget-object v2, Lcom/can/ui/CanPopWind;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mcu status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-static {v0}, Lcom/can/ui/CanPopWind;->access$1200(Lcom/can/ui/CanPopWind;)Lcom/can/ui/draw/TouchScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/can/ui/draw/TouchScreen;->appendLog(Ljava/lang/String;)V

    .line 1029
    invoke-static {v0}, Lcom/can/ui/CanPopWind;->access$1300(Lcom/can/ui/CanPopWind;)V

    goto :goto_2

    .line 1032
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1034
    invoke-static {v0}, Lcom/can/ui/CanPopWind;->access$1200(Lcom/can/ui/CanPopWind;)Lcom/can/ui/draw/TouchScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/can/ui/draw/TouchScreen;->IsShow()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1035
    invoke-static {v0}, Lcom/can/ui/CanPopWind;->access$1200(Lcom/can/ui/CanPopWind;)Lcom/can/ui/draw/TouchScreen;

    move-result-object v1

    const-string v2, "waiting"

    invoke-virtual {v1, v2}, Lcom/can/ui/draw/TouchScreen;->appendLog(Ljava/lang/String;)V

    .line 1037
    invoke-static {v0}, Lcom/can/ui/CanPopWind;->access$1300(Lcom/can/ui/CanPopWind;)V

    goto :goto_2

    .line 1040
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 1042
    invoke-static {v0}, Lcom/can/ui/CanPopWind;->access$300(Lcom/can/ui/CanPopWind;)I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 1043
    iget-object v1, v0, Lcom/can/ui/CanPopWind;->mObjHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/can/ui/CanPopWind;->mObjHandler:Landroid/os/Handler;

    const/16 v5, 0x40

    invoke-static {v0}, Lcom/can/ui/CanPopWind;->access$300(Lcom/can/ui/CanPopWind;)I

    move-result v6

    invoke-virtual {v4, v5, v6, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 1046
    invoke-static {v0}, Lcom/can/ui/CanPopWind;->access$1200(Lcom/can/ui/CanPopWind;)Lcom/can/ui/draw/TouchScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/can/ui/draw/TouchScreen;->IsShow()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    invoke-static {v0, v2}, Lcom/can/ui/CanPopWind;->access$1400(Lcom/can/ui/CanPopWind;Z)V

    .line 1048
    :cond_5
    :goto_2
    invoke-super {p0, p1}, Lcom/carocean/navicar/HandlerWeakReference;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
