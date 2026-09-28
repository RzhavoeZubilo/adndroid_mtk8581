.class Lcom/can/services/CanService$RxData;
.super Ljava/lang/Object;
.source "CanService.java"

# interfaces
.implements Lcom/can/assist/Platforms$Can$OnRxDataLister;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/services/CanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RxData"
.end annotation


# instance fields
.field private mBuffer:[B

.field private miAvailable:I

.field private final miMaxLength:I

.field private mpCursor:[I

.field private mpMinPacketLength:[I

.field private mpRemainingLength:[I

.field final synthetic this$0:Lcom/can/services/CanService;


# direct methods
.method public constructor <init>(Lcom/can/services/CanService;)V
    .locals 3

    .line 341
    iput-object p1, p0, Lcom/can/services/CanService$RxData;->this$0:Lcom/can/services/CanService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x1000

    .line 334
    iput p1, p0, Lcom/can/services/CanService$RxData;->miMaxLength:I

    new-array p1, p1, [B

    .line 335
    iput-object p1, p0, Lcom/can/services/CanService$RxData;->mBuffer:[B

    const/4 p1, 0x0

    .line 336
    iput p1, p0, Lcom/can/services/CanService$RxData;->miAvailable:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 337
    iput-object v1, p0, Lcom/can/services/CanService$RxData;->mpRemainingLength:[I

    new-array v2, v0, [I

    .line 338
    iput-object v2, p0, Lcom/can/services/CanService$RxData;->mpMinPacketLength:[I

    new-array v0, v0, [I

    .line 339
    iput-object v0, p0, Lcom/can/services/CanService$RxData;->mpCursor:[I

    aput p1, v0, p1

    aput p1, v1, p1

    const/4 p0, 0x5

    aput p0, v2, p1

    return-void
.end method


# virtual methods
.method public OnCanRxData(I[BI)V
    .locals 0

    const-string p0, "CanService"

    const-string p1, "OnCanRxData"

    .line 351
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnDevicesStatusChanged(I[B)V
    .locals 3

    if-eqz p2, :cond_1

    .line 363
    array-length p1, p2

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 366
    aget-byte p2, p2, p1

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnDevicesStatusChanged, door: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CanService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    sget-byte v0, Lcom/can/parser/Parser;->mDoorInfo:B

    if-eq p2, v0, :cond_1

    .line 369
    sget-object v0, Lcom/can/parser/Parser;->DoorData:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 370
    sget-object v0, Lcom/can/parser/Parser;->DoorData:[B

    const/4 v2, 0x1

    aput-byte p2, v0, v2

    .line 371
    iget-object p0, p0, Lcom/can/services/CanService$RxData;->this$0:Lcom/can/services/CanService;

    iget-object p0, p0, Lcom/can/services/CanService;->mHandler:Landroid/os/Handler;

    sget-object p2, Lcom/can/parser/Parser;->DoorData:[B

    invoke-static {p2, p1, v1}, Lcom/can/assist/CanMessage;->getRxMessage([BII)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method
