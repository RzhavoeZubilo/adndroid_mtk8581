.class Lcom/android/launcher2/Launcher$13;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .line 2020
    iput-object p1, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 2023
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 2024
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2027
    iget-object p1, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1, v1}, Lcom/android/launcher2/Launcher;->access$1802(Lcom/android/launcher2/Launcher;Z)Z

    .line 2028
    iget-object p1, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$1900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/DragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher2/DragLayer;->clearAllResizeFrames()V

    .line 2029
    iget-object p1, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$2000(Lcom/android/launcher2/Launcher;)V

    .line 2033
    iget-object p1, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$2100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$900(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/ItemInfo;

    move-result-object p1

    iget-wide p1, p1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long p1, p1, v2

    if-nez p1, :cond_c

    .line 2035
    iget-object p0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 2037
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2038
    iget-object p1, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1, v2}, Lcom/android/launcher2/Launcher;->access$1802(Lcom/android/launcher2/Launcher;Z)Z

    .line 2039
    iget-object p0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$2000(Lcom/android/launcher2/Launcher;)V

    goto/16 :goto_2

    :cond_1
    const-string v0, "com.android.launcher.action.allapp"

    .line 2040
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "Launcher"

    if-eqz v0, :cond_3

    .line 2042
    iget-object p1, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher2/Workspace;->isFinishedSwitchingState()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p0, "The workspace is in switching state when clicking on view, directly return."

    .line 2043
    invoke-static {v3, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2047
    :cond_2
    iget-object p1, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$2200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Launcher$State;

    move-result-object p1

    sget-object p2, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne p1, p2, :cond_c

    .line 2048
    iget-object p0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Launcher;->showAllApps(Z)V

    goto/16 :goto_2

    :cond_3
    const-string v0, "android.activity.action.STATE_CHANGED"

    .line 2050
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "state"

    .line 2051
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launcher2---: activity_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_c

    const-string v0, "background"

    .line 2054
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2055
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$1302(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v0, "foreground"

    .line 2056
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2057
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$2302(Ljava/lang/String;)Ljava/lang/String;

    .line 2059
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->access$2300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.yecon.launcher1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2060
    invoke-static {}, Lcom/android/launcher2/Launcher;->access$1300()Ljava/lang/String;

    move-result-object p1

    .line 2061
    iget-object p2, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p2}, Lcom/android/launcher2/Launcher;->access$2400(Lcom/android/launcher2/Launcher;)Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 2062
    iget-object p2, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p2}, Lcom/android/launcher2/Launcher;->access$2400(Lcom/android/launcher2/Launcher;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/launcher2/Launcher$13$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/Launcher$13$1;-><init>(Lcom/android/launcher2/Launcher$13;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_6
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 2078
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "mReceiver:"

    if-nez v0, :cond_b

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 2080
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2081
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    iget-object p1, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    const-string p2, "persist.sys.ivicar.avm.enable"

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v2, :cond_8

    move v1, v2

    :cond_8
    invoke-static {p1, v1}, Lcom/android/launcher2/Launcher;->access$2500(Lcom/android/launcher2/Launcher;Z)V

    .line 2083
    iget-object p0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$2600(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->forceReload()V

    goto :goto_2

    :cond_9
    const-string v0, "action.ckx.dsp_type.changed"

    .line 2084
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "persist.sys.dsp_type"

    .line 2085
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 2086
    iget-object p2, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p2}, Lcom/android/launcher2/Launcher;->access$2700(Lcom/android/launcher2/Launcher;)I

    move-result p2

    if-eq p1, p2, :cond_c

    .line 2087
    iget-object p2, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p2, p1}, Lcom/android/launcher2/Launcher;->access$2702(Lcom/android/launcher2/Launcher;I)I

    .line 2088
    iget-object p0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$2800(Lcom/android/launcher2/Launcher;)V

    goto :goto_2

    :cond_a
    const-string v0, "com.yecon.launcher1.action.360.floatball"

    .line 2090
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "360_floatball_needshow"

    .line 2091
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 2092
    iget-object p0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->access$2500(Lcom/android/launcher2/Launcher;Z)V

    goto :goto_2

    .line 2079
    :cond_b
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_2
    return-void
.end method
