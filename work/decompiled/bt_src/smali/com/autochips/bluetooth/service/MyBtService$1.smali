.class Lcom/autochips/bluetooth/service/MyBtService$1;
.super Ljava/lang/Object;
.source "MyBtService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/service/MyBtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/service/MyBtService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/service/MyBtService;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/autochips/bluetooth/service/MyBtService$1;->this$0:Lcom/autochips/bluetooth/service/MyBtService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "MyBtService"

    const-string v1, "autoConnectRunnable1"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/autochips/bluetooth/service/MyBtService$1;->this$0:Lcom/autochips/bluetooth/service/MyBtService;

    invoke-static {v1}, Lcom/autochips/bluetooth/service/MyBtService;->access$000(Lcom/autochips/bluetooth/service/MyBtService;)Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v1

    const-wide/16 v2, 0x7530

    if-nez v1, :cond_1

    const-string v1, "autoConnectRunnable2"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/autochips/bluetooth/service/MyBtService$1;->this$0:Lcom/autochips/bluetooth/service/MyBtService;

    iget-object v1, v1, Lcom/autochips/bluetooth/service/MyBtService;->autoConnectDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    if-eqz v1, :cond_0

    const-string v1, "autoConnectRunnable3"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "autoConnectRunnable4"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService$1;->this$0:Lcom/autochips/bluetooth/service/MyBtService;

    iget-object v0, v0, Lcom/autochips/bluetooth/service/MyBtService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autochips/bluetooth/service/MyBtService$1;->this$0:Lcom/autochips/bluetooth/service/MyBtService;

    iget-object v1, v1, Lcom/autochips/bluetooth/service/MyBtService;->autoConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string v1, "autoConnectRunnable5"

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService$1;->this$0:Lcom/autochips/bluetooth/service/MyBtService;

    iget-object v0, v0, Lcom/autochips/bluetooth/service/MyBtService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autochips/bluetooth/service/MyBtService$1;->this$0:Lcom/autochips/bluetooth/service/MyBtService;

    iget-object v1, v1, Lcom/autochips/bluetooth/service/MyBtService;->autoConnectRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
