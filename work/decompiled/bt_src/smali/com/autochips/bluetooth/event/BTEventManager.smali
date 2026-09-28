.class public Lcom/autochips/bluetooth/event/BTEventManager;
.super Landroid/content/BroadcastReceiver;
.source "BTEventManager.java"


# static fields
.field public static MSG_BT_STATUS_NOTIFY:I = 0x3f0

.field public static final TAG:Ljava/lang/String; = "BTEventManager20210602"

.field private static btEventManager:Lcom/autochips/bluetooth/event/BTEventManager;


# instance fields
.field private final ACTION_ABANDON_CALL_FOCUS:Ljava/lang/String;

.field private final ACTION_REQUEST_CALL_FOCUS:Ljava/lang/String;

.field audioManager:Landroid/media/AudioManager;

.field private context:Landroid/content/Context;

.field private mCheckMsgHandler:Landroid/os/Handler;

.field private mCheckMsgThread:Landroid/os/HandlerThread;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "com.bluetooth.call.request.audiofocus"

    .line 66
    iput-object v0, p0, Lcom/autochips/bluetooth/event/BTEventManager;->ACTION_REQUEST_CALL_FOCUS:Ljava/lang/String;

    const-string v0, "com.bluetooth.call.abandon.audiofocus"

    .line 67
    iput-object v0, p0, Lcom/autochips/bluetooth/event/BTEventManager;->ACTION_ABANDON_CALL_FOCUS:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/event/BTEventManager;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/autochips/bluetooth/event/BTEventManager;->getEventMail()Lcom/carlos/eventlibrary/EventMail;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/event/BTEventManager;)Landroid/content/Context;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/autochips/bluetooth/event/BTEventManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method private getEventMail()Lcom/carlos/eventlibrary/EventMail;
    .locals 1

    .line 827
    new-instance v0, Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {v0}, Lcom/carlos/eventlibrary/EventMail;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/autochips/bluetooth/event/BTEventManager;
    .locals 2

    .line 78
    sget-object v0, Lcom/autochips/bluetooth/event/BTEventManager;->btEventManager:Lcom/autochips/bluetooth/event/BTEventManager;

    if-nez v0, :cond_1

    .line 79
    const-class v0, Lcom/autochips/bluetooth/event/BTEventManager;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/event/BTEventManager;->btEventManager:Lcom/autochips/bluetooth/event/BTEventManager;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-direct {v1}, Lcom/autochips/bluetooth/event/BTEventManager;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/event/BTEventManager;->btEventManager:Lcom/autochips/bluetooth/event/BTEventManager;

    .line 83
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 85
    :cond_1
    :goto_0
    sget-object v0, Lcom/autochips/bluetooth/event/BTEventManager;->btEventManager:Lcom/autochips/bluetooth/event/BTEventManager;

    return-object v0
.end method

