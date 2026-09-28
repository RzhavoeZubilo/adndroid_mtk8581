.class public Lcom/can/platforms/CanPlatforms8581;
.super Lcom/can/assist/Platforms;
.source "CanPlatforms8581.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/platforms/CanPlatforms8581$CanRxTx;,
        Lcom/can/platforms/CanPlatforms8581$PfReceiver;,
        Lcom/can/platforms/CanPlatforms8581$MeInfo8581;
    }
.end annotation


# instance fields
.field final ACTION_BLUETOOTH_CALL_STATUS:Ljava/lang/String;

.field final ACTION_BLUETOOTH_CALL_STATUS_CHANGE:Ljava/lang/String;

.field final ACTION_PROFILESTATECHANGE:Ljava/lang/String;

.field final EXTRA_HFP_ISCONNECTED:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mCanAudioListener:Lcom/can/assist/Platforms$OnCanAudioListener;

.field private mCanRxTx:Lcom/can/platforms/CanPlatforms8581$CanRxTx;

.field private mContext:Landroid/content/Context;

.field private mDelayMillis:J

.field private mGdDataListener:Lcom/can/assist/Platforms$OnGdDataListener;

.field private mMeInfo8581:Lcom/can/platforms/CanPlatforms8581$MeInfo8581;

.field private mObjAudioManager:Landroid/media/AudioManager;

.field private mObjHandler:Landroid/os/Handler;

.field private mObjSRCTocken:Ljava/lang/Object;

.field private mPfReceiver:Lcom/can/platforms/CanPlatforms8581$PfReceiver;

.field private miPhoneSts:I

.field private miSource:I

.field private miVolume:I

.field runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/can/assist/Platforms;-><init>()V

    const-string v0, "com.autochips.bluetooth.profilestatechange"

    .line 37
    iput-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->ACTION_PROFILESTATECHANGE:Ljava/lang/String;

    const-string v0, "com.autochips.bluetooth.hfp_isconnected"

    .line 38
    iput-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->EXTRA_HFP_ISCONNECTED:Ljava/lang/String;

    const-string v0, "com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_CALL_STATUS_CHANGE"

    .line 39
    iput-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->ACTION_BLUETOOTH_CALL_STATUS_CHANGE:Ljava/lang/String;

    const-string v0, "com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_CALL_STATUS"

    .line 40
    iput-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->ACTION_BLUETOOTH_CALL_STATUS:Ljava/lang/String;

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/can/platforms/CanPlatforms8581;->miSource:I

    .line 42
    iput v0, p0, Lcom/can/platforms/CanPlatforms8581;->miVolume:I

    .line 43
    iput v0, p0, Lcom/can/platforms/CanPlatforms8581;->miPhoneSts:I

    const-wide/16 v0, 0x3e8

    .line 44
    iput-wide v0, p0, Lcom/can/platforms/CanPlatforms8581;->mDelayMillis:J

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->mContext:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->mCanRxTx:Lcom/can/platforms/CanPlatforms8581$CanRxTx;

    .line 47
    iput-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->mObjSRCTocken:Ljava/lang/Object;

    .line 48
    iput-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->mMeInfo8581:Lcom/can/platforms/CanPlatforms8581$MeInfo8581;

    .line 49
    iput-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->mPfReceiver:Lcom/can/platforms/CanPlatforms8581$PfReceiver;

    .line 51
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/can/platforms/CanPlatforms8581;->mObjHandler:Landroid/os/Handler;

    .line 53
    iput-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->mObjAudioManager:Landroid/media/AudioManager;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->TAG:Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/can/platforms/CanPlatforms8581$1;

    invoke-direct {v0, p0}, Lcom/can/platforms/CanPlatforms8581$1;-><init>(Lcom/can/platforms/CanPlatforms8581;)V

    iput-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$200(Lcom/can/platforms/CanPlatforms8581;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/can/platforms/CanPlatforms8581;)Landroid/media/AudioManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581;->mObjAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/can/platforms/CanPlatforms8581;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/can/platforms/CanPlatforms8581;->miVolume:I

    return p0
.end method

