.class public Lcom/can/parser/Parser;
.super Lcom/can/assist/CanProxy;
.source "Parser.java"


# static fields
.field public static final AIR_DATA_LEN:I = 0x9

.field public static final AirData:[B

.field public static final DOOR_DATA_LEN:I = 0x2

.field public static final DoorData:[B

.field public static final SCREEN_MODE_DATA_LEN:I = 0x2

.field public static final ScreenModeData:[B

.field public static mAirInfo:Lcom/can/parser/DDef$AirInfo;

.field public static mBaseInfo:Lcom/can/parser/DDef$BaseInfo;

.field public static mDoorInfo:B


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mObjHandler:Landroid/os/Handler;

.field private mbyAirInfo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 35
    sput-object v1, Lcom/can/parser/Parser;->ScreenModeData:[B

    new-array v0, v0, [B

    .line 38
    sput-object v0, Lcom/can/parser/Parser;->DoorData:[B

    .line 40
    new-instance v0, Lcom/can/parser/DDef$BaseInfo;

    invoke-direct {v0}, Lcom/can/parser/DDef$BaseInfo;-><init>()V

    sput-object v0, Lcom/can/parser/Parser;->mBaseInfo:Lcom/can/parser/DDef$BaseInfo;

    const/16 v0, 0x9

    new-array v0, v0, [B

    .line 43
    sput-object v0, Lcom/can/parser/Parser;->AirData:[B

    .line 45
    new-instance v0, Lcom/can/parser/DDef$AirInfo;

    invoke-direct {v0}, Lcom/can/parser/DDef$AirInfo;-><init>()V

    sput-object v0, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/can/assist/CanProxy;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/can/parser/Parser;->mObjHandler:Landroid/os/Handler;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/can/parser/Parser;->TAG:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [B

    .line 44
    iput-object v0, p0, Lcom/can/parser/Parser;->mbyAirInfo:[B

    return-void
.end method


# virtual methods
.method public Finish()V
    .locals 0

    return-void
.end method

.method public Init(Lcom/can/parser/DDef$E_CMD_TYPE;)V
    .locals 1

    const/4 p1, 0x3

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, p1, v0}, Lcom/can/parser/Parser;->RegisterProxy(II)V

    const/4 p1, 0x1

    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/can/parser/Parser;->RegisterProxy(II)V

    const/16 p1, 0x40

    .line 71
    invoke-virtual {p0, p1, v0}, Lcom/can/parser/Parser;->RegisterProxy(II)V

    return-void
.end method

.method public RegisterProxy(II)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2}, Lcom/can/assist/CanProxy;->RegisterProxy(II)V

    return-void
.end method

.method public deInit()V
    .locals 0

    .line 77
    invoke-super {p0}, Lcom/can/assist/CanProxy;->deInit()V

    return-void
.end method

.method public getData(II)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 97
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Msg_Can_Rx"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_11

    .line 98
    array-length v0, p1

    if-lez v0, :cond_11

    const/4 v0, 0x0

    .line 99
    aget-byte v1, p1, v0

    const/16 v2, 0x40

    const/16 v3, 0xff

    const/4 v4, 0x1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x0

    .line 100
    aget-byte p1, p1, v4

    and-int/2addr p1, v3

    invoke-virtual {p0, v0, v2, p1}, Lcom/can/parser/Parser;->sendMsg2Proxy(Ljava/lang/Object;II)V

    goto/16 :goto_7

    .line 102
    :cond_0
    aget-byte v1, p1, v0

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-ne v6, v1, :cond_7

    .line 113
    iget-object v1, p0, Lcom/can/parser/Parser;->TAG:Ljava/lang/String;

    const-string v3, "door info"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    array-length v1, p1

    if-lt v1, v5, :cond_11

    .line 115
    aget-byte v1, p1, v4

    .line 116
    sget-byte v3, Lcom/can/parser/Parser;->mDoorInfo:B

    if-eq v3, v1, :cond_11

    .line 117
    sput-byte v1, Lcom/can/parser/Parser;->mDoorInfo:B

    .line 118
    sget-object v3, Lcom/can/parser/Parser;->mBaseInfo:Lcom/can/parser/DDef$BaseInfo;

    iput-boolean v4, v3, Lcom/can/parser/DDef$BaseInfo;->mbDoorValid:Z

    const-string v3, "persist.sys.front.door"

    .line 119
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    aget-byte v3, p1, v4

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    or-int/lit8 v1, v1, 0x40

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v1, -0x41

    :goto_0
    int-to-byte v1, v1

    .line 126
    aget-byte v3, p1, v4

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    or-int/lit8 v1, v1, -0x80

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    :goto_1
    int-to-byte v1, v1

    :cond_3
    const-string v2, "persist.sys.rear.door"

    .line 132
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    .line 134
    aget-byte v0, p1, v4

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    or-int/lit8 v0, v1, 0x10

    goto :goto_2

    :cond_4
    and-int/lit8 v0, v1, -0x11

    :goto_2
    int-to-byte v0, v0

    .line 139
    aget-byte p1, p1, v4

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_5

    or-int/lit8 p1, v0, 0x20

    goto :goto_3

    :cond_5
    and-int/lit8 p1, v0, -0x21

    :goto_3
    int-to-byte v1, p1

    .line 145
    :cond_6
    sget-object p1, Lcom/can/parser/Parser;->mBaseInfo:Lcom/can/parser/DDef$BaseInfo;

    shr-int/lit8 v0, v1, 0x7

    and-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, p1, Lcom/can/parser/DDef$BaseInfo;->mLeftFrontDoor:B

    .line 146
    sget-object p1, Lcom/can/parser/Parser;->mBaseInfo:Lcom/can/parser/DDef$BaseInfo;

    shr-int/lit8 v0, v1, 0x6

    and-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, p1, Lcom/can/parser/DDef$BaseInfo;->mRightFrontDoor:B

    .line 147
    sget-object p1, Lcom/can/parser/Parser;->mBaseInfo:Lcom/can/parser/DDef$BaseInfo;

    shr-int/lit8 v0, v1, 0x5

    and-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, p1, Lcom/can/parser/DDef$BaseInfo;->mLeftBackDoor:B

    .line 148
    sget-object p1, Lcom/can/parser/Parser;->mBaseInfo:Lcom/can/parser/DDef$BaseInfo;

    shr-int/lit8 v0, v1, 0x4

    and-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, p1, Lcom/can/parser/DDef$BaseInfo;->mRightBackDoor:B

    .line 149
    sget-object p1, Lcom/can/parser/Parser;->mBaseInfo:Lcom/can/parser/DDef$BaseInfo;

    shr-int/lit8 v0, v1, 0x3

    and-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, p1, Lcom/can/parser/DDef$BaseInfo;->mTailBoxDoor:B

    .line 150
    sget-object p1, Lcom/can/parser/Parser;->mBaseInfo:Lcom/can/parser/DDef$BaseInfo;

    shr-int/lit8 v0, v1, 0x2

    and-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, p1, Lcom/can/parser/DDef$BaseInfo;->mFrontBoxDoor:B

    .line 151
    sget-object p1, Lcom/can/parser/Parser;->mBaseInfo:Lcom/can/parser/DDef$BaseInfo;

    invoke-virtual {p0, p1, v6}, Lcom/can/parser/Parser;->sendMsg2Proxy(Ljava/lang/Object;I)V

    goto/16 :goto_7

    .line 156
    :cond_7
    aget-byte v1, p1, v0

    if-ne v4, v1, :cond_11

    .line 158
    iget-object v1, p0, Lcom/can/parser/Parser;->TAG:Ljava/lang/String;

    const-string v2, "air info"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    array-length v1, p1

    const/16 v2, 0x9

    if-lt v1, v2, :cond_11

    .line 160
    iget-object v1, p0, Lcom/can/parser/Parser;->mbyAirInfo:[B

    if-eqz v1, :cond_a

    move v1, v0

    :goto_4
    if-ge v1, v2, :cond_9

    .line 163
    aget-byte v7, p1, v1

    iget-object v8, p0, Lcom/can/parser/Parser;->mbyAirInfo:[B

    aget-byte v8, v8, v1

    if-eq v7, v8, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 167
    :cond_9
    :goto_5
    array-length v2, p1

    if-lt v1, v2, :cond_a

    .line 168
    iget-object p0, p0, Lcom/can/parser/Parser;->TAG:Ljava/lang/String;

    const-string p1, "air info not changed."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 182
    :cond_a
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    aget-byte v2, p1, v4

    and-int/2addr v2, v4

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mAirIon:B

    .line 183
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    aget-byte v2, p1, v4

    shr-int/2addr v2, v4

    and-int/2addr v2, v4

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mCircleState:B

    .line 184
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    aget-byte v2, p1, v4

    shr-int/2addr v2, v5

    and-int/2addr v2, v4

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mBWDefogger:B

    .line 186
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    aget-byte v2, p1, v4

    const/4 v7, 0x4

    shr-int/2addr v2, v7

    and-int/2addr v2, v4

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mFWDefogger:B

    .line 187
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    aget-byte v2, p1, v4

    const/4 v8, 0x5

    shr-int/2addr v2, v8

    and-int/2addr v2, v4

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mAiron:B

    .line 188
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    aget-byte v2, p1, v4

    const/4 v9, 0x6

    shr-int/2addr v2, v9

    and-int/2addr v2, v4

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mBackAirAble:B

    .line 189
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    aget-byte v2, p1, v4

    const/4 v10, 0x7

    shr-int/2addr v2, v10

    and-int/2addr v2, v4

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mManual:B

    .line 193
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    const/16 v2, 0x8

    iput-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mMaxWindlv:B

    .line 194
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    aget-byte v2, p1, v5

    and-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mWindRate:B

    .line 201
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    iput-byte v0, v1, Lcom/can/parser/DDef$AirInfo;->mUpwardWind:B

    .line 202
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    iput-byte v0, v1, Lcom/can/parser/DDef$AirInfo;->mDowmWind:B

    .line 203
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    iput-byte v0, v1, Lcom/can/parser/DDef$AirInfo;->mParallelWind:B

    .line 204
    aget-byte v1, p1, v6

    and-int/2addr v1, v4

    if-eqz v1, :cond_b

    .line 205
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    iput-byte v4, v1, Lcom/can/parser/DDef$AirInfo;->mParallelWind:B

    .line 207
    :cond_b
    aget-byte v1, p1, v6

    and-int/2addr v1, v5

    if-eqz v1, :cond_c

    .line 208
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    iput-byte v4, v1, Lcom/can/parser/DDef$AirInfo;->mUpwardWind:B

    .line 210
    :cond_c
    aget-byte v1, p1, v6

    and-int/2addr v1, v7

    if-eqz v1, :cond_d

    .line 211
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    iput-byte v4, v1, Lcom/can/parser/DDef$AirInfo;->mDowmWind:B

    .line 222
    :cond_d
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    iput-boolean v0, v1, Lcom/can/parser/DDef$AirInfo;->mbshowLTempLv:Z

    .line 223
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    iput-boolean v0, v1, Lcom/can/parser/DDef$AirInfo;->mbshowRTempLv:Z

    .line 224
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    iput-boolean v0, v1, Lcom/can/parser/DDef$AirInfo;->mbMaxMinDual:Z

    .line 225
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    const/high16 v2, 0x42fe0000    # 127.0f

    iput v2, v1, Lcom/can/parser/DDef$AirInfo;->mMaxTemp:F

    .line 226
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    aget-byte v2, p1, v7

    and-int/lit8 v2, v2, 0x7f

    int-to-float v2, v2

    iput v2, v1, Lcom/can/parser/DDef$AirInfo;->mLeftTemp:F

    .line 227
    aget-byte v1, p1, v7

    and-int/2addr v1, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    if-le v3, v1, :cond_e

    aget-byte v1, p1, v7

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_e

    .line 228
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    iget v2, v1, Lcom/can/parser/DDef$AirInfo;->mLeftTemp:F

    float-to-double v11, v2

    add-double/2addr v11, v5

    double-to-float v2, v11

    iput v2, v1, Lcom/can/parser/DDef$AirInfo;->mLeftTemp:F

    .line 231
    :cond_e
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    aget-byte v2, p1, v8

    and-int/lit8 v2, v2, 0x7f

    int-to-float v2, v2

    iput v2, v1, Lcom/can/parser/DDef$AirInfo;->mRightTemp:F

    .line 232
    aget-byte v1, p1, v8

    and-int/2addr v1, v3

    if-le v3, v1, :cond_f

    aget-byte v1, p1, v8

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_f

    .line 233
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    iget v2, v1, Lcom/can/parser/DDef$AirInfo;->mRightTemp:F

    float-to-double v2, v2

    add-double/2addr v2, v5

    double-to-float v2, v2

    iput v2, v1, Lcom/can/parser/DDef$AirInfo;->mRightTemp:F

    .line 236
    :cond_f
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    aget-byte v2, p1, v9

    iput-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mLeftHotSeatTemp:B

    .line 238
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    aget-byte v2, p1, v10

    iput-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mRightHotSeatTemp:B

    .line 240
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    iput-byte v4, v1, Lcom/can/parser/DDef$AirInfo;->mDisplay:B

    .line 241
    sget-object v1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    iput-boolean v4, v1, Lcom/can/parser/DDef$AirInfo;->bAirUIShow:Z

    .line 244
    iget-object v1, p0, Lcom/can/parser/Parser;->mbyAirInfo:[B

    array-length v2, v1

    array-length v3, p1

    if-le v2, v3, :cond_10

    array-length v2, p1

    goto :goto_6

    :cond_10
    array-length v2, v1

    :goto_6
    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    sget-object p1, Lcom/can/parser/Parser;->mAirInfo:Lcom/can/parser/DDef$AirInfo;

    invoke-virtual {p0, p1, v4}, Lcom/can/parser/Parser;->sendMsg2Proxy(Ljava/lang/Object;I)V

    :cond_11
    :goto_7
    return-void
.end method

.method public sendMsg2Proxy(Ljava/lang/Object;I)V
    .locals 1

    .line 256
    :try_start_0
    iget-object p0, p0, Lcom/can/parser/Parser;->mObjHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/can/assist/CanMessage;->getMessage(Landroid/os/Handler;Ljava/lang/Object;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 259
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendMsg2Proxy(Ljava/lang/Object;II)V
    .locals 0

    .line 267
    :try_start_0
    iget-object p0, p0, Lcom/can/parser/Parser;->mObjHandler:Landroid/os/Handler;

    invoke-static {p0, p1, p2, p3}, Lcom/can/assist/CanMessage;->getMessage(Landroid/os/Handler;Ljava/lang/Object;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 270
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public start(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-super {p0, v0, p2, p3}, Lcom/can/assist/CanProxy;->start(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/can/parser/Parser;->mObjHandler:Landroid/os/Handler;

    return-void
.end method
