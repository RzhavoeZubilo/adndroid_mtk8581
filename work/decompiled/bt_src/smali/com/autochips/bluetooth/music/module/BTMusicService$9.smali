.class Lcom/autochips/bluetooth/music/module/BTMusicService$9;
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

    .line 1098
    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$9;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click play delayPlayRunnable focusState\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$9;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget v1, v1, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$9;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1104
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$9;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$9;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    const/16 v3, 0xf

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$9;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    if-ne v0, v2, :cond_1

    const-string v0, "1click play delayPlayRunnable"

    .line 1105
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$9;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$2600(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    .line 1107
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$9;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1200(Lcom/autochips/bluetooth/music/module/BTMusicService;I)V

    :cond_1
    return-void
.end method
