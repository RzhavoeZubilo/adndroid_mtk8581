.class public Lcom/can/ui/TouchActivity;
.super Landroid/app/Activity;
.source "TouchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/ui/TouchActivity$Receiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TouchActivity"


# instance fields
.field dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

.field private mReceiver:Lcom/can/ui/TouchActivity$Receiver;

.field private mVideoMode:I

.field private mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    new-instance v0, Lcom/can/ui/TouchActivity$Receiver;

    invoke-direct {v0, p0}, Lcom/can/ui/TouchActivity$Receiver;-><init>(Lcom/can/ui/TouchActivity;)V

    iput-object v0, p0, Lcom/can/ui/TouchActivity;->mReceiver:Lcom/can/ui/TouchActivity$Receiver;

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/can/ui/TouchActivity;->mVideoMode:I

    .line 17
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/TouchActivity;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    .line 47
    new-instance v0, Lcom/can/ui/TouchActivity$1;

    invoke-direct {v0, p0}, Lcom/can/ui/TouchActivity$1;-><init>(Lcom/can/ui/TouchActivity;)V

    iput-object v0, p0, Lcom/can/ui/TouchActivity;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    return-void
.end method

.method static synthetic access$002(Lcom/can/ui/TouchActivity;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/can/ui/TouchActivity;->mVideoMode:I

    return p1
.end method

.method private initMcu()V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/can/ui/TouchActivity;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x20

    aput v3, v1, v2

    iget-object v2, p0, Lcom/can/ui/TouchActivity;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    invoke-virtual {v0, v1, v2}, Lcom/carocean/navicar/McuServiceManager;->regCallback([ILcom/carocean/navicar/McuServiceManager$DataListener;)V

    .line 43
    iget-object p0, p0, Lcom/can/ui/TouchActivity;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    invoke-virtual {p0}, Lcom/carocean/navicar/McuServiceManager;->isServiceConnected()Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 90
    iget v0, p0, Lcom/can/ui/TouchActivity;->mVideoMode:I

    if-nez v0, :cond_0

    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "TouchActivity"

    const-string v0, "onCreate"

    .line 23
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.yecon.bmw.video_mode"

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/can/ui/TouchActivity;->mReceiver:Lcom/can/ui/TouchActivity$Receiver;

    invoke-virtual {p0, v0, p1}, Lcom/can/ui/TouchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p0}, Lcom/can/ui/TouchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const-string v1, "video_mode"

    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 32
    iput p1, p0, Lcom/can/ui/TouchActivity;->mVideoMode:I

    if-nez p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/can/ui/TouchActivity;->finish()V

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p1, p1}, Lcom/can/ui/TouchActivity;->overridePendingTransition(II)V

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/can/ui/TouchActivity;->initMcu()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "TouchActivity"

    const-string v1, "onDestroy"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/can/ui/TouchActivity;->mReceiver:Lcom/can/ui/TouchActivity$Receiver;

    invoke-virtual {p0, v0}, Lcom/can/ui/TouchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const-string v1, "video_mode"

    .line 78
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 79
    iput p1, p0, Lcom/can/ui/TouchActivity;->mVideoMode:I

    if-nez p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/can/ui/TouchActivity;->finish()V

    const/4 p1, 0x0

    .line 82
    invoke-virtual {p0, p1, p1}, Lcom/can/ui/TouchActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
