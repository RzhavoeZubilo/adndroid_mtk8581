.class public Lcom/autochips/bluetooth/setting/module/BTSettingModule;
.super Ljava/lang/Object;
.source "BTSettingModule.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BTSettingModule"

.field private static btSettingModule:Lcom/autochips/bluetooth/setting/module/BTSettingModule;

.field private static mBTCmdExecutor:Lcom/autochips/bluetooth/setting/module/BTCmdExecutor;


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

.field private globalApplication:Landroid/app/Application;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field public myService:Lcom/autochips/bluetooth/IBTService;

.field private remoteServiceCallback:Lcom/autochips/bluetooth/IRemoteServiceCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingModule$2;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingModule;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 110
    new-instance v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule$3;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingModule$3;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingModule;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 122
    new-instance v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule$4;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingModule$4;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingModule;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->remoteServiceCallback:Lcom/autochips/bluetooth/IRemoteServiceCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/setting/module/BTSettingModule;)Lcom/autochips/bluetooth/IRemoteServiceCallback;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->remoteServiceCallback:Lcom/autochips/bluetooth/IRemoteServiceCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/setting/module/BTSettingModule;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/setting/module/BTSettingModule;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->dataChangeListenerWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;
    .locals 1

    .line 69
    sget-object v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->btSettingModule:Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 2

    .line 43
    new-instance v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    invoke-direct {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->btSettingModule:Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    .line 44
    iput-object p0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->globalApplication:Landroid/app/Application;

    const/4 v0, 0x0

    .line 45
    invoke-static {v0}, Lcom/carlos/eventlibrary/EventMailer;->init(Z)V

    .line 46
    sget-object v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->btSettingModule:Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->connectBTService()V

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "ACTION_BT_SERVICE_START"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    new-instance v1, Lcom/autochips/bluetooth/setting/module/BTSettingModule$1;

    invoke-direct {v1}, Lcom/autochips/bluetooth/setting/module/BTSettingModule$1;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    new-instance v0, Lcom/autochips/bluetooth/setting/module/BTCmdExecutor;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/setting/module/BTCmdExecutor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->mBTCmdExecutor:Lcom/autochips/bluetooth/setting/module/BTCmdExecutor;

    const-string p0, "BTSettingModule"

    const-string v0, "init"

    .line 65
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public connectBTService()V
    .locals 4

    const-string v0, "BTSettingModule"

    const-string v1, "connectBTService "

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.service.BTService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->globalApplication:Landroid/app/Application;

    iget-object v2, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public setIbtObserver(Lcom/autochips/bluetooth/event/IBTObserver;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->dataChangeListenerWeakReference:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method
