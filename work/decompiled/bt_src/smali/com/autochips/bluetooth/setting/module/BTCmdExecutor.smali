.class Lcom/autochips/bluetooth/setting/module/BTCmdExecutor;
.super Landroid/content/BroadcastReceiver;
.source "BTCmdExecutor.java"


# static fields
.field public static final ACTION_BT_SWITCH:Ljava/lang/String; = "android.intent.action.BT_SWITCH"

.field public static final EXT_BT_SWITCH:Ljava/lang/String; = "switch"

.field private static final TAG:Ljava/lang/String; = "BTCmdExecutor"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTCmdExecutor;->mContext:Landroid/content/Context;

    .line 36
    invoke-virtual {p0}, Lcom/autochips/bluetooth/setting/module/BTCmdExecutor;->init()V

    return-void
.end method

.method private static closeBTAsync()V
    .locals 1

    .line 85
    new-instance v0, Lcom/autochips/bluetooth/setting/module/BTCmdExecutor$2;

    invoke-direct {v0}, Lcom/autochips/bluetooth/setting/module/BTCmdExecutor$2;-><init>()V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static openBTAsync()V
    .locals 1

    .line 71
    new-instance v0, Lcom/autochips/bluetooth/setting/module/BTCmdExecutor$1;

    invoke-direct {v0}, Lcom/autochips/bluetooth/setting/module/BTCmdExecutor$1;-><init>()V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTCmdExecutor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BT_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/autochips/bluetooth/setting/module/BTCmdExecutor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "BTCmdExecutor"

    const-string v1, "init"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTCmdExecutor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.BT_SWITCH"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "switch"

    .line 60
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "receive action:ACTION_BT_SWITCH, on:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 63
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTCmdExecutor;->openBTAsync()V

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTCmdExecutor;->closeBTAsync()V

    :cond_1
    :goto_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/autochips/bluetooth/setting/module/BTCmdExecutor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
