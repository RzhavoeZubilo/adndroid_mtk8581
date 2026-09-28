.class Lcom/autochips/bluetooth/service/MyBtService$4;
.super Ljava/lang/Object;
.source "MyBtService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/service/MyBtService;->startDiscovery()V
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

    .line 222
    iput-object p1, p0, Lcom/autochips/bluetooth/service/MyBtService$4;->this$0:Lcom/autochips/bluetooth/service/MyBtService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 237
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->getconnectingmac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDiscovery bluetoothState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/service/MyBtService$4;->this$0:Lcom/autochips/bluetooth/service/MyBtService;

    iget-object v1, v1, Lcom/autochips/bluetooth/service/MyBtService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyBtService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->clearDiscoverDeviceList()V

    .line 244
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->doDiscovery()Z

    return-void
.end method
