.class public Lcom/autochips/bluetooth/control/ActivityMonitor;
.super Ljava/lang/Object;
.source "ActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/control/ActivityMonitor$Receiver;,
        Lcom/autochips/bluetooth/control/ActivityMonitor$ActivityMonitorLisenter;
    }
.end annotation


# static fields
.field private static final ACTIVITY_CHANGE:Ljava/lang/String; = "android.activity.action.STATE_CHANGED"

.field private static final HOVER_PACKAGE:[Ljava/lang/String;

.field private static final MAX_TASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActivityMonitor"


# instance fields
.field private context:Landroid/content/Context;

.field private mActivityMonitorLisenter:Lcom/autochips/bluetooth/control/ActivityMonitor$ActivityMonitorLisenter;

.field private mMonitorPacketName:Ljava/lang/String;

.field private mbForeground:Z

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.can.activity"

    .line 24
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autochips/bluetooth/control/ActivityMonitor;->HOVER_PACKAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->mMonitorPacketName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->mbForeground:Z

    .line 48
    iput-object p1, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->context:Landroid/content/Context;

    return-void
.end method

.method private PreLolipop()Z
    .locals 10

    .line 65
    iget-object v0, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x3

    const/4 v2, 0x2

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 69
    iget v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-le v6, v1, :cond_0

    .line 71
    iget-object v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-nez v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    :cond_1
    iget-object v5, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 75
    sget-object v6, Lcom/autochips/bluetooth/control/ActivityMonitor;->HOVER_PACKAGE:[Ljava/lang/String;

    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 76
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_2
    if-nez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 83
    iget-object v6, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->mMonitorPacketName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_4
    move v1, v4

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iMonitorPacketLevel:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ActivityMonitor.isForeground"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v1, :cond_6

    move v2, v3

    :cond_6
    return v2
.end method

.method private UnderLolipop()Z
    .locals 9

    .line 131
    iget-object v0, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 132
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_4

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 136
    iget-object v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "8317:baseintent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityMonitor"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v5, Lcom/autochips/bluetooth/control/ActivityMonitor;->HOVER_PACKAGE:[Ljava/lang/String;

    array-length v6, v5

    move v7, v1

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 139
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move v5, v1

    :goto_1
    if-nez v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 146
    iget-object v5, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->mMonitorPacketName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "8317:iMonitorPacketLevel:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  mMonitorPacketName:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->mMonitorPacketName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ActivityMonitor.isForeground"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez v3, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/control/ActivityMonitor;)Lcom/autochips/bluetooth/control/ActivityMonitor$ActivityMonitorLisenter;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->mActivityMonitorLisenter:Lcom/autochips/bluetooth/control/ActivityMonitor$ActivityMonitorLisenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/control/ActivityMonitor;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->mbForeground:Z

    return p0
.end method

.method static synthetic access$102(Lcom/autochips/bluetooth/control/ActivityMonitor;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->mbForeground:Z

    return p1
.end method

.method private beforeall()Z
    .locals 11

    .line 97
    iget-object v0, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->context:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x3

    .line 98
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v4, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 103
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 104
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "8317:baseintent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ActivityMonitor"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v7, Lcom/autochips/bluetooth/control/ActivityMonitor;->HOVER_PACKAGE:[Ljava/lang/String;

    array-length v8, v7

    move v9, v2

    :goto_0
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 107
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    move v7, v2

    :goto_1
    if-nez v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 114
    iget-object v7, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->mMonitorPacketName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "com.hcn.autobackcar.autoauxin.auxinrearactivity"

    .line 115
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v1, v4

    .line 124
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "8317:iMonitorPacketLevel:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  mMonitorPacketName:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->mMonitorPacketName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ActivityMonitor.isForeground"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v1, :cond_6

    move v2, v3

    :cond_6
    return v2
.end method

.method public static isOpen(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, ""

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    or-int/2addr v0, v3

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "activity"

    .line 172
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 174
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 175
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 176
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 177
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_2

    return v1

    :cond_3
    return v2
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public init()V
    .locals 3

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.activity.action.STATE_CHANGED"

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    new-instance v1, Lcom/autochips/bluetooth/control/ActivityMonitor$Receiver;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/control/ActivityMonitor$Receiver;-><init>(Lcom/autochips/bluetooth/control/ActivityMonitor;)V

    iput-object v1, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->receiver:Landroid/content/BroadcastReceiver;

    .line 162
    iget-object v2, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->context:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isForeground()Z
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/autochips/bluetooth/control/ActivityMonitor;->beforeall()Z

    move-result v0

    return v0
.end method

.method public setActivityMonitorLisenter(Ljava/lang/String;Lcom/autochips/bluetooth/control/ActivityMonitor$ActivityMonitorLisenter;)V
    .locals 0

    .line 42
    iput-object p2, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->mActivityMonitorLisenter:Lcom/autochips/bluetooth/control/ActivityMonitor$ActivityMonitorLisenter;

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/control/ActivityMonitor;->mMonitorPacketName:Ljava/lang/String;

    return-void
.end method
