.class public Lcom/autochips/bluetooth/info/BTStateManager;
.super Ljava/lang/Object;
.source "BTStateManager.java"

# interfaces
.implements Lcom/autochips/bluetooth/event/IBTObserver;


# static fields
.field public static final ACTION_BT_STATE_CHANGED:I = 0x7d1

.field public static final ACTION_CAR_PLAY_AUTO_CONNECT_CHANGED:I = 0x7d5

.field public static final ACTION_CAR_PLAY_CONNECT_CHANGED:I = 0x7d4

.field public static final ACTION_LOCAL_BT_NAME_CHANGED:I = 0x7d2

.field public static final BT_STATE_OFF:I = 0xa

.field public static final BT_STATE_ON:I = 0xc

.field public static final BT_STATE_TURNING_OFF:I = 0xd

.field public static final BT_STATE_TURNING_ON:I = 0xb

.field private static final CAR_PLAY:Ljava/lang/String; = "com.suding.speedplay"

.field private static final CAR_PLAY_ZJ:Ljava/lang/String; = "com.zjinnova.zlink"

.field public static final EXTRA_LOCAL_DEVICE_NAME:I = 0x7d3

.field private static final TAG:Ljava/lang/String; = "BTStateManager"

.field private static btStateManager:Lcom/autochips/bluetooth/info/BTStateManager;


# instance fields
.field private accState:I

.field private backCarState:I

.field broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private btState:I

.field private btStatePersist:Z

.field private context:Landroid/content/Context;

.field private discoverState:Z

.field private isAutoAnswer:Z

.field private isCarplayAutoConnected:Z

.field private isCarplayConnected:Z

.field private isCarplayPhoneShow:Z

.field private isCarplayShow:Z

