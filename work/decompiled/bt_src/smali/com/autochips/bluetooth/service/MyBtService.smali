.class public Lcom/autochips/bluetooth/service/MyBtService;
.super Landroid/content/BroadcastReceiver;
.source "MyBtService.java"

# interfaces
.implements Lcom/autochips/bluetooth/btinterface/IBluetoothService;
.implements Lcom/autochips/bluetooth/event/IBTObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "MyBtService"


# instance fields
.field accOffMac:Ljava/lang/String;

.field autoConnectDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

.field autoConnectRunnable:Ljava/lang/Runnable;

.field bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field bluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

.field context:Landroid/content/Context;

.field disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

.field handler:Landroid/os/Handler;

.field private isFirstConnected:Z

.field remoteServiceCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/IRemoteServiceCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/autochips/bluetooth/service/MyBtService;->isFirstConnected:Z

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService;->handler:Landroid/os/Handler;

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 70
    iput-object v1, p0, Lcom/autochips/bluetooth/service/MyBtService;->disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    const-string v1, ""

    .line 79
    iput-object v1, p0, Lcom/autochips/bluetooth/service/MyBtService;->accOffMac:Ljava/lang/String;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/autochips/bluetooth/service/MyBtService;->remoteServiceCallbacks:Ljava/util/List;

    .line 112
    new-instance v0, Lcom/autochips/bluetooth/service/MyBtService$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/service/MyBtService$1;-><init>(Lcom/autochips/bluetooth/service/MyBtService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService;->autoConnectRunnable:Ljava/lang/Runnable;

    .line 86
    iput-object p1, p0, Lcom/autochips/bluetooth/service/MyBtService;->context:Landroid/content/Context;

    .line 88
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/service/MyBtService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 91
    invoke-direct {p0}, Lcom/autochips/bluetooth/service/MyBtService;->initRegister()V

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "persist.BTState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTStateManager;->getBtStatePersist()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MyBtService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTStateManager;->getBtStatePersist()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "persist.close BT"

    .line 94
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->closeBt()V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->openBt()V

    .line 99
    :goto_0
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerMainThreadObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/service/MyBtService;)Lcom/autochips/bluetooth/model/MyBluetoothDevice;
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getCurrentConnectedDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/service/MyBtService;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/autochips/bluetooth/service/MyBtService;->checkA2dpDisconnected()V

    return-void
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/service/MyBtService;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/autochips/bluetooth/service/MyBtService;->checkA2dpConnect()V

    return-void
.end method

.method private checkA2dpConnect()V
    .locals 0

    return-void
.end method

.method private checkA2dpDisconnected()V
    .locals 2

    const-string v0, "MyBtService"

    const-string v1, "checkA2dpDisconnected"

    .line 675
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private clearDisconnectedAndConnect()V
    .locals 3

    const-string v0, "MyBtService"

    const-string v1, "clearDisconnectedAndConnect"

    .line 507
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService;->disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 509
    aput-object v2, v0, v1

    return-void
.end method

