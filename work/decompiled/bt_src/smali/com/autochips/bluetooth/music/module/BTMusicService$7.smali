.class Lcom/autochips/bluetooth/music/module/BTMusicService$7;
.super Ljava/lang/Object;
.source "BTMusicService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/music/module/BTMusicService;
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

    .line 1043
    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$7;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayPlayTask avrcpState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$7;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget v1, v1, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  isNeedRetry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$7;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget-boolean v1, v1, Lcom/autochips/bluetooth/music/module/BTMusicService;->isNeedRetry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$7;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$7;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget-boolean v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isNeedRetry:Z

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$7;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isNeedRetry:Z

    .line 1050
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$7;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$700(Lcom/autochips/bluetooth/music/module/BTMusicService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$7;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget-object v1, v1, Lcom/autochips/bluetooth/music/module/BTMusicService;->delayPlayTask:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$7;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget v2, v2, Lcom/autochips/bluetooth/music/module/BTMusicService;->delayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$7;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1800(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    :goto_0
    return-void
.end method
