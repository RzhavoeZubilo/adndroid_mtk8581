.class public Lcom/autochips/bluetooth/music/module/BTMusicService;
.super Landroid/app/Service;
.source "BTMusicService.java"

# interfaces
.implements Lcom/carlos/eventlibrary/IEventReceiver;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field private static final CAR_PLAY_ZJ:Ljava/lang/String; = "com.zjinnova.zlink"

.field private static final EASTCONN_AUDIOFOCUS_MUSIC_STATUS:Ljava/lang/String; = "net.easyconn.audiofocus.music.status"

.field private static final EASTCONN_BT_CHECKSTATUS_ACTION:Ljava/lang/String; = "net.easyconn.bt.checkstatus"

.field private static final EASTCONN_BT_CONNECTED_ACTION:Ljava/lang/String; = "net.easyconn.bt.connected"

.field private static final EASTCONN_BT_OPENED_ACTION:Ljava/lang/String; = "net.easyconn.bt.opened"

.field private static final EASTCONN_LINK_APP_QUIT:Ljava/lang/String; = "net.easyconn.app.quit"

.field private static final EASTCONN_LINK_IN_ACTION:Ljava/lang/String; = "net.easyconn.link.in"

.field private static final EASTCONN_LINK_IPHONE_RESUME:Ljava/lang/String; = "net.easyconn.iphone.resume"

.field private static final EASTCONN_LINK_OUT_ACTION:Ljava/lang/String; = "net.easyconn.link.out"

.field private static final EASTCONN_MUSIC_STATUS_ACTION:Ljava/lang/String; = "net.easyconn.a2dp.acquire"

.field public static final TAG:Ljava/lang/String; = "BTMusicService"


# instance fields
.field a2dpState:I

.field private albumName:Ljava/lang/String;

.field audioManager:Landroid/media/AudioManager;

.field avrcpState:I

.field broadcastReceiver:Landroid/content/BroadcastReceiver;

.field currentControlPlayState:I

.field delayEasyconnRunnable:Ljava/lang/Runnable;

.field delayPlayRunnable:Ljava/lang/Runnable;

.field delayPlayTask:Ljava/lang/Runnable;

.field delayTime:I

.field private eastA2dpConnStatus:I

.field private eastAudioFocusStatus:I

.field final focusLock:Ljava/lang/Object;

.field focusRequest:Landroid/media/AudioFocusRequest;

.field focusState:I

.field private isAirPlayConnected:Z

.field private isAutoConnected:Z

.field private isCarplayAutoConnected:Z

.field isNeedRetry:Z

.field lastOperateTimeStamp:J

.field mComponentName:Landroid/content/ComponentName;

.field private mMediaSession:Landroid/media/session/MediaSession;

.field private final mainHandler:Landroid/os/Handler;

.field musicInfo:Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;

.field private musicSinger:Ljava/lang/String;

.field private musicTitle:Ljava/lang/String;

.field playbackAttributes:Landroid/media/AudioAttributes;

