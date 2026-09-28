.class public Lcom/can/ui/CanActivity;
.super Landroid/app/Activity;
.source "CanActivity.java"

# interfaces
.implements Lcom/can/assist/CanContant;


# static fields
.field public static mStrFragment:Ljava/lang/String; = ""


# instance fields
.field protected final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/CanActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private ShowPage(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/can/ui/CanActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f080339

    .line 85
    invoke-virtual {p0, v0, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 86
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001e

    .line 37
    invoke-virtual {p0, p1}, Lcom/can/ui/CanActivity;->setContentView(I)V

    .line 40
    sget-boolean p1, Lcom/can/platforms/CanApp;->sIsFirstStart:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 41
    sput-boolean p1, Lcom/can/platforms/CanApp;->sIsFirstStart:Z

    const-string v0, "activity"

    .line 42
    invoke-virtual {p0, v0}, Lcom/can/ui/CanActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x64

    .line 43
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 45
    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.can.services.CanService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    :cond_1
    if-nez p1, :cond_2

    .line 52
    new-instance p1, Landroid/content/Intent;

    const-string v0, "yecon.intent.CanService"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/can/ui/CanActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/can/ui/CanActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/can/assist/CanXml;->getInstance(Landroid/content/Context;)Lcom/can/assist/CanXml;

    move-result-object p1

    invoke-virtual {p1}, Lcom/can/assist/CanXml;->getFrament()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/can/ui/CanActivity;->mStrFragment:Ljava/lang/String;

    .line 59
    invoke-static {p0}, Lcom/can/assist/CanXml;->getInstance(Landroid/content/Context;)Lcom/can/assist/CanXml;

    move-result-object p1

    sget-object v0, Lcom/can/ui/CanActivity;->mStrFragment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/can/assist/CanXml;->Create(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Fragment;

    if-eqz p1, :cond_3

    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/can/ui/CanActivity;->ShowPage(Landroid/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_3
    iget-object p0, p0, Lcom/can/ui/CanActivity;->TAG:Ljava/lang/String;

    const-string p1, "get page is empty!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
