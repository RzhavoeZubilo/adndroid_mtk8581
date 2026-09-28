.class public Lcom/autochips/bluetooth/info/BTExtendManager;
.super Ljava/lang/Object;
.source "BTExtendManager.java"

# interfaces
.implements Lcom/autochips/bluetooth/event/IBTObserver;


# static fields
.field public static final ACTION_AUTO_ANSWER_STATE_CHANGE:I = 0x13ee

.field public static final ACTION_AUTO_CONNECT_STATE_CHANGE:I = 0x13ed

.field public static final EXTRA_STATE:I = 0x1389

.field private static final TAG:Ljava/lang/String; = "BTExtendManager"

.field private static btExtendManager:Lcom/autochips/bluetooth/info/BTExtendManager;


# instance fields
.field accOffMac:Ljava/lang/String;

.field autoAnswerRunnable:Ljava/lang/Runnable;

.field private autoConnectRunnable:Ljava/lang/Runnable;

.field private context:Landroid/content/Context;

.field disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

.field private handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->handler:Landroid/os/Handler;

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->accOffMac:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 48
    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 200
    new-instance v0, Lcom/autochips/bluetooth/info/BTExtendManager$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/info/BTExtendManager$2;-><init>(Lcom/autochips/bluetooth/info/BTExtendManager;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->autoAnswerRunnable:Ljava/lang/Runnable;

    .line 217
    new-instance v0, Lcom/autochips/bluetooth/info/BTExtendManager$3;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/info/BTExtendManager$3;-><init>(Lcom/autochips/bluetooth/info/BTExtendManager;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->autoConnectRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/info/BTExtendManager;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/info/BTExtendManager;->reconnectDevice(Ljava/lang/String;)V

    return-void
.end method

.method private clearDisconnectedAndConnect()V
    .locals 3

    const-string v0, "BTExtendManager"

    const-string v1, "clearDisconnectedAndConnect"

    .line 328
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 330
    aput-object v2, v0, v1

    return-void
.end method

.method private disconnectOld(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static getInstance()Lcom/autochips/bluetooth/info/BTExtendManager;
    .locals 2

    .line 56
    sget-object v0, Lcom/autochips/bluetooth/info/BTExtendManager;->btExtendManager:Lcom/autochips/bluetooth/info/BTExtendManager;

    if-nez v0, :cond_1

    .line 57
    const-class v0, Lcom/autochips/bluetooth/info/BTExtendManager;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/info/BTExtendManager;->btExtendManager:Lcom/autochips/bluetooth/info/BTExtendManager;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/autochips/bluetooth/info/BTExtendManager;

    invoke-direct {v1}, Lcom/autochips/bluetooth/info/BTExtendManager;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/info/BTExtendManager;->btExtendManager:Lcom/autochips/bluetooth/info/BTExtendManager;

    .line 61
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 63
    :cond_1
    :goto_0
    sget-object v0, Lcom/autochips/bluetooth/info/BTExtendManager;->btExtendManager:Lcom/autochips/bluetooth/info/BTExtendManager;

    return-object v0
.end method

.method private reconnectDevice(Ljava/lang/String;)V
    .locals 3

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectAndConnect0 localBluetoothAdapter.getConnectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTExtendManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "disconnectAndConnect1"

    .line 312
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "disconnectAndConnect2"

    .line 314
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    const-string p1, "disconnectAndConnect3"

    .line 316
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object p1

    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->connect(Ljava/lang/String;)V

    .line 318
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTExtendManager;->clearDisconnectedAndConnect()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearLastConnectDevice()V
    .locals 2

    .line 197
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->setLastConnectMac(Ljava/lang/String;)V

    return-void
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 6

    const/16 v0, 0xbba

    const/16 v1, 0xfa2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_c

    const/16 v0, 0xbc4

    if-eq p1, v0, :cond_b

    const/16 v0, 0xbc6

    if-eq p1, v0, :cond_a

    const/16 v0, 0xbd5

    const-string v3, "BTExtendManager"

    if-eq p1, v0, :cond_6

    const/16 v0, 0xbd9

    if-eq p1, v0, :cond_4

    const/16 v0, 0xbe1

    if-eq p1, v0, :cond_4

    const/16 v0, 0xbe4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x138a

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 134
    :pswitch_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTStateManager;->getAccState()I

    move-result p1

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_ACC_STATE_CHANGE:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_1

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getBtStatePersist:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/info/BTStateManager;->getBtStatePersist()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTStateManager;->getBtStatePersist()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->isbtopened()Z

    move-result p1

    if-nez p1, :cond_0

    .line 140
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->openbt()V

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->accOffMac:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 143
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->accOffMac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/info/BTDeviceManager;->connect(Ljava/lang/String;)V

    const-string p1, ""

    .line 144
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->accOffMac:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    if-nez p1, :cond_e

    .line 148
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getCurrentConnectDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->accOffMac:Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->accOffMac:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/info/BTDeviceManager;->disconnect(Ljava/lang/String;)V

    .line 153
    :cond_2
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->endLTECalls()V

    .line 154
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->isbtopened()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 155
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->closebt()V

    goto/16 :goto_1

    .line 128
    :pswitch_1
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_MCU_STATE_CHANGE:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 123
    :pswitch_2
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_BACK_CAR_STATE_CHANGE:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 89
    :cond_3
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto/16 :goto_1

    :cond_4
    const-string p1, "ACTION_PHONE_NUMBER_STATUS_UPDATE ACTION_CALL_STATE_CHANGE"

    .line 109
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTExtendManager;->isAutoAnswer()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 111
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_PHONE_NUMBER_STATUS_UPDATE ACTION_CALL_STATE_CHANGE ssss:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_5
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_e

    .line 115
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->autoAnswerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 116
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->autoAnswerRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 161
    :cond_6
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getCurrentConnectDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object p1

    .line 162
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getA2dpConnectDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "11ACTION_PAIRED_DEVICE_LIST_CHANGE:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x0

    if-nez p1, :cond_7

    move v5, v2

    goto :goto_0

    :cond_7
    move v5, v4

    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "        "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_8

    move v4, v2

    :cond_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xfb2

    if-nez p1, :cond_9

    .line 166
    invoke-virtual {p2, v0}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 167
    invoke-virtual {p2, v0}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 168
    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/autochips/bluetooth/info/BTExtendManager$1;

    invoke-direct {v0, p0, p1}, Lcom/autochips/bluetooth/info/BTExtendManager$1;-><init>(Lcom/autochips/bluetooth/info/BTExtendManager;Ljava/lang/String;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 178
    :cond_9
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/info/BTExtendManager;->disconnectOld(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2, v0}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 180
    invoke-virtual {p2, v0}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 181
    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    aget-object v0, p2, v2

    if-eqz v0, :cond_e

    .line 182
    aget-object p2, p2, v2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 183
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTExtendManager;->clearDisconnectedAndConnect()V

    goto :goto_1

    .line 104
    :cond_a
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->autoConnectRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 97
    :cond_b
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_e

    .line 99
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->autoConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 75
    :cond_c
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_e

    const/16 p1, 0xfa4

    .line 77
    invoke-virtual {p2, p1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 79
    check-cast p1, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 81
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTExtendManager;->isAutoConnect()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 82
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object p2

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->setLastConnectMac(Ljava/lang/String;)V

    .line 84
    :cond_d
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->autoConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_e
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xbdb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->context:Landroid/content/Context;

    .line 68
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerExtendObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    return-void
.end method

.method public isAutoAnswer()Z
    .locals 1

    .line 286
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->isAutoAnswer()Z

    move-result v0

    return v0
.end method

.method public isAutoConnect()Z
    .locals 1

    .line 269
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->getAutoConnect()Z

    move-result v0

    return v0
.end method

.method public setAutoAnswer(Z)V
    .locals 2

    .line 276
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->setAutoAnswer(Z)V

    .line 277
    new-instance v0, Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {v0}, Lcom/carlos/eventlibrary/EventMail;-><init>()V

    .line 278
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v1, 0x1389

    invoke-virtual {v0, v1, p1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 279
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 v1, 0x13ee

    invoke-virtual {p1, v1, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    return-void
.end method

.method public setAutoConnect(Z)V
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoConnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTExtendManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->setAutoConnect(Z)V

    if-eqz p1, :cond_0

    .line 254
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getCurrentConnectDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object v0

    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getCurrentConnectDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->setLastConnectMac(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTExtendManager;->clearLastConnectDevice()V

    .line 259
    :cond_1
    :goto_0
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->setBtAutoConnect(Z)V

    .line 260
    new-instance v0, Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {v0}, Lcom/carlos/eventlibrary/EventMail;-><init>()V

    const/16 v1, 0x1389

    .line 261
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 262
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 v1, 0x13ed

    invoke-virtual {p1, v1, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    return-void
.end method

.method public setDisconnectAndConnect(Lcom/autochips/bluetooth/model/MyBluetoothDevice;Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 297
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "setDisconnectAndConnect=%s=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTExtendManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTExtendManager;->disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    aput-object p1, v0, v2

    .line 299
    aput-object p2, v0, v3

    :cond_0
    return-void
.end method
