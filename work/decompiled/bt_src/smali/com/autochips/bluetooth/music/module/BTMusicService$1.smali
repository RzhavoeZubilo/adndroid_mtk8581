.class Lcom/autochips/bluetooth/music/module/BTMusicService$1;
.super Ljava/lang/Object;
.source "BTMusicService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/music/module/BTMusicService;->getA2dpConnectState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/music/module/BTMusicService;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$1;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$1;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$000(Lcom/autochips/bluetooth/music/module/BTMusicService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :try_start_0
    invoke-static {}, Lcom/autochips/bluetooth/music/module/BTMusicModule;->getInstance()Lcom/autochips/bluetooth/music/module/BTMusicModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v0}, Lcom/autochips/bluetooth/IBTService;->getConnectDevice()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "BTMusicService"

    if-eqz v0, :cond_0

    .line 226
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getA2dpConnectState result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    sget-object v1, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 228
    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$1;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v2

    iput v2, v1, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    .line 229
    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$1;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v0

    iput v0, v1, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    goto :goto_0

    :cond_0
    const-string v0, "getA2dpConnectState result=null"

    .line 231
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
