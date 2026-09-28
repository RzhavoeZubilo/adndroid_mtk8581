.class Lcom/autochips/bluetooth/music/module/BTMusicModule$2;
.super Ljava/lang/Object;
.source "BTMusicModule.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/music/module/BTMusicModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/music/module/BTMusicModule;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/music/module/BTMusicModule;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicModule$2;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "BTMusicModule"

    const-string v1, "binderDied "

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicModule$2;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicModule;

    iget-object v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicModule;->myService:Lcom/autochips/bluetooth/IBTService;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicModule$2;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicModule;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/music/module/BTMusicModule;->connectBTService()V

    :cond_0
    return-void
.end method
