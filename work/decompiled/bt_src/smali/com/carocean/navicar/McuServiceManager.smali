.class public Lcom/carocean/navicar/McuServiceManager;
.super Ljava/lang/Object;
.source "McuServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/carocean/navicar/McuServiceManager$DataListener;,
        Lcom/carocean/navicar/McuServiceManager$MsgHandler;
    }
.end annotation


# static fields
.field static final ACTION_MCU_SERVER:Ljava/lang/String; = "com.carocean.mcuservice"

.field public static final BUNDLE_COM_PORT:Ljava/lang/String; = "com_port"

.field public static final BUNDLE_EQ_DATA:Ljava/lang/String; = "eq_data"

.field public static final BUNDLE_GENERAL_RPC_CALL_DATA:Ljava/lang/String; = "g_rpc_call_data"

.field public static final BUNDLE_KEY_CMDCODE:Ljava/lang/String; = "cmdcode"

.field public static final BUNDLE_KEY_DATA:Ljava/lang/String; = "data"

.field public static final BUNDLE_KEY_TABLE:Ljava/lang/String; = "table"

.field public static final CMD_CODE_SERVICE_CONNECTED:I = 0xff

.field private static final ERR_SERVICE_NOT_CONNECTED:Ljava/lang/String; = "Mcu service not connected. call RPCXXX() after connecting service successfully."

.field public static final MCU_RPC_MAX_MSGID:I = 0x64

.field public static final MSG_CLOSE_COM_PORT:I = 0x103

.field public static final MSG_GENERAL_RPC_CALL:I = 0x63

.field public static final MSG_GET_MCU_STATUS:I = 0x3

.field public static final MSG_GET_MCU_VOLUME_TABLE:I = 0x5

.field public static final MSG_INIT_COM_PORT:I = 0xff

.field public static final MSG_KEY_COMMAND:I = 0xa

.field public static final MSG_REG_CALLBACK:I = 0x100

.field public static final MSG_REPLY_TO_CALLBACK:I = 0x102

.field public static final MSG_SET_DDR_FLAG:I = 0x21

.field public static final MSG_SET_EQ_DATA:I = 0xf

.field public static final MSG_SET_GPS_GUIDANCE_MIXING:I = 0x11

.field public static final MSG_SET_GPS_GUIDANCE_PLAY:I = 0x10

.field public static final MSG_SET_MAP_GPIO_STATUS:I = 0x1f

.field public static final MSG_SET_MCU_VOLUME:I = 0x20

.field public static final MSG_SET_MCU_VOLUME_TABLE:I = 0x6

.field public static final MSG_SET_MCU_VOLUME_TABLE_DSP:I = 0x1e

.field public static final MSG_SET_RADIO2_FREQ:I = 0x14

.field public static final MSG_SET_SOURCE_ID:I = 0x4

.field public static final MSG_SET_SWC_STUDY_OP:I = 0xc

.field public static final MSG_SET_SWC_TABLE:I = 0xb

.field public static final MSG_UNREG_CALLBACK:I = 0x101

.field static final TAG:Ljava/lang/String; = "McuServiceManager"

.field static mInstance:Lcom/carocean/navicar/McuServiceManager;


# instance fields
.field private mBounded:Z

.field private mContext:Landroid/content/Context;

.field private mDataCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashSet<",
            "Lcom/carocean/navicar/McuServiceManager$DataListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsMcuUpgrading:Z

