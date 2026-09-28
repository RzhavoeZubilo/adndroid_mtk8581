.class Lcom/autochips/bluetooth/control/ActivityMonitor$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/control/ActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/control/ActivityMonitor;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/control/ActivityMonitor;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/autochips/bluetooth/control/ActivityMonitor$Receiver;->this$0:Lcom/autochips/bluetooth/control/ActivityMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 187
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityMonitor"

    .line 188
    monitor-enter p2

    :try_start_0
    const-string v0, "android.activity.action.STATE_CHANGED"

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/autochips/bluetooth/control/ActivityMonitor$Receiver;->this$0:Lcom/autochips/bluetooth/control/ActivityMonitor;

    .line 190
    invoke-static {p1}, Lcom/autochips/bluetooth/control/ActivityMonitor;->access$000(Lcom/autochips/bluetooth/control/ActivityMonitor;)Lcom/autochips/bluetooth/control/ActivityMonitor$ActivityMonitorLisenter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/autochips/bluetooth/control/ActivityMonitor$Receiver;->this$0:Lcom/autochips/bluetooth/control/ActivityMonitor;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/ActivityMonitor;->isForeground()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/autochips/bluetooth/control/ActivityMonitor$Receiver;->this$0:Lcom/autochips/bluetooth/control/ActivityMonitor;

    invoke-static {p1}, Lcom/autochips/bluetooth/control/ActivityMonitor;->access$100(Lcom/autochips/bluetooth/control/ActivityMonitor;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 193
    iget-object p1, p0, Lcom/autochips/bluetooth/control/ActivityMonitor$Receiver;->this$0:Lcom/autochips/bluetooth/control/ActivityMonitor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/control/ActivityMonitor;->access$102(Lcom/autochips/bluetooth/control/ActivityMonitor;Z)Z

    .line 194
    iget-object p1, p0, Lcom/autochips/bluetooth/control/ActivityMonitor$Receiver;->this$0:Lcom/autochips/bluetooth/control/ActivityMonitor;

    invoke-static {p1}, Lcom/autochips/bluetooth/control/ActivityMonitor;->access$000(Lcom/autochips/bluetooth/control/ActivityMonitor;)Lcom/autochips/bluetooth/control/ActivityMonitor$ActivityMonitorLisenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/autochips/bluetooth/control/ActivityMonitor$ActivityMonitorLisenter;->onForeGround()V

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/control/ActivityMonitor$Receiver;->this$0:Lcom/autochips/bluetooth/control/ActivityMonitor;

    invoke-static {p1}, Lcom/autochips/bluetooth/control/ActivityMonitor;->access$100(Lcom/autochips/bluetooth/control/ActivityMonitor;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/autochips/bluetooth/control/ActivityMonitor$Receiver;->this$0:Lcom/autochips/bluetooth/control/ActivityMonitor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/control/ActivityMonitor;->access$102(Lcom/autochips/bluetooth/control/ActivityMonitor;Z)Z

    .line 199
    iget-object p1, p0, Lcom/autochips/bluetooth/control/ActivityMonitor$Receiver;->this$0:Lcom/autochips/bluetooth/control/ActivityMonitor;

    invoke-static {p1}, Lcom/autochips/bluetooth/control/ActivityMonitor;->access$000(Lcom/autochips/bluetooth/control/ActivityMonitor;)Lcom/autochips/bluetooth/control/ActivityMonitor$ActivityMonitorLisenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/autochips/bluetooth/control/ActivityMonitor$ActivityMonitorLisenter;->onBackGround()V

    .line 203
    :cond_1
    :goto_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
