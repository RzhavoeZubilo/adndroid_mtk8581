.class public Lcom/autochips/bluetooth/GlobalApplication;
.super Landroid/app/Application;
.source "GlobalApplication.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_FIRST_BOOT_CKX_BT:Ljava/lang/String; = "sys.firstboot.ckx_bt"

.field private static globalApplication:Lcom/autochips/bluetooth/GlobalApplication;


# instance fields
.field private final TAG:Ljava/lang/String;

.field public extendUtil:Lcom/autochips/bluetooth/ExtendUtil;

.field private isAppForeground:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-string v0, "GlobalApplication"

    .line 40
    iput-object v0, p0, Lcom/autochips/bluetooth/GlobalApplication;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/autochips/bluetooth/GlobalApplication;->isAppForeground:Z

    return-void
.end method

.method public static getInstance()Lcom/autochips/bluetooth/GlobalApplication;
    .locals 1

    .line 50
    sget-object v0, Lcom/autochips/bluetooth/GlobalApplication;->globalApplication:Lcom/autochips/bluetooth/GlobalApplication;

    return-object v0
.end method

.method private getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "activity"

    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 85
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 89
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 90
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 91
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 92
    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p1

    :cond_2
    return-object v0
.end method

.method private powerOnForReset()V
    .locals 7

    .line 110
    invoke-virtual {p0}, Lcom/autochips/bluetooth/GlobalApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys"

    const-string v2, "SYS_POWER_ON_MODE"

    const/4 v3, 0x3

    invoke-static {v1, v0, v2, v3}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "sys.firstboot.ckx_bt"

    .line 113
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "powerOnForReset isPowerOn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",isFirstInit\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GlobalApplication"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    .line 116
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    # invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/autochips/bluetooth/info/BTExtendManager;->getInstance()Lcom/autochips/bluetooth/info/BTExtendManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autochips/bluetooth/info/BTExtendManager;->setAutoConnect(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getVersionName(Landroid/content/Context;)V
    .locals 3

    .line 168
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-string v0, "GlobalApplication"

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bt_version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_0

    const-string p1, " null"

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public isAppForeground()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/autochips/bluetooth/GlobalApplication;->isAppForeground:Z

    return v0
.end method

.method public onAppBackgrounded()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "GlobalApplication"

    const-string v1, "onAppBackgrounded: "

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/autochips/bluetooth/GlobalApplication;->isAppForeground:Z

    return-void
.end method

.method public onAppForegrounded()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "GlobalApplication"

    const-string v1, "onAppForegrounded: "

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/autochips/bluetooth/GlobalApplication;->isAppForeground:Z

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 56
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 57
    invoke-direct {p0, p0}, Lcom/autochips/bluetooth/GlobalApplication;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/autochips/bluetooth/GlobalApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 59
    invoke-static {v0}, Lcom/carlos/eventlibrary/EventMailer;->init(Z)V

    .line 60
    new-instance v0, Lcom/autochips/bluetooth/ExtendUtil;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/ExtendUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/GlobalApplication;->extendUtil:Lcom/autochips/bluetooth/ExtendUtil;

    .line 61
    invoke-virtual {p0}, Lcom/autochips/bluetooth/GlobalApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/GlobalApplication;

    sput-object v0, Lcom/autochips/bluetooth/GlobalApplication;->globalApplication:Lcom/autochips/bluetooth/GlobalApplication;

    .line 63
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autochips/bluetooth/info/BTBaseManager;->init(Landroid/content/Context;)V

    .line 66
    invoke-static {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->init(Landroid/app/Application;)V

    .line 68
    invoke-static {}, Lcom/autochips/bluetooth/music/module/BTMusicModule;->getInstance()Lcom/autochips/bluetooth/music/module/BTMusicModule;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autochips/bluetooth/music/module/BTMusicModule;->init(Landroid/app/Application;)V

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/GlobalApplication;->powerOnForReset()V

    .line 71
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 72
    invoke-virtual {p0, p0}, Lcom/autochips/bluetooth/GlobalApplication;->getVersionName(Landroid/content/Context;)V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 77
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 78
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/event/BTEventManager;->release()V

    .line 79
    iget-object v0, p0, Lcom/autochips/bluetooth/GlobalApplication;->extendUtil:Lcom/autochips/bluetooth/ExtendUtil;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/ExtendUtil;->release()V

    return-void
.end method

.method public sendNotAnswerCallNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autochips/bluetooth/MainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "target"

    const-string v2, "dial"

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "redial"

    .line 131
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 135
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v2, "notification"

    .line 136
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 137
    new-instance v4, Landroid/app/NotificationChannel;

    const/4 v5, 0x4

    invoke-direct {v4, p2, v2, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x0

    .line 138
    invoke-virtual {v4, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 139
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 140
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const v2, 0x7f0c0085

    .line 141
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 v2, 0x1

    .line 142
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 143
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const v0, 0x7f0f0057

    .line 144
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const v0, 0x7f0f00b0

    .line 145
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 147
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/16 p2, 0x63

    invoke-virtual {v3, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public startCallActivity()V
    .locals 3

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10040000

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 102
    const-class v1, Lcom/autochips/bluetooth/BTCallActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/GlobalApplication;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
