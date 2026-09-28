.class Lcom/autochips/bluetooth/music/module/BTMusicService$5$1;
.super Ljava/lang/Object;
.source "BTMusicService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/music/module/BTMusicService$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/music/module/BTMusicService$5;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/music/module/BTMusicService$5;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5$1;->this$1:Lcom/autochips/bluetooth/music/module/BTMusicService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5$1;->this$1:Lcom/autochips/bluetooth/music/module/BTMusicService$5;

    iget-object v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$900(Lcom/autochips/bluetooth/music/module/BTMusicService;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5$1;->this$1:Lcom/autochips/bluetooth/music/module/BTMusicService$5;

    iget-object v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1000(Lcom/autochips/bluetooth/music/module/BTMusicService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5$1;->this$1:Lcom/autochips/bluetooth/music/module/BTMusicService$5;

    iget-object v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1100(Lcom/autochips/bluetooth/music/module/BTMusicService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5$1;->this$1:Lcom/autochips/bluetooth/music/module/BTMusicService$5;

    iget-object v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1200(Lcom/autochips/bluetooth/music/module/BTMusicService;I)V

    .line 665
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5$1;->this$1:Lcom/autochips/bluetooth/music/module/BTMusicService$5;

    iget-object v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1300(Lcom/autochips/bluetooth/music/module/BTMusicService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 668
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
