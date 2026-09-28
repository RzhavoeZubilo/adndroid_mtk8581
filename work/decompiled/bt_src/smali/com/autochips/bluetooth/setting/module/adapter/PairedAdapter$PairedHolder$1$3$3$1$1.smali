.class Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3$1$1;
.super Ljava/lang/Object;
.source "PairedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$5:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3$1;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3$1;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3$1$1;->this$5:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 321
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 323
    :try_start_0
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v1

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v1}, Lcom/autochips/bluetooth/IBTService;->getConnectDevice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 324
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3$1$1;->this$5:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3$1;

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3$1;->this$4:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3;

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3;->this$3:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;->val$myBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autochips/bluetooth/IBTService;->bondDevice(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v1

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v1}, Lcom/autochips/bluetooth/IBTService;->getConnectDevice()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 327
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v2

    iget-object v2, v2, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/autochips/bluetooth/IBTService;->disconnect(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v2

    iget-object v2, v2, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3$1$1;->this$5:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3$1;

    iget-object v3, v3, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3$1;->this$4:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3;

    iget-object v3, v3, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3;->this$3:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;

    iget-object v3, v3, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;->val$myBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/autochips/bluetooth/IBTService;->setDisconnectAndConnect(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 331
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
