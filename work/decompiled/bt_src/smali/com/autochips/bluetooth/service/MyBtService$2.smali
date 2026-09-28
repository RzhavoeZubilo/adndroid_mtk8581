.class Lcom/autochips/bluetooth/service/MyBtService$2;
.super Ljava/lang/Object;
.source "MyBtService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/service/MyBtService;->startAutoConnected()V
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

    .line 154
    iput-object p1, p0, Lcom/autochips/bluetooth/service/MyBtService$2;->this$0:Lcom/autochips/bluetooth/service/MyBtService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "MyBtService"

    const-string v1, "mcuObserver3"

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/autochips/bluetooth/service/MyBtService$2;->this$0:Lcom/autochips/bluetooth/service/MyBtService;

    iget-object v1, v1, Lcom/autochips/bluetooth/service/MyBtService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    const-string v1, "mcuObserver4"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
