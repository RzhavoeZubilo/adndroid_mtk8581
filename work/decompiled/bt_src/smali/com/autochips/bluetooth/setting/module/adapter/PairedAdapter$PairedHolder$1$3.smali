.class Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;
.super Ljava/lang/Object;
.source "PairedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;

.field final synthetic val$myBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;->this$2:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;

    iput-object p2, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;->val$myBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 242
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;->val$myBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;->val$myBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    const/16 v3, 0x10

    .line 243
    invoke-virtual {v0, v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 245
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;->this$2:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;->this$1:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->this$0:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->access$100(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$1;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$1;-><init>(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;->val$myBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v1, :cond_2

    const-string v0, "PairedAdapter"

    const-string v1, "connect or disconnect"

    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :try_start_0
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v0}, Lcom/autochips/bluetooth/IBTService;->getConnectState()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 266
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;->this$2:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;->this$1:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->this$0:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->access$100(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$2;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$2;-><init>(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 296
    :cond_1
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;->val$myBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autochips/bluetooth/IBTService;->connect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 299
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 310
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v0}, Lcom/autochips/bluetooth/IBTService;->getConnectState()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 311
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;->this$2:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;->this$1:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->this$0:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->access$100(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$3;-><init>(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 341
    :cond_3
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;->val$myBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autochips/bluetooth/IBTService;->bondDevice(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 344
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