.field sourceIdObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x0

    .line 50
    iput v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    .line 51
    iput v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    .line 52
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->mainHandler:Landroid/os/Handler;

    const-string v3, ""

    .line 54
    iput-object v3, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicTitle:Ljava/lang/String;

    iput-object v3, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicSinger:Ljava/lang/String;

    .line 55
    iput-object v3, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->albumName:Ljava/lang/String;

    .line 69
    iput v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->eastA2dpConnStatus:I

    .line 70
    iput v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->eastAudioFocusStatus:I

    .line 72
    iput-boolean v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isCarplayAutoConnected:Z

    .line 73
    iput-boolean v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isAutoConnected:Z

    .line 74
    iput-boolean v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isAirPlayConnected:Z

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 79
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v3, 0x2

    .line 80
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->playbackAttributes:Landroid/media/AudioAttributes;

    .line 83
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iget-object v3, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->playbackAttributes:Landroid/media/AudioAttributes;

    .line 84
    invoke-virtual {v0, v3}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p0, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusRequest:Landroid/media/AudioFocusRequest;

    const-wide/16 v3, 0x0

    .line 93
    iput-wide v3, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->lastOperateTimeStamp:J

    .line 612
    new-instance v0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/music/module/BTMusicService$5;-><init>(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 939
    new-instance v0, Lcom/autochips/bluetooth/music/module/BTMusicService$6;

    invoke-direct {v0, p0, v2}, Lcom/autochips/bluetooth/music/module/BTMusicService$6;-><init>(Lcom/autochips/bluetooth/music/module/BTMusicService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->sourceIdObserver:Landroid/database/ContentObserver;

    const/16 v0, 0x7d0

    .line 1041
    iput v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->delayTime:I

    .line 1042
    iput-boolean v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isNeedRetry:Z

    .line 1043
    new-instance v0, Lcom/autochips/bluetooth/music/module/BTMusicService$7;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/music/module/BTMusicService$7;-><init>(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->delayPlayTask:Ljava/lang/Runnable;

    .line 1084
    new-instance v0, Lcom/autochips/bluetooth/music/module/BTMusicService$8;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/music/module/BTMusicService$8;-><init>(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->delayEasyconnRunnable:Ljava/lang/Runnable;

    .line 1098
    new-instance v0, Lcom/autochips/bluetooth/music/module/BTMusicService$9;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/music/module/BTMusicService$9;-><init>(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->delayPlayRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/music/module/BTMusicService;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->isServiceActive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/music/module/BTMusicService;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/autochips/bluetooth/music/module/BTMusicService;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isAirPlayConnected:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/autochips/bluetooth/music/module/BTMusicService;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isAirPlayConnected:Z

    return p1
.end method

.method static synthetic access$102(Lcom/autochips/bluetooth/music/module/BTMusicService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/autochips/bluetooth/music/module/BTMusicService;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isAutoConnected:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/autochips/bluetooth/music/module/BTMusicService;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isAutoConnected:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/autochips/bluetooth/music/module/BTMusicService;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendMusicCMD(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/autochips/bluetooth/music/module/BTMusicService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->revokeBTMusic()V

    return-void
.end method

.method static synthetic access$1400(Lcom/autochips/bluetooth/music/module/BTMusicService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->clearConnDoPlayTask()V

    return-void
.end method

.method static synthetic access$1500(Lcom/autochips/bluetooth/music/module/BTMusicService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->connDoPlayTask()V

    return-void
.end method

.method static synthetic access$1600(Lcom/autochips/bluetooth/music/module/BTMusicService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendPauseMusicInfo()V

    return-void
.end method

.method static synthetic access$1700(Lcom/autochips/bluetooth/music/module/BTMusicService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->pause()V

    return-void
.end method

.method static synthetic access$1800(Lcom/autochips/bluetooth/music/module/BTMusicService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->play()V

    return-void
.end method

.method static synthetic access$1900(Lcom/autochips/bluetooth/music/module/BTMusicService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->exitBTMusic()V

    return-void
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/music/module/BTMusicService;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicSinger:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/autochips/bluetooth/music/module/BTMusicService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->next()V

    return-void
.end method

.method static synthetic access$202(Lcom/autochips/bluetooth/music/module/BTMusicService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicSinger:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/autochips/bluetooth/music/module/BTMusicService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->previous()V

    return-void
.end method

.method static synthetic access$2200(Lcom/autochips/bluetooth/music/module/BTMusicService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->playOrPause()V

    return-void
.end method

.method static synthetic access$2300(Lcom/autochips/bluetooth/music/module/BTMusicService;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->handleMucKey(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/autochips/bluetooth/music/module/BTMusicService;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isCarplayAutoConnected:Z

    return p0
.end method

.method static synthetic access$2402(Lcom/autochips/bluetooth/music/module/BTMusicService;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isCarplayAutoConnected:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/autochips/bluetooth/music/module/BTMusicService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->requestA2dpFocus()V

    return-void
.end method

.method static synthetic access$2600(Lcom/autochips/bluetooth/music/module/BTMusicService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->resumeBTMusic()V

    return-void
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/music/module/BTMusicService;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->albumName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/autochips/bluetooth/music/module/BTMusicService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->albumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/music/module/BTMusicService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendMusicTitleToFragment()V

    return-void
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/music/module/BTMusicService;III)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/autochips/bluetooth/music/module/BTMusicService;->updateMusicPosition(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/music/module/BTMusicService;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->eastA2dpConnStatus:I

    return p0
.end method

.method static synthetic access$602(Lcom/autochips/bluetooth/music/module/BTMusicService;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->eastA2dpConnStatus:I

    return p1
.end method

.method static synthetic access$700(Lcom/autochips/bluetooth/music/module/BTMusicService;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/autochips/bluetooth/music/module/BTMusicService;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->removeDelayRunnable()V

    return-void
.end method

.method static synthetic access$900(Lcom/autochips/bluetooth/music/module/BTMusicService;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->eastAudioFocusStatus:I

    return p0
.end method

.method static synthetic access$902(Lcom/autochips/bluetooth/music/module/BTMusicService;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->eastAudioFocusStatus:I

    return p1
.end method

.method private checkPlayState()V
    .locals 6

    .line 590
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->lastOperateTimeStamp:J

    sub-long/2addr v0, v2

    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "click play checkPlayState time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   lastOperateTimeStamp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->lastOperateTimeStamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BTMusicService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x1f4

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->play()V

    const-string v0, "click play checkPlayState"

    .line 594
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x258

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "click play checkPlayState delay "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  focusState:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 600
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->requestA2dpFocus()V

    .line 602
    :cond_1
    iget v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->eastA2dpConnStatus:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 603
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->removeDelayRunnable()V

    .line 604
    iget-object v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->delayPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 606
    :cond_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->pause()V

    const/4 v0, 0x3

    .line 607
    iput v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->eastA2dpConnStatus:I

    :goto_0
    return-void
.end method

.method private clearConnDoPlayTask()V
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->delayPlayTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private connDoPlayTask()V
    .locals 4

    const/4 v0, 0x1

    .line 1037
    iput-boolean v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isNeedRetry:Z

    .line 1038
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->delayPlayTask:Ljava/lang/Runnable;

    iget v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->delayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private converPlayState(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0
.end method

.method private exitBTMusic()V
    .locals 3

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitBTMusic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->removeDelayRunnable()V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCarPlayAutoConnected():"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isCarplayAutoConnected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-boolean v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isCarplayAutoConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isAutoConnected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 476
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendMusicCMD(I)V

    .line 477
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->revokeBTMusic()V

    .line 480
    :cond_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->releaseA2dpFocus()V

    .line 481
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->releaseSource()V

    const/4 v0, -0x1

    .line 482
    iput v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    const/4 v0, 0x1

    .line 483
    iput v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->currentControlPlayState:I

    .line 484
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->unregisterMediaButton()V

    .line 489
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v0

    const-class v1, Lcom/autochips/bluetooth/music/module/FragmentMusic;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    return-void
.end method

.method private getA2dpConnectState()V
    .locals 1

    .line 219
    new-instance v0, Lcom/autochips/bluetooth/music/module/BTMusicService$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/music/module/BTMusicService$1;-><init>(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getBluetoothMusicInfo()Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;
    .locals 3

    .line 1016
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicInfo:Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;

    if-nez v0, :cond_0

    .line 1017
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/media"

    const-string v2, "BLUETOOTH_MUSIC_INFO"

    invoke-static {v1, v0, v2}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;

    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicInfo:Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;

    if-nez v0, :cond_0

    .line 1020
    new-instance v0, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;

    invoke-direct {v0}, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicInfo:Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicInfo:Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;

    return-object v0
.end method

.method private handleMucKey(I)V
    .locals 3

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mcu cmdCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    const/16 v2, 0x79

    if-eq p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const p1, 0xffeb05

    :goto_0
    if-eq p1, v0, :cond_1

    .line 1073
    new-instance v0, Landroid/content/Intent;

    const-string v2, "navi.intent.action.ACTION_BLUETOOTH_MUSIC"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "CMD_CODE"

    .line 1074
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth"

    .line 1075
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    iget-object v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, p0, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send mcu cmdCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private initMediaButton()V
    .locals 2

    .line 1140
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    return-void

    .line 1143
    :cond_0
    new-instance v0, Landroid/media/session/MediaSession;

    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->mMediaSession:Landroid/media/session/MediaSession;

    const v1, 0x10003

    .line 1145
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 1150
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->mMediaSession:Landroid/media/session/MediaSession;

    new-instance v1, Lcom/autochips/bluetooth/music/module/BTMusicService$10;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/music/module/BTMusicService$10;-><init>(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    return-void
.end method

.method private isServiceActive()Z
    .locals 1

    .line 149
    invoke-static {}, Lcom/autochips/bluetooth/music/module/BTMusicModule;->getInstance()Lcom/autochips/bluetooth/music/module/BTMusicModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicModule;->myService:Lcom/autochips/bluetooth/IBTService;

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/autochips/bluetooth/music/module/BTMusicModule;->getInstance()Lcom/autochips/bluetooth/music/module/BTMusicModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v0}, Lcom/autochips/bluetooth/IBTService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 153
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/music/module/BTMusicModule;->getInstance()Lcom/autochips/bluetooth/music/module/BTMusicModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/music/module/BTMusicModule;->connectBTService()V

    const/4 v0, 0x0

    return v0
.end method

.method private next()V
    .locals 5

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "next avrcpState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a2dpState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   focusState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->removeDelayRunnable()V

    .line 379
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    const/4 v2, 0x4

    const/16 v3, 0xf

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 380
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    if-eq v0, v4, :cond_0

    if-ne v0, v3, :cond_3

    :cond_0
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    if-ne v0, v4, :cond_3

    const-string v0, "1click next"

    .line 381
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendMusicCMD(I)V

    goto :goto_0

    .line 385
    :cond_1
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    if-eq v0, v4, :cond_2

    if-ne v0, v3, :cond_3

    :cond_2
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    if-ne v0, v4, :cond_3

    .line 387
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->requestA2dpFocus()V

    .line 388
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    if-ne v0, v4, :cond_3

    .line 389
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->resumeBTMusic()V

    const-string v0, "2click next"

    .line 390
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendMusicCMD(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private pause()V
    .locals 6

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause avrcpState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a2dpState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   focusState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->removeDelayRunnable()V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause lastOperateTimeStamp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->lastOperateTimeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    const/4 v2, 0x2

    const-string v3, "click pause"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 284
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    if-eq v0, v4, :cond_0

    const/16 v5, 0xf

    if-ne v0, v5, :cond_2

    :cond_0
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    if-ne v0, v4, :cond_2

    .line 285
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendMusicCMD(I)V

    goto :goto_0

    .line 289
    :cond_1
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    if-ne v0, v4, :cond_2

    .line 291
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->requestA2dpFocus()V

    .line 292
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    if-ne v0, v4, :cond_2

    .line 293
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->resumeBTMusic()V

    .line 294
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendMusicCMD(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private play()V
    .locals 5

    .line 322
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->removeDelayRunnable()V

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play lastOperateTimeStamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->lastOperateTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play avrcpState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " a2dpState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   focusState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    const/16 v2, 0xf

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 326
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_4

    :cond_0
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    if-ne v0, v3, :cond_4

    const-string v0, "1click play"

    .line 327
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->resumeBTMusic()V

    .line 329
    invoke-direct {p0, v3}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendMusicCMD(I)V

    goto :goto_0

    .line 332
    :cond_1
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    if-ne v0, v3, :cond_2

    iget v4, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    if-ne v4, v3, :cond_2

    .line 334
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->requestA2dpFocus()V

    .line 335
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    if-ne v0, v3, :cond_4

    .line 336
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->resumeBTMusic()V

    const-string v0, "2click play"

    .line 337
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0, v3}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendMusicCMD(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_4

    .line 340
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    if-ne v0, v3, :cond_4

    .line 341
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->requestA2dpFocus()V

    .line 342
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    if-ne v0, v3, :cond_3

    .line 343
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->revokeBTMusic()V

    .line 344
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->resumeBTMusic()V

    .line 345
    invoke-direct {p0, v3}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendMusicCMD(I)V

    :cond_3
    const-string v0, "click play3"

    .line 347
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private playOrPause()V
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playOrPause isPlaying:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->pause()V

    goto :goto_0

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->play()V

    :goto_0
    return-void
.end method

.method private previous()V
    .locals 6

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "previous avrcpState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a2dpState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   focusState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->removeDelayRunnable()V

    .line 356
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    const/4 v2, 0x3

    const-string v3, "click previous"

    const/16 v4, 0xf

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 357
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_3

    :cond_0
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    if-ne v0, v5, :cond_3

    .line 358
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendMusicCMD(I)V

    goto :goto_0

    .line 362
    :cond_1
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    if-eq v0, v5, :cond_2

    if-ne v0, v4, :cond_3

    :cond_2
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    if-ne v0, v5, :cond_3

    .line 364
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->requestA2dpFocus()V

    .line 365
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    if-ne v0, v5, :cond_3

    .line 366
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->resumeBTMusic()V

    .line 367
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendMusicCMD(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private releaseA2dpFocus()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    .line 462
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->sourceIdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private releaseSource()V
    .locals 9

    const-string v0, "SYS_SOURCE_ID"

    const-string v1, "content://com.carocean.status.provider/sys"

    const-string v2, "BTMusicService"

    const-string v3, "releaseSource"

    .line 981
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    sget-object v4, Lcom/carocean/navicar/Navi$Common;->SOURCE_LOCK_FILE:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 984
    :try_start_2
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v6

    .line 985
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v1, v7, v0, v8}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_0

    .line 988
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v1, v5, v0, v8}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 991
    :cond_0
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    .line 992
    :try_start_3
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 982
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v4, :cond_2

    .line 992
    :try_start_6
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    .line 982
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v1

    .line 992
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v3

    :try_start_a
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    .line 993
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private removeDelayRunnable()V
    .locals 2

    const-string v0, "BTMusicService"

    const-string v1, "removeDelayRunnable >>"

    .line 1115
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->delayEasyconnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1117
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->delayPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestA2dpFocus()V
    .locals 5

    .line 445
    iget-boolean v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isAutoConnected:Z

    const-string v1, "BTMusicService"

    if-eqz v0, :cond_0

    const-string v0, "requestA2dpFocus isAutoConnected return!!!"

    .line 446
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->audioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    iput v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    .line 451
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://com.carocean.status.provider/sys/SYS_SOURCE_ID"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->sourceIdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 452
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->registerMediaButton()V

    .line 453
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->setA2DPSource()V

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestA2dpFocus result="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resumeBTMusic()V
    .locals 1

    .line 265
    new-instance v0, Lcom/autochips/bluetooth/music/module/BTMusicService$3;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/music/module/BTMusicService$3;-><init>(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private revokeBTMusic()V
    .locals 1

    .line 402
    new-instance v0, Lcom/autochips/bluetooth/music/module/BTMusicService$4;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/music/module/BTMusicService$4;-><init>(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendMusicCMD(I)V
    .locals 1

    .line 245
    new-instance v0, Lcom/autochips/bluetooth/music/module/BTMusicService$2;

    invoke-direct {v0, p0, p1}, Lcom/autochips/bluetooth/music/module/BTMusicService$2;-><init>(Lcom/autochips/bluetooth/music/module/BTMusicService;I)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendMusicPosition()V
    .locals 7

    .line 493
    iget-boolean v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isAutoConnected:Z

    const-string v1, "BTMusicService"

    if-eqz v0, :cond_0

    const-string v0, "sendMusicPosition isAutoConnected true return"

    .line 495
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 499
    :cond_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getBluetoothMusicInfo()Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;

    move-result-object v0

    const-string v2, "sendMusicInfo SET_PLAY_POSITION >>>"

    .line 500
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 503
    new-instance v1, Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {v1}, Lcom/carlos/eventlibrary/EventMail;-><init>()V

    .line 505
    const-class v2, Lcom/autochips/bluetooth/music/module/FragmentMusic;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/carlos/eventlibrary/EventMail;->setAddress_className(Ljava/lang/String;)V

    const/16 v2, 0xe

    .line 506
    invoke-virtual {v1, v2}, Lcom/carlos/eventlibrary/EventMail;->setFlag(I)V

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    .line 507
    iget-wide v5, v0, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;->duration:J

    long-to-int v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    iget-wide v5, v0, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;->bufferedPosition:J

    long-to-int v5, v5

    aput v5, v3, v4

    const/4 v4, 0x2

    iget-wide v5, v0, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;->currentPosition:J

    long-to-int v0, v5

    aput v0, v3, v4

    .line 508
    invoke-virtual {v1, v2, v3}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 509
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Lcom/carlos/eventlibrary/EventMail;)Z

    :cond_1
    return-void
.end method

.method private sendMusicTitleToFragment()V
    .locals 4

    .line 517
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicTitle:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 518
    iput-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicTitle:Ljava/lang/String;

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicSinger:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 521
    iput-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicSinger:Ljava/lang/String;

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->albumName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 524
    iput-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->albumName:Ljava/lang/String;

    .line 527
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMusicInfo musicTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   musicSinger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicSinger:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  albumName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMusicInfo a2dpState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0xf

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicSinger:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->albumName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    .line 531
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMusicInfo title is empty return isHaveFocus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 535
    :cond_4
    iget-boolean v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isAutoConnected:Z

    if-eqz v0, :cond_5

    const-string v0, "sendMusicInfo isAutoConnected true return"

    .line 537
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 542
    :cond_5
    new-instance v0, Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {v0}, Lcom/carlos/eventlibrary/EventMail;-><init>()V

    .line 544
    const-class v1, Lcom/autochips/bluetooth/music/module/FragmentMusic;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/carlos/eventlibrary/EventMail;->setAddress_className(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v0, v3}, Lcom/carlos/eventlibrary/EventMail;->setFlag(I)V

    .line 546
    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicTitle:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 547
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Lcom/carlos/eventlibrary/EventMail;)Z

    .line 549
    new-instance v0, Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {v0}, Lcom/carlos/eventlibrary/EventMail;-><init>()V

    const/4 v1, 0x2

    .line 550
    invoke-virtual {v0, v1}, Lcom/carlos/eventlibrary/EventMail;->setFlag(I)V

    .line 551
    iget-object v3, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicSinger:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 552
    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 554
    const-class v1, Lcom/autochips/bluetooth/music/module/FragmentMusic;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/carlos/eventlibrary/EventMail;->setAddress_className(Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Lcom/carlos/eventlibrary/EventMail;)Z

    .line 557
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getBluetoothMusicInfo()Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;

    move-result-object v0

    .line 558
    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicSinger:Ljava/lang/String;

    iput-object v1, v0, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;->artist:Ljava/lang/String;

    .line 559
    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->musicTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;->musicTitle:Ljava/lang/String;

    .line 560
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->setBluetoothMusicInfo(Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;)V

    return-void
.end method

.method private sendPauseMusicInfo()V
    .locals 2

    .line 316
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getBluetoothMusicInfo()Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;

    move-result-object v0

    const/4 v1, 0x1

    .line 317
    iput v1, v0, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;->playState:I

    .line 318
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->setBluetoothMusicInfo(Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;)V

    return-void
.end method

.method private setA2DPSource()V
    .locals 10

    const-string v0, "SYS_SOURCE_ID"

    const-string v1, "content://com.carocean.status.provider/sys"

    .line 955
    iget-boolean v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isAutoConnected:Z

    const-string v3, "BTMusicService"

    if-eqz v2, :cond_0

    const-string v0, "setA2DPSource isAutoConnected true return"

    .line 957
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "setA2DPSource"

    .line 960
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v4, Lcom/carocean/navicar/Navi$Common;->SOURCE_LOCK_FILE:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 963
    :try_start_2
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v6

    .line 964
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, -0x1

    invoke-static {v1, v7, v0, v8}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 965
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setA2DPSource sourceId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v7, v5, :cond_1

    .line 967
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v1, v7, v0, v5}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 970
    :cond_1
    invoke-virtual {v6}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_2

    .line 971
    :try_start_3
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 961
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v4, :cond_3

    .line 971
    :try_start_6
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    .line 961
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v1

    .line 971
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v2

    :try_start_a
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    .line 972
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private setBluetoothMusicInfo(Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;)V
    .locals 4

    .line 1001
    iget-boolean v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isAutoConnected:Z

    const-string v1, "BTMusicService"

    if-eqz v0, :cond_0

    const-string p1, "setBluetoothMusicInfo isAutoConnected true return"

    .line 1003
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1007
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBluetoothMusicInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;->playState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;->musicTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/media"

    const-string v2, "BLUETOOTH_MUSIC_INFO"

    invoke-static {v1, v0, v2, p1}, Lcom/carocean/navicar/NaviStatus;->putObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private updateMusicPosition(III)V
    .locals 4

    .line 1121
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getBluetoothMusicInfo()Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;

    move-result-object v0

    int-to-long v1, p1

    .line 1122
    iput-wide v1, v0, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;->duration:J

    int-to-long v1, p2

    .line 1123
    iput-wide v1, v0, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;->currentPosition:J

    .line 1124
    invoke-direct {p0, p3}, Lcom/autochips/bluetooth/music/module/BTMusicService;->converPlayState(I)I

    move-result v1

    iput v1, v0, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;->playState:I

    .line 1125
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->setBluetoothMusicInfo(Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;)V

    .line 1127
    new-instance v0, Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {v0}, Lcom/carlos/eventlibrary/EventMail;-><init>()V

    .line 1129
    const-class v1, Lcom/autochips/bluetooth/music/module/FragmentMusic;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/carlos/eventlibrary/EventMail;->setAddress_className(Ljava/lang/String;)V

    const/16 v1, 0xe

    .line 1130
    invoke-virtual {v0, v1}, Lcom/carlos/eventlibrary/EventMail;->setFlag(I)V

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    const/4 v3, 0x2

    aput p2, v2, v3

    .line 1132
    invoke-virtual {v0, v1, v2}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 1133
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Lcom/carlos/eventlibrary/EventMail;)Z

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " length="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " position="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BTMusicService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public MailBox(Lcom/carlos/eventlibrary/EventMail;)V
    .locals 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mailBox flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getFlag()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getFlag()I

    move-result p1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7d1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    const/4 v2, 0x2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 213
    :pswitch_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->requestA2dpFocus()V

    goto/16 :goto_0

    .line 201
    :pswitch_1
    iget p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    const/16 v1, 0xf

    if-ne p1, v1, :cond_0

    .line 202
    iput v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->currentControlPlayState:I

    .line 203
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->pause()V

    goto/16 :goto_0

    .line 205
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->lastOperateTimeStamp:J

    .line 206
    iput v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->currentControlPlayState:I

    .line 208
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->checkPlayState()V

    goto :goto_0

    .line 195
    :pswitch_2
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "content://com.carocean.status.provider/sys"

    const-string v2, "SYS_SOURCE_ID"

    invoke-static {v1, p1, v2, v0}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 197
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->setA2DPSource()V

    goto :goto_0

    .line 183
    :pswitch_3
    iget p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->eastA2dpConnStatus:I

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isCarplayAutoConnected:Z

    if-nez p1, :cond_4

    .line 184
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->exitBTMusic()V

    goto :goto_0

    .line 180
    :pswitch_4
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->previous()V

    goto :goto_0

    .line 177
    :pswitch_5
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->next()V

    goto :goto_0

    .line 173
    :pswitch_6
    iput v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->currentControlPlayState:I

    .line 174
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->pause()V

    goto :goto_0

    .line 163
    :pswitch_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FLAG_PLAY isAutoConnected:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isAutoConnected:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-boolean p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->isAutoConnected:Z

    if-eqz p1, :cond_1

    return-void

    .line 167
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->lastOperateTimeStamp:J

    .line 168
    iput v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->currentControlPlayState:I

    .line 170
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->checkPlayState()V

    goto :goto_0

    .line 192
    :cond_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getA2dpConnectState()V

    goto :goto_0

    .line 188
    :cond_3
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendMusicTitleToFragment()V

    .line 189
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendMusicPosition()V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMediaButton(Landroid/content/Intent;)V
    .locals 5

    .line 1164
    iget v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    const-string v1, "BTMusicService"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string p1, "a2dp is not connected"

    .line 1165
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 1169
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 1173
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 1174
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    move v2, p1

    .line 1177
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  key_Action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x7e

    if-eq v2, v3, :cond_3

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    move v3, v0

    goto :goto_1

    :pswitch_0
    const v3, 0xffeb07

    goto :goto_1

    :pswitch_1
    const v3, 0xffeb08

    goto :goto_1

    :pswitch_2
    const v3, 0xffeb05

    goto :goto_1

    :cond_2
    :pswitch_3
    const v3, 0xffeb04

    goto :goto_1

    :cond_3
    const v3, 0xffeb03

    :goto_1
    if-eq v3, v0, :cond_4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 1199
    new-instance p1, Landroid/content/Intent;

    const-string v0, "navi.intent.action.ACTION_BLUETOOTH_MUSIC"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "CMD_CODE"

    .line 1200
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.autochips.bluetooth"

    .line 1201
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendBroadcast keyCode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioFocusChange(I)V
    .locals 3

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioFocusChange focusChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPlayState currentControlPlayState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->currentControlPlayState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 570
    :cond_0
    iput v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    .line 571
    iget p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->currentControlPlayState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 572
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->checkPlayState()V

    goto :goto_0

    .line 583
    :cond_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->exitBTMusic()V

    .line 584
    iput v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    goto :goto_0

    .line 577
    :cond_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->removeDelayRunnable()V

    .line 578
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->pause()V

    .line 579
    iput v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    :cond_3
    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 98
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "BTMusicService"

    const-string v1, "MusicService onCreate"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/carlos/eventlibrary/EventMailer;->register(Lcom/carlos/eventlibrary/IEventReceiver;)V

    const-string v0, "audio"

    .line 101
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->audioManager:Landroid/media/AudioManager;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.action.ACTION_MEDIA_DATA_UPDATE"

    .line 103
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.action.ACTION_PLAYBACK_DATA_UPDATE"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.ACTION_BTMUSIC_INTERACTIVE"

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "navi.intent.action.ACTION_BLUETOOTH_MUSIC"

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "navi.intent.action.ACTION_MCU_KEY_COMMAND"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.a2dp.acquire"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.link.out"

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.link.in"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.bt.checkstatus"

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.audiofocus.music.status"

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.app.quit"

    .line 114
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.iphone.resume"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zjinnova.zlink"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getBluetoothMusicInfo()Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;

    move-result-object v0

    const-string v1, ""

    .line 119
    iput-object v1, v0, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;->musicTitle:Ljava/lang/String;

    .line 120
    iput-object v1, v0, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;->artist:Ljava/lang/String;

    const/4 v1, 0x2

    .line 121
    iput v1, v0, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;->playState:I

    .line 122
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->setBluetoothMusicInfo(Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 127
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 128
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/carlos/eventlibrary/EventMailer;->unregisterReceiver(Lcom/carlos/eventlibrary/IEventReceiver;)V

    .line 129
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "BTMusicService"

    const-string v1, "MusicService onDestory"

    .line 130
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, -0x1

    .line 135
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendMusicCMD(I)V

    .line 136
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public registerMediaButton()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->mMediaSession:Landroid/media/session/MediaSession;

    if-nez v0, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->initMediaButton()V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->mMediaSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    :cond_1
    const-string v0, "BTMusicService"

    const-string v1, "registerMediaButton"

    .line 426
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterMediaButton()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    const/4 v0, 0x0

    .line 435
    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService;->mMediaSession:Landroid/media/session/MediaSession;

    :cond_0
    const-string v0, "BTMusicService"

    const-string v1, "unregisterMediaButton"

    .line 437
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