.method private disconnectOld(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private getCurrentConnectedDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;
    .locals 1

    .line 542
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getCurrentConnectDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method private initRegister()V
    .locals 3

    const-string v0, "MyBtService"

    const-string v1, "initRegister"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    iget-object v2, p0, Lcom/autochips/bluetooth/service/MyBtService;->context:Landroid/content/Context;

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTStateManager;->getMcuState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "mcuObserver startAutoConnected"

    .line 144
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/autochips/bluetooth/service/MyBtService;->startAutoConnected()V

    :cond_0
    return-void
.end method

.method private notifyDataChange(ILjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method private notifyProfileConnectState(Ljava/lang/String;III)V
    .locals 0

    .line 620
    new-instance p1, Lcom/autochips/bluetooth/service/MyBtService$6;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/autochips/bluetooth/service/MyBtService$6;-><init>(Lcom/autochips/bluetooth/service/MyBtService;III)V

    invoke-static {p1}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    .line 632
    iget-object p1, p0, Lcom/autochips/bluetooth/service/MyBtService;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviConnectState(Landroid/content/Context;)V

    return-void
.end method

.method private reconnectDevice(Ljava/lang/String;)V
    .locals 3

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnectAndConnect0 localBluetoothAdapter.getConnectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/autochips/bluetooth/service/MyBtService;->disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyBtService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService;->disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "disconnectAndConnect1"

    .line 553
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService;->disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "disconnectAndConnect2"

    .line 555
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object p1, p0, Lcom/autochips/bluetooth/service/MyBtService;->disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    const-string p1, "disconnectAndConnect3"

    .line 557
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object p1, p0, Lcom/autochips/bluetooth/service/MyBtService;->disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/service/MyBtService;->connect(Ljava/lang/String;)V

    .line 559
    invoke-direct {p0}, Lcom/autochips/bluetooth/service/MyBtService;->clearDisconnectedAndConnect()V

    :cond_0
    return-void
.end method

.method private showCallView()V
    .locals 2

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showCallView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyBtService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startAutoConnected()V
    .locals 1

    .line 154
    new-instance v0, Lcom/autochips/bluetooth/service/MyBtService$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/service/MyBtService$2;-><init>(Lcom/autochips/bluetooth/service/MyBtService;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unregisterListener()V
    .locals 2

    const-string v0, "MyBtService"

    const-string v1, "unregisterListener"

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 1

    .line 344
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->acceptCall()V

    return-void
.end method

.method public bondDevice(Ljava/lang/String;)V
    .locals 0

    .line 405
    new-instance p1, Lcom/autochips/bluetooth/service/MyBtService$5;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/service/MyBtService$5;-><init>(Lcom/autochips/bluetooth/service/MyBtService;)V

    invoke-static {p1}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 1

    .line 279
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/info/BTCallManager;->call(Ljava/lang/String;)V

    return-void
.end method

.method public cancelDiscovery()V
    .locals 2

    const-string v0, "MyBtService"

    const-string v1, "cancelDiscovery"

    .line 254
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->isSearching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->stopDiscovery()V

    :cond_0
    return-void
.end method

.method public closeBt()V
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close bluetooth1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/control/Bluetooth;->isbtopened()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyBtService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->isbtopened()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "close bluetooth2"

    .line 198
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Lcom/autochips/bluetooth/service/MyBtService$3;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/service/MyBtService$3;-><init>(Lcom/autochips/bluetooth/service/MyBtService;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService;->autoConnectDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 212
    invoke-direct {p0}, Lcom/autochips/bluetooth/service/MyBtService;->clearDisconnectedAndConnect()V

    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 2

    .line 386
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->cancelDiscovery()V

    .line 389
    iget-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 390
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->cancelDiscovery()V

    :cond_1
    return-void
.end method

.method public deleteBond(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public disConnect(Ljava/lang/String;)V
    .locals 3

    .line 372
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->cancelDiscovery()V

    .line 375
    iget-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->cancelDiscovery()V

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disConnect String mac name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MyBtService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public endCall()V
    .locals 1

    .line 339
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->endCall()V

    return-void
.end method

.method public getCallList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/autochips/bluetooth/model/MyCall;",
            ">;"
        }
    .end annotation

    .line 487
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getCallLog()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation

    .line 435
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getCallLogs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCallNumber()Ljava/lang/String;
    .locals 1

    .line 325
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getCallState()I
    .locals 1

    .line 332
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v0

    return v0
.end method

.method public getCallTime()Ljava/lang/String;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->getCallTime(Lcom/autochips/bluetooth/model/MyCall;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectState()I
    .locals 1

    .line 314
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getConnectState()I

    move-result v0

    return v0
.end method

.method public getConnectedDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;
    .locals 1

    .line 309
    invoke-direct {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getCurrentConnectedDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getContact()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation

    .line 440
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getContacts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;
    .locals 1

    .line 492
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiscoverDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/MyBluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 462
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getDiscoveryDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDiscoverState()Z
    .locals 1

    .line 482
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTStateManager;->isDiscoverState()Z

    move-result v0

    return v0
.end method

.method public getPairedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/MyBluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 467
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getPairedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 6

    const/16 v0, 0xbbe

    if-eq p1, v0, :cond_d

    const/16 v0, 0xbc4

    const/16 v1, 0xfa2

    if-eq p1, v0, :cond_c

    const/16 v0, 0xbc6

    if-eq p1, v0, :cond_b

    const/16 v0, 0xbcc

    const/16 v2, 0xfaf

    const-string v3, "MyBtService"

    const-string v4, ""

    const/4 v5, 0x0

    if-eq p1, v0, :cond_6

    const/16 v0, 0xbc9

    if-eq p1, v0, :cond_5

    const/16 v0, 0xbca

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    .line 836
    :pswitch_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTStateManager;->getAccState()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 838
    iget-object p1, p0, Lcom/autochips/bluetooth/service/MyBtService;->accOffMac:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 839
    iget-object p1, p0, Lcom/autochips/bluetooth/service/MyBtService;->accOffMac:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/service/MyBtService;->connect(Ljava/lang/String;)V

    .line 840
    iput-object v4, p0, Lcom/autochips/bluetooth/service/MyBtService;->accOffMac:Ljava/lang/String;

    goto/16 :goto_1

    .line 842
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTStateManager;->getAccState()I

    move-result p1

    if-nez p1, :cond_e

    .line 844
    invoke-direct {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getCurrentConnectedDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 846
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/service/MyBtService;->accOffMac:Ljava/lang/String;

    .line 847
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/service/MyBtService;->disConnect(Ljava/lang/String;)V

    .line 849
    :cond_1
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->endLTECalls()V

    goto/16 :goto_1

    .line 830
    :pswitch_1
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_e

    .line 832
    invoke-direct {p0}, Lcom/autochips/bluetooth/service/MyBtService;->startAutoConnected()V

    goto/16 :goto_1

    .line 812
    :pswitch_2
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 815
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    const/16 p2, 0x7d8

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result p1

    if-eq p1, v0, :cond_2

    sget-boolean p1, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->isShowing:Z

    if-eqz p1, :cond_2

    .line 816
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class v0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 817
    :cond_2
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result p1

    if-eq p1, v0, :cond_e

    sget-boolean p1, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->isShowing:Z

    if-eqz p1, :cond_e

    .line 818
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class v0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 822
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "backCarObserver 2backState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/service/MyBtService;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/autochips/bluetooth/util/StaticUtil;->isBackCarForeground(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result p1

    if-eq p1, v0, :cond_e

    iget-object p1, p0, Lcom/autochips/bluetooth/service/MyBtService;->context:Landroid/content/Context;

    const-class p2, Lcom/autochips/bluetooth/MainActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/util/StaticUtil;->isForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 824
    invoke-direct {p0}, Lcom/autochips/bluetooth/service/MyBtService;->showCallView()V

    goto/16 :goto_1

    :pswitch_3
    const/16 p1, 0xfb0

    .line 779
    invoke-virtual {p2, p1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 p1, 0xfb1

    .line 780
    invoke-virtual {p2, p1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto/16 :goto_1

    .line 769
    :pswitch_4
    iget-object p1, p0, Lcom/autochips/bluetooth/service/MyBtService;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/autochips/bluetooth/service/MyBtService$7;

    invoke-direct {p2, p0}, Lcom/autochips/bluetooth/service/MyBtService$7;-><init>(Lcom/autochips/bluetooth/service/MyBtService;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 766
    :pswitch_5
    invoke-direct {p0}, Lcom/autochips/bluetooth/service/MyBtService;->showCallView()V

    goto/16 :goto_1

    .line 735
    :cond_4
    invoke-virtual {p2, v2}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x4

    .line 736
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, v5}, Lcom/autochips/bluetooth/service/MyBtService;->notifyDataChange(ILjava/lang/String;Z)V

    goto/16 :goto_1

    .line 730
    :cond_5
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    const/16 p1, 0xfa3

    .line 731
    invoke-virtual {p2, p1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto/16 :goto_1

    .line 740
    :cond_6
    invoke-virtual {p2, v2}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 p2, 0x9

    if-eqz p1, :cond_8

    .line 742
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getConnectedDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 743
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->startDownloadPhoneBook()V

    goto :goto_0

    .line 746
    :cond_7
    invoke-direct {p0, p2, v4, v5}, Lcom/autochips/bluetooth/service/MyBtService;->notifyDataChange(ILjava/lang/String;Z)V

    const-string p2, "setSyncContact FLAG_PBAP_CHANGED 1"

    .line 747
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 750
    :cond_8
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getConnectedDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 752
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getConnectedDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v0

    if-nez v0, :cond_9

    .line 753
    invoke-direct {p0, p2, v4, v5}, Lcom/autochips/bluetooth/service/MyBtService;->notifyDataChange(ILjava/lang/String;Z)V

    .line 755
    :cond_9
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->stopDownloadPhoneBook()V

    goto :goto_0

    .line 758
    :cond_a
    invoke-direct {p0, p2, v4, v5}, Lcom/autochips/bluetooth/service/MyBtService;->notifyDataChange(ILjava/lang/String;Z)V

    const-string p2, "setSyncContact FLAG_PBAP_CHANGED 2"

    .line 759
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p2, 0x3

    .line 762
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, v5}, Lcom/autochips/bluetooth/service/MyBtService;->notifyDataChange(ILjava/lang/String;Z)V

    goto :goto_1

    :cond_b
    const/16 p1, 0xfab

    .line 714
    invoke-virtual {p2, p1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    const/16 p1, 0xfa4

    .line 715
    invoke-virtual {p2, p1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    goto :goto_1

    .line 725
    :cond_c
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 726
    invoke-direct {p0}, Lcom/autochips/bluetooth/service/MyBtService;->startAutoConnected()V

    goto :goto_1

    .line 711
    :cond_d
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->cancelDiscovery()V

    :cond_e
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xbd6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbdb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAutoAnswer()Z
    .locals 1

    .line 472
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTStateManager;->isAutoAnswer()Z

    move-result v0

    return v0
.end method

.method public isBusying()Z
    .locals 1

    .line 454
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->isBonding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BTServiceOnReceive  action="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MyBtService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public openBt()V
    .locals 3

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open bluetooth1 bluetoothAdapter state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/service/MyBtService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyBtService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open bluetooth1 Bluetooth.getInstance().isbtopen ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autochips/bluetooth/control/Bluetooth;->isbtopened()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->isbtopened()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "open bluetooth2"

    .line 185
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->openbt()V

    .line 189
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/info/BTStateManager;->setBtStatePersist(Z)V

    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 1

    .line 349
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->rejectCall()V

    return-void
.end method

.method public sendDTMF(Ljava/lang/String;)V
    .locals 1

    .line 354
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/info/BTCallManager;->sendDTMF(Ljava/lang/String;)V

    return-void
.end method

.method public setAutoAnswer(Z)V
    .locals 1

    .line 477
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/info/BTStateManager;->setAutoAnswer(Z)V

    return-void
.end method

.method public setAutoConnect(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    const-string v1, "persist.bt.auto.connect"

    .line 497
    # invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 498
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoConnect set="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MyBtService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc

    .line 500
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0}, Lcom/autochips/bluetooth/service/MyBtService;->notifyDataChange(ILjava/lang/String;Z)V

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    move-result v0

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set deviceName result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MyBtService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviBluetoothDeviceName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDisconnectAndConnect(Lcom/autochips/bluetooth/model/MyBluetoothDevice;Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 446
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

    const-string v1, "MyBtService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService;->disconnectAndConnect:[Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    aput-object p1, v0, v2

    .line 448
    aput-object p2, v0, v3

    :cond_0
    return-void
.end method

.method public startDiscovery()V
    .locals 2

    const-string v0, "MyBtService"

    const-string v1, "startDiscovery"

    .line 217
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->isBusying()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "startDiscovery busying"

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 222
    :cond_0
    new-instance v0, Lcom/autochips/bluetooth/service/MyBtService$4;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/service/MyBtService$4;-><init>(Lcom/autochips/bluetooth/service/MyBtService;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startDownloadPhoneBook()V
    .locals 2

    .line 284
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getConnectedDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/autochips/bluetooth/service/MyBtService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getBluetoothDevice(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothDevice;

    const-string v0, "MyBtService"

    const-string v1, "startDownloadPhoneBook"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopDownloadPhoneBook()V
    .locals 2

    .line 295
    invoke-virtual {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getConnectedDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/autochips/bluetooth/service/MyBtService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getBluetoothDevice(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothDevice;

    const-string v0, "MyBtService"

    const-string v1, "stopDownloadPhoneBook"

    .line 303
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public switchAudioChannel()V
    .locals 3

    .line 359
    invoke-direct {p0}, Lcom/autochips/bluetooth/service/MyBtService;->getCurrentConnectedDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 361
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getSCOConnectState()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "MyBtService"

    if-ne v0, v1, :cond_0

    const-string v0, "switchAutoChannel disconnect audio"

    .line 362
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->disConnectSCOAudio()V

    goto :goto_0

    :cond_0
    const-string v0, "switchAutoChannel connect audio"

    .line 365
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->connectSCOAudio()V

    :cond_1
    :goto_0
    return-void
.end method
