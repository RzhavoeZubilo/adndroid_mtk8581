.class public Lcom/autochips/bluetooth/info/BTPBAPManager;
.super Ljava/lang/Object;
.source "BTPBAPManager.java"

# interfaces
.implements Lcom/autochips/bluetooth/event/IBTObserver;


# static fields
.field public static final ACTION_DOWNLOAD_STATE_CHANGE:I = 0x3e9

.field public static final ACTION_HFP_CONNECT_STATE_CHANGE:I = 0x3eb

.field public static final ACTION_SYNC_CONTACT_STATE_CHANGE:I = 0x3ea

.field public static final STATE_SYNC_CONTACT_OFF:I = 0x3

.field public static final STATE_SYNC_CONTACT_ON:I = 0x1

.field public static final STATE_SYNC_CONTACT_TURNING_OFF:I = 0x4

.field public static final STATE_SYNC_CONTACT_TURNING_ON:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BTPBAPManager"

.field private static btpbapManager:Lcom/autochips/bluetooth/info/BTPBAPManager;


# instance fields
.field private context:Landroid/content/Context;

.field private currentHFPBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

.field private isStopHandleCallLog:Z

.field private isStopHandleContactData:Z

.field private final letterPosition:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

.field private final phoneBookDownloadLock:Ljava/lang/Object;

.field private syncContactState:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownloadLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->isStopHandleContactData:Z

    .line 73
    iput-boolean v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->isStopHandleCallLog:Z

    .line 83
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->letterPosition:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/info/BTPBAPManager;)Lcom/autochips/bluetooth/model/PhoneBookDownload;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

    return-object p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/info/BTPBAPManager;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->isStopHandleCallLog:Z

    return p0
.end method

.method static synthetic access$102(Lcom/autochips/bluetooth/info/BTPBAPManager;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->isStopHandleCallLog:Z

    return p1
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/info/BTPBAPManager;)Ljava/lang/Object;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownloadLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/info/BTPBAPManager;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->isStopHandleContactData:Z

    return p0
.end method

.method static synthetic access$302(Lcom/autochips/bluetooth/info/BTPBAPManager;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->isStopHandleContactData:Z

    return p1
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/info/BTPBAPManager;)Ljava/util/HashMap;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->letterPosition:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/info/BTPBAPManager;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->syncContactState:I

    return p0
.end method

