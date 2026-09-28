.class Lcom/autochips/bluetooth/music/module/BTMusicService$10;
.super Landroid/media/session/MediaSession$Callback;
.source "BTMusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/music/module/BTMusicService;->initMediaButton()V
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

    .line 1150
    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$10;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 2

    .line 1153
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1154
    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p1

    return p1

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$10;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->handleMediaButton(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
