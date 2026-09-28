.class public Lcom/can/tool/AudioFocusManager;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAudioFocusRequest:Landroid/media/AudioFocusRequest;

.field private mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CanApp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/can/tool/AudioFocusManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/can/tool/AudioFocusManager;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 21
    iput-object v0, p0, Lcom/can/tool/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    .line 24
    invoke-static {}, Lcom/can/platforms/CanApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/can/tool/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public abandonAudioFocusRequest(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/can/tool/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/can/tool/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/can/tool/AudioFocusManager;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result p0

    return p0

    .line 72
    :cond_1
    iget-object p0, p0, Lcom/can/tool/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p0

    return p0

    .line 66
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/can/tool/AudioFocusManager;->TAG:Ljava/lang/String;

    const-string p1, "abandonAudioFocusRequest null... "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/can/tool/AudioFocusManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMediaButtonEventReceiver componentName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 81
    iget-object p0, p0, Lcom/can/tool/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez p0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/can/tool/AudioFocusManager;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 29
    iput-object v0, p0, Lcom/can/tool/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;IIIZ)I
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/can/tool/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 47
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, p4}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance p4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 48
    invoke-virtual {p4, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    .line 49
    invoke-virtual {p2, p5}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    .line 50
    invoke-virtual {p2, p1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/can/tool/AudioFocusManager;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 51
    iget-object p0, p0, Lcom/can/tool/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p0

    return p0

    .line 53
    :cond_1
    iget-object p0, p0, Lcom/can/tool/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1, p3, p4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p0

    return p0

    .line 43
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/can/tool/AudioFocusManager;->TAG:Ljava/lang/String;

    const-string p1, "requestAudioFocus null... "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/can/tool/AudioFocusManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterMediaButtonEventReceiver componentName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 93
    iget-object p0, p0, Lcom/can/tool/AudioFocusManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez p0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    :cond_1
    :goto_0
    return-void
.end method