.method static synthetic access$402(Lcom/can/platforms/CanPlatforms8581;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/can/platforms/CanPlatforms8581;->miVolume:I

    return p1
.end method

.method static synthetic access$502(Lcom/can/platforms/CanPlatforms8581;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/can/platforms/CanPlatforms8581;->miSource:I

    return p1
.end method

.method static synthetic access$600(Lcom/can/platforms/CanPlatforms8581;)Lcom/can/assist/Platforms$OnGdDataListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581;->mGdDataListener:Lcom/can/assist/Platforms$OnGdDataListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/can/platforms/CanPlatforms8581;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/can/platforms/CanPlatforms8581;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/can/platforms/CanPlatforms8581;->miPhoneSts:I

    return p0
.end method

.method static synthetic access$802(Lcom/can/platforms/CanPlatforms8581;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/can/platforms/CanPlatforms8581;->miPhoneSts:I

    return p1
.end method


# virtual methods
.method public CloseAudio()V
    .locals 0

    return-void
.end method

.method public DeInit()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581;->mPfReceiver:Lcom/can/platforms/CanPlatforms8581$PfReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public Init(Landroid/content/Context;)V
    .locals 2

    .line 63
    iput-object p1, p0, Lcom/can/platforms/CanPlatforms8581;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/can/platforms/CanPlatforms8581$PfReceiver;-><init>(Lcom/can/platforms/CanPlatforms8581;Lcom/can/platforms/CanPlatforms8581$1;)V

    iput-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->mPfReceiver:Lcom/can/platforms/CanPlatforms8581$PfReceiver;

    const-string v0, "audio"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->mObjAudioManager:Landroid/media/AudioManager;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.yecon.action.BACKCAR_START"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yecon.action.BACKCAR_STOP"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yecon.sourcemanager.source_changed_notify"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.profilestatechange"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_CALL_STATUS_CHANGE"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "autochips.intent.action.QB_POWEROFF"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "autochips.intent.action.QB_POWERON"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yecon.action.ACTION_CAN_APP_INFO"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.yecon.can.keys"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "youzi.service.intent.action.ACTION_REVERSE_TRACK"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581;->mPfReceiver:Lcom/can/platforms/CanPlatforms8581$PfReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public InitSend()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->mGdDataListener:Lcom/can/assist/Platforms$OnGdDataListener;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/can/platforms/CanPlatforms8581;->getMediaInfo()Lcom/can/assist/Platforms$MediaInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/can/assist/Platforms$MediaInfo;->getVol()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/can/assist/Platforms$OnGdDataListener;->onVolInfo(I)V

    :cond_0
    return-void
.end method

.method public OpenAudio(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ResetCanDescribe()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581;->TAG:Ljava/lang/String;

    const-string v0, "ResetCanDescribe no find match cartype!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public get(Ljava/lang/String;)I
    .locals 0

    .line 541
    :try_start_0
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/can/tool/DataConvert;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 544
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCanDescribe()Lcom/can/assist/CanContant$CAN_DESCRIBE;
    .locals 0

    .line 127
    new-instance p0, Lcom/can/assist/CanContant$CAN_DESCRIBE;

    invoke-direct {p0}, Lcom/can/assist/CanContant$CAN_DESCRIBE;-><init>()V

    return-object p0
.end method

.method public getCanRxTx()Lcom/can/assist/Platforms$Can;
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->mCanRxTx:Lcom/can/platforms/CanPlatforms8581$CanRxTx;

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Lcom/can/platforms/CanPlatforms8581$CanRxTx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/can/platforms/CanPlatforms8581$CanRxTx;-><init>(Lcom/can/platforms/CanPlatforms8581;Lcom/can/platforms/CanPlatforms8581$1;)V

    iput-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->mCanRxTx:Lcom/can/platforms/CanPlatforms8581$CanRxTx;

    .line 555
    :cond_0
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581;->mCanRxTx:Lcom/can/platforms/CanPlatforms8581$CanRxTx;

    return-object p0
.end method

.method public getCarType()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getMediaInfo()Lcom/can/assist/Platforms$MediaInfo;
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->mMeInfo8581:Lcom/can/platforms/CanPlatforms8581$MeInfo8581;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;-><init>(Lcom/can/platforms/CanPlatforms8581;Lcom/can/platforms/CanPlatforms8581$1;)V

    iput-object v0, p0, Lcom/can/platforms/CanPlatforms8581;->mMeInfo8581:Lcom/can/platforms/CanPlatforms8581$MeInfo8581;

    .line 188
    :cond_0
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581;->mMeInfo8581:Lcom/can/platforms/CanPlatforms8581$MeInfo8581;

    return-object p0
.end method

.method public power()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/can/platforms/CanPlatforms8581;->sendSysRestartKeyCMD()V

    .line 145
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581;->mContext:Landroid/content/Context;

    const-string v0, "power"

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string v0, ""

    .line 147
    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 0

    .line 529
    :try_start_0
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/can/tool/DataConvert;->putInt(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 532
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendSysRestartKeyCMD()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 151
    fill-array-data v0, :array_0

    .line 156
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581;->mCanRxTx:Lcom/can/platforms/CanPlatforms8581$CanRxTx;

    invoke-virtual {p0, v0}, Lcom/can/platforms/CanPlatforms8581$CanRxTx;->reboot([B)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public setCanDescribe(Lcom/can/assist/CanContant$CarType_Info;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setCanIcon(Lcom/can/assist/CanContant$CarType_Info;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    iget v0, p1, Lcom/can/assist/CanContant$CarType_Info;->iNeedIcon:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v2, "persist.sys.fun.canbus"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.launcher.action.SHOW_OR_HIDE_ICON"

    .line 167
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v2, p0, Lcom/can/platforms/CanPlatforms8581;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "package"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget v2, p1, Lcom/can/assist/CanContant$CarType_Info;->iNeedIcon:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v4, "show"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 171
    iget p1, p1, Lcom/can/assist/CanContant$CarType_Info;->iAirIcon:I

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    const-string p1, "showair"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setOnCanAudioListener(Lcom/can/assist/Platforms$OnCanAudioListener;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/can/platforms/CanPlatforms8581;->mCanAudioListener:Lcom/can/assist/Platforms$OnCanAudioListener;

    return-void
.end method

.method public setOnGdDataListener(Lcom/can/assist/Platforms$OnGdDataListener;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/can/platforms/CanPlatforms8581;->mGdDataListener:Lcom/can/assist/Platforms$OnGdDataListener;

    return-void
.end method

.method public start(J)V
    .locals 0

    .line 94
    :try_start_0
    iput-wide p1, p0, Lcom/can/platforms/CanPlatforms8581;->mDelayMillis:J

    .line 95
    iget-object p1, p0, Lcom/can/platforms/CanPlatforms8581;->mObjHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/can/platforms/CanPlatforms8581;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    invoke-virtual {p0}, Lcom/can/platforms/CanPlatforms8581;->InitSend()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