.method private initBackThread()V
    .locals 2

    .line 905
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "check-message-coming"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/event/BTEventManager;->mCheckMsgThread:Landroid/os/HandlerThread;

    .line 906
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 907
    new-instance v0, Lcom/autochips/bluetooth/event/BTEventManager$7;

    iget-object v1, p0, Lcom/autochips/bluetooth/event/BTEventManager;->mCheckMsgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/autochips/bluetooth/event/BTEventManager$7;-><init>(Lcom/autochips/bluetooth/event/BTEventManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/event/BTEventManager;->mCheckMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method private registerBroadcast()V
    .locals 2

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.bluetooth.call.request.audiofocus"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.bluetooth.call.abandon.audiofocus"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.FOUND"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.ckx.bluetooth.action.STATE_CHANGED"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.DISCOVERY_FINISHED"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.DISCOVERY_STARTED"

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.FOUND"

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.profilestatechange"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_onestep"

    .line 153
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_finish"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.hf.BluetoothHfUtility.action.callStateChange"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.callnameandnumchange"

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.BluetoothHfService.action.SCO_STATE_CHANGED"

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_NEW_CALL"

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochiips.bluetooth.profile.action.AG_EVENT"

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.changelocaldevicename"

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/autochips/bluetooth/event/BTEventManager;->context:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerEventCallback(Landroid/content/Context;)V
    .locals 5

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys/SYS_MCU_SERVICE_READY"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/autochips/bluetooth/event/BTEventManager$1;

    iget-object v3, p0, Lcom/autochips/bluetooth/event/BTEventManager;->mainHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, p1}, Lcom/autochips/bluetooth/event/BTEventManager$1;-><init>(Lcom/autochips/bluetooth/event/BTEventManager;Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys/SYS_BT_CALL_STATUS"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/autochips/bluetooth/event/BTEventManager$2;

    iget-object v4, p0, Lcom/autochips/bluetooth/event/BTEventManager;->mainHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4, p1}, Lcom/autochips/bluetooth/event/BTEventManager$2;-><init>(Lcom/autochips/bluetooth/event/BTEventManager;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/media/BLUETOOTH_INFO"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/autochips/bluetooth/event/BTEventManager$3;

    iget-object v4, p0, Lcom/autochips/bluetooth/event/BTEventManager;->mainHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/autochips/bluetooth/event/BTEventManager$3;-><init>(Lcom/autochips/bluetooth/event/BTEventManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys/SYS_REAR_CAMERA"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/autochips/bluetooth/event/BTEventManager$4;

    iget-object v4, p0, Lcom/autochips/bluetooth/event/BTEventManager;->mainHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4, p1}, Lcom/autochips/bluetooth/event/BTEventManager$4;-><init>(Lcom/autochips/bluetooth/event/BTEventManager;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys/SYS_ACC_STATUS"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/autochips/bluetooth/event/BTEventManager$5;

    iget-object v4, p0, Lcom/autochips/bluetooth/event/BTEventManager;->mainHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4, p1}, Lcom/autochips/bluetooth/event/BTEventManager$5;-><init>(Lcom/autochips/bluetooth/event/BTEventManager;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    .line 92
    iput-object p1, p0, Lcom/autochips/bluetooth/event/BTEventManager;->context:Landroid/content/Context;

    const-string v0, "audio"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/autochips/bluetooth/event/BTEventManager;->audioManager:Landroid/media/AudioManager;

    .line 96
    invoke-direct {p0}, Lcom/autochips/bluetooth/event/BTEventManager;->initBackThread()V

    .line 97
    invoke-direct {p0}, Lcom/autochips/bluetooth/event/BTEventManager;->registerBroadcast()V

    .line 98
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/event/BTEventManager;->registerEventCallback(Landroid/content/Context;)V

    return-void
.end method

.method public notifyBtStatus(Landroid/content/Intent;)V
    .locals 2

    .line 919
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTEventManager;->mCheckMsgHandler:Landroid/os/Handler;

    sget v1, Lcom/autochips/bluetooth/event/BTEventManager;->MSG_BT_STATUS_NOTIFY:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 230
    new-instance v0, Lcom/autochips/bluetooth/event/BTEventManager$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/autochips/bluetooth/event/BTEventManager$6;-><init>(Lcom/autochips/bluetooth/event/BTEventManager;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTEventManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public sendAutoAnswerChangeEvent(Z)V
    .locals 2

    .line 836
    invoke-direct {p0}, Lcom/autochips/bluetooth/event/BTEventManager;->getEventMail()Lcom/carlos/eventlibrary/EventMail;

    move-result-object v0

    .line 837
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v1, 0xfaf

    invoke-virtual {v0, v1, p1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 838
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object p1

    const/16 v1, 0xbca

    invoke-virtual {p1, v1, v0}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    return-void
.end method

.method public sendBTPersistStateChangeEvent(Z)V
    .locals 2

    .line 847
    invoke-direct {p0}, Lcom/autochips/bluetooth/event/BTEventManager;->getEventMail()Lcom/carlos/eventlibrary/EventMail;

    move-result-object v0

    .line 848
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v1, 0xfaf

    invoke-virtual {v0, v1, p1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 849
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object p1

    const/16 v1, 0xbcb

    invoke-virtual {p1, v1, v0}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    return-void
.end method

.method public sendCallStateChangeAction(I)V
    .locals 2

    .line 899
    invoke-direct {p0}, Lcom/autochips/bluetooth/event/BTEventManager;->getEventMail()Lcom/carlos/eventlibrary/EventMail;

    move-result-object v0

    .line 900
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0xfa2

    invoke-virtual {v0, v1, p1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 901
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object p1

    const/16 v1, 0xbd9

    invoke-virtual {p1, v1, v0}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    return-void
.end method

.method public sendDismissCallViewChange()V
    .locals 3

    .line 870
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v0

    const/16 v1, 0xbd7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    return-void
.end method

.method public sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 1

    .line 856
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    return-void
.end method

.method public sendNotAnswerCallNotificationAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 880
    invoke-direct {p0}, Lcom/autochips/bluetooth/event/BTEventManager;->getEventMail()Lcom/carlos/eventlibrary/EventMail;

    move-result-object v0

    const/16 v1, 0xfb0

    .line 881
    invoke-virtual {v0, v1, p1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    const/16 p1, 0xfb1

    .line 882
    invoke-virtual {v0, p1, p2}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 883
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object p1

    const/16 p2, 0xbd8

    invoke-virtual {p1, p2, v0}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    return-void
.end method

.method public sendShowCallViewChange()V
    .locals 3

    .line 863
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v0

    const/16 v1, 0xbd6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    return-void
.end method

.method public sendUpdateCallStatusNotificationAction(Ljava/lang/String;)V
    .locals 2

    const-string v0, "BTEventManager20210602"

    const-string v1, "sendUpdateCallStatusNotificationAction"

    .line 887
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-direct {p0}, Lcom/autochips/bluetooth/event/BTEventManager;->getEventMail()Lcom/carlos/eventlibrary/EventMail;

    move-result-object v0

    const/16 v1, 0xfb0

    .line 889
    invoke-virtual {v0, v1, p1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 890
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object p1

    const/16 v1, 0x138a

    invoke-virtual {p1, v1, v0}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    return-void
.end method
