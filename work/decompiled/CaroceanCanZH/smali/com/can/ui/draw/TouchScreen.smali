.class public Lcom/can/ui/draw/TouchScreen;
.super Ljava/lang/Object;
.source "TouchScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TouchScreen"


# instance fields
.field private mAudioFocusManager:Lcom/can/tool/AudioFocusManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastText:Ljava/lang/String;

.field private mLexusTouchData:[B

.field private mObjCanProxy:Lcom/can/assist/CanProxy;

.field private mOldVideoMode:I

.field private mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mPopWind:Lcom/can/ui/draw/PopWind;

.field private mText:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mTouchData:[B

.field private mView:Landroid/view/View;

.field private timesecendsRunnable:Ljava/lang/Runnable;

.field private touchMoveEventLastTime:J


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/os/Handler;Lcom/can/assist/CanProxy;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/can/ui/draw/TouchScreen;->mContext:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Lcom/can/ui/draw/TouchScreen;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object v0, p0, Lcom/can/ui/draw/TouchScreen;->mPopWind:Lcom/can/ui/draw/PopWind;

    .line 44
    iput-object v0, p0, Lcom/can/ui/draw/TouchScreen;->mView:Landroid/view/View;

    .line 45
    iput-object v0, p0, Lcom/can/ui/draw/TouchScreen;->mObjCanProxy:Lcom/can/assist/CanProxy;

    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lcom/can/ui/draw/TouchScreen;->mOldVideoMode:I

    .line 130
    new-instance v2, Lcom/can/ui/draw/TouchScreen$1;

    invoke-direct {v2, p0}, Lcom/can/ui/draw/TouchScreen$1;-><init>(Lcom/can/ui/draw/TouchScreen;)V

    iput-object v2, p0, Lcom/can/ui/draw/TouchScreen;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const-wide/16 v2, 0x0

    .line 137
    iput-wide v2, p0, Lcom/can/ui/draw/TouchScreen;->touchMoveEventLastTime:J

    const/4 v2, 0x5

    new-array v2, v2, [B

    .line 138
    iput-object v2, p0, Lcom/can/ui/draw/TouchScreen;->mTouchData:[B

    const/4 v2, 0x6

    new-array v2, v2, [B

    .line 139
    iput-object v2, p0, Lcom/can/ui/draw/TouchScreen;->mLexusTouchData:[B

    .line 213
    new-instance v2, Lcom/can/ui/draw/TouchScreen$2;

    invoke-direct {v2, p0}, Lcom/can/ui/draw/TouchScreen$2;-><init>(Lcom/can/ui/draw/TouchScreen;)V

    iput-object v2, p0, Lcom/can/ui/draw/TouchScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 252
    new-instance v2, Lcom/can/ui/draw/TouchScreen$3;

    invoke-direct {v2, p0}, Lcom/can/ui/draw/TouchScreen$3;-><init>(Lcom/can/ui/draw/TouchScreen;)V

    iput-object v2, p0, Lcom/can/ui/draw/TouchScreen;->timesecendsRunnable:Ljava/lang/Runnable;

    .line 53
    iput-object p2, p0, Lcom/can/ui/draw/TouchScreen;->mContext:Landroid/content/Context;

    .line 54
    iput-object p3, p0, Lcom/can/ui/draw/TouchScreen;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p4, p0, Lcom/can/ui/draw/TouchScreen;->mObjCanProxy:Lcom/can/assist/CanProxy;

    .line 56
    new-instance p2, Lcom/can/ui/draw/PopWind;

    invoke-direct {p2, v1, v1}, Lcom/can/ui/draw/PopWind;-><init>(II)V

    iput-object p2, p0, Lcom/can/ui/draw/TouchScreen;->mPopWind:Lcom/can/ui/draw/PopWind;

    const p2, 0x7f0b00d2

    .line 58
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mView:Landroid/view/View;

    .line 59
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mView:Landroid/view/View;

    const p2, 0x7f08077d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mView:Landroid/view/View;

    const p2, 0x7f0807a0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mTime:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    :cond_1
    new-instance p1, Lcom/can/tool/AudioFocusManager;

    invoke-direct {p1}, Lcom/can/tool/AudioFocusManager;-><init>()V

    iput-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mAudioFocusManager:Lcom/can/tool/AudioFocusManager;

    .line 73
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.TIME_TICK"

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.TIME_SET"

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    .line 76
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "TimeTick"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 80
    iget-object p3, p0, Lcom/can/ui/draw/TouchScreen;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/can/ui/draw/TouchScreen;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/os/Handler;

    .line 81
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    invoke-virtual {p3, p4, p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0}, Lcom/can/ui/draw/TouchScreen;->updateClock()V

    .line 83
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/can/ui/draw/TouchScreen;->timesecendsRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic access$000(Lcom/can/ui/draw/TouchScreen;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/can/ui/draw/TouchScreen;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/can/ui/draw/TouchScreen;)Ljava/lang/Runnable;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/can/ui/draw/TouchScreen;->timesecendsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public IsShow()Z
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/can/ui/draw/TouchScreen;->mPopWind:Lcom/can/ui/draw/PopWind;

    invoke-virtual {p0}, Lcom/can/ui/draw/PopWind;->IsVisable()Z

    move-result p0

    return p0
.end method

.method public appendLog(Ljava/lang/String;)V
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/can/ui/draw/TouchScreen;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <- - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    iget-object p0, p0, Lcom/can/ui/draw/TouchScreen;->mText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 198
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public clearLog()V
    .locals 1

    .line 208
    iget-object p0, p0, Lcom/can/ui/draw/TouchScreen;->mText:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const-string v0, ""

    .line 209
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getTime()Ljava/lang/String;
    .locals 2

    .line 243
    invoke-static {}, Lcom/can/platforms/CanApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lcom/can/ui/draw/TouchScreen;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v1, "h:mm:ss aa"

    invoke-direct {v0, v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    .line 246
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object p0, p0, Lcom/can/ui/draw/TouchScreen;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 248
    :goto_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 249
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hide()V
    .locals 2

    const-string v0, "TouchScreen"

    const-string v1, "hide"

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/can/ui/draw/TouchScreen;->clearLog()V

    .line 125
    iget-object v0, p0, Lcom/can/ui/draw/TouchScreen;->mPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz v0, :cond_0

    .line 126
    iget-object p0, p0, Lcom/can/ui/draw/TouchScreen;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/can/ui/draw/PopWind;->hide(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouch:event.getRawX= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",event.getRawY="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",event.getPointerCount="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",event.getAction="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TouchScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result p1

    const-wide/16 v0, 0x64

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 170
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v6, :cond_1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v5, :cond_9

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/can/ui/draw/TouchScreen;->touchMoveEventLastTime:J

    sub-long/2addr v7, v9

    cmp-long p1, v7, v0

    if-ltz p1, :cond_9

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/can/ui/draw/TouchScreen;->touchMoveEventLastTime:J

    .line 182
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mTouchData:[B

    aput-byte v5, p1, v4

    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v6

    .line 184
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mTouchData:[B

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v5

    .line 185
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mTouchData:[B

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    .line 186
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mTouchData:[B

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v2

    .line 188
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/can/ui/draw/TouchScreen;->mTouchData:[B

    invoke-virtual {p1, p0}, Lcom/carocean/navicar/util/McuUtils;->sendTouchMsg([B)V

    goto/16 :goto_5

    .line 172
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mTouchData:[B

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_1
    int-to-byte v0, v0

    aput-byte v0, p1, v4

    .line 173
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mTouchData:[B

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v6

    .line 174
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mTouchData:[B

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v5

    .line 175
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mTouchData:[B

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    .line 176
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mTouchData:[B

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v2

    .line 178
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/can/ui/draw/TouchScreen;->mTouchData:[B

    invoke-virtual {p1, p0}, Lcom/carocean/navicar/util/McuUtils;->sendTouchMsg([B)V

    goto/16 :goto_5

    .line 145
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mLexusTouchData:[B

    const/4 v7, 0x5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    .line 146
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_7

    .line 147
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v6, :cond_5

    goto :goto_3

    .line 155
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v5, :cond_6

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/can/ui/draw/TouchScreen;->touchMoveEventLastTime:J

    sub-long/2addr v7, v9

    cmp-long p1, v7, v0

    if-ltz p1, :cond_9

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/can/ui/draw/TouchScreen;->touchMoveEventLastTime:J

    .line 158
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mLexusTouchData:[B

    aput-byte v5, p1, v4

    .line 159
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v6

    .line 160
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mLexusTouchData:[B

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v5

    .line 161
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mLexusTouchData:[B

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    .line 162
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mLexusTouchData:[B

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v2

    .line 164
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/can/ui/draw/TouchScreen;->mLexusTouchData:[B

    invoke-virtual {p1, p0}, Lcom/carocean/navicar/util/McuUtils;->sendTouchMsg([B)V

    goto :goto_5

    .line 167
    :cond_6
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/can/ui/draw/TouchScreen;->mLexusTouchData:[B

    invoke-virtual {p1, p0}, Lcom/carocean/navicar/util/McuUtils;->sendTouchMsg([B)V

    goto :goto_5

    .line 148
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mLexusTouchData:[B

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v6

    goto :goto_4

    :cond_8
    move v0, v4

    :goto_4
    int-to-byte v0, v0

    aput-byte v0, p1, v4

    .line 149
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mLexusTouchData:[B

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v6

    .line 150
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mLexusTouchData:[B

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v5

    .line 151
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mLexusTouchData:[B

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    .line 152
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mLexusTouchData:[B

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p1, v2

    .line 154
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/can/ui/draw/TouchScreen;->mLexusTouchData:[B

    invoke-virtual {p1, p0}, Lcom/carocean/navicar/util/McuUtils;->sendTouchMsg([B)V

    :cond_9
    :goto_5
    return v6
.end method

.method public show(ZI)V
    .locals 8

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",vediomode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchScreen"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 93
    invoke-virtual {p0}, Lcom/can/ui/draw/TouchScreen;->clearLog()V

    .line 95
    iput p2, p0, Lcom/can/ui/draw/TouchScreen;->mOldVideoMode:I

    const/4 p1, 0x7

    if-ne p1, p2, :cond_0

    goto :goto_2

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/can/ui/draw/TouchScreen;->mAudioFocusManager:Lcom/can/tool/AudioFocusManager;

    iget-object v3, p0, Lcom/can/ui/draw/TouchScreen;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/can/tool/AudioFocusManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;IIIZ)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    .line 104
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    sget-object v0, Lcom/carocean/navicar/Navi$Common;->SOURCE_LOCK_FILE:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 106
    :try_start_2
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    const-string v2, "content://com.carocean.status.provider/sys"

    .line 107
    iget-object v3, p0, Lcom/can/ui/draw/TouchScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "SYS_SOURCE_ID"

    const/16 v5, 0x5b

    invoke-static {v2, v3, v4, v5}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 109
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_2

    .line 110
    :try_start_3
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 104
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p2, :cond_3

    .line 110
    :try_start_6
    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_7
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p2

    .line 104
    :try_start_8
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    .line 110
    :try_start_9
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p1

    :try_start_a
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen;->mPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz p1, :cond_5

    .line 117
    iget-object p2, p0, Lcom/can/ui/draw/TouchScreen;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/can/ui/draw/TouchScreen;->mView:Landroid/view/View;

    invoke-virtual {p1, p2, p0}, Lcom/can/ui/draw/PopWind;->showEx(Landroid/content/Context;Landroid/view/View;)J

    :cond_5
    return-void
.end method

.method protected updateClock()V
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcom/can/ui/draw/TouchScreen;->getTime()Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/can/ui/draw/TouchScreen;->mLastText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/can/ui/draw/TouchScreen;->mTime:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    iput-object v0, p0, Lcom/can/ui/draw/TouchScreen;->mLastText:Ljava/lang/String;

    :cond_1
    return-void
.end method
