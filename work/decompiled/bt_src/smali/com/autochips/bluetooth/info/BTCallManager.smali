.class public Lcom/autochips/bluetooth/info/BTCallManager;
.super Ljava/lang/Object;
.source "BTCallManager.java"

# interfaces
.implements Lcom/autochips/bluetooth/event/IBTObserver;


# static fields
.field public static final ACTION_CALL_LOGS_CHANGED:I = 0xbba

.field public static final ACTION_CALL_STATE_CHANGED:I = 0xbbb

.field public static final ACTION_MIC_MUTE_STATE_CHANGED:I = 0xbb9

.field public static final ACTION_SCO_CONNECTED_CHANGED:I = 0xbbc

.field public static final MIC_STATE_MUTE:I = 0x1

.field public static final MIC_STATE_UNMUTE:I = 0x0

.field public static final SCO_CONNECTED:I = 0x1

.field public static final SCO_DISCONNECTED:I = 0x2

.field public static final SCO_DISCONNECTING:I = 0x3

.field public static final TAG:Ljava/lang/String; = "BTCallManager"

.field private static btCallManager:Lcom/autochips/bluetooth/info/BTCallManager;


# instance fields
.field private SCOConnectState:I

.field private audioManager:Landroid/media/AudioManager;

.field private final callsLock:Ljava/lang/Object;

.field private context:Landroid/content/Context;

.field private currentCallIndex:I

.field private handler:Landroid/os/Handler;

.field private isHaveAudioFocus:Z

.field private final myCalls:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/autochips/bluetooth/model/MyCall;",
            ">;"
        }
    .end annotation
.end field