.field private mcuState:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->mcuState:I

    .line 72
    iput v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->accState:I

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayConnected:Z

    .line 82
    iput-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayAutoConnected:Z

    .line 83
    iput-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayShow:Z

    .line 84
    iput-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayPhoneShow:Z

    .line 359
    new-instance v0, Lcom/autochips/bluetooth/info/BTStateManager$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/info/BTStateManager$2;-><init>(Lcom/autochips/bluetooth/info/BTStateManager;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/info/BTStateManager;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->btState:I

    return p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/info/BTStateManager;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/info/BTStateManager;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayConnected:Z

    return p0
.end method

.method static synthetic access$202(Lcom/autochips/bluetooth/info/BTStateManager;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/info/BTStateManager;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayAutoConnected:Z

    return p0
.end method

.method static synthetic access$302(Lcom/autochips/bluetooth/info/BTStateManager;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayAutoConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/info/BTStateManager;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayShow:Z

    return p0
.end method

.method static synthetic access$402(Lcom/autochips/bluetooth/info/BTStateManager;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayShow:Z

    return p1
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/info/BTStateManager;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayPhoneShow:Z

    return p0
.end method

.method static synthetic access$502(Lcom/autochips/bluetooth/info/BTStateManager;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayPhoneShow:Z

    return p1
.end method

.method public static getInstance()Lcom/autochips/bluetooth/info/BTStateManager;
    .locals 2

    .line 104
    sget-object v0, Lcom/autochips/bluetooth/info/BTStateManager;->btStateManager:Lcom/autochips/bluetooth/info/BTStateManager;

    if-nez v0, :cond_1

    .line 105
    const-class v0, Lcom/autochips/bluetooth/info/BTStateManager;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/info/BTStateManager;->btStateManager:Lcom/autochips/bluetooth/info/BTStateManager;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-direct {v1}, Lcom/autochips/bluetooth/info/BTStateManager;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/info/BTStateManager;->btStateManager:Lcom/autochips/bluetooth/info/BTStateManager;

    .line 108
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 110
    :cond_1
    :goto_0
    sget-object v0, Lcom/autochips/bluetooth/info/BTStateManager;->btStateManager:Lcom/autochips/bluetooth/info/BTStateManager;

    return-object v0
.end method


# virtual methods
.method public cancelDiscovery()V
    .locals 2

    const-string v0, "BTStateManager"

    const-string v1, "cancelDiscovery"

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->stopDiscovery()V

    :cond_0
    return-void
.end method

.method public closeBT()V
    .locals 1

    const/4 v0, 0x1

    .line 250
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/info/BTStateManager;->closeBT(Z)V

    return-void
.end method

.method public closeBT(Z)V
    .locals 3

    .line 265
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTStateManager;->getBtState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 266
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->isbtopened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    .line 267
    iput v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->btState:I

    .line 268
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    const/16 v1, 0x7d1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    .line 269
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->closebt()V

    :cond_0
    if-eqz p1, :cond_1

    .line 272
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/info/BTStateManager;->setBtStatePersist(Z)V

    :cond_1
    return-void
.end method

.method public getAccState()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->accState:I

    return v0
.end method

.method public getBackCarState()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->backCarState:I

    return v0
.end method

.method public getBtState()I
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBtState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->btState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->btState:I

    return v0
.end method

.method public getBtStatePersist()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->btStatePersist:Z

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDevicePin()Ljava/lang/String;
    .locals 1

    .line 326
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->getDevicePin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalBTName()Ljava/lang/String;
    .locals 1

    .line 337
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMcuState()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->mcuState:I

    return v0
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 2

    const/16 v0, 0xbbc

    if-eq p1, v0, :cond_3

    const/16 v0, 0xbbd

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbc4

    const-string v1, "BTStateManager"

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbd5

    if-eq p1, v0, :cond_0

    const/16 v0, 0xfa2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 175
    :pswitch_0
    invoke-virtual {p2, v0}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->accState:I

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_ACC_STATE_CHANGE accState:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/autochips/bluetooth/info/BTStateManager;->accState:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :pswitch_1
    invoke-virtual {p2, v0}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->mcuState:I

    goto :goto_0

    .line 168
    :pswitch_2
    invoke-virtual {p2, v0}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->backCarState:I

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviConnectState(Landroid/content/Context;)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->getCurBtState()I

    move-result p1

    iput p1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->btState:I

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_STATE_CHANGED btState:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/autochips/bluetooth/info/BTStateManager;->btState:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/autochips/bluetooth/info/BTStateManager$1;

    invoke-direct {p2, p0}, Lcom/autochips/bluetooth/info/BTStateManager$1;-><init>(Lcom/autochips/bluetooth/info/BTStateManager;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 155
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 162
    iput-boolean p1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->discoverState:Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->discoverState:Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xbdb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .line 117
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->context:Landroid/content/Context;

    .line 119
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->isAutoAnswer()Z

    move-result v0

    iput-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isAutoAnswer:Z

    .line 120
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->getBtStatePersist()Z

    move-result v0

    iput-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->btStatePersist:Z

    .line 121
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->getCurBtState()I

    move-result v0

    iput v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->btState:I

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->btState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys"

    const-string v2, "SYS_REAR_CAMERA"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->backCarState:I

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "SYS_MCU_SERVICE_READY"

    invoke-static {v1, v0, v2, v3}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->mcuState:I

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "SYS_ACC_STATUS"

    const/4 v3, -0x1

    invoke-static {v1, v0, v2, v3}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->accState:I

    .line 127
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->isSearching()Z

    move-result v0

    iput-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->discoverState:Z

    .line 128
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerSecondObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 129
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.suding.speedplay"

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zjinnova.zlink"

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "navi.intent.action.ACTION_SYSTEM_TO_SLEEP"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "navi.intent.action.ACTION_SYSTEM_TO_AWAKE"

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isAutoAnswer()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isAutoAnswer:Z

    return v0
.end method

.method public isCarPlayAutoConnected()Z
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayAutoConnected:Z

    return v0
.end method

.method public isCarplayConnected()Z
    .locals 1

    .line 416
    iget-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayConnected:Z

    return v0
.end method

.method public isCarplayPhoneShow()Z
    .locals 1

    .line 428
    iget-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayPhoneShow:Z

    return v0
.end method

.method public isCarplayShow()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayShow:Z

    return v0
.end method

.method public isDiscoverState()Z
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDiscoverState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->discoverState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->discoverState:Z

    return v0
.end method

.method public openBT()V
    .locals 1

    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/info/BTStateManager;->openBT(Z)V

    return-void
.end method

.method public openBT(Z)V
    .locals 3

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCarplayConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isCarplayConnected:Z

    if-eqz v0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTStateManager;->getBtState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    .line 287
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->isbtopened()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xb

    .line 288
    iput v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->btState:I

    .line 289
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    const/16 v1, 0x7d1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    .line 290
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->openbt()V

    :cond_1
    if-eqz p1, :cond_2

    .line 293
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/info/BTStateManager;->setBtStatePersist(Z)V

    :cond_2
    return-void
.end method

.method public setAutoAnswer(Z)V
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoAnswer isAutoAnswer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isAutoAnswer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->setAutoAnswer(Z)V

    .line 193
    iget-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isAutoAnswer:Z

    if-eq v0, p1, :cond_0

    .line 194
    iput-boolean p1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isAutoAnswer:Z

    .line 195
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    iget-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->isAutoAnswer:Z

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->sendAutoAnswerChangeEvent(Z)V

    :cond_0
    return-void
.end method

.method public setBtStatePersist(Z)V
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBtStatePersist btStatePersist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->btStatePersist:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->setBtStatePersist(Z)V

    .line 211
    iget-boolean v0, p0, Lcom/autochips/bluetooth/info/BTStateManager;->btStatePersist:Z

    if-eq v0, p1, :cond_0

    .line 212
    iput-boolean p1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->btStatePersist:Z

    .line 213
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/event/BTEventManager;->sendBTPersistStateChangeEvent(Z)V

    :cond_0
    return-void
.end method

.method public setDevicePin(Ljava/lang/String;)V
    .locals 1

    .line 330
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->setDevicePin(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalBTName(Ljava/lang/String;)Z
    .locals 2

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocalBTName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->setLocalDeviceName(Ljava/lang/String;)V

    .line 348
    new-instance p1, Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {p1}, Lcom/carlos/eventlibrary/EventMail;-><init>()V

    .line 349
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {p1, v1, v0}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 350
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1, p1}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    .line 351
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTStateManager;->context:Landroid/content/Context;

    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviBluetoothDeviceName(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public startDiscovery()V
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDiscovery isBonding:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->isBonding()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->isBonding()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 308
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->clearDiscoverDeviceList()V

    .line 310
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->doDiscovery()Z

    return-void
.end method
