.class Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2$1;
.super Ljava/lang/Object;
.source "PairedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2$1;->this$3:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 226
    :try_start_0
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2$1;->this$3:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2;

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2;->val$myBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autochips/bluetooth/IBTService;->disconnect(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2$1;->this$3:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2;

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2;->val$myBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autochips/bluetooth/IBTService;->delBondDevice(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
