.class Lcom/autochips/bluetooth/music/module/BTMusicService$3;
.super Ljava/lang/Object;
.source "BTMusicService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/music/module/BTMusicService;->resumeBTMusic()V
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

    .line 265
    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$3;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$3;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$000(Lcom/autochips/bluetooth/music/module/BTMusicService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    :try_start_0
    invoke-static {}, Lcom/autochips/bluetooth/music/module/BTMusicModule;->getInstance()Lcom/autochips/bluetooth/music/module/BTMusicModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v0}, Lcom/autochips/bluetooth/IBTService;->resumeBTMusic()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 272
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
