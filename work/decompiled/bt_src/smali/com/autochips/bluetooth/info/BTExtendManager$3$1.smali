.class Lcom/autochips/bluetooth/info/BTExtendManager$3$1;
.super Ljava/lang/Object;
.source "BTExtendManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/info/BTExtendManager$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/info/BTExtendManager$3;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/info/BTExtendManager$3;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTExtendManager$3$1;->this$1:Lcom/autochips/bluetooth/info/BTExtendManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 223
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTExtendManager$3$1;->this$1:Lcom/autochips/bluetooth/info/BTExtendManager$3;

    iget-object v0, v0, Lcom/autochips/bluetooth/info/BTExtendManager$3;->this$0:Lcom/autochips/bluetooth/info/BTExtendManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTExtendManager;->isAutoConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->getLastConnectMac()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getCurrentConnectDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v1

    if-nez v1, :cond_1

    .line 226
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 227
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-void
.end method
