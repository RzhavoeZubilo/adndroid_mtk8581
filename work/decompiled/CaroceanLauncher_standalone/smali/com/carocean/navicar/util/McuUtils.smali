.class public Lcom/carocean/navicar/util/McuUtils;
.super Ljava/lang/Object;
.source "McuUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/carocean/navicar/util/McuUtils$SingleHolder;
    }
.end annotation


# instance fields
.field private mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/carocean/navicar/util/McuUtils;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/carocean/navicar/util/McuUtils$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/carocean/navicar/util/McuUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/carocean/navicar/util/McuUtils;
    .locals 1

    .line 22
    sget-object v0, Lcom/carocean/navicar/util/McuUtils$SingleHolder;->mInstance:Lcom/carocean/navicar/util/McuUtils;

    return-object v0
.end method


# virtual methods
.method public autoToArm()V
    .locals 3

    const-string p0, "persist.sys.lt9211.enable"

    const/4 v0, 0x0

    .line 74
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x4

    new-array p0, p0, [B

    const/16 v1, -0x5e

    aput-byte v1, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    aput-byte v2, p0, v1

    const/4 v1, 0x2

    const-string v2, "persist.sys.host_type"

    .line 78
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    const/4 v1, 0x3

    aput-byte v0, p0, v1

    .line 80
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    goto :goto_0

    .line 82
    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.carocean.rearcamera"

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "navi.intent.action.ACTION_ORIGINAL_CAMERA"

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0xffeb02

    const-string v1, "CMD_CODE"

    .line 85
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public autoToOriginal()V
    .locals 3

    const-string v0, "persist.sys.lt9211.enable"

    const/4 v1, 0x0

    .line 91
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x4

    new-array p0, p0, [B

    const/16 v0, -0x5e

    aput-byte v0, p0, v1

    const/4 v0, 0x1

    aput-byte v0, p0, v0

    const/4 v0, 0x2

    const-string v2, "persist.sys.host_type"

    .line 95
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 96
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/carocean/navicar/util/McuUtils;->startOriginalWindow()V

    :goto_0
    return-void
.end method

.method public onAutomaticVehicleSelection()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    .line 314
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public openRear360()V
    .locals 4

    const-string v0, "persist.sys.lt9211.enable"

    const/4 v1, 0x0

    .line 255
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 256
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.carocean.rearcamera"

    .line 257
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "navi.intent.action.ACTION_AVIN_CAMERA"

    .line 258
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0xffeb01

    const-string v1, "CMD_CODE"

    .line 259
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v3, -0x5e

    aput-byte v3, v0, v1

    const/4 v3, 0x5

    aput-byte v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "persist.sys.host_type"

    .line 265
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 267
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    :goto_0
    return-void
.end method

.method public queryMcuVersion()V
    .locals 2

    const/16 v0, 0x30

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendQueryCmd(II)V

    return-void
.end method

.method public sendAUXCmd()V
    .locals 4

    const-string v0, "persist.sys.caraux_switch"

    const/4 v1, 0x0

    .line 139
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x4

    new-array v2, v2, [B

    const/16 v3, -0x70

    aput-byte v3, v2, v1

    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v2, v3

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v2, v3

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, v2, v1

    .line 145
    invoke-virtual {p0, v2}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public sendCrownKeyCmd(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x48

    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 328
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public sendEqLoudness(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x68

    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 251
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public sendEqValue(III)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x1

    aput-byte p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x2

    aput-byte p1, v0, p2

    .line 244
    iget-object p0, p0, Lcom/carocean/navicar/util/McuUtils;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    const/16 p1, 0x9b

    invoke-virtual {p0, p1, v0}, Lcom/carocean/navicar/McuServiceManager;->RPCGeneralRpcCall(I[B)V

    return-void
.end method

.method public sendEqValues(I[I)V
    .locals 3

    const/16 v0, 0x12

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/4 p1, 0x1

    aput-byte v2, v1, p1

    const/4 p1, 0x2

    :goto_0
    if-ge p1, v0, :cond_0

    add-int/lit8 v2, p1, -0x2

    .line 234
    aget v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 236
    :cond_0
    iget-object p0, p0, Lcom/carocean/navicar/util/McuUtils;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    const/16 p1, 0x9b

    invoke-virtual {p0, p1, v1}, Lcom/carocean/navicar/McuServiceManager;->RPCGeneralRpcCall(I[B)V

    return-void
.end method

.method public sendMCUMute()V
    .locals 1

    const/4 p0, 0x4

    new-array p0, p0, [B

    .line 214
    fill-array-data p0, :array_0

    .line 219
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void

    :array_0
    .array-data 1
        -0x66t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public sendOriginalVehicleStata(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 321
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public sendQueryCmd(II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x1

    aput-byte p1, v0, p2

    .line 64
    iget-object p0, p0, Lcom/carocean/navicar/util/McuUtils;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    const/16 p1, 0x90

    invoke-virtual {p0, p1, v0}, Lcom/carocean/navicar/McuServiceManager;->RPCGeneralRpcCall(I[B)V

    return-void
.end method

.method public sendSettingCmd([B)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/carocean/navicar/util/McuUtils;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    const/16 v0, 0x98

    invoke-virtual {p0, v0, p1}, Lcom/carocean/navicar/McuServiceManager;->RPCGeneralRpcCall(I[B)V

    return-void
.end method

.method public sendSpeakerSwitchMode(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 335
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public sendTouchMsg([B)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object p0, p0, Lcom/carocean/navicar/util/McuUtils;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    const/16 v0, 0x97

    invoke-virtual {p0, v0, p1}, Lcom/carocean/navicar/McuServiceManager;->RPCGeneralRpcCall(I[B)V

    return-void
.end method

.method public setAVMPowerStatus(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x47

    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 342
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public setBackCar(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, -0x6b

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const-string p1, "persist.sys.fast.reversing"

    .line 38
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    const/4 p1, 0x3

    aput-byte v2, v0, p1

    .line 40
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public setCANMode(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, -0x4f

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    const/4 p1, 0x2

    aput-byte v2, v0, p1

    const/4 p1, 0x3

    aput-byte v2, v0, p1

    .line 277
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public setCustomerInfo()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    .line 70
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public setDCLKRGB(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x49

    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 135
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public setFullScreenSettings(I)V
    .locals 2

    const/4 p0, 0x4

    new-array p0, p0, [B

    const/16 v0, -0x5b

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    int-to-byte p1, p1

    const/4 v0, 0x1

    aput-byte p1, p0, v0

    const/4 p1, 0x2

    aput-byte v1, p0, p1

    const/4 p1, 0x3

    aput-byte v1, p0, p1

    .line 154
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public setHostType(I)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, -0x5e

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    const/4 p1, 0x3

    aput-byte v2, v0, p1

    .line 128
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public setMotoPolePairs(I)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 46
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public setMotorControlCmd(II)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, -0x4c

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x2

    aput-byte p1, v0, p2

    const/4 p1, 0x3

    aput-byte v2, v0, p1

    .line 308
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public setOriginalBtSettings(I)V
    .locals 2

    const/4 p0, 0x4

    new-array p0, p0, [B

    const/16 v0, -0x5a

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    int-to-byte p1, p1

    const/4 v0, 0x1

    aput-byte p1, p0, v0

    const/4 p1, 0x2

    aput-byte v1, p0, p1

    const/4 p1, 0x3

    aput-byte v1, p0, p1

    .line 163
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public setPartyControlAndPanelType(II)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, -0x4e

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x2

    aput-byte p1, v0, p2

    const/4 p1, 0x3

    aput-byte v2, v0, p1

    .line 299
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public setSeatCmd(II)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, -0x4d

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x2

    aput-byte p1, v0, p2

    const/4 p1, 0x3

    aput-byte v2, v0, p1

    .line 290
    invoke-virtual {p0, v0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public setSoundEffect(III)V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/16 v2, -0x6d

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    and-int/lit8 p1, p1, 0xf

    and-int/lit8 p2, p2, 0xf

    shl-int/2addr p2, v0

    or-int/2addr p1, p2

    int-to-byte p1, p1

    const/4 p2, 0x1

    aput-byte p1, v1, p2

    and-int/lit8 p1, p3, 0xf

    int-to-byte p1, p1

    const/4 p2, 0x2

    aput-byte p1, v1, p2

    const/4 p1, 0x3

    aput-byte v3, v1, p1

    .line 31
    invoke-virtual {p0, v1}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method public startOriginalWindow()V
    .locals 2

    const-string p0, "persist.sys.lt9211.enable"

    const/4 v0, 0x0

    .line 103
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 104
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.carocean.rearcamera"

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "navi.intent.action.ACTION_ORIGINAL_CAMERA"

    .line 106
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0xffeb01

    const-string v1, "CMD_CODE"

    .line 107
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public stopOriginalWindow()V
    .locals 2

    const-string p0, "persist.sys.lt9211.enable"

    const/4 v0, 0x0

    .line 113
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 114
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.carocean.rearcamera"

    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "navi.intent.action.ACTION_ORIGINAL_CAMERA"

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0xffeb02

    const-string v1, "CMD_CODE"

    .line 117
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public syncBackCarSettings()V
    .locals 5

    const-string p0, "persist.sys.backcar_type"

    const/4 v0, 0x0

    .line 169
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    int-to-byte p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const-string v2, "persist.sys.backcar_mirror"

    .line 174
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    or-int/lit8 p0, p0, 0x2

    int-to-byte p0, p0

    :cond_1
    const-string v2, "persist.sys.ivicar.avm.enable"

    .line 179
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v1, :cond_2

    or-int/lit8 p0, p0, 0x8

    :goto_1
    int-to-byte p0, p0

    goto :goto_2

    :cond_2
    if-ne v2, v3, :cond_3

    or-int/lit8 p0, p0, 0x10

    goto :goto_1

    :cond_3
    :goto_2
    const-string v2, "persist.sys.360_auto_show"

    .line 188
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_4

    or-int/lit8 p0, p0, 0x20

    int-to-byte p0, p0

    :cond_4
    const-string v2, "persist.sys.trace_enable"

    .line 193
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    or-int/lit8 p0, p0, 0x40

    int-to-byte p0, p0

    :cond_5
    const-string v2, "persist.sys.auto_front_cam"

    .line 198
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_6

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    :cond_6
    const/4 v2, 0x4

    new-array v2, v2, [B

    const/16 v4, -0x6b

    aput-byte v4, v2, v0

    aput-byte p0, v2, v1

    const-string p0, "persist.sys.fast.reversing"

    .line 207
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, v2, v3

    const/4 p0, 0x3

    aput-byte v0, v2, p0

    .line 210
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method
