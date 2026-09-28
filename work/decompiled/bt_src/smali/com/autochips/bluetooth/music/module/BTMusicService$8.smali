.class Lcom/autochips/bluetooth/music/module/BTMusicService$8;
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

    .line 1084
    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$8;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click delayEasyconnRunnable eastA2dpConnStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$8;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {v1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$600(Lcom/autochips/bluetooth/music/module/BTMusicService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   a2dpState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$8;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget v1, v1, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$8;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$600(Lcom/autochips/bluetooth/music/module/BTMusicService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$8;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$8;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    const/4 v1, 0x3

    iput v1, v0, Lcom/autochips/bluetooth/music/module/BTMusicService;->currentControlPlayState:I

    .line 1090
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$8;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1800(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    :cond_0
    return-void
.end method