.field onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->callsLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->currentCallIndex:I

    .line 89
    iput v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->SCOConnectState:I

    .line 92
    iput-boolean v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->isHaveAudioFocus:Z

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->handler:Landroid/os/Handler;

    .line 561
    new-instance v0, Lcom/autochips/bluetooth/info/BTCallManager$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/info/BTCallManager$2;-><init>(Lcom/autochips/bluetooth/info/BTCallManager;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public static getInstance()Lcom/autochips/bluetooth/info/BTCallManager;
    .locals 2

    .line 100
    sget-object v0, Lcom/autochips/bluetooth/info/BTCallManager;->btCallManager:Lcom/autochips/bluetooth/info/BTCallManager;

    if-nez v0, :cond_1

    .line 101
    const-class v0, Lcom/autochips/bluetooth/info/BTCallManager;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/info/BTCallManager;->btCallManager:Lcom/autochips/bluetooth/info/BTCallManager;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Lcom/autochips/bluetooth/info/BTCallManager;

    invoke-direct {v1}, Lcom/autochips/bluetooth/info/BTCallManager;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/info/BTCallManager;->btCallManager:Lcom/autochips/bluetooth/info/BTCallManager;

    .line 105
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 107
    :cond_1
    :goto_0
    sget-object v0, Lcom/autochips/bluetooth/info/BTCallManager;->btCallManager:Lcom/autochips/bluetooth/info/BTCallManager;

    return-object v0
.end method

.method private openBtHfpEnable(Z)V
    .locals 5

    .line 625
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    const-string v1, "BTCallManager"

    if-nez v0, :cond_0

    const-string p1, "openBtHfpEnable: audioManager null"

    .line 626
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 629
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openBtHfpEnable: STREAM_VOICE_CALL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xa

    if-eqz p1, :cond_1

    const-string p1, "openBtHfpEnable: check true"

    .line 633
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    const-string v1, "hfp_enable=true"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 635
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    const-string v1, "hfp_set_sampling_rate=8000"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 636
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hfp_volume="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 637
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 638
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 640
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v2, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 642
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :cond_1
    const-string p1, "openBtHfpEnable: check false"

    .line 644
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    const-string v0, "hfp_enable=false"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 646
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 648
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    .line 649
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_0
    return-void
.end method

.method private releaseAudioFocus()V
    .locals 4

    const-string v0, "BTCallManager"

    const-string v1, "releaseAudioFocus"

    .line 569
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 570
    iput-boolean v1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->isHaveAudioFocus:Z

    .line 571
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/info/BTCallManager;->openBtHfpEnable(Z)V

    .line 572
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTCallManager;->getMicMuteState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTCallManager;->unMuteMic()V

    .line 575
    :cond_0
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/autochips/bluetooth/info/BTCallManager;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const-string v2, "clear mute releaseAudioFocus"

    .line 576
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v0

    const/16 v2, 0xa0

    invoke-virtual {v0, v2, v1}, Lcom/carocean/navicar/McuServiceManager;->RPCKeyCommand(II)V

    return-void
.end method

.method private requestAudioFocus()V
    .locals 4

    .line 553
    iget-boolean v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->isHaveAudioFocus:Z

    if-nez v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 556
    iput-boolean v1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->isHaveAudioFocus:Z

    .line 557
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAudioFocus result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " micState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTCallManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateCallFinish(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 595
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 597
    :goto_0
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 598
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/model/MyCall;

    .line 599
    invoke-virtual {v2}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 604
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallFinish:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BTCallManager"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v3, :cond_2

    .line 606
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/model/MyCall;

    const/4 v1, 0x1

    .line 607
    invoke-virtual {p1, v1}, Lcom/autochips/bluetooth/model/MyCall;->setState(I)V

    .line 608
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v2

    iget-object v2, v2, Lcom/autochips/bluetooth/info/BTBaseManager;->callLogs:Ljava/util/List;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneBookModel()Lcom/autochips/bluetooth/model/PhoneBookModel;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 609
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 v0, 0xbba

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    .line 610
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->currentCallIndex:I

    .line 612
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 613
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 614
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTCallManager;->releaseAudioFocus()V

    :cond_3
    return-void
.end method

.method private updateCallStatus(Ljava/lang/String;I)V
    .locals 8

    .line 268
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    const-string v1, "BTCallManager"

    if-nez v0, :cond_0

    const-string p1, "currentCallIndex= null"

    .line 270
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 273
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentCallIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/autochips/bluetooth/info/BTCallManager;->currentCallIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentPhoneNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentPhoneState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    phoneNumber:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_a

    const/4 v4, 0x4

    if-eq p2, v3, :cond_6

    if-eq p2, v0, :cond_5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    if-eq p2, v4, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    goto/16 :goto_6

    .line 331
    :cond_1
    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/model/MyCall;

    .line 332
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    .line 333
    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/model/MyCall;->setState(I)V

    goto :goto_1

    .line 335
    :cond_2
    invoke-virtual {v0, v4}, Lcom/autochips/bluetooth/model/MyCall;->setState(I)V

    .line 336
    invoke-virtual {v0, v3}, Lcom/autochips/bluetooth/model/MyCall;->setActivated(Z)V

    .line 337
    iput v2, p0, Lcom/autochips/bluetooth/info/BTCallManager;->currentCallIndex:I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    :cond_3
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/autochips/bluetooth/model/MyCall;->setState(I)V

    .line 286
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/autochips/bluetooth/model/MyCall;->setActivated(Z)V

    .line 287
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object p1

    const/16 p2, 0xa0

    invoke-virtual {p1, p2, v2}, Lcom/carocean/navicar/McuServiceManager;->RPCKeyCommand(II)V

    goto/16 :goto_6

    .line 282
    :cond_4
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/model/MyCall;->setState(I)V

    goto/16 :goto_6

    .line 279
    :cond_5
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/model/MyCall;->setState(I)V

    goto/16 :goto_6

    .line 307
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1 mycalls size:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v5, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v2

    .line 308
    :goto_2
    iget-object v5, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge p2, v5, :cond_9

    .line 309
    iget-object v5, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v5, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autochips/bluetooth/model/MyCall;

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1 mycalls phone:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 312
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1 sendNotAnswerCallNotificationAction HFP_UTILITY_CALLSTATE_IDLE "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v6, "  "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v6, "   "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/MyCall;->isActivated()Z

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result p2

    if-ne p2, v0, :cond_7

    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/MyCall;->isActivated()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/MyCall;->isShouldSendNotification()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 315
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p2

    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/MyCall;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v0, v6}, Lcom/autochips/bluetooth/event/BTEventManager;->sendNotAnswerCallNotificationAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_7
    invoke-virtual {v5, v3}, Lcom/autochips/bluetooth/model/MyCall;->setState(I)V

    goto :goto_3

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_2

    .line 321
    :cond_9
    :goto_3
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/info/BTCallManager;->updateCallFinish(Ljava/lang/String;)V

    .line 323
    :goto_4
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-ge v2, p1, :cond_d

    .line 324
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/model/MyCall;

    .line 325
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCallFinish state:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "    "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p1, v4}, Lcom/autochips/bluetooth/model/MyCall;->setState(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 290
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mycalls size:"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v4, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_5
    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    if-ge v2, p2, :cond_c

    .line 292
    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p2, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/autochips/bluetooth/model/MyCall;

    .line 293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendNotAnswerCallNotificationAction HFP_UTILITY_CALLSTATE_CLEAR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v4

    if-ne v4, v0, :cond_b

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyCall;->isActivated()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyCall;->isShouldSendNotification()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 296
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v4

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyCall;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/autochips/bluetooth/event/BTEventManager;->sendNotAnswerCallNotificationAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_b
    invoke-virtual {p2, v3}, Lcom/autochips/bluetooth/model/MyCall;->setState(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 300
    :cond_c
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/info/BTCallManager;->updateCallFinish(Ljava/lang/String;)V

    .line 301
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_d

    .line 302
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 303
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTCallManager;->releaseAudioFocus()V

    .line 344
    :cond_d
    :goto_6
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 p2, 0xbbb

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    .line 345
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviBTCallState(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 2

    const-string v0, "BTCallManager"

    const-string v1, "acceptCall1"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->answercall()V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 2

    .line 225
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getCurrentConnectDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    .line 227
    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTCallManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->call(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public connectSCOAudio()V
    .locals 2

    const-string v0, "BTCallManager"

    const-string v1, "connectSCOAudio"

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->switchcallaudio()V

    return-void
.end method

.method public disConnectSCOAudio()V
    .locals 3

    const-string v0, "BTCallManager"

    const-string v1, "disConnectSCOAudio"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v0

    const/16 v1, 0xa0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/carocean/navicar/McuServiceManager;->RPCKeyCommand(II)V

    .line 154
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->switchcallaudio()V

    return-void
.end method

.method public endCall()V
    .locals 2

    const-string v0, "BTCallManager"

    const-string v1, "endCall"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 190
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->hangupCurAcceptWait()V

    goto :goto_0

    .line 192
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->terminatecall()V

    :goto_0
    return-void
.end method

.method public endLTECalls()V
    .locals 2

    const-string v0, "BTCallManager"

    const-string v1, "endLTECalls"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCallList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/autochips/bluetooth/model/MyCall;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    return-object v0
.end method

.method public getCallNumber()Ljava/lang/String;
    .locals 1

    .line 585
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 139
    iget v1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->currentCallIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "getCurrentCall index=%d,size=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTCallManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->currentCallIndex:I

    if-le v0, v1, :cond_0

    if-ltz v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/model/MyCall;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMicMuteState()I
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSCOConnectState()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->SCOConnectState:I

    return v0
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 10

    const/16 v0, 0xbba

    const/16 v1, 0xbbb

    const/4 v2, 0x0

    const/16 v3, 0xfa2

    if-eq p1, v0, :cond_1c

    const/16 v4, 0xbc5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p1, v4, :cond_19

    const/16 v4, 0xbd9

    const/4 v7, 0x2

    const/16 v8, 0xfb0

    if-eq p1, v4, :cond_17

    const/16 v4, 0xbe1

    if-eq p1, v4, :cond_13

    const/16 v0, 0xbe4

    if-eq p1, v0, :cond_12

    const/16 v0, 0xbe9

    if-eq p1, v0, :cond_5

    const/16 v0, 0xbea

    if-eq p1, v0, :cond_0

    goto/16 :goto_8

    .line 464
    :cond_0
    invoke-virtual {p2, v8}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v0, 0xfad

    .line 465
    invoke-virtual {p2, v0}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 466
    invoke-virtual {p2, v3}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 467
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->callsLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_3

    .line 468
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 470
    iget-object v3, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autochips/bluetooth/model/MyCall;

    .line 471
    invoke-virtual {v4}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v6

    :cond_2
    if-nez v5, :cond_3

    .line 477
    new-instance v3, Lcom/autochips/bluetooth/model/MyCall;

    iget-object v4, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    iget-object v5, p0, Lcom/autochips/bluetooth/info/BTCallManager;->context:Landroid/content/Context;

    invoke-direct {v3, p1, v4, v5}, Lcom/autochips/bluetooth/model/MyCall;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    .line 478
    invoke-virtual {v3, p2}, Lcom/autochips/bluetooth/model/MyCall;->setState(I)V

    .line 479
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    sub-int/2addr p1, v6

    iput p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->currentCallIndex:I

    const-string p1, "BTCallManager"

    .line 481
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add multi Call "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v4, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 485
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTCallManager;->requestAudioFocus()V

    .line 487
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    .line 489
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviBTCallState(Landroid/content/Context;)V

    goto/16 :goto_8

    :catchall_0
    move-exception p1

    .line 487
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 409
    :cond_5
    invoke-virtual {p2, v3}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 410
    invoke-virtual {p2, v8}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 411
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->callsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v3, 0x4

    if-eqz p2, :cond_d

    .line 412
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 414
    iget-object v4, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autochips/bluetooth/model/MyCall;

    .line 415
    invoke-virtual {v8}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v4, v6

    goto :goto_0

    :cond_7
    move v4, v5

    :goto_0
    if-nez v4, :cond_b

    .line 421
    new-instance v4, Lcom/autochips/bluetooth/model/MyCall;

    iget-object v8, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    iget-object v9, p0, Lcom/autochips/bluetooth/info/BTCallManager;->context:Landroid/content/Context;

    invoke-direct {v4, p2, v8, v9}, Lcom/autochips/bluetooth/model/MyCall;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    const/4 v8, 0x3

    if-ne p1, v8, :cond_8

    .line 423
    invoke-virtual {v4, v8}, Lcom/autochips/bluetooth/model/MyCall;->setState(I)V

    goto :goto_1

    :cond_8
    if-ne p1, v7, :cond_9

    .line 425
    invoke-virtual {v4, v7}, Lcom/autochips/bluetooth/model/MyCall;->setState(I)V

    goto :goto_1

    :cond_9
    if-ne p1, v3, :cond_a

    .line 427
    invoke-virtual {v4, v3}, Lcom/autochips/bluetooth/model/MyCall;->setState(I)V

    goto :goto_1

    .line 429
    :cond_a
    invoke-virtual {v4, v8}, Lcom/autochips/bluetooth/model/MyCall;->setState(I)V

    .line 432
    :goto_1
    iget-object v7, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v7, "BTCallManager"

    .line 433
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add one Call "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v9, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendUpdateCallStatusNotificationAction(Ljava/lang/String;)V

    :cond_b
    move v4, v5

    .line 436
    :goto_2
    iget-object v7, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v4, v7, :cond_d

    .line 437
    iget-object v7, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/autochips/bluetooth/model/MyCall;

    invoke-virtual {v7}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 438
    iput v4, p0, Lcom/autochips/bluetooth/info/BTCallManager;->currentCallIndex:I

    goto :goto_3

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_5

    .line 444
    :cond_d
    :goto_3
    iget-object v4, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v5, v4, :cond_f

    .line 445
    iget-object v4, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autochips/bluetooth/model/MyCall;

    invoke-virtual {v4}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v4

    if-ne v4, v3, :cond_e

    .line 446
    iput v5, p0, Lcom/autochips/bluetooth/info/BTCallManager;->currentCallIndex:I

    goto :goto_4

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 450
    :cond_f
    :goto_4
    iget-object v3, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 451
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTCallManager;->requestAudioFocus()V

    .line 453
    :cond_10
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 454
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v6, :cond_11

    .line 455
    invoke-direct {p0, p2, p1}, Lcom/autochips/bluetooth/info/BTCallManager;->updateCallStatus(Ljava/lang/String;I)V

    :cond_11
    const-string p1, "BTCallManager"

    .line 457
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "currentCallIndex:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->currentCallIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    .line 460
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviBTCallState(Landroid/content/Context;)V

    goto/16 :goto_8

    .line 453
    :goto_5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 405
    :cond_12
    invoke-virtual {p2, v3}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto/16 :goto_8

    .line 494
    :cond_13
    invoke-virtual {p2, v3}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "BTCallManager"

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_NUMBER_OF_CALL_NUMBERS_CHANGED counter="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_16

    .line 497
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->getSyncContactState()I

    move-result p1

    if-ne p1, v6, :cond_15

    .line 498
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->callsLock:Ljava/lang/Object;

    monitor-enter p1

    .line 499
    :try_start_4
    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/model/MyCall;

    .line 500
    invoke-virtual {v1, v6}, Lcom/autochips/bluetooth/model/MyCall;->setState(I)V

    .line 501
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v3

    iget-object v3, v3, Lcom/autochips/bluetooth/info/BTBaseManager;->callLogs:Ljava/util/List;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneBookModel()Lcom/autochips/bluetooth/model/PhoneBookModel;

    move-result-object v1

    invoke-interface {v3, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 502
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    goto :goto_6

    .line 504
    :cond_14
    monitor-exit p1

    goto :goto_7

    :catchall_2
    move-exception p2

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p2

    .line 506
    :cond_15
    :goto_7
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 507
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTCallManager;->releaseAudioFocus()V

    goto/16 :goto_8

    :cond_16
    const-string p1, "BTCallManager"

    .line 545
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "myCalls="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object v0, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 355
    :cond_17
    invoke-virtual {p2, v3}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 356
    invoke-virtual {p2, v8}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "BTCallManager"

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phoneCallState cc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v7, :cond_18

    .line 359
    invoke-direct {p0, v6}, Lcom/autochips/bluetooth/info/BTCallManager;->openBtHfpEnable(Z)V

    .line 361
    :cond_18
    invoke-direct {p0, p2, p1}, Lcom/autochips/bluetooth/info/BTCallManager;->updateCallStatus(Ljava/lang/String;I)V

    goto/16 :goto_8

    .line 367
    :cond_19
    invoke-virtual {p2, v3}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->SCOConnectState:I

    const-string p1, "BTCallManager"

    .line 368
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SCOConnectState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->SCOConnectState:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->SCOConnectState:I

    if-ne p1, v6, :cond_1a

    const-string p1, "BTCallManager"

    const-string p2, "SCOConnectState: SCO_CONNECTED"

    .line 370
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-direct {p0, v6}, Lcom/autochips/bluetooth/info/BTCallManager;->openBtHfpEnable(Z)V

    .line 372
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/autochips/bluetooth/info/BTCallManager$1;

    invoke-direct {p2, p0}, Lcom/autochips/bluetooth/info/BTCallManager$1;-><init>(Lcom/autochips/bluetooth/info/BTCallManager;)V

    const-wide/16 v0, 0x2ee

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    :cond_1a
    const-string p1, "BTCallManager"

    const-string p2, "SCOConnectState:SCO_DISCONNECTED"

    .line 381
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    if-eqz p1, :cond_1b

    const-string p1, "BTCallManager"

    const-string p2, "mute SCO_DISCONNECTED"

    .line 383
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object p1

    const/16 p2, 0xa0

    invoke-virtual {p1, p2, v6}, Lcom/carocean/navicar/McuServiceManager;->RPCKeyCommand(II)V

    .line 386
    :cond_1b
    invoke-direct {p0, v5}, Lcom/autochips/bluetooth/info/BTCallManager;->openBtHfpEnable(Z)V

    .line 387
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 p2, 0xbbc

    invoke-virtual {p1, p2, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    goto :goto_8

    .line 393
    :cond_1c
    invoke-virtual {p2, v3}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 394
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->isHFPconnected()Z

    move-result p1

    if-nez p1, :cond_1d

    .line 395
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_1d

    .line 396
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->myCalls:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 397
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTCallManager;->releaseAudioFocus()V

    .line 398
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviBTCallState(Landroid/content/Context;)V

    .line 399
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_1d
    :goto_8
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 114
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager;->context:Landroid/content/Context;

    .line 115
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerSecondObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    const-string v0, "audio"

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    .line 117
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/carocean/navicar/McuServiceManager;->initialize(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public muteMic()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 239
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    const/16 v1, 0xbb9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    return-void
.end method

.method public redial()V
    .locals 2

    const-string v0, "BTCallManager"

    const-string v1, "redial"

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->recall()V

    return-void
.end method

.method public rejectCall()V
    .locals 0

    .line 217
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTCallManager;->endCall()V

    return-void
.end method

.method public sendDTMF(Ljava/lang/String;)V
    .locals 2

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDTMF code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTCallManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->SendDTMFCode(Ljava/lang/String;)V

    return-void
.end method

.method public unHold()V
    .locals 2

    const-string v0, "BTCallManager"

    const-string v1, "unHold"

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->unHold()V

    return-void
.end method

.method public unMuteMic()V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTCallManager;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 247
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    const/16 v1, 0xbb9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    return-void
.end method
