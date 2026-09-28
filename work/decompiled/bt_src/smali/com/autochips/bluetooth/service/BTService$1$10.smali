.class Lcom/autochips/bluetooth/service/BTService$1$10;
.super Ljava/lang/Object;
.source "BTService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/service/BTService$1;->setDisconnectAndConnect(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/service/BTService$1;

.field final synthetic val$connectDevice:Ljava/lang/String;

.field final synthetic val$disConnectDevice:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/service/BTService$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/autochips/bluetooth/service/BTService$1$10;->this$1:Lcom/autochips/bluetooth/service/BTService$1;

    iput-object p2, p0, Lcom/autochips/bluetooth/service/BTService$1$10;->val$connectDevice:Ljava/lang/String;

    iput-object p3, p0, Lcom/autochips/bluetooth/service/BTService$1$10;->val$disConnectDevice:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 184
    sget-object v0, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/autochips/bluetooth/service/BTService$1$10;->val$connectDevice:Ljava/lang/String;

    const-class v2, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 185
    sget-object v1, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/autochips/bluetooth/service/BTService$1$10;->val$disConnectDevice:Ljava/lang/String;

    const-class v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 187
    invoke-static {}, Lcom/autochips/bluetooth/info/BTExtendManager;->getInstance()Lcom/autochips/bluetooth/info/BTExtendManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/autochips/bluetooth/info/BTExtendManager;->setDisconnectAndConnect(Lcom/autochips/bluetooth/model/MyBluetoothDevice;Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V

    return-void
.end method
