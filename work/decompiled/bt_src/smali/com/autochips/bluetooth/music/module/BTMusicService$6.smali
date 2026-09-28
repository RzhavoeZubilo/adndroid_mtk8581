.class Lcom/autochips/bluetooth/music/module/BTMusicService$6;
.super Landroid/database/ContentObserver;
.source "BTMusicService.java"


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
.method constructor <init>(Lcom/autochips/bluetooth/music/module/BTMusicService;Landroid/os/Handler;)V
    .locals 0

    .line 939
    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$6;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 942
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 943
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$6;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.carocean.status.provider/sys"

    const-string v1, "SYS_SOURCE_ID"

    const/4 v2, -0x1

    invoke-static {v0, p1, v1, v2}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sourceIdObserver sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eq p1, v2, :cond_0

    .line 946
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$6;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1900(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    :cond_0
    return-void
.end method