.field private mMessenger:Landroid/os/Messenger;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private myHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/carocean/navicar/McuServiceManager;->mIsMcuUpgrading:Z

    .line 311
    new-instance v0, Lcom/carocean/navicar/McuServiceManager$2;

    invoke-direct {v0, p0}, Lcom/carocean/navicar/McuServiceManager$2;-><init>(Lcom/carocean/navicar/McuServiceManager;)V

    iput-object v0, p0, Lcom/carocean/navicar/McuServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 356
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/carocean/navicar/McuServiceManager;->mDataCallbacks:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/carocean/navicar/McuServiceManager;)Landroid/util/SparseArray;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/carocean/navicar/McuServiceManager;->mDataCallbacks:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/carocean/navicar/McuServiceManager;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/carocean/navicar/McuServiceManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lcom/carocean/navicar/McuServiceManager;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/carocean/navicar/McuServiceManager;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$202(Lcom/carocean/navicar/McuServiceManager;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/carocean/navicar/McuServiceManager;->mIsMcuUpgrading:Z

    return p1
.end method

.method static synthetic access$302(Lcom/carocean/navicar/McuServiceManager;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/carocean/navicar/McuServiceManager;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$402(Lcom/carocean/navicar/McuServiceManager;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/carocean/navicar/McuServiceManager;->mBounded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/carocean/navicar/McuServiceManager;[IZ)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/carocean/navicar/McuServiceManager;->regCmdCodesToMcuService([IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/carocean/navicar/McuServiceManager;)Landroid/content/ServiceConnection;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/carocean/navicar/McuServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static getInstance()Lcom/carocean/navicar/McuServiceManager;
    .locals 2

    .line 226
    sget-object v0, Lcom/carocean/navicar/McuServiceManager;->mInstance:Lcom/carocean/navicar/McuServiceManager;

    if-nez v0, :cond_0

    .line 227
    const-class v0, Lcom/carocean/navicar/McuServiceManager;

    monitor-enter v0

    .line 228
    :try_start_0
    new-instance v1, Lcom/carocean/navicar/McuServiceManager;

    invoke-direct {v1}, Lcom/carocean/navicar/McuServiceManager;-><init>()V

    sput-object v1, Lcom/carocean/navicar/McuServiceManager;->mInstance:Lcom/carocean/navicar/McuServiceManager;

    .line 229
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 232
    :cond_0
    :goto_0
    sget-object v0, Lcom/carocean/navicar/McuServiceManager;->mInstance:Lcom/carocean/navicar/McuServiceManager;

    return-object v0
.end method

.method private regCmdCodesToMcuService([IZ)V
    .locals 2

    if-eqz p2, :cond_0

    const/16 p2, 0x100

    goto :goto_0

    :cond_0
    const/16 p2, 0x101

    :goto_0
    const/4 v0, 0x0

    .line 442
    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    .line 443
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "cmdcode"

    .line 444
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 445
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 446
    iget-object p1, p0, Lcom/carocean/navicar/McuServiceManager;->mMessenger:Landroid/os/Messenger;

    iput-object p1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 447
    invoke-direct {p0, p2}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 470
    :try_start_0
    iget-boolean v0, p0, Lcom/carocean/navicar/McuServiceManager;->mBounded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/carocean/navicar/McuServiceManager;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_2

    .line 471
    iget-boolean v0, p0, Lcom/carocean/navicar/McuServiceManager;->mIsMcuUpgrading:Z

    if-eqz v0, :cond_1

    .line 472
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0xc4

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0xc6

    if-eq v0, v1, :cond_1

    .line 473
    :cond_0
    sget-object v0, Lcom/carocean/navicar/McuServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mcu is upgrading, ignore msg: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/carocean/navicar/McuServiceManager;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0

    .line 479
    :cond_2
    sget-object v0, Lcom/carocean/navicar/McuServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mcu service not connected. call RPCXXX() after connecting service successfully.msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 482
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public RPCGeneralRpcCall(I[B)V
    .locals 3

    if-eqz p2, :cond_0

    .line 636
    array-length v0, p2

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 637
    sget-object v0, Lcom/carocean/navicar/McuServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "RPCGeneralRpcCall could not send data which\'s length over 255 byes. This call may be fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x63

    .line 639
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 640
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_1

    const-string v2, "g_rpc_call_data"

    .line 642
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 644
    :cond_1
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 645
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 646
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public RPCGetMcuStatus()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 517
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 518
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public RPCGetMcuVolumeTable()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 525
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 526
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public RPCKeyCommand(II)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 507
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 508
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 509
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 510
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public RPCSetDDRFlag()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x21

    .line 678
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 679
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public RPCSetEQData([B)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x14

    .line 564
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 565
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "eq_data"

    .line 566
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 567
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public RPCSetGPSGuidanceMixing(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x11

    .line 583
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 584
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 585
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public RPCSetGPSGuidancePlay(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x10

    .line 574
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 575
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 576
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public RPCSetMCUVolume(ZIII)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x20

    .line 623
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p3, p3, 0x8

    const v1, 0xff00

    and-int/2addr p3, v1

    add-int/2addr p2, p3

    shl-int/lit8 p3, p4, 0x10

    const/high16 p4, 0xff0000

    and-int/2addr p3, p4

    add-int/2addr p2, p3

    shl-int/lit8 p1, p1, 0x18

    const/high16 p3, -0x1000000

    and-int/2addr p1, p3

    add-int/2addr p2, p1

    .line 624
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 626
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public RPCSetMCUVolumeTable(IIIZI)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1e

    .line 608
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p2, p2, 0x8

    const v1, 0xff00

    and-int/2addr p2, v1

    add-int/2addr p1, p2

    shl-int/lit8 p2, p3, 0x10

    const/high16 p3, 0xff0000

    and-int/2addr p2, p3

    add-int/2addr p1, p2

    shl-int/lit8 p2, p4, 0x18

    const/high16 p3, -0x1000000

    and-int/2addr p2, p3

    add-int/2addr p1, p2

    .line 609
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 611
    iput p5, v0, Landroid/os/Message;->arg2:I

    .line 612
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public RPCSetMapGPIOStatus(III)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1f

    .line 672
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p2, p2, 0x8

    const v1, 0xff00

    and-int/2addr p2, v1

    add-int/2addr p1, p2

    shl-int/lit8 p2, p3, 0x10

    const/high16 p3, 0xff0000

    and-int/2addr p2, p3

    add-int/2addr p1, p2

    .line 673
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 674
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public RPCSetMcuVolumeTable(IZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 533
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 534
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 535
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 536
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public RPCSetRadio2Freq(II)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x14

    .line 592
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 593
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 594
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 595
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public RPCSetSWCStudyOP(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc

    .line 555
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 556
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 557
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public RPCSetSWCTable([B)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 543
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 544
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "table"

    .line 545
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 546
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 547
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public RPCSetSourceID(II)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 494
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 495
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 496
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 497
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public RPCSetTime2MCU()V
    .locals 5

    .line 651
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 652
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    const/16 v1, 0xa

    new-array v1, v1, [B

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 658
    iget v2, v0, Landroid/text/format/Time;->year:I

    const/4 v4, 0x1

    invoke-static {v2, v1, v4}, Lcom/carocean/navicar/NaviUtil$DateTimeUtils;->Int2BCD(I[BI)I

    .line 659
    iget v2, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v2, v4

    const/4 v4, 0x3

    invoke-static {v2, v1, v4}, Lcom/carocean/navicar/NaviUtil$DateTimeUtils;->Int2BCD(I[BI)I

    .line 660
    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    const/4 v4, 0x4

    invoke-static {v2, v1, v4}, Lcom/carocean/navicar/NaviUtil$DateTimeUtils;->Int2BCD(I[BI)I

    .line 661
    iget v2, v0, Landroid/text/format/Time;->hour:I

    const/4 v4, 0x5

    invoke-static {v2, v1, v4}, Lcom/carocean/navicar/NaviUtil$DateTimeUtils;->Int2BCD(I[BI)I

    .line 662
    iget v2, v0, Landroid/text/format/Time;->minute:I

    const/4 v4, 0x6

    invoke-static {v2, v1, v4}, Lcom/carocean/navicar/NaviUtil$DateTimeUtils;->Int2BCD(I[BI)I

    .line 663
    iget v0, v0, Landroid/text/format/Time;->second:I

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/carocean/navicar/NaviUtil$DateTimeUtils;->Int2BCD(I[BI)I

    const/16 v0, 0x8

    aput-byte v3, v1, v0

    const/16 v0, 0x9

    aput-byte v3, v1, v0

    const/16 v0, 0xb8

    .line 668
    invoke-virtual {p0, v0, v1}, Lcom/carocean/navicar/McuServiceManager;->RPCGeneralRpcCall(I[B)V

    return-void
.end method

.method public closeMcuComPort()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x103

    .line 460
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 461
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 302
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 304
    iget-boolean v0, p0, Lcom/carocean/navicar/McuServiceManager;->mBounded:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/carocean/navicar/McuServiceManager;->release()V

    .line 306
    sget-object v0, Lcom/carocean/navicar/McuServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "Please call release() to unbind service before exit."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public initMcuComPort(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xff

    .line 451
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 452
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 453
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com_port"

    .line 454
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 456
    invoke-direct {p0, v0}, Lcom/carocean/navicar/McuServiceManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 243
    iget-object v0, p0, Lcom/carocean/navicar/McuServiceManager;->mContext:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    .line 244
    sget-object p1, Lcom/carocean/navicar/McuServiceManager;->TAG:Ljava/lang/String;

    const-string p2, "Don\'t call initialize multiple times."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 249
    new-instance p2, Lcom/carocean/navicar/McuServiceManager$MsgHandler;

    invoke-direct {p2, p0}, Lcom/carocean/navicar/McuServiceManager$MsgHandler;-><init>(Lcom/carocean/navicar/McuServiceManager;)V

    iput-object p2, p0, Lcom/carocean/navicar/McuServiceManager;->myHandler:Landroid/os/Handler;

    goto :goto_0

    .line 251
    :cond_1
    new-instance v0, Lcom/carocean/navicar/McuServiceManager$MsgHandler;

    invoke-direct {v0, p0, p2}, Lcom/carocean/navicar/McuServiceManager$MsgHandler;-><init>(Lcom/carocean/navicar/McuServiceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/carocean/navicar/McuServiceManager;->myHandler:Landroid/os/Handler;

    .line 253
    :goto_0
    new-instance p2, Landroid/os/Messenger;

    iget-object v0, p0, Lcom/carocean/navicar/McuServiceManager;->myHandler:Landroid/os/Handler;

    invoke-direct {p2, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/carocean/navicar/McuServiceManager;->mMessenger:Landroid/os/Messenger;

    .line 254
    iput-object p1, p0, Lcom/carocean/navicar/McuServiceManager;->mContext:Landroid/content/Context;

    .line 255
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.carocean.mcuservice"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.carocean.mcuserver"

    .line 256
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object p2, p0, Lcom/carocean/navicar/McuServiceManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/carocean/navicar/McuServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 261
    iget-object p1, p0, Lcom/carocean/navicar/McuServiceManager;->mContext:Landroid/content/Context;

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, -0x1

    const-string v0, "content://com.carocean.status.provider/sys"

    const-string v2, "SYS_MCU_UPGRADING"

    .line 261
    invoke-static {v0, p1, v2, p2}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/carocean/navicar/McuServiceManager;->mIsMcuUpgrading:Z

    .line 264
    iget-object p1, p0, Lcom/carocean/navicar/McuServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "content://com.carocean.status.provider/sys/SYS_MCU_UPGRADING"

    .line 265
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 266
    new-instance v0, Lcom/carocean/navicar/McuServiceManager$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/carocean/navicar/McuServiceManager$1;-><init>(Lcom/carocean/navicar/McuServiceManager;Landroid/os/Handler;)V

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public isServiceConnected()Z
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/carocean/navicar/McuServiceManager;->mBounded:Z

    return v0
.end method

.method public declared-synchronized regCallback([ILcom/carocean/navicar/McuServiceManager$DataListener;)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_4

    .line 365
    :try_start_0
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 370
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    .line 372
    iget-object v4, p0, Lcom/carocean/navicar/McuServiceManager;->mDataCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    if-nez v4, :cond_1

    .line 374
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 377
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_1
    invoke-virtual {v4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v5, p0, Lcom/carocean/navicar/McuServiceManager;->mDataCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Lcom/carocean/navicar/McuServiceManager;->isServiceConnected()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 387
    invoke-static {v0}, Lcom/carocean/navicar/NaviUtil;->toIntArray(Ljava/util/List;)[I

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/carocean/navicar/McuServiceManager;->regCmdCodesToMcuService([IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :cond_3
    monitor-exit p0

    return-void

    .line 366
    :cond_4
    :goto_1
    :try_start_1
    sget-object p1, Lcom/carocean/navicar/McuServiceManager;->TAG:Ljava/lang/String;

    const-string p2, "cmdcode[] could not be null, not implemented yet."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public release()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/carocean/navicar/McuServiceManager;->mDataCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/carocean/navicar/McuServiceManager;->unregAllCallbacks()V

    .line 290
    sget-object v0, Lcom/carocean/navicar/McuServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "pls unregister all callbacks before release call."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    iget-boolean v0, p0, Lcom/carocean/navicar/McuServiceManager;->mBounded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/carocean/navicar/McuServiceManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 294
    iget-object v1, p0, Lcom/carocean/navicar/McuServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/carocean/navicar/McuServiceManager;->mBounded:Z

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/carocean/navicar/McuServiceManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public declared-synchronized unregAllCallbacks()V
    .locals 4

    monitor-enter p0

    .line 423
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 424
    :goto_0
    iget-object v3, p0, Lcom/carocean/navicar/McuServiceManager;->mDataCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 425
    iget-object v3, p0, Lcom/carocean/navicar/McuServiceManager;->mDataCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    :cond_0
    iget-object v2, p0, Lcom/carocean/navicar/McuServiceManager;->mDataCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 430
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 431
    invoke-static {v0}, Lcom/carocean/navicar/NaviUtil;->toIntArray(Ljava/util/List;)[I

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/carocean/navicar/McuServiceManager;->regCmdCodesToMcuService([IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregCallback(Lcom/carocean/navicar/McuServiceManager$DataListener;)V
    .locals 4
    .param p1    # Lcom/carocean/navicar/McuServiceManager$DataListener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    monitor-enter p0

    .line 398
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    iget-object v1, p0, Lcom/carocean/navicar/McuServiceManager;->mDataCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 400
    iget-object v2, p0, Lcom/carocean/navicar/McuServiceManager;->mDataCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 401
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/carocean/navicar/McuServiceManager;->mDataCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    iget-object v2, p0, Lcom/carocean/navicar/McuServiceManager;->mDataCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 414
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 415
    invoke-static {v0}, Lcom/carocean/navicar/NaviUtil;->toIntArray(Ljava/util/List;)[I

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/carocean/navicar/McuServiceManager;->regCmdCodesToMcuService([IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
