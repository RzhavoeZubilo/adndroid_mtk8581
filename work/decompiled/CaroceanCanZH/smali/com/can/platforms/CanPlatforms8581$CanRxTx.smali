.class Lcom/can/platforms/CanPlatforms8581$CanRxTx;
.super Ljava/lang/Object;
.source "CanPlatforms8581.java"

# interfaces
.implements Lcom/can/assist/Platforms$Can;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/platforms/CanPlatforms8581;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CanRxTx"
.end annotation


# instance fields
.field dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

.field private mDataLister:Lcom/can/assist/Platforms$Can$OnRxDataLister;

.field final synthetic this$0:Lcom/can/platforms/CanPlatforms8581;


# direct methods
.method private constructor <init>(Lcom/can/platforms/CanPlatforms8581;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/can/platforms/CanPlatforms8581$CanRxTx;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 559
    iput-object p1, p0, Lcom/can/platforms/CanPlatforms8581$CanRxTx;->mDataLister:Lcom/can/assist/Platforms$Can$OnRxDataLister;

    .line 619
    new-instance p1, Lcom/can/platforms/CanPlatforms8581$CanRxTx$1;

    invoke-direct {p1, p0}, Lcom/can/platforms/CanPlatforms8581$CanRxTx$1;-><init>(Lcom/can/platforms/CanPlatforms8581$CanRxTx;)V

    iput-object p1, p0, Lcom/can/platforms/CanPlatforms8581$CanRxTx;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/can/platforms/CanPlatforms8581;Lcom/can/platforms/CanPlatforms8581$1;)V
    .locals 0

    .line 558
    invoke-direct {p0, p1}, Lcom/can/platforms/CanPlatforms8581$CanRxTx;-><init>(Lcom/can/platforms/CanPlatforms8581;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/can/platforms/CanPlatforms8581$CanRxTx;)Lcom/can/assist/Platforms$Can$OnRxDataLister;
    .locals 0

    .line 558
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$CanRxTx;->mDataLister:Lcom/can/assist/Platforms$Can$OnRxDataLister;

    return-object p0
.end method

.method private initMcu(Landroid/content/Context;)V
    .locals 3

    .line 613
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/carocean/navicar/McuServiceManager;->initialize(Landroid/content/Context;Landroid/os/Looper;)V

    .line 614
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x12

    aput v2, v0, v1

    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$CanRxTx;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    invoke-virtual {p1, v0, p0}, Lcom/carocean/navicar/McuServiceManager;->regCallback([ILcom/carocean/navicar/McuServiceManager$DataListener;)V

    .line 615
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/carocean/navicar/McuServiceManager;->isServiceConnected()Z

    return-void
.end method


# virtual methods
.method public DeInit()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 570
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$CanRxTx;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    invoke-virtual {v0, p0}, Lcom/carocean/navicar/McuServiceManager;->unregCallback(Lcom/carocean/navicar/McuServiceManager$DataListener;)V

    return-void
.end method

.method public Init(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    invoke-direct {p0, p1}, Lcom/can/platforms/CanPlatforms8581$CanRxTx;->initMcu(Landroid/content/Context;)V

    return-void
.end method

.method public reboot([B)V
    .locals 0

    return-void
.end method

.method public sendData(I[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 588
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/carocean/navicar/McuServiceManager;->RPCGeneralRpcCall(I[B)V

    return-void
.end method

.method public setEnvironment(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x4

    new-array p0, p0, [B

    .line 577
    invoke-static {p1}, Lcom/can/tool/DataConvert;->Hi2Lo2Byte(I)[B

    move-result-object p1

    const/4 v0, 0x2

    .line 578
    aget-byte v1, p1, v0

    const/4 v2, 0x0

    aput-byte v1, p0, v2

    const/4 v1, 0x3

    .line 579
    aget-byte v3, p1, v1

    const/4 v4, 0x1

    aput-byte v3, p0, v4

    .line 580
    aget-byte v3, p1, v4

    aput-byte v3, p0, v0

    .line 581
    aget-byte p1, p1, v2

    aput-byte p1, p0, v1

    .line 582
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p0}, Lcom/carocean/navicar/McuServiceManager;->RPCGeneralRpcCall(I[B)V

    return-void
.end method

.method public setRxDataLister(Lcom/can/assist/Platforms$Can$OnRxDataLister;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/can/platforms/CanPlatforms8581$CanRxTx;->mDataLister:Lcom/can/assist/Platforms$Can$OnRxDataLister;

    return-void
.end method

.method public setRxReady()V
    .locals 3

    .line 603
    iget-object v0, p0, Lcom/can/platforms/CanPlatforms8581$CanRxTx;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {v0}, Lcom/can/platforms/CanPlatforms8581;->access$200(Lcom/can/platforms/CanPlatforms8581;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/can/platforms/CanPlatforms8581$CanRxTx;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {v1}, Lcom/can/platforms/CanPlatforms8581;->access$200(Lcom/can/platforms/CanPlatforms8581;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/can/ui/CanPopWind;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 605
    iget-object v1, p0, Lcom/can/platforms/CanPlatforms8581$CanRxTx;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {v1}, Lcom/can/platforms/CanPlatforms8581;->access$200(Lcom/can/platforms/CanPlatforms8581;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 606
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$CanRxTx;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p0}, Lcom/can/platforms/CanPlatforms8581;->access$700(Lcom/can/platforms/CanPlatforms8581;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "startService ACTION_CAN_UI_SERVICE"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 608
    :cond_0
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$CanRxTx;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p0}, Lcom/can/platforms/CanPlatforms8581;->access$700(Lcom/can/platforms/CanPlatforms8581;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "setRxReady mContext == null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
