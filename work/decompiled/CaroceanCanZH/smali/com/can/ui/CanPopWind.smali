.class public Lcom/can/ui/CanPopWind;
.super Lcom/can/services/CanUIService;
.source "CanPopWind.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/ui/CanPopWind$UIHandler;,
        Lcom/can/ui/CanPopWind$Inquiry;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "CanPopWind"

.field public static sFragmentSw:Ljava/lang/String; = ""

.field public static sIsAirActivityShow:Z = false


# instance fields
.field dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

.field private mAirData:[B

.field private mAirInfo:Lcom/can/ui/draw/Air;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Lcom/can/tool/AudioFocusManager;

.field private mAvmListner:Lcom/can/ui/draw/AvmSet$OnAvmlistener;

.field private mAvmSet:Lcom/can/ui/draw/AvmSet;

.field private mCanKeyInfo:Lcom/can/assist/CanKey;

.field private mDoorInfo:Lcom/can/ui/draw/Door;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInquiry:Lcom/can/ui/CanPopWind$Inquiry;

.field private mLexusAirInfo:Lcom/can/ui/draw/LexusAir;

.field private mPlatformsXxx:Lcom/can/assist/Platforms;

.field private mRblTestTouchScreen:Ljava/lang/Runnable;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenSwitchStatus:Lcom/can/ui/draw/ScreenSwitchStatus;

.field private mSwicthView:Lcom/can/ui/draw/SwicthView;

.field private mTouchScreen:Lcom/can/ui/draw/TouchScreen;

.field private mbBackCar:Z

.field private mbInquiryFlag:Z

.field private mbKey2Back:Z

.field private mbShowRVideo:Z

.field private mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

.field private miTrackType:I

.field private needShowLog:Z

.field private onCanKeyListener:Lcom/can/assist/CanKey$OnCanKeyListener;

.field private onGdDataListener:Lcom/can/assist/Platforms$OnGdDataListener;

.field private test:I

.field private uiHandler:Lcom/can/ui/CanPopWind$UIHandler;

.field private videoMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/can/services/CanUIService;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mAirInfo:Lcom/can/ui/draw/Air;

    .line 74
    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mLexusAirInfo:Lcom/can/ui/draw/LexusAir;

    .line 75
    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mDoorInfo:Lcom/can/ui/draw/Door;

    .line 76
    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mTouchScreen:Lcom/can/ui/draw/TouchScreen;

    .line 79
    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mAvmSet:Lcom/can/ui/draw/AvmSet;

    .line 80
    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mCanKeyInfo:Lcom/can/assist/CanKey;

    .line 81
    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mInquiry:Lcom/can/ui/CanPopWind$Inquiry;

    .line 82
    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mSwicthView:Lcom/can/ui/draw/SwicthView;

    .line 83
    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mInflater:Landroid/view/LayoutInflater;

    .line 85
    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mPlatformsXxx:Lcom/can/assist/Platforms;

    const/4 v1, 0x0

    .line 87
    iput-boolean v1, p0, Lcom/can/ui/CanPopWind;->mbInquiryFlag:Z

    .line 90
    iput-boolean v1, p0, Lcom/can/ui/CanPopWind;->mbShowRVideo:Z

    .line 91
    iput-boolean v1, p0, Lcom/can/ui/CanPopWind;->mbKey2Back:Z

    .line 92
    iput-boolean v1, p0, Lcom/can/ui/CanPopWind;->mbBackCar:Z

    .line 93
    iput v1, p0, Lcom/can/ui/CanPopWind;->miTrackType:I

    .line 94
    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mAirData:[B

    .line 96
    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mScreenSwitchStatus:Lcom/can/ui/draw/ScreenSwitchStatus;

    .line 97
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    .line 99
    iput-boolean v1, p0, Lcom/can/ui/CanPopWind;->needShowLog:Z

    .line 100
    iput v1, p0, Lcom/can/ui/CanPopWind;->videoMode:I

    .line 122
    new-instance v0, Lcom/can/ui/CanPopWind$1;

    invoke-direct {v0, p0}, Lcom/can/ui/CanPopWind$1;-><init>(Lcom/can/ui/CanPopWind;)V

    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    new-instance v0, Lcom/can/ui/CanPopWind$2;

    invoke-direct {v0, p0}, Lcom/can/ui/CanPopWind$2;-><init>(Lcom/can/ui/CanPopWind;)V

    iput-object v0, p0, Lcom/can/ui/CanPopWind;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    .line 225
    new-instance v0, Lcom/can/ui/CanPopWind$3;

    invoke-direct {v0, p0}, Lcom/can/ui/CanPopWind$3;-><init>(Lcom/can/ui/CanPopWind;)V

    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 381
    new-instance v0, Lcom/can/ui/CanPopWind$4;

    invoke-direct {v0, p0}, Lcom/can/ui/CanPopWind$4;-><init>(Lcom/can/ui/CanPopWind;)V

    iput-object v0, p0, Lcom/can/ui/CanPopWind;->onGdDataListener:Lcom/can/assist/Platforms$OnGdDataListener;

    .line 548
    new-instance v0, Lcom/can/ui/CanPopWind$5;

    invoke-direct {v0, p0}, Lcom/can/ui/CanPopWind$5;-><init>(Lcom/can/ui/CanPopWind;)V

    iput-object v0, p0, Lcom/can/ui/CanPopWind;->onCanKeyListener:Lcom/can/assist/CanKey$OnCanKeyListener;

    .line 798
    new-instance v0, Lcom/can/ui/CanPopWind$6;

    invoke-direct {v0, p0}, Lcom/can/ui/CanPopWind$6;-><init>(Lcom/can/ui/CanPopWind;)V

    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mAvmListner:Lcom/can/ui/draw/AvmSet$OnAvmlistener;

    .line 1084
    iput v1, p0, Lcom/can/ui/CanPopWind;->test:I

    .line 1085
    new-instance v0, Lcom/can/ui/CanPopWind$7;

    invoke-direct {v0, p0}, Lcom/can/ui/CanPopWind$7;-><init>(Lcom/can/ui/CanPopWind;)V

    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mRblTestTouchScreen:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/can/ui/CanPopWind;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/can/ui/CanPopWind;->requestAudioFocus()V

    return-void
.end method

.method static synthetic access$100(Lcom/can/ui/CanPopWind;)Lcom/can/ui/draw/LexusAir;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->mLexusAirInfo:Lcom/can/ui/draw/LexusAir;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/can/ui/CanPopWind;)Lcom/can/ui/draw/TouchScreen;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->mTouchScreen:Lcom/can/ui/draw/TouchScreen;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/can/ui/CanPopWind;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/can/ui/CanPopWind;->checkMcuLogTimeout()V

    return-void
.end method

.method static synthetic access$1400(Lcom/can/ui/CanPopWind;Z)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/can/ui/CanPopWind;->checkMcuVideoMode(Z)V

    return-void
.end method

.method static synthetic access$1508(Lcom/can/ui/CanPopWind;)I
    .locals 2

    .line 71
    iget v0, p0, Lcom/can/ui/CanPopWind;->test:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/can/ui/CanPopWind;->test:I

    return v0
.end method

.method static synthetic access$1600(Lcom/can/ui/CanPopWind;)Ljava/lang/Runnable;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->mRblTestTouchScreen:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/can/ui/CanPopWind;)[B
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->mAirData:[B

    return-object p0
.end method

.method static synthetic access$300(Lcom/can/ui/CanPopWind;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/can/ui/CanPopWind;->videoMode:I

    return p0
.end method

.method static synthetic access$302(Lcom/can/ui/CanPopWind;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/can/ui/CanPopWind;->videoMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/can/ui/CanPopWind;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/can/ui/CanPopWind;->needShowLog:Z

    return p0
.end method

.method static synthetic access$500(Lcom/can/ui/CanPopWind;)Lcom/can/ui/CanPopWind$UIHandler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->uiHandler:Lcom/can/ui/CanPopWind$UIHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/can/ui/CanPopWind;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/can/ui/CanPopWind;->miTrackType:I

    return p0
.end method

.method static synthetic access$602(Lcom/can/ui/CanPopWind;I)I
    .locals 0

    .line 71
    iput p1, p0, Lcom/can/ui/CanPopWind;->miTrackType:I

    return p1
.end method

.method static synthetic access$700(Lcom/can/ui/CanPopWind;)Lcom/can/ui/draw/ScreenSwitchStatus;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->mScreenSwitchStatus:Lcom/can/ui/draw/ScreenSwitchStatus;

    return-object p0
.end method

.method static synthetic access$800(Lcom/can/ui/CanPopWind;)Z
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/can/ui/CanPopWind;->getRadarShow()Z

    move-result p0

    return p0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 1069
    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 1072
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 1073
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 1074
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1075
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 1076
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1078
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 1079
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1081
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private checkMcuLogTimeout()V
    .locals 4

    .line 1053
    iget-object v0, p0, Lcom/can/ui/CanPopWind;->uiHandler:Lcom/can/ui/CanPopWind$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/can/ui/CanPopWind$UIHandler;->removeMessages(I)V

    .line 1054
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->uiHandler:Lcom/can/ui/CanPopWind$UIHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/can/ui/CanPopWind$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private checkMcuVideoMode(Z)V
    .locals 4

    .line 1062
    iget-object v0, p0, Lcom/can/ui/CanPopWind;->uiHandler:Lcom/can/ui/CanPopWind$UIHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/can/ui/CanPopWind$UIHandler;->removeMessages(I)V

    if-eqz p1, :cond_0

    .line 1064
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->uiHandler:Lcom/can/ui/CanPopWind$UIHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/can/ui/CanPopWind$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private closeMcuLogTimeout()V
    .locals 1

    .line 1058
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->uiHandler:Lcom/can/ui/CanPopWind$UIHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/can/ui/CanPopWind$UIHandler;->removeMessages(I)V

    return-void
.end method

.method private getOriginalPageShow()Z
    .locals 3

    .line 310
    invoke-virtual {p0}, Lcom/can/ui/CanPopWind;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.carocean.status.provider/sys"

    const-string v1, "SYS_ORIGINAL_PAGE_STATE"

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method private getRadarShow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private getTouchScreenShow()Z
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->mTouchScreen:Lcom/can/ui/draw/TouchScreen;

    if-eqz p0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/can/ui/draw/TouchScreen;->IsShow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private init()V
    .locals 6

    .line 257
    sget-object v0, Lcom/can/ui/CanPopWind;->TAG:Ljava/lang/String;

    const-string v1, "++init++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0}, Lcom/can/ui/CanPopWind;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    .line 259
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 260
    iput-object v1, p0, Lcom/can/ui/CanPopWind;->mInflater:Landroid/view/LayoutInflater;

    .line 261
    new-instance v2, Lcom/can/ui/draw/Air;

    invoke-virtual {p0}, Lcom/can/ui/CanPopWind;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/can/ui/CanPopWind;->mObjHandler:Landroid/os/Handler;

    invoke-direct {v2, v1, v3, v4}, Lcom/can/ui/draw/Air;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/can/ui/CanPopWind;->mAirInfo:Lcom/can/ui/draw/Air;

    .line 262
    new-instance v2, Lcom/can/ui/draw/LexusAir;

    invoke-virtual {p0}, Lcom/can/ui/CanPopWind;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/can/ui/CanPopWind;->mObjHandler:Landroid/os/Handler;

    invoke-direct {v2, v1, v3, v4}, Lcom/can/ui/draw/LexusAir;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/can/ui/CanPopWind;->mLexusAirInfo:Lcom/can/ui/draw/LexusAir;

    .line 263
    new-instance v2, Lcom/can/ui/draw/Door;

    invoke-virtual {p0}, Lcom/can/ui/CanPopWind;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/can/ui/CanPopWind;->mObjHandler:Landroid/os/Handler;

    invoke-direct {v2, v1, v3, v4}, Lcom/can/ui/draw/Door;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/can/ui/CanPopWind;->mDoorInfo:Lcom/can/ui/draw/Door;

    .line 264
    new-instance v2, Lcom/can/ui/draw/TouchScreen;

    invoke-virtual {p0}, Lcom/can/ui/CanPopWind;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/can/ui/CanPopWind;->mObjHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/can/ui/CanPopWind;->mObjCanProxy:Lcom/can/assist/CanProxy;

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/can/ui/draw/TouchScreen;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/os/Handler;Lcom/can/assist/CanProxy;)V

    iput-object v2, p0, Lcom/can/ui/CanPopWind;->mTouchScreen:Lcom/can/ui/draw/TouchScreen;

    .line 266
    new-instance v2, Lcom/can/ui/draw/AvmSet;

    invoke-virtual {p0}, Lcom/can/ui/CanPopWind;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/can/ui/CanPopWind;->mObjHandler:Landroid/os/Handler;

    invoke-direct {v2, v1, v3, v4}, Lcom/can/ui/draw/AvmSet;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/can/ui/CanPopWind;->mAvmSet:Lcom/can/ui/draw/AvmSet;

    .line 267
    iget-object v3, p0, Lcom/can/ui/CanPopWind;->mAvmListner:Lcom/can/ui/draw/AvmSet$OnAvmlistener;

    invoke-virtual {v2, v3}, Lcom/can/ui/draw/AvmSet;->setListener(Lcom/can/ui/draw/AvmSet$OnAvmlistener;)V

    .line 269
    new-instance v2, Lcom/can/ui/CanPopWind$Inquiry;

    iget-object v3, p0, Lcom/can/ui/CanPopWind;->mObjHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/can/ui/CanPopWind$Inquiry;-><init>(Lcom/can/ui/CanPopWind;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/can/ui/CanPopWind;->mInquiry:Lcom/can/ui/CanPopWind$Inquiry;

    .line 273
    new-instance v2, Lcom/can/ui/draw/ScreenSwitchStatus;

    invoke-virtual {p0}, Lcom/can/ui/CanPopWind;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/can/ui/CanPopWind;->mObjHandler:Landroid/os/Handler;

    invoke-direct {v2, v1, v3, v4}, Lcom/can/ui/draw/ScreenSwitchStatus;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/can/ui/CanPopWind;->mScreenSwitchStatus:Lcom/can/ui/draw/ScreenSwitchStatus;

    const-string p0, "--init--"

    .line 275
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initMcu()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/can/ui/CanPopWind;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x20

    aput v3, v1, v2

    iget-object v2, p0, Lcom/can/ui/CanPopWind;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    invoke-virtual {v0, v1, v2}, Lcom/carocean/navicar/McuServiceManager;->regCallback([ILcom/carocean/navicar/McuServiceManager$DataListener;)V

    .line 166
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    invoke-virtual {p0}, Lcom/carocean/navicar/McuServiceManager;->isServiceConnected()Z

    return-void
.end method

.method private launch(Lcom/can/parser/DDef$CanAudio;)V
    .locals 0

    .line 349
    iget-boolean p0, p1, Lcom/can/parser/DDef$CanAudio;->mbshow:Z

    return-void
.end method

.method private releaseAudioFocus()V
    .locals 2

    .line 217
    sget-object v0, Lcom/can/ui/CanPopWind;->TAG:Ljava/lang/String;

    const-string v1, "origncarmediaopen---releaseAudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/can/ui/CanPopWind;->mAudioManager:Lcom/can/tool/AudioFocusManager;

    if-eqz v0, :cond_0

    .line 219
    iget-object v1, p0, Lcom/can/ui/CanPopWind;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/can/tool/AudioFocusManager;->abandonAudioFocusRequest(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mAudioManager:Lcom/can/tool/AudioFocusManager;

    :cond_0
    return-void
.end method

.method private requestAudioFocus()V
    .locals 8

    .line 194
    iget-object v0, p0, Lcom/can/ui/CanPopWind;->mAudioManager:Lcom/can/tool/AudioFocusManager;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/can/tool/AudioFocusManager;

    invoke-direct {v0}, Lcom/can/tool/AudioFocusManager;-><init>()V

    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mAudioManager:Lcom/can/tool/AudioFocusManager;

    .line 198
    :cond_0
    sget-object v0, Lcom/can/ui/CanPopWind;->TAG:Ljava/lang/String;

    const-string v1, "origncarmediaopen---requestAudioFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v2, p0, Lcom/can/ui/CanPopWind;->mAudioManager:Lcom/can/tool/AudioFocusManager;

    iget-object v3, p0, Lcom/can/ui/CanPopWind;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/can/tool/AudioFocusManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;IIIZ)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 204
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/carocean/navicar/Navi$Common;->SOURCE_LOCK_FILE:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 206
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    const-string v3, "content://com.carocean.status.provider/sys"

    .line 207
    invoke-virtual {p0}, Lcom/can/ui/CanPopWind;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "SYS_SOURCE_ID"

    const/16 v5, 0x5d

    invoke-static {v3, p0, v4, v5}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 209
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 210
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 204
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_3

    .line 210
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p0

    .line 204
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v1

    .line 210
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v0

    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p0

    .line 211
    sget-object v0, Lcom/can/ui/CanPopWind;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method private setSwicthView()V
    .locals 0

    return-void
.end method


# virtual methods
.method public IsForeground(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 322
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "activity"

    .line 327
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 329
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 330
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 331
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 332
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    :goto_0
    return p0
.end method

.method public doMessage(Landroid/os/Message;)V
    .locals 5

    .line 646
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_11

    const/16 v3, 0x18

    if-eq v0, v3, :cond_10

    const/16 v3, 0x1e

    if-eq v0, v3, :cond_f

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_e

    const/16 v3, 0x30

    if-eq v0, v3, :cond_d

    const/16 v3, 0x32

    if-eq v0, v3, :cond_c

    const/4 v3, 0x3

    if-eq v0, v3, :cond_9

    const/4 v3, 0x4

    if-eq v0, v3, :cond_8

    const/16 v3, 0x39

    if-eq v0, v3, :cond_6

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_5

    const/16 v3, 0x40

    if-eq v0, v3, :cond_2

    const/16 v3, 0x41

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    .line 687
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_13

    .line 688
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    check-cast p1, [B

    .line 689
    iput-object p1, p0, Lcom/can/ui/CanPopWind;->mAirData:[B

    .line 690
    iget-object v0, p0, Lcom/can/ui/CanPopWind;->mLexusAirInfo:Lcom/can/ui/draw/LexusAir;

    invoke-direct {p0}, Lcom/can/ui/CanPopWind;->getTouchScreenShow()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/can/ui/CanPopWind;->getRadarShow()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/can/ui/CanPopWind;->getOriginalPageShow()Z

    move-result p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, p1, v1}, Lcom/can/ui/draw/LexusAir;->show([BZ)V

    goto/16 :goto_0

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/can/ui/CanPopWind;->mTouchScreen:Lcom/can/ui/draw/TouchScreen;

    if-eqz v0, :cond_13

    .line 695
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_4

    .line 696
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-lez v0, :cond_3

    const/4 v0, 0x7

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_3

    .line 697
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/can/ui/TouchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 698
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 699
    invoke-virtual {p0, v0}, Lcom/can/ui/CanPopWind;->startActivity(Landroid/content/Intent;)V

    .line 701
    :cond_3
    iget-object v0, p0, Lcom/can/ui/CanPopWind;->mTouchScreen:Lcom/can/ui/draw/TouchScreen;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, p1}, Lcom/can/ui/draw/TouchScreen;->show(ZI)V

    .line 703
    iput-boolean v2, p0, Lcom/can/ui/CanPopWind;->needShowLog:Z

    .line 704
    invoke-direct {p0}, Lcom/can/ui/CanPopWind;->checkMcuLogTimeout()V

    .line 705
    invoke-direct {p0, v2}, Lcom/can/ui/CanPopWind;->checkMcuVideoMode(Z)V

    goto/16 :goto_0

    .line 719
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.yecon.bmw.video_mode"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lcom/can/ui/CanPopWind;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v2, "video_mode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 722
    invoke-virtual {p0, v0}, Lcom/can/ui/CanPopWind;->sendBroadcast(Landroid/content/Intent;)V

    .line 728
    iget-object p1, p0, Lcom/can/ui/CanPopWind;->mTouchScreen:Lcom/can/ui/draw/TouchScreen;

    invoke-virtual {p1}, Lcom/can/ui/draw/TouchScreen;->hide()V

    .line 729
    iput-boolean v1, p0, Lcom/can/ui/CanPopWind;->needShowLog:Z

    .line 730
    invoke-direct {p0}, Lcom/can/ui/CanPopWind;->closeMcuLogTimeout()V

    .line 731
    invoke-direct {p0, v1}, Lcom/can/ui/CanPopWind;->checkMcuVideoMode(Z)V

    goto/16 :goto_0

    .line 782
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/can/parser/DDef$AvmInfo;

    .line 783
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->mAvmSet:Lcom/can/ui/draw/AvmSet;

    if-eqz p0, :cond_13

    .line 784
    invoke-virtual {p0, p1}, Lcom/can/ui/draw/AvmSet;->setAvmInfo(Lcom/can/parser/DDef$AvmInfo;)V

    goto/16 :goto_0

    .line 767
    :cond_6
    iget-object v0, p0, Lcom/can/ui/CanPopWind;->mPlatformsXxx:Lcom/can/assist/Platforms;

    if-eqz v0, :cond_13

    .line 768
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/can/parser/DDef$SystemInfo;

    .line 769
    iget-byte v0, p1, Lcom/can/parser/DDef$SystemInfo;->mPanoramicViewEnable:B

    if-ne v0, v2, :cond_13

    .line 770
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->mPlatformsXxx:Lcom/can/assist/Platforms;

    invoke-virtual {p0}, Lcom/can/assist/Platforms;->getMediaInfo()Lcom/can/assist/Platforms$MediaInfo;

    move-result-object p0

    iget-byte p1, p1, Lcom/can/parser/DDef$SystemInfo;->mPanoramicView:B

    if-ne p1, v2, :cond_7

    move v1, v2

    :cond_7
    invoke-interface {p0, v1}, Lcom/can/assist/Platforms$MediaInfo;->PanoramicVideo(Z)V

    goto/16 :goto_0

    .line 672
    :cond_8
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->mCanKeyInfo:Lcom/can/assist/CanKey;

    if-eqz p0, :cond_13

    .line 673
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/can/parser/DDef$WheelKeyInfo;

    invoke-virtual {p0, p1}, Lcom/can/assist/CanKey;->sendCankey(Lcom/can/parser/DDef$WheelKeyInfo;)V

    goto/16 :goto_0

    .line 736
    :cond_9
    iget-object v0, p0, Lcom/can/ui/CanPopWind;->mDoorInfo:Lcom/can/ui/draw/Door;

    if-eqz v0, :cond_13

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/can/parser/DDef$BaseInfo;

    if-eqz v0, :cond_13

    .line 737
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/can/parser/DDef$BaseInfo;

    .line 738
    iget-boolean v0, p1, Lcom/can/parser/DDef$BaseInfo;->mbDoorValid:Z

    if-eqz v0, :cond_13

    const-string v0, "persist.sys.door_status_enable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_13

    .line 739
    iget-boolean v0, p0, Lcom/can/ui/CanPopWind;->mIsCarInfoShowing:Z

    if-nez v0, :cond_b

    .line 740
    iget-object v0, p0, Lcom/can/ui/CanPopWind;->mDoorInfo:Lcom/can/ui/draw/Door;

    invoke-direct {p0}, Lcom/can/ui/CanPopWind;->getTouchScreenShow()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-direct {p0}, Lcom/can/ui/CanPopWind;->getRadarShow()Z

    move-result p0

    if-nez p0, :cond_a

    move v1, v2

    :cond_a
    invoke-virtual {v0, p1, v1}, Lcom/can/ui/draw/Door;->show(Lcom/can/parser/DDef$BaseInfo;Z)V

    goto/16 :goto_0

    .line 742
    :cond_b
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->mDoorInfo:Lcom/can/ui/draw/Door;

    invoke-virtual {p0}, Lcom/can/ui/draw/Door;->Hide()V

    goto/16 :goto_0

    .line 777
    :cond_c
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->onCanKeyListener:Lcom/can/assist/CanKey$OnCanKeyListener;

    if-eqz p0, :cond_13

    const-string p1, "Air_Set"

    .line 778
    invoke-interface {p0, p1, v2}, Lcom/can/assist/CanKey$OnCanKeyListener;->ondo(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 761
    :cond_d
    iget-object v0, p0, Lcom/can/ui/CanPopWind;->mPlatformsXxx:Lcom/can/assist/Platforms;

    if-eqz v0, :cond_13

    .line 762
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/can/parser/DDef$RightVideo;

    .line 763
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->mPlatformsXxx:Lcom/can/assist/Platforms;

    invoke-virtual {p0}, Lcom/can/assist/Platforms;->getMediaInfo()Lcom/can/assist/Platforms$MediaInfo;

    move-result-object p0

    iget-boolean p1, p1, Lcom/can/parser/DDef$RightVideo;->mbshow:Z

    invoke-interface {p0, p1}, Lcom/can/assist/Platforms$MediaInfo;->RightVideo(Z)V

    goto :goto_0

    .line 756
    :cond_e
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->mPlatformsXxx:Lcom/can/assist/Platforms;

    if-eqz p0, :cond_13

    .line 757
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/can/parser/DDef$IVideoState;

    iget-byte p1, p1, Lcom/can/parser/DDef$IVideoState;->mbyVideoState:B

    const-string v0, "VideoType"

    invoke-virtual {p0, v0, p1}, Lcom/can/assist/Platforms;->put(Ljava/lang/String;I)V

    goto :goto_0

    .line 753
    :cond_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/can/parser/DDef$CanAudio;

    invoke-direct {p0, p1}, Lcom/can/ui/CanPopWind;->launch(Lcom/can/parser/DDef$CanAudio;)V

    goto :goto_0

    .line 748
    :cond_10
    iget-object p0, p0, Lcom/can/ui/CanPopWind;->mAirInfo:Lcom/can/ui/draw/Air;

    if-eqz p0, :cond_13

    .line 749
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/can/parser/DDef$OutTemputerInfo;

    invoke-virtual {p0, p1}, Lcom/can/ui/draw/Air;->setOutTempInfo(Lcom/can/parser/DDef$OutTemputerInfo;)V

    goto :goto_0

    .line 677
    :cond_11
    iget-object v0, p0, Lcom/can/ui/CanPopWind;->mAirInfo:Lcom/can/ui/draw/Air;

    if-eqz v0, :cond_13

    .line 678
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/can/parser/DDef$AirInfo;

    invoke-direct {p0}, Lcom/can/ui/CanPopWind;->getTouchScreenShow()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-direct {p0}, Lcom/can/ui/CanPopWind;->getRadarShow()Z

    move-result v4

    if-nez v4, :cond_12

    sget-boolean v4, Lcom/can/ui/CanPopWind;->sIsAirActivityShow:Z

    if-nez v4, :cond_12

    move v1, v2

    :cond_12
    invoke-virtual {v0, v3, v1}, Lcom/can/ui/draw/Air;->show(Lcom/can/parser/DDef$AirInfo;Z)V

    .line 679
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.yecon.action.CAN_AIRINFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 680
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 681
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/can/parser/DDef$AirInfo;

    const-string v2, "AirInfo"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 682
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 683
    invoke-virtual {p0, v0}, Lcom/can/ui/CanPopWind;->sendBroadcast(Landroid/content/Intent;)V

    :cond_13
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 105
    invoke-super {p0}, Lcom/can/services/CanUIService;->onCreate()V

    .line 106
    new-instance v0, Lcom/can/ui/CanPopWind$UIHandler;

    invoke-direct {v0, p0}, Lcom/can/ui/CanPopWind$UIHandler;-><init>(Lcom/can/ui/CanPopWind;)V

    iput-object v0, p0, Lcom/can/ui/CanPopWind;->uiHandler:Lcom/can/ui/CanPopWind$UIHandler;

    .line 107
    new-instance v0, Lcom/can/assist/CanKey;

    invoke-virtual {p0}, Lcom/can/ui/CanPopWind;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/can/assist/CanKey;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mCanKeyInfo:Lcom/can/assist/CanKey;

    .line 108
    iget-object v1, p0, Lcom/can/ui/CanPopWind;->onCanKeyListener:Lcom/can/assist/CanKey$OnCanKeyListener;

    invoke-virtual {v0, v1}, Lcom/can/assist/CanKey;->setOnCanKeyListener(Lcom/can/assist/CanKey$OnCanKeyListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/can/ui/CanPopWind;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/can/assist/CanXml;->getInstance(Landroid/content/Context;)Lcom/can/assist/CanXml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/can/assist/CanXml;->getPlatforms()Lcom/can/assist/Platforms;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/CanPopWind;->mPlatformsXxx:Lcom/can/assist/Platforms;

    .line 110
    iget-object v1, p0, Lcom/can/ui/CanPopWind;->onGdDataListener:Lcom/can/assist/Platforms$OnGdDataListener;

    invoke-virtual {v0, v1}, Lcom/can/assist/Platforms;->setOnGdDataListener(Lcom/can/assist/Platforms$OnGdDataListener;)V

    .line 112
    invoke-direct {p0}, Lcom/can/ui/CanPopWind;->init()V

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.ckx.lexus.origncar.media.open"

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.carocean.action.SAVE_FACTORY_DATA"

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/can/ui/CanPopWind;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/can/ui/CanPopWind;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    invoke-direct {p0}, Lcom/can/ui/CanPopWind;->initMcu()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 250
    invoke-super {p0}, Lcom/can/services/CanUIService;->onDestroy()V

    .line 251
    iget-object v0, p0, Lcom/can/ui/CanPopWind;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    iget-object v1, p0, Lcom/can/ui/CanPopWind;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/McuServiceManager;->unregCallback(Lcom/carocean/navicar/McuServiceManager$DataListener;)V

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lcom/can/ui/CanPopWind;->needShowLog:Z

    return-void
.end method
