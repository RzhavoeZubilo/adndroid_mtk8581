.class public Lcom/can/ui/CarAux;
.super Landroid/app/Activity;
.source "CarAux.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CarAux"


# instance fields
.field mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field manager:Lcom/can/tool/AudioFocusManager;

.field private mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/can/ui/CarAux;->manager:Lcom/can/tool/AudioFocusManager;

    .line 33
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/CarAux;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    .line 146
    new-instance v0, Lcom/can/ui/CarAux$2;

    invoke-direct {v0, p0}, Lcom/can/ui/CarAux$2;-><init>(Lcom/can/ui/CarAux;)V

    iput-object v0, p0, Lcom/can/ui/CarAux;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 217
    new-instance v0, Lcom/can/ui/CarAux$3;

    invoke-direct {v0, p0}, Lcom/can/ui/CarAux$3;-><init>(Lcom/can/ui/CarAux;)V

    iput-object v0, p0, Lcom/can/ui/CarAux;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/can/ui/CarAux;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/can/ui/CarAux;->exitAux()V

    return-void
.end method

.method private exitAux()V
    .locals 2

    const-string v0, "CarAux"

    const-string v1, "aux---exitAux"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/can/ui/CarAux;->releaseAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, v0}, Lcom/can/ui/CarAux;->openAuxAudio(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 120
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    const/16 v1, 0x47

    if-eq v0, v1, :cond_0

    const/16 v1, 0x48

    if-eq v0, v1, :cond_1

    const/16 v1, 0x128

    if-eq v0, v1, :cond_1

    const/16 v1, 0x129

    if-eq v0, v1, :cond_1

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/can/ui/CarAux;->onBackPressed()V

    :cond_1
    return v2
.end method

.method public enterAux()V
    .locals 2

    const-string v0, "CarAux"

    const-string v1, "aux---enterAux"

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Lcom/can/ui/CarAux;->requestAudioFocus()V

    const/4 v0, 0x1

    .line 207
    invoke-virtual {p0, v0}, Lcom/can/ui/CarAux;->openAuxAudio(Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/can/ui/CarAux;->exitAux()V

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/can/ui/CarAux;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/high16 v0, 0xc000000

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 43
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 48
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    const/high16 v0, 0x4000000

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, 0x8000000

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    :goto_0
    const p1, 0x7f0b001f

    .line 52
    invoke-virtual {p0, p1}, Lcom/can/ui/CarAux;->setContentView(I)V

    const p1, 0x7f080061

    .line 53
    invoke-virtual {p0, p1}, Lcom/can/ui/CarAux;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/can/ui/CarAux$1;

    invoke-direct {v0, p0}, Lcom/can/ui/CarAux$1;-><init>(Lcom/can/ui/CarAux;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.carocean.action.ACTION_QUIT_APK"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/can/ui/CarAux;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/can/ui/CarAux;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    new-instance p1, Lcom/can/tool/AudioFocusManager;

    invoke-direct {p1}, Lcom/can/tool/AudioFocusManager;-><init>()V

    iput-object p1, p0, Lcom/can/ui/CarAux;->manager:Lcom/can/tool/AudioFocusManager;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/can/ui/CarAux;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/can/ui/CarAux;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    invoke-direct {p0}, Lcom/can/ui/CarAux;->exitAux()V

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 96
    invoke-virtual {p0}, Lcom/can/ui/CarAux;->enterAux()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method openAuxAudio(Z)V
    .locals 2

    const/4 p0, 0x4

    new-array p0, p0, [B

    const/16 v0, -0x63

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    int-to-byte p1, p1

    const/4 v0, 0x1

    aput-byte p1, p0, v0

    const/4 p1, 0x2

    aput-byte v1, p0, p1

    const/4 p1, 0x3

    aput-byte v1, p0, p1

    .line 143
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method releaseAudioFocus()Z
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/can/ui/CarAux;->manager:Lcom/can/tool/AudioFocusManager;

    if-eqz v0, :cond_0

    const-string v0, "CarAux"

    const-string v1, "aux---releaseAudioFocus"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/can/ui/CarAux;->manager:Lcom/can/tool/AudioFocusManager;

    iget-object v1, p0, Lcom/can/ui/CarAux;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/can/tool/AudioFocusManager;->abandonAudioFocusRequest(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lcom/can/ui/CarAux;->manager:Lcom/can/tool/AudioFocusManager;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method requestAudioFocus()V
    .locals 8

    const-string v0, "CarAux"

    const-string v1, "aux---requestAudioFocus"

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/can/ui/CarAux;->manager:Lcom/can/tool/AudioFocusManager;

    iget-object v3, p0, Lcom/can/ui/CarAux;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/can/tool/AudioFocusManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;IIIZ)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 182
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/carocean/navicar/Navi$Common;->SOURCE_LOCK_FILE:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 184
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    const-string v4, "content://com.carocean.status.provider/sys"

    .line 185
    invoke-virtual {p0}, Lcom/can/ui/CarAux;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v5, "SYS_SOURCE_ID"

    const/16 v6, 0x8

    invoke-static {v4, p0, v5, v6}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 187
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 188
    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 182
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v2, :cond_2

    .line 188
    :try_start_6
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 182
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    .line 188
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

    .line 189
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method