.method static synthetic access$502(Lcom/autochips/bluetooth/info/BTPBAPManager;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->syncContactState:I

    return p1
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/info/BTPBAPManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->stopDownload()V

    return-void
.end method

.method static synthetic access$700(Lcom/autochips/bluetooth/info/BTPBAPManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->startDownload()V

    return-void
.end method

.method static synthetic access$800(Lcom/autochips/bluetooth/info/BTPBAPManager;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;
    .locals 2

    .line 98
    sget-object v0, Lcom/autochips/bluetooth/info/BTPBAPManager;->btpbapManager:Lcom/autochips/bluetooth/info/BTPBAPManager;

    if-nez v0, :cond_1

    .line 99
    const-class v0, Lcom/autochips/bluetooth/info/BTDeviceManager;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/info/BTPBAPManager;->btpbapManager:Lcom/autochips/bluetooth/info/BTPBAPManager;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-direct {v1}, Lcom/autochips/bluetooth/info/BTPBAPManager;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/info/BTPBAPManager;->btpbapManager:Lcom/autochips/bluetooth/info/BTPBAPManager;

    .line 103
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 105
    :cond_1
    :goto_0
    sget-object v0, Lcom/autochips/bluetooth/info/BTPBAPManager;->btpbapManager:Lcom/autochips/bluetooth/info/BTPBAPManager;

    return-object v0
.end method

.method private handleCallLogsData()V
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autochips/bluetooth/info/BTPBAPManager$1;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/info/BTPBAPManager$1;-><init>(Lcom/autochips/bluetooth/info/BTPBAPManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 352
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private handleContactData()V
    .locals 2

    .line 381
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autochips/bluetooth/info/BTPBAPManager$3;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/info/BTPBAPManager$3;-><init>(Lcom/autochips/bluetooth/info/BTPBAPManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 468
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startDownload()V
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->currentHFPBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    if-eqz v0, :cond_0

    const-string v0, "BTPBAPManager"

    const-string v1, "startDownload"

    .line 514
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownloadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 516
    :try_start_0
    new-instance v1, Lcom/autochips/bluetooth/model/PhoneBookDownload;

    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->currentHFPBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-direct {v1, v2}, Lcom/autochips/bluetooth/model/PhoneBookDownload;-><init>(Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V

    iput-object v1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

    .line 517
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->currentHFPBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->startDownloadPhoneBook(Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 517
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private startDownloadCallLog(Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V
    .locals 0

    .line 268
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->isHFPconnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->downloadCallLog()V

    :cond_0
    return-void
.end method

.method private startDownloadPhoneBook(Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V
    .locals 1

    const-string p1, "BTPBAPManager"

    const-string v0, "startDownloadPhoneBook"

    .line 258
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->isHFPconnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->downloadphonebook()V

    :cond_0
    return-void
.end method

.method private stopDownload()V
    .locals 2

    .line 494
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->stopalldownload()V

    .line 495
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownloadLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 496
    :try_start_0
    iput-object v1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

    .line 497
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 498
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    iget-object v1, v0, Lcom/autochips/bluetooth/info/BTBaseManager;->callLogsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 499
    :try_start_1
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/info/BTBaseManager;->callLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 500
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 501
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/info/BTBaseManager;->contactsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 502
    :try_start_2
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v1

    iget-object v1, v1, Lcom/autochips/bluetooth/info/BTBaseManager;->contacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 503
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 504
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    iget-object v1, v0, Lcom/autochips/bluetooth/info/BTBaseManager;->txzContactsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 505
    :try_start_3
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/info/BTBaseManager;->txzContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 506
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 503
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    .line 500
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 497
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method


# virtual methods
.method public disableSyncContact()V
    .locals 1

    .line 475
    new-instance v0, Lcom/autochips/bluetooth/info/BTPBAPManager$4;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/info/BTPBAPManager$4;-><init>(Lcom/autochips/bluetooth/info/BTPBAPManager;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCallLogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation

    .line 240
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/info/BTBaseManager;->callLogs:Ljava/util/List;

    return-object v0
.end method

.method public getContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation

    .line 244
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/info/BTBaseManager;->contacts:Ljava/util/List;

    return-object v0
.end method

.method public getLetterPosition()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->letterPosition:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPhoneBookDownload()Lcom/autochips/bluetooth/model/PhoneBookDownload;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

    return-object v0
.end method

.method public getSyncContactState()I
    .locals 1

    .line 557
    iget v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->syncContactState:I

    return v0
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 7

    const/16 v0, 0xbba

    const/16 v1, 0xfa2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_8

    const/16 v0, 0xbc2

    if-eq p1, v0, :cond_7

    const/16 v0, 0xbd2

    const/4 v1, 0x6

    const/4 v4, 0x2

    const/16 v5, 0xfac

    const/16 v6, 0x3e9

    if-eq p1, v0, :cond_4

    const/16 v0, 0xbe7

    if-eq p1, v0, :cond_3

    const/16 v0, 0xbe8

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 212
    :cond_0
    invoke-virtual {p2, v5}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 213
    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

    if-eqz p2, :cond_c

    const/4 p2, 0x4

    if-eq p1, v4, :cond_2

    if-eq p1, v1, :cond_1

    goto/16 :goto_1

    .line 225
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownloadLock:Ljava/lang/Object;

    monitor-enter p1

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

    invoke-virtual {v0, p2}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->setCallLogDownloadState(I)V

    .line 227
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    invoke-virtual {p1, v6, v3}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    .line 229
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->handleCallLogsData()V

    goto/16 :goto_1

    :catchall_0
    move-exception p2

    .line 227
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 217
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownloadLock:Ljava/lang/Object;

    monitor-enter p1

    .line 218
    :try_start_2
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

    invoke-virtual {v0, p2}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->setContactDownloadState(I)V

    .line 219
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 220
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->handleContactData()V

    .line 221
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    invoke-virtual {p1, v6, v3}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    .line 222
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->getMyBluetoothDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->startDownloadCallLog(Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V

    goto/16 :goto_1

    :catchall_1
    move-exception p2

    .line 219
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2

    :cond_3
    const/16 p1, 0xfae

    .line 179
    invoke-virtual {p2, p1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 180
    invoke-virtual {p2, v5}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 181
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

    if-eqz p1, :cond_c

    .line 182
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    invoke-virtual {p1, v6, v3}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_1

    .line 187
    :cond_4
    invoke-virtual {p2, v5}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xfad

    .line 188
    invoke-virtual {p2, v0}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 189
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

    if-eqz v0, :cond_c

    if-eq p1, v4, :cond_6

    if-eq p1, v1, :cond_5

    goto/16 :goto_1

    .line 200
    :cond_5
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownloadLock:Ljava/lang/Object;

    monitor-enter p1

    .line 201
    :try_start_4
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

    invoke-virtual {v0, v2}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->setCallLogDownloadState(I)V

    .line 202
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

    invoke-virtual {v0, p2}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->setCallLogIndex(I)V

    .line 203
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 204
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    invoke-virtual {p1, v6, v3}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_1

    :catchall_2
    move-exception p2

    .line 203
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p2

    .line 192
    :cond_6
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownloadLock:Ljava/lang/Object;

    monitor-enter p1

    .line 193
    :try_start_6
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

    invoke-virtual {v0, v2}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->setContactDownloadState(I)V

    .line 194
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

    invoke-virtual {v0, p2}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->setContactIndex(I)V

    .line 195
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 196
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    invoke-virtual {p1, v6, v3}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_1

    :catchall_3
    move-exception p2

    .line 195
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p2

    .line 121
    :cond_7
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 122
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/info/BTBaseManager;->getBluetoothPbapClient()Landroid/bluetooth/BluetoothPbapClient;

    move-result-object p2

    if-nez p2, :cond_c

    return-void

    .line 147
    :cond_8
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_a

    const/16 p1, 0xfa4

    .line 149
    invoke-virtual {p2, p1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 151
    check-cast p1, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->currentHFPBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 152
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->currentHFPBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->setLastConnectMac(Ljava/lang/String;)V

    const-string p1, "BTPBAPManager"

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "syncContactState="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->syncContactState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "   is:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    iget-boolean v0, v0, Lcom/autochips/bluetooth/control/Bluetooth;->isHFPdisconnecting:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->getMyBluetoothDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->currentHFPBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

    .line 155
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->getMyBluetoothDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->currentHFPBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->phoneBookDownload:Lcom/autochips/bluetooth/model/PhoneBookDownload;

    .line 156
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->getContactDownloadState()I

    move-result p1

    if-nez p1, :cond_b

    .line 157
    :cond_9
    iget p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->syncContactState:I

    if-ne p1, v2, :cond_b

    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    iget-boolean p1, p1, Lcom/autochips/bluetooth/control/Bluetooth;->isHFPdisconnecting:Z

    if-nez p1, :cond_b

    .line 158
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->startDownload()V

    goto :goto_0

    .line 163
    :cond_a
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->stopDownload()V

    .line 164
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object p1

    iget-object p1, p1, Lcom/autochips/bluetooth/info/BTBaseManager;->callLogsLock:Ljava/lang/Object;

    monitor-enter p1

    .line 165
    :try_start_8
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object p2

    iget-object p2, p2, Lcom/autochips/bluetooth/info/BTBaseManager;->callLogs:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 166
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 167
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object p1

    iget-object p2, p1, Lcom/autochips/bluetooth/info/BTBaseManager;->contactsLock:Ljava/lang/Object;

    monitor-enter p2

    .line 168
    :try_start_9
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object p1

    iget-object p1, p1, Lcom/autochips/bluetooth/info/BTBaseManager;->contacts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 169
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 170
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object p1

    iget-object p1, p1, Lcom/autochips/bluetooth/info/BTBaseManager;->txzContactsLock:Ljava/lang/Object;

    monitor-enter p1

    .line 171
    :try_start_a
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object p2

    iget-object p2, p2, Lcom/autochips/bluetooth/info/BTBaseManager;->txzContacts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 172
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 173
    iput-object v3, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->currentHFPBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 175
    :cond_b
    :goto_0
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 p2, 0x3eb

    invoke-virtual {p1, p2, v3}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_c
    :goto_1
    return-void

    :catchall_4
    move-exception p2

    .line 172
    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p2

    :catchall_5
    move-exception p1

    .line 169
    :try_start_c
    monitor-exit p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw p1

    :catchall_6
    move-exception p2

    .line 166
    :try_start_d
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw p2
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->context:Landroid/content/Context;

    .line 113
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerSecondObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 114
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->getSyncContactState()I

    move-result p1

    iput p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager;->syncContactState:I

    return-void
.end method

.method public isdownloadidle()Z
    .locals 1

    .line 252
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->isdownloadidle()Z

    move-result v0

    return v0
.end method

.method public openSyncContact()V
    .locals 1

    .line 533
    new-instance v0, Lcom/autochips/bluetooth/info/BTPBAPManager$5;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/info/BTPBAPManager$5;-><init>(Lcom/autochips/bluetooth/info/BTPBAPManager;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryNameByNumber(Lcom/autochips/bluetooth/model/MyCall;)V
    .locals 2

    .line 359
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autochips/bluetooth/info/BTPBAPManager$2;

    invoke-direct {v1, p0, p1}, Lcom/autochips/bluetooth/info/BTPBAPManager$2;-><init>(Lcom/autochips/bluetooth/info/BTPBAPManager;Lcom/autochips/bluetooth/model/MyCall;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 374
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public syncContact()V
    .locals 2

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncContact isdownloadidle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->isdownloadidle()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTPBAPManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->isdownloadidle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->openSyncContact()V

    :cond_0
    return-void
.end method

.method public syncTxzContacts()V
    .locals 2

    .line 568
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autochips/bluetooth/info/BTPBAPManager$6;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/info/BTPBAPManager$6;-><init>(Lcom/autochips/bluetooth/info/BTPBAPManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 604
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
