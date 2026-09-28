.class public Lcom/autochips/bluetooth/music/module/BTMusicModule;
.super Ljava/lang/Object;
.source "BTMusicModule.java"


# static fields
.field public static final SERVICE_CONNECT_SUCCESS:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "BTMusicModule"

.field private static btMusicModule:Lcom/autochips/bluetooth/music/module/BTMusicModule;

.field private static globalApplication:Landroid/app/Application;


# instance fields
.field private dataChangeListenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autochips/bluetooth/event/IBTObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field public myService:Lcom/autochips/bluetooth/IBTService;

.field private remoteServiceCallback:Lcom/autochips/bluetooth/IRemoteServiceCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/autochips/bluetooth/music/module/BTMusicModule$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/music/module/BTMusicModule$1;-><init>(Lcom/autochips/bluetooth/music/module/BTMusicModule;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicModule;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 97
    new-instance v0, Lcom/autochips/bluetooth/music/module/BTMusicModule$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/music/module/BTMusicModule$2;-><init>(Lcom/autochips/bluetooth/music/module/BTMusicModule;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicModule;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 109
    new-instance v0, Lcom/autochips/bluetooth/music/module/BTMusicModule$3;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/music/module/BTMusicModule$3;-><init>(Lcom/autochips/bluetooth/music/module/BTMusicModule;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicModule;->remoteServiceCallback:Lcom/autochips/bluetooth/IRemoteServiceCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/music/module/BTMusicModule;)Lcom/autochips/bluetooth/IRemoteServiceCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/autochips/bluetooth/music/module/BTMusicModule;->remoteServiceCallback:Lcom/autochips/bluetooth/IRemoteServiceCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/music/module/BTMusicModule;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/autochips/bluetooth/music/module/BTMusicModule;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/music/module/BTMusicModule;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/autochips/bluetooth/music/module/BTMusicModule;->dataChangeListenerWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static getInstance()Lcom/autochips/bluetooth/music/module/BTMusicModule;
    .locals 2

    .line 41
    sget-object v0, Lcom/autochips/bluetooth/music/module/BTMusicModule;->btMusicModule:Lcom/autochips/bluetooth/music/module/BTMusicModule;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/autochips/bluetooth/music/module/BTMusicModule;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/music/module/BTMusicModule;->btMusicModule:Lcom/autochips/bluetooth/music/module/BTMusicModule;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/autochips/bluetooth/music/module/BTMusicModule;

    invoke-direct {v1}, Lcom/autochips/bluetooth/music/module/BTMusicModule;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/music/module/BTMusicModule;->btMusicModule:Lcom/autochips/bluetooth/music/module/BTMusicModule;

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
    sget-object v0, Lcom/autochips/bluetooth/music/module/BTMusicModule;->btMusicModule:Lcom/autochips/bluetooth/music/module/BTMusicModule;

    return-object v0
.end method


# virtual methods
.method connectBTService()V
    .locals 4

    const-string v0, "BTMusicModule"

    const-string v1, "connectBTService "

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.service.BTService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth"

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    sget-object v1, Lcom/autochips/bluetooth/music/module/BTMusicModule;->globalApplication:Landroid/app/Application;

    iget-object v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicModule;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 2

    .line 52
    sput-object p1, Lcom/autochips/bluetooth/music/module/BTMusicModule;->globalApplication:Landroid/app/Application;

    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Lcom/carlos/eventlibrary/EventMailer;->init(Z)V

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicModule;->connectBTService()V

    const-string p1, "BTMusicModule"

    const-string v0, "start musicService"

    .line 56
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIbtObserver(Lcom/autochips/bluetooth/event/IBTObserver;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicModule;->dataChangeListenerWeakReference:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method
