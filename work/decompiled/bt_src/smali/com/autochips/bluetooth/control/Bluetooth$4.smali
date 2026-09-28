.class Lcom/autochips/bluetooth/control/Bluetooth$4;
.super Ljava/util/TimerTask;
.source "Bluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/control/Bluetooth;->startautoconnect(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/control/Bluetooth;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/control/Bluetooth;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/autochips/bluetooth/control/Bluetooth$4;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 766
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_autoconnect:Ljava/lang/Object;

    monitor-enter v0

    .line 767
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth$4;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/control/Bluetooth;->readAutoConnectedMac()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 768
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Bluetooth"

    .line 769
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LastConnectedDeviceAddr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   lastHfpConnectMac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/autochips/bluetooth/control/Bluetooth$4;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-static {v4}, Lcom/autochips/bluetooth/control/Bluetooth;->access$100(Lcom/autochips/bluetooth/control/Bluetooth;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_0
    iget-object v2, p0, Lcom/autochips/bluetooth/control/Bluetooth$4;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    iget v2, v2, Lcom/autochips/bluetooth/control/Bluetooth;->btState:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 772
    iget-object v2, p0, Lcom/autochips/bluetooth/control/Bluetooth$4;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-static {v2}, Lcom/autochips/bluetooth/control/Bluetooth;->access$100(Lcom/autochips/bluetooth/control/Bluetooth;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 773
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth$4;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-static {v1}, Lcom/autochips/bluetooth/control/Bluetooth;->access$100(Lcom/autochips/bluetooth/control/Bluetooth;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->connect(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 774
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/autochips/bluetooth/control/Bluetooth$4;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-virtual {v2}, Lcom/autochips/bluetooth/control/Bluetooth;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 775
    iget-object v2, p0, Lcom/autochips/bluetooth/control/Bluetooth$4;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-virtual {v2, v1}, Lcom/autochips/bluetooth/control/Bluetooth;->connect(Ljava/lang/String;)V

    .line 778
    :cond_2
    :goto_0
    sget v1, Lcom/autochips/bluetooth/control/Bluetooth;->mTimeoff:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/autochips/bluetooth/control/Bluetooth;->mTimeoff:I

    .line 779
    sget v1, Lcom/autochips/bluetooth/control/Bluetooth;->mTimeoff:I

    iget-object v2, p0, Lcom/autochips/bluetooth/control/Bluetooth$4;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    iget v2, v2, Lcom/autochips/bluetooth/control/Bluetooth;->nConnectTimers:I

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth$4;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    iget-object v1, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mTimerAutoconnect:Ljava/util/TimerTask;

    if-eqz v1, :cond_3

    .line 780
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth$4;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    iget-object v1, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mTimerAutoconnect:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 781
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth$4;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mTimerAutoconnect:Ljava/util/TimerTask;

    .line 783
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
