.class public Lcom/autochips/bluetooth/info/BTBaseManager;
.super Ljava/lang/Object;
.source "BTBaseManager.java"

# interfaces
.implements Lcom/autochips/bluetooth/event/IBTObserver;


# static fields
.field private static final A2DPSINK_SERVICE_CLASS:Ljava/lang/String; = "com.autochips.bluetooth.a2dpsink.BluetoothA2dpSinkService"

.field private static final AVRCPCT_SERVICE_CLASS:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService"

.field private static final HF_SERVICE_CLASS:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfService"

.field private static final PBAPCLIENT_SERVICE_CLASS:Ljava/lang/String; = "com.autochips.bluetooth.pbapclient.BluetoothPbapClientService"

.field private static final PBSYNC_SERVICE_CLASS:Ljava/lang/String; = "com.autochips.bluetooth.PbSyncManager.PBSyncManagerService"

.field private static final TAG:Ljava/lang/String; = "BTBaseManager"

.field private static btBaseManager:Lcom/autochips/bluetooth/info/BTBaseManager;


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

.field callLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation
.end field

.field final callLogsLock:Ljava/lang/Object;

.field contacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation
.end field

.field final contactsLock:Ljava/lang/Object;

.field private context:Landroid/content/Context;

.field private sharedPreferenceUtil:Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

.field txzContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/TxzContact;",
            ">;"
        }
    .end annotation
.end field

.field final txzContactsLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTBaseManager;->callLogs:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTBaseManager;->contacts:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTBaseManager;->txzContacts:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTBaseManager;->contactsLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTBaseManager;->callLogsLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTBaseManager;->txzContactsLock:Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;
    .locals 2

    .line 67
    sget-object v0, Lcom/autochips/bluetooth/info/BTBaseManager;->btBaseManager:Lcom/autochips/bluetooth/info/BTBaseManager;

    if-nez v0, :cond_1

    .line 68
    const-class v0, Lcom/autochips/bluetooth/info/BTCallManager;

    monitor-enter v0

    .line 69
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/info/BTBaseManager;->btBaseManager:Lcom/autochips/bluetooth/info/BTBaseManager;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/autochips/bluetooth/info/BTBaseManager;

    invoke-direct {v1}, Lcom/autochips/bluetooth/info/BTBaseManager;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/info/BTBaseManager;->btBaseManager:Lcom/autochips/bluetooth/info/BTBaseManager;

    .line 72
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 74
    :cond_1
    :goto_0
    sget-object v0, Lcom/autochips/bluetooth/info/BTBaseManager;->btBaseManager:Lcom/autochips/bluetooth/info/BTBaseManager;

    return-object v0
.end method

.method private setBtDebugLogLevel(Landroid/content/Context;)V
    .locals 4

    const-string v0, "BT_Debug_Log_Level"

    const/4 v1, 0x0

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "file_exsit"

    .line 153
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x1

    .line 156
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 164
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private setServiceState(Landroid/content/Context;Z)V
    .locals 1

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setServiceState isEnable="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BTBaseManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 205
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start service for class["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "] fail:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BTBaseManager"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private stopService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 216
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop service for class["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "] fail:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BTBaseManager"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public GetTelZone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 223
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->getDbManager()Lcom/autochips/bluetooth/control/DBManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "BTBaseManager"

    const-string v0, "Bluetooth.getInstance().getDbManager() == null"

    .line 224
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1

    .line 227
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->getDbManager()Lcom/autochips/bluetooth/control/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/control/DBManager;->GetTelZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTBaseManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method getBluetoothPbapClient()Landroid/bluetooth/BluetoothPbapClient;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTBaseManager;->bluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    return-object v0
.end method

.method getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTBaseManager;->sharedPreferenceUtil:Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    return-object v0
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 2

    const/16 v0, 0xbc4

    const/16 v1, 0xfa2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbdf

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbe5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTBaseManager;->context:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/autochips/bluetooth/info/BTBaseManager;->setServiceState(Landroid/content/Context;Z)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTBaseManager;->context:Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    invoke-direct {v0, p1}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTBaseManager;->sharedPreferenceUtil:Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    .line 81
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTBaseManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 82
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/info/BTBaseManager;->setBtDebugLogLevel(Landroid/content/Context;)V

    .line 83
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/event/BTEventManager;->init(Landroid/content/Context;)V

    .line 84
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/info/BTStateManager;->init(Landroid/content/Context;)V

    .line 85
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->init(Landroid/content/Context;)V

    .line 86
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->init(Landroid/content/Context;)V

    .line 87
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/info/BTCallManager;->init(Landroid/content/Context;)V

    .line 88
    invoke-static {}, Lcom/autochips/bluetooth/info/BTMusicManager;->getInstance()Lcom/autochips/bluetooth/info/BTMusicManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/info/BTMusicManager;->init(Landroid/content/Context;)V

    .line 89
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerFirstObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 90
    invoke-static {}, Lcom/autochips/bluetooth/info/BTExtendManager;->getInstance()Lcom/autochips/bluetooth/info/BTExtendManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/info/BTExtendManager;->init(Landroid/content/Context;)V

    .line 91
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 93
    invoke-direct {p0, p1, v0}, Lcom/autochips/bluetooth/info/BTBaseManager;->setServiceState(Landroid/content/Context;Z)V

    .line 95
    :cond_0
    invoke-static {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance(Landroid/content/Context;)Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->startbtrc()V

    return-void
.end method
