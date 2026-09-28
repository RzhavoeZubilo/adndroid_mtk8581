.class public Lcom/autochips/bluetooth/info/BTMusicManager;
.super Ljava/lang/Object;
.source "BTMusicManager.java"

# interfaces
.implements Lcom/autochips/bluetooth/event/IBTObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "BTMusicManager"

.field private static btMusicManager:Lcom/autochips/bluetooth/info/BTMusicManager;


# instance fields
.field private final AVRCPLock:Ljava/lang/Object;

.field a2dpState:I

.field avrcpState:I

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTMusicManager;->AVRCPLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/autochips/bluetooth/info/BTMusicManager;->a2dpState:I

    .line 32
    iput v0, p0, Lcom/autochips/bluetooth/info/BTMusicManager;->avrcpState:I

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTMusicManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/info/BTMusicManager;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/autochips/bluetooth/info/BTMusicManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance()Lcom/autochips/bluetooth/info/BTMusicManager;
    .locals 2

    .line 41
    sget-object v0, Lcom/autochips/bluetooth/info/BTMusicManager;->btMusicManager:Lcom/autochips/bluetooth/info/BTMusicManager;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/autochips/bluetooth/info/BTMusicManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/info/BTMusicManager;->btMusicManager:Lcom/autochips/bluetooth/info/BTMusicManager;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/autochips/bluetooth/info/BTMusicManager;

    invoke-direct {v1}, Lcom/autochips/bluetooth/info/BTMusicManager;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/info/BTMusicManager;->btMusicManager:Lcom/autochips/bluetooth/info/BTMusicManager;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Lcom/autochips/bluetooth/info/BTMusicManager;->btMusicManager:Lcom/autochips/bluetooth/info/BTMusicManager;

    return-object v0
.end method


# virtual methods
.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 2

    const/16 v0, 0xbb9

    const/16 v1, 0xfa2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbbb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbe6

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/autochips/bluetooth/info/BTMusicManager;->a2dpState:I

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/autochips/bluetooth/info/BTMusicManager;->avrcpState:I

    :goto_0
    return-void
.end method

.method init(Landroid/content/Context;)V
    .locals 3

    .line 52
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTMusicManager;->mContext:Landroid/content/Context;

    const-string v0, "BTMusicManager"

    const-string v1, "init"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerSecondObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.carocean.status.provider/sys/SYS_GPS_GUIDING"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/info/BTMusicManager$1;

    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTMusicManager;->handler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/autochips/bluetooth/info/BTMusicManager$1;-><init>(Lcom/autochips/bluetooth/info/BTMusicManager;Landroid/os/Handler;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public resumeBTMusic()V
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeBTMusic avrcpState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/info/BTMusicManager;->avrcpState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a2dpState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/info/BTMusicManager;->a2dpState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/control/Bluetooth;->setA2DPActive(Z)V

    return-void
.end method

.method public revokeBTMusic()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTMusicManager;->AVRCPLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "BTMusicManager"

    const-string v2, "revokeBTMusic"

    .line 116
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->setA2DPActive(Z)V

    .line 118
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendAVRCPCmd(I)V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTMusicManager;->AVRCPLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "BTMusicManager"

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAVRCPCmd cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendAvrcpCommand(I)V

    .line 128
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
