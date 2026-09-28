.class public Lcom/can/services/CarMediaAudio;
.super Ljava/lang/Object;
.source "CarMediaAudio.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "CarMediaAudio"


# instance fields
.field mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Lcom/can/tool/AudioFocusManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/can/services/CarMediaAudio$1;

    invoke-direct {v0, p0}, Lcom/can/services/CarMediaAudio$1;-><init>(Lcom/can/services/CarMediaAudio;)V

    iput-object v0, p0, Lcom/can/services/CarMediaAudio;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 25
    iput-object p1, p0, Lcom/can/services/CarMediaAudio;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method exitUi()V
    .locals 3

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.carocean.action.ACTION_QUIT_APK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/can/services/CarMediaAudio;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "func"

    const-string v2, "carmedia"

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object p0, p0, Lcom/can/services/CarMediaAudio;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method releaseAudioFocus()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/can/services/CarMediaAudio;->mAudioManager:Lcom/can/tool/AudioFocusManager;

    if-eqz v0, :cond_0

    const-string v0, "CarMediaAudio"

    const-string v1, "releaseAudioFocus"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/can/services/CarMediaAudio;->mAudioManager:Lcom/can/tool/AudioFocusManager;

    iget-object v1, p0, Lcom/can/services/CarMediaAudio;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/can/tool/AudioFocusManager;->abandonAudioFocusRequest(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/can/services/CarMediaAudio;->mAudioManager:Lcom/can/tool/AudioFocusManager;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method requestAudioFocus()V
    .locals 8

    .line 56
    iget-object v0, p0, Lcom/can/services/CarMediaAudio;->mAudioManager:Lcom/can/tool/AudioFocusManager;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/can/tool/AudioFocusManager;

    invoke-direct {v0}, Lcom/can/tool/AudioFocusManager;-><init>()V

    iput-object v0, p0, Lcom/can/services/CarMediaAudio;->mAudioManager:Lcom/can/tool/AudioFocusManager;

    :cond_0
    const-string v0, "CarMediaAudio"

    const-string v1, "requestAudioFocus"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v2, p0, Lcom/can/services/CarMediaAudio;->mAudioManager:Lcom/can/tool/AudioFocusManager;

    iget-object v3, p0, Lcom/can/services/CarMediaAudio;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/can/tool/AudioFocusManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;IIIZ)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 65
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/carocean/navicar/Navi$Common;->SOURCE_LOCK_FILE:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 67
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    const-string v4, "content://com.carocean.status.provider/sys"

    .line 68
    iget-object p0, p0, Lcom/can/services/CarMediaAudio;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v5, "SYS_SOURCE_ID"

    const/16 v6, 0x5c

    invoke-static {v4, p0, v5, v6}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 70
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    .line 71
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 65
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_3

    .line 71
    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 65
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    .line 71
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v1

    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method showUi(I)V
    .locals 3

    .line 88
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/can/services/CarMediaAudio;->mContext:Landroid/content/Context;

    const-class v2, Lcom/can/ui/CarMedia;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "mode"

    .line 90
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    iget-object p0, p0, Lcom/can/services/CarMediaAudio;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
