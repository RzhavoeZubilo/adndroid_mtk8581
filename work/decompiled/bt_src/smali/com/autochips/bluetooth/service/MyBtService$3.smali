.class Lcom/autochips/bluetooth/service/MyBtService$3;
.super Ljava/lang/Object;
.source "MyBtService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/service/MyBtService;->closeBt()V
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

    .line 199
    iput-object p1, p0, Lcom/autochips/bluetooth/service/MyBtService$3;->this$0:Lcom/autochips/bluetooth/service/MyBtService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 202
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/info/BTStateManager;->setBtStatePersist(Z)V

    .line 203
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->clearPairedDeviceList()V

    .line 204
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->clearDiscoverDeviceList()V

    .line 205
    iget-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService$3;->this$0:Lcom/autochips/bluetooth/service/MyBtService;

    iget-object v0, v0, Lcom/autochips/bluetooth/service/MyBtService;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance(Landroid/content/Context;)Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->closebt()V

    return-void
.end method
