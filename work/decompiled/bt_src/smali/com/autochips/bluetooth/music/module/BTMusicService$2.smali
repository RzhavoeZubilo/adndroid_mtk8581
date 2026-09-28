.class Lcom/autochips/bluetooth/music/module/BTMusicService$2;
.super Ljava/lang/Object;
.source "BTMusicService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/music/module/BTMusicService;->sendMusicCMD(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

.field final synthetic val$cmd:I


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/music/module/BTMusicService;I)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$2;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iput p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$2;->val$cmd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$2;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$000(Lcom/autochips/bluetooth/music/module/BTMusicService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$2;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/autochips/bluetooth/music/module/BTMusicService;->lastOperateTimeStamp:J

    .line 251
    invoke-static {}, Lcom/autochips/bluetooth/music/module/BTMusicModule;->getInstance()Lcom/autochips/bluetooth/music/module/BTMusicModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicModule;->myService:Lcom/autochips/bluetooth/IBTService;

    iget v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$2;->val$cmd:I

    invoke-interface {v0, v1}, Lcom/autochips/bluetooth/IBTService;->sendAVRCPCmd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
