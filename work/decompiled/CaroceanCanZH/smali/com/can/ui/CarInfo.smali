.class public Lcom/can/ui/CarInfo;
.super Landroid/app/Activity;
.source "CarInfo.java"

# interfaces
.implements Lcom/carocean/navicar/BmwID8ThemeChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/ui/CarInfo$MainPageAdapter;,
        Lcom/can/ui/CarInfo$UIHandler;
    }
.end annotation


# static fields
.field private static final FLIP_LIGHT_TIME:I = 0x1f4

.field private static final MSG_FLIP_LIGHT:I = 0x2

.field private static final MSG_THEME_CHANGE:I = 0x2710

.field private static final MSG_TIMER:I = 0x3

.field private static final MSG_UPDATE_CAR_INFO:I = 0x1

.field private static final MSG_UPDATE_TIME_VIEW:I = 0x4

.field public static final PERSYS_360_AUTO_SHOW:Ljava/lang/String; = "persist.sys.360_auto_show"

.field public static final PERSYS_AUTO_FRONT_CAM:Ljava/lang/String; = "persist.sys.auto_front_cam"

.field public static final PERSYS_BACKCAR_MIRROR:Ljava/lang/String; = "persist.sys.backcar_mirror"

.field public static final PERSYS_BACKCAR_TRACE:Ljava/lang/String; = "persist.sys.trace_enable"

.field public static final PERSYS_BACKCAR_TYPE:Ljava/lang/String; = "persist.sys.backcar_type"

.field public static final PERSYS_HOST_TYPE:Ljava/lang/String; = "persist.sys.host_type"

.field public static final PERSYS_MILEAGE_UNIT:Ljava/lang/String; = "persist.sys.mileage_unit"

.field private static final TAG:Ljava/lang/String; = "CarInfo"

.field private static final URI_THEME:Ljava/lang/String; = "content://com.carocean.status.provider/sys/SYS_THEME"


# instance fields
.field private cmdcode12Data:[B

.field private cmdcode18Data:[B

.field private cmdcode24Data:[B

.field private final contentObserver:Landroid/database/ContentObserver;

.field dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

.field private dfone:Ljava/text/DecimalFormat;

.field private mAdapter:Lcom/can/ui/CarInfo$MainPageAdapter;

.field private mBigLed:Landroid/widget/ImageView;

.field private mBigLedFarZlh:Landroid/widget/ImageView;

.field private mBigLedYzg:Landroid/widget/ImageView;

.field private mBigLedZlh:Landroid/widget/ImageView;

.field private mCar:Landroid/view/View;

.field private mCarDoorLayout:Landroid/view/View;

.field private mCarMileage:Landroid/widget/TextView;

.field private mCarRate:Lcom/can/ui/view/Speedometer;

.field private mCarRateText:Landroid/widget/TextView;

.field private mCarRpm:Lcom/can/ui/view/Speedometer;

.field private mCarRpmText:Landroid/widget/TextView;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mDateText:Landroid/widget/TextView;

.field private mDateWeekText:Landroid/widget/TextView;

.field private mCoolantTemp:Landroid/widget/TextView;

.field private mBatteryVol:Landroid/widget/TextView;

.field private mCruisingRange:Landroid/widget/TextView;

.field private mDoor:Lcom/can/ui/draw/Door;

.field private mDoorB:Landroid/view/View;

.field private mDoorF:Landroid/view/View;

.field private mDoorLb:Landroid/view/View;

.field private mDoorLf:Landroid/view/View;

.field private mDoorRb:Landroid/view/View;

.field private mDoorRf:Landroid/view/View;

.field private mFootBrake:Landroid/widget/ImageView;

.field private final mGap:I

.field private mGas:Landroid/widget/TextView;

.field private mGear:Landroid/widget/ImageView;

.field private mGearText:Landroid/widget/TextView;

.field private mHandBrake:Landroid/widget/ImageView;

.field private mLeftLight:Landroid/widget/ImageView;

.field private mLight:B

.field private mMileage:I

.field private mNumBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mOutTemp:Landroid/widget/TextView;

.field private mPages:Landroidx/viewpager/widget/ViewPager;

.field private mPaint:Landroid/graphics/Paint;

.field private mRateBitmap:Landroid/graphics/Bitmap;

.field private mRateCanvas:Landroid/graphics/Canvas;

.field private mRateUnit:Landroid/widget/TextView;

.field private mRateUnit1:Landroid/widget/TextView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRightLight:Landroid/widget/ImageView;

.field private mRpmBitmap:Landroid/graphics/Bitmap;

.field private mRpmCanvas:Landroid/graphics/Canvas;

.field private mSafeBelt:Landroid/widget/ImageView;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mSmallLed:Landroid/widget/ImageView;

.field private mTempUnitValue:I

.field private mWidgetBackground:Landroid/graphics/Bitmap;

.field private mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

.field private rpmID8SpeedMeter:Lcom/can/ui/view/ID8SpeedMeter;

.field private showOilUnitGal:Z

.field private showTempUnitF:Z

.field private speedID8SpeedMeter:Lcom/can/ui/view/ID8SpeedMeter;

.field private uiHandler:Lcom/can/ui/CarInfo$UIHandler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mNumBitmaps:Ljava/util/List;

    const/4 v0, 0x1

    .line 82
    iput v0, p0, Lcom/can/ui/CarInfo;->mGap:I

    .line 99
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/can/ui/CarInfo;->showOilUnitGal:Z

    .line 103
    iput-boolean v0, p0, Lcom/can/ui/CarInfo;->showTempUnitF:Z

    const/4 v1, -0x1

    .line 104
    iput v1, p0, Lcom/can/ui/CarInfo;->mTempUnitValue:I

    .line 178
    new-instance v1, Lcom/can/ui/CarInfo$1;

    invoke-direct {v1, p0}, Lcom/can/ui/CarInfo$1;-><init>(Lcom/can/ui/CarInfo;)V

    iput-object v1, p0, Lcom/can/ui/CarInfo;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    .line 209
    new-instance v1, Lcom/can/ui/CarInfo$2;

    invoke-direct {v1, p0}, Lcom/can/ui/CarInfo$2;-><init>(Lcom/can/ui/CarInfo;)V

    iput-object v1, p0, Lcom/can/ui/CarInfo;->mConnection:Landroid/content/ServiceConnection;

    .line 627
    new-instance v1, Lcom/can/ui/CarInfo$4;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/can/ui/CarInfo$4;-><init>(Lcom/can/ui/CarInfo;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/can/ui/CarInfo;->contentObserver:Landroid/database/ContentObserver;

    .line 926
    iput v0, p0, Lcom/can/ui/CarInfo;->mMileage:I

    .line 946
    iput-byte v0, p0, Lcom/can/ui/CarInfo;->mLight:B

    .line 947
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/can/ui/CarInfo;->dfone:Ljava/text/DecimalFormat;

    .line 1220
    new-instance v0, Lcom/can/ui/CarInfo$5;

    invoke-direct {v0, p0}, Lcom/can/ui/CarInfo$5;-><init>(Lcom/can/ui/CarInfo;)V

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/can/ui/CarInfo;)[B
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/can/ui/CarInfo;->cmdcode12Data:[B

    return-object p0
.end method

.method static synthetic access$002(Lcom/can/ui/CarInfo;[B)[B
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/can/ui/CarInfo;->cmdcode12Data:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/can/ui/CarInfo;->uiHandler:Lcom/can/ui/CarInfo$UIHandler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/can/ui/CarInfo;)B
    .locals 0

    .line 64
    iget-byte p0, p0, Lcom/can/ui/CarInfo;->mLight:B

    return p0
.end method

.method static synthetic access$1100(Lcom/can/ui/CarInfo;)Landroid/widget/ImageView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/can/ui/CarInfo;->mLeftLight:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/can/ui/CarInfo;)Landroid/widget/ImageView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/can/ui/CarInfo;->mRightLight:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/can/ui/CarInfo;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/can/ui/CarInfo;->openOBD(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/can/ui/CarInfo;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/can/ui/CarInfo;->updateTimerView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/can/ui/CarInfo;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/can/ui/CarInfo;->updateWeekView()V

    return-void
.end method

.method static synthetic access$1600(Lcom/can/ui/CarInfo;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/can/ui/CarInfo;->mPages:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/can/ui/CarInfo;)Lcom/can/ui/view/ID8SpeedMeter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/can/ui/CarInfo;->speedID8SpeedMeter:Lcom/can/ui/view/ID8SpeedMeter;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/can/ui/CarInfo;)Lcom/can/ui/view/ID8SpeedMeter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/can/ui/CarInfo;->rpmID8SpeedMeter:Lcom/can/ui/view/ID8SpeedMeter;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/can/ui/CarInfo;Landroid/view/View;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/can/ui/CarInfo;->initView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/can/ui/CarInfo;)[B
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/can/ui/CarInfo;->cmdcode18Data:[B

    return-object p0
.end method

.method static synthetic access$2002(Lcom/can/ui/CarInfo;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/can/ui/CarInfo;->showOilUnitGal:Z

    return p1
.end method

.method static synthetic access$202(Lcom/can/ui/CarInfo;[B)[B
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/can/ui/CarInfo;->cmdcode18Data:[B

    return-object p1
.end method

.method static synthetic access$300(Lcom/can/ui/CarInfo;)[B
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/can/ui/CarInfo;->cmdcode24Data:[B

    return-object p0
.end method

.method static synthetic access$302(Lcom/can/ui/CarInfo;[B)[B
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/can/ui/CarInfo;->cmdcode24Data:[B

    return-object p1
.end method

.method static synthetic access$402(Lcom/can/ui/CarInfo;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/can/ui/CarInfo;->showTempUnitF:Z

    return p1
.end method

.method static synthetic access$500(Lcom/can/ui/CarInfo;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/can/ui/CarInfo;->mTempUnitValue:I

    return p0
.end method

.method static synthetic access$502(Lcom/can/ui/CarInfo;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/can/ui/CarInfo;->mTempUnitValue:I

    return p1
.end method

.method static synthetic access$602(Lcom/can/ui/CarInfo;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/can/ui/CarInfo;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$700(Lcom/can/ui/CarInfo;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/can/ui/CarInfo;->notifyShowingCarInfo(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/can/ui/CarInfo;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/can/ui/CarInfo;->updateMileageView()V

    return-void
.end method

.method static synthetic access$900(Lcom/can/ui/CarInfo;I[B)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/can/ui/CarInfo;->updateCarInfo(I[B)V

    return-void
.end method

.method private getBitmapsByNumber(Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .locals 5

    .line 602
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 604
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 606
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 607
    iget-object v4, p0, Lcom/can/ui/CarInfo;->mNumBitmaps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 609
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getWeek()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "EE d MMM"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private initData()V
    .locals 3

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/can/ui/CanPopWind;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    iget-object v1, p0, Lcom/can/ui/CarInfo;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/can/ui/CarInfo;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v0, "persist.sys.oil_uint_gal"

    const/4 v1, 0x0

    .line 246
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/can/ui/CarInfo;->showOilUnitGal:Z

    const-string v0, "persist.sys.temp_unit_f"

    .line 247
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/can/ui/CarInfo;->showTempUnitF:Z

    .line 248
    invoke-direct {p0}, Lcom/can/ui/CarInfo;->initMcu()V

    .line 250
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.carocean.action.ACTION_QUIT_APK"

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.carocean.action.SAVE_FACTORY_DATA"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/can/ui/CarInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/can/ui/CarInfo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initMcu()V
    .locals 3

    .line 169
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Lcom/can/ui/CarInfo;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    invoke-virtual {v0, v1, v2}, Lcom/carocean/navicar/McuServiceManager;->regCallback([ILcom/carocean/navicar/McuServiceManager$DataListener;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iget-object v2, p0, Lcom/can/ui/CarInfo;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    invoke-virtual {v0, v1, v2}, Lcom/carocean/navicar/McuServiceManager;->regCallback([ILcom/carocean/navicar/McuServiceManager$DataListener;)V

    .line 174
    :goto_0
    iget-object p0, p0, Lcom/can/ui/CarInfo;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    invoke-virtual {p0}, Lcom/carocean/navicar/McuServiceManager;->isServiceConnected()Z

    return-void

    nop

    :array_0
    .array-data 4
        0x12
        0x18
        0x24
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
    .end array-data
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0801bd

    .line 314
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mRateUnit:Landroid/widget/TextView;

    const v0, 0x7f0801be

    .line 315
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mRateUnit1:Landroid/widget/TextView;

    const v0, 0x7f0801b9

    .line 316
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mCarMileage:Landroid/widget/TextView;

    const v0, 0x7f0801ba

    .line 317
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mOutTemp:Landroid/widget/TextView;

    const v0, 0x7f0801c6

    .line 318
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mDateText:Landroid/widget/TextView;

    .line 319
    invoke-direct {p0}, Lcom/can/ui/CarInfo;->updateTimerView()V

    const v0, 0x7f0801c7

    .line 320
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mDateWeekText:Landroid/widget/TextView;

    const v0, 0x7f080461

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mCoolantTemp:Landroid/widget/TextView;

    const v0, 0x7f0807d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mBatteryVol:Landroid/widget/TextView;

    const v0, 0x7f0807e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mCruisingRange:Landroid/widget/TextView;

    .line 321
    invoke-direct {p0}, Lcom/can/ui/CarInfo;->updateWeekView()V

    .line 322
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCarMileage:Landroid/widget/TextView;

    new-instance v1, Lcom/can/ui/CarInfo$3;

    invoke-direct {v1, p0}, Lcom/can/ui/CarInfo$3;-><init>(Lcom/can/ui/CarInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0801b6

    .line 329
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mGas:Landroid/widget/TextView;

    const-string v1, "0L"

    .line 330
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801b4

    .line 332
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mGear:Landroid/widget/ImageView;

    const v0, 0x7f0801b5

    .line 333
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mGearText:Landroid/widget/TextView;

    const v0, 0x7f0801c4

    .line 334
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mSmallLed:Landroid/widget/ImageView;

    const v0, 0x7f0801b0

    .line 336
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mBigLedYzg:Landroid/widget/ImageView;

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0801b1

    .line 339
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mBigLedZlh:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0801af

    .line 342
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mBigLedFarZlh:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 344
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    const v0, 0x7f0801b2

    .line 345
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mBigLed:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 347
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    const v0, 0x7f0801b8

    .line 348
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mLeftLight:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 350
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    const v0, 0x7f0801bf

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mRightLight:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 353
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    const v0, 0x7f0801c3

    .line 354
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mSafeBelt:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 356
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    const v0, 0x7f0801b7

    .line 357
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mHandBrake:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 359
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    const v0, 0x7f0801b3

    .line 360
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mFootBrake:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 362
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    const v0, 0x7f0801bb

    .line 373
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/can/ui/view/Speedometer;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mCarRate:Lcom/can/ui/view/Speedometer;

    const v0, 0x7f0801c0

    .line 374
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/can/ui/view/Speedometer;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mCarRpm:Lcom/can/ui/view/Speedometer;

    const v0, 0x7f0801bc

    .line 375
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mCarRateText:Landroid/widget/TextView;

    const v0, 0x7f0801c1

    .line 376
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->mCarRpmText:Landroid/widget/TextView;

    const v0, 0x7f0802d3

    .line 377
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 378
    iget-object v1, p0, Lcom/can/ui/CarInfo;->mDoor:Lcom/can/ui/draw/Door;

    if-nez v1, :cond_9

    .line 379
    new-instance v1, Lcom/can/ui/draw/Door;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/can/ui/CarInfo;->uiHandler:Lcom/can/ui/CarInfo$UIHandler;

    invoke-direct {v1, v0, p0, v2}, Lcom/can/ui/draw/Door;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/can/ui/CarInfo;->mDoor:Lcom/can/ui/draw/Door;

    goto :goto_0

    .line 381
    :cond_9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/can/ui/draw/Door;->initViews(Landroid/view/View;)V

    .line 385
    :cond_a
    :goto_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomerUI1()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isZLHCustomerUI1()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x720And240dpi()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1

    .line 390
    :cond_b
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCarRate:Lcom/can/ui/view/Speedometer;

    const/high16 v1, 0x43820000    # 260.0f

    if-eqz v0, :cond_c

    .line 391
    invoke-virtual {v0, v1, v1}, Lcom/can/ui/view/Speedometer;->config(FF)V

    .line 393
    :cond_c
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCarRpm:Lcom/can/ui/view/Speedometer;

    if-eqz v0, :cond_d

    const v2, 0x45f3c000    # 7800.0f

    .line 394
    invoke-virtual {v0, v1, v2}, Lcom/can/ui/view/Speedometer;->config(FF)V

    :cond_d
    :goto_1
    const v0, 0x7f0801c5

    .line 399
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/can/ui/view/ID8SpeedMeter;

    iput-object v0, p0, Lcom/can/ui/CarInfo;->speedID8SpeedMeter:Lcom/can/ui/view/ID8SpeedMeter;

    const v0, 0x7f0801c2

    .line 400
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/can/ui/view/ID8SpeedMeter;

    iput-object p1, p0, Lcom/can/ui/CarInfo;->rpmID8SpeedMeter:Lcom/can/ui/view/ID8SpeedMeter;

    .line 401
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 402
    invoke-virtual {p0}, Lcom/can/ui/CarInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "content://com.carocean.status.provider/sys"

    const-string v2, "SYS_THEME"

    invoke-static {v1, p1, v2, v0}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 403
    invoke-virtual {p0, p1}, Lcom/can/ui/CarInfo;->updateID8Theme(I)V

    :cond_e
    invoke-direct {p0}, Lcom/can/ui/CarInfo;->updateExtraGauges()V

    return-void
.end method

.method private notifyShowingCarInfo(Z)V
    .locals 3

    .line 227
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomerUI1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isZLHCustomerUI1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x720And240dpi()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x720And240dpi()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move p1, v1

    :cond_1
    if-eqz p1, :cond_2

    .line 231
    invoke-virtual {p0}, Lcom/can/ui/CarInfo;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object p0, p0, Lcom/can/ui/CarInfo;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz p0, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x7

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    move p1, v1

    .line 233
    :goto_0
    :try_start_0
    invoke-static {v0, v2, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 236
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method private openOBD(Z)V
    .locals 4

    const-string p0, "persist.sys.backcar_type"

    const/4 v0, 0x0

    .line 259
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    int-to-byte p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const-string v2, "persist.sys.backcar_mirror"

    .line 264
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    or-int/lit8 p0, p0, 0x2

    int-to-byte p0, p0

    :cond_1
    const-string v2, "persist.sys.ivicar.avm.enable"

    .line 269
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v1, :cond_2

    or-int/lit8 p0, p0, 0x8

    :goto_1
    int-to-byte p0, p0

    goto :goto_2

    :cond_2
    if-ne v2, v3, :cond_3

    or-int/lit8 p0, p0, 0x10

    goto :goto_1

    :cond_3
    :goto_2
    const-string v2, "persist.sys.360_auto_show"

    .line 278
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_4

    or-int/lit8 p0, p0, 0x20

    int-to-byte p0, p0

    :cond_4
    const-string v2, "persist.sys.trace_enable"

    .line 283
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    or-int/lit8 p0, p0, 0x40

    int-to-byte p0, p0

    :cond_5
    const-string v2, "persist.sys.auto_front_cam"

    .line 288
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_6

    or-int/lit16 p0, p0, 0x80

    int-to-byte p0, p0

    :cond_6
    if-eqz p1, :cond_7

    or-int/lit8 p0, p0, 0x4

    int-to-byte p0, p0

    :cond_7
    const/4 p1, 0x4

    new-array p1, p1, [B

    const/16 v2, -0x6b

    aput-byte v2, p1, v0

    aput-byte p0, p1, v1

    aput-byte v0, p1, v3

    const/4 p0, 0x3

    aput-byte v0, p1, p0

    .line 303
    invoke-static {}, Lcom/carocean/navicar/util/McuUtils;->getInstance()Lcom/carocean/navicar/util/McuUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/carocean/navicar/util/McuUtils;->sendSettingCmd([B)V

    return-void
.end method

.method private release()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mcuServiceManager:Lcom/carocean/navicar/McuServiceManager;

    iget-object v1, p0, Lcom/can/ui/CarInfo;->dataListener:Lcom/carocean/navicar/McuServiceManager$DataListener;

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/McuServiceManager;->unregCallback(Lcom/carocean/navicar/McuServiceManager$DataListener;)V

    .line 308
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/can/ui/CarInfo;->unbindService(Landroid/content/ServiceConnection;)V

    .line 309
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/can/ui/CarInfo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 310
    invoke-virtual {p0}, Lcom/can/ui/CarInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/can/ui/CarInfo;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateCarInfo(I[B)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/16 v5, 0xff

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/16 v9, 0x18

    if-ne v1, v9, :cond_5

    .line 690
    aget-byte v9, p2, v8

    and-int/2addr v9, v5

    const/16 v10, 0x8

    shl-int/2addr v9, v10

    aget-byte v11, p2, v4

    and-int/2addr v11, v5

    or-int/2addr v9, v11

    invoke-direct {p0, v9}, Lcom/can/ui/CarInfo;->updateCarRate(I)V

    .line 691
    iget-object v9, v0, Lcom/can/ui/CarInfo;->mGas:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    .line 692
    aget-byte v11, p2, v6

    and-int/2addr v11, v5

    int-to-float v11, v11

    const/high16 v12, 0x43000000    # 128.0f

    cmpg-float v12, v11, v12

    if-gtz v12, :cond_2

    .line 694
    iget-boolean v12, v0, Lcom/can/ui/CarInfo;->showOilUnitGal:Z

    if-eqz v12, :cond_0

    const v12, 0x3e872b02    # 0.264f

    mul-float/2addr v11, v12

    .line 697
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    new-array v13, v6, [Ljava/lang/Object;

    iget-object v14, v0, Lcom/can/ui/CarInfo;->dfone:Ljava/text/DecimalFormat;

    float-to-double v6, v11

    invoke-virtual {v14, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v13, v8

    iget-boolean v6, v0, Lcom/can/ui/CarInfo;->showOilUnitGal:Z

    if-eqz v6, :cond_1

    const-string v6, "Gal"

    goto :goto_0

    :cond_1
    const-string v6, "L"

    :goto_0
    aput-object v6, v13, v4

    const-string v6, "%s%s"

    invoke-static {v12, v6, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 699
    :cond_2
    iget-boolean v6, v0, Lcom/can/ui/CarInfo;->showOilUnitGal:Z

    if-eqz v6, :cond_3

    const-string v6, "0Gal"

    goto :goto_1

    :cond_3
    const-string v6, "0L"

    :goto_1
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    :cond_4
    :goto_2
    aget-byte v6, p2, v3

    and-int/2addr v6, v5

    shl-int/2addr v6, v10

    const/4 v7, 0x4

    aget-byte v9, p2, v7

    and-int/lit16 v7, v9, 0xff

    or-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/can/ui/CarInfo;->updateCarRpm(I)V

    .line 704
    aget-byte v6, p2, v2

    and-int/2addr v6, v5

    shl-int/lit8 v6, v6, 0x10

    const/4 v7, 0x7

    aget-byte v7, p2, v7

    and-int/2addr v7, v5

    shl-int/2addr v7, v10

    or-int/2addr v6, v7

    aget-byte v7, p2, v10

    and-int/2addr v7, v5

    or-int/2addr v6, v7

    iput v6, v0, Lcom/can/ui/CarInfo;->mMileage:I

    .line 705
    invoke-direct {p0}, Lcom/can/ui/CarInfo;->updateMileageView()V

    :cond_5
    const/16 v6, 0x12

    if-ne v1, v6, :cond_41

    .line 708
    aget-byte v1, p2, v3

    const-string v6, "persist.sys.front.door"

    .line 709
    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_8

    .line 711
    aget-byte v6, p2, v3

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_6

    or-int/lit8 v1, v1, 0x40

    goto :goto_3

    :cond_6
    and-int/lit8 v1, v1, -0x41

    :goto_3
    int-to-byte v1, v1

    .line 716
    aget-byte v6, p2, v3

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_7

    or-int/lit8 v1, v1, -0x80

    goto :goto_4

    :cond_7
    and-int/lit8 v1, v1, 0x7f

    :goto_4
    int-to-byte v1, v1

    :cond_8
    const-string v6, "persist.sys.rear.door"

    .line 722
    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_b

    .line 724
    aget-byte v6, p2, v3

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_9

    or-int/lit8 v1, v1, 0x10

    goto :goto_5

    :cond_9
    and-int/lit8 v1, v1, -0x11

    :goto_5
    int-to-byte v1, v1

    .line 729
    aget-byte v3, p2, v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_a

    or-int/lit8 v1, v1, 0x20

    goto :goto_6

    :cond_a
    and-int/lit8 v1, v1, -0x21

    :goto_6
    int-to-byte v1, v1

    .line 735
    :cond_b
    invoke-direct {p0, v1}, Lcom/can/ui/CarInfo;->updateDoorView(B)V

    const/4 v1, 0x5

    .line 736
    aget-byte v3, p2, v1

    invoke-direct {p0, v3}, Lcom/can/ui/CarInfo;->updateOutTempView(B)V

    .line 737
    aget-byte v3, p2, v8

    and-int/lit16 v6, v3, 0x80

    if-eqz v6, :cond_c

    goto :goto_7

    :cond_c
    and-int/lit8 v6, v3, 0x4

    const-wide/16 v9, 0x1f4

    if-eqz v6, :cond_d

    .line 741
    iget-object v6, v0, Lcom/can/ui/CarInfo;->mLeftLight:Landroid/widget/ImageView;

    if-eqz v6, :cond_10

    .line 742
    iget-byte v6, v0, Lcom/can/ui/CarInfo;->mLight:B

    if-eq v4, v6, :cond_10

    .line 744
    iget-object v6, v0, Lcom/can/ui/CarInfo;->uiHandler:Lcom/can/ui/CarInfo$UIHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/can/ui/CarInfo$UIHandler;->removeMessages(I)V

    .line 745
    iput-byte v4, v0, Lcom/can/ui/CarInfo;->mLight:B

    .line 746
    iget-object v6, v0, Lcom/can/ui/CarInfo;->mLeftLight:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 747
    iget-object v6, v0, Lcom/can/ui/CarInfo;->uiHandler:Lcom/can/ui/CarInfo$UIHandler;

    invoke-virtual {v6, v7, v9, v10}, Lcom/can/ui/CarInfo$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7

    .line 751
    :cond_d
    iget-object v6, v0, Lcom/can/ui/CarInfo;->mLeftLight:Landroid/widget/ImageView;

    if-eqz v6, :cond_e

    const/4 v7, 0x4

    .line 753
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e
    and-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_f

    .line 757
    iget-object v6, v0, Lcom/can/ui/CarInfo;->mRightLight:Landroid/widget/ImageView;

    if-eqz v6, :cond_10

    .line 758
    iget-byte v6, v0, Lcom/can/ui/CarInfo;->mLight:B

    const/4 v7, 0x2

    if-eq v7, v6, :cond_10

    .line 760
    iget-object v6, v0, Lcom/can/ui/CarInfo;->uiHandler:Lcom/can/ui/CarInfo$UIHandler;

    invoke-virtual {v6, v7}, Lcom/can/ui/CarInfo$UIHandler;->removeMessages(I)V

    .line 761
    iput-byte v7, v0, Lcom/can/ui/CarInfo;->mLight:B

    .line 762
    iget-object v6, v0, Lcom/can/ui/CarInfo;->mRightLight:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 763
    iget-object v6, v0, Lcom/can/ui/CarInfo;->uiHandler:Lcom/can/ui/CarInfo$UIHandler;

    invoke-virtual {v6, v7, v9, v10}, Lcom/can/ui/CarInfo$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7

    :cond_f
    const/4 v7, 0x2

    .line 767
    iget-object v6, v0, Lcom/can/ui/CarInfo;->mRightLight:Landroid/widget/ImageView;

    if-eqz v6, :cond_10

    .line 768
    iget-object v6, v0, Lcom/can/ui/CarInfo;->uiHandler:Lcom/can/ui/CarInfo$UIHandler;

    invoke-virtual {v6, v7}, Lcom/can/ui/CarInfo$UIHandler;->removeMessages(I)V

    .line 769
    iget-object v6, v0, Lcom/can/ui/CarInfo;->mRightLight:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 770
    iput-byte v8, v0, Lcom/can/ui/CarInfo;->mLight:B

    :cond_10
    :goto_7
    const-string v6, "persist.sys.bmw.demo"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_skip_demo_lights

    const-string v6, "persist.sys.bmw.beam"

    const-string v7, "high"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "low"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_demo_not_low

    and-int/lit8 v3, v3, -0x21

    or-int/lit8 v3, v3, 0x40

    goto :cond_skip_demo_lights

    :cond_demo_not_low
    const-string v7, "off"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_demo_is_high

    and-int/lit8 v3, v3, -0x61

    goto :cond_skip_demo_lights

    :cond_demo_is_high
    and-int/lit8 v3, v3, -0x41

    or-int/lit8 v3, v3, 0x20

    :cond_skip_demo_lights
    and-int/lit8 v6, v3, 0x20

    if-eqz v6, :cond_16

    .line 778
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mBigLedYzg:Landroid/widget/ImageView;

    if-eqz v3, :cond_12

    .line 779
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_11
    :goto_8
    const/4 v9, 0x4

    goto/16 :goto_b

    .line 780
    :cond_12
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mBigLed:Landroid/widget/ImageView;

    const v6, 0x7f07011d

    if-eqz v3, :cond_14

    .line 781
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 782
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mBigLed:Landroid/widget/ImageView;

    const v6, 0x7f0700e6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 784
    :cond_13
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mBigLed:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 786
    :goto_9
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mBigLed:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 787
    :cond_14
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mBigLedZlh:Landroid/widget/ImageView;

    if-eqz v3, :cond_15

    .line 788
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mBigLedFarZlh:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 789
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mBigLedZlh:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move v9, v6

    goto/16 :goto_b

    .line 791
    :cond_15
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mSmallLed:Landroid/widget/ImageView;

    if-eqz v3, :cond_11

    .line 792
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 793
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mSmallLed:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 797
    :cond_16
    iget-object v6, v0, Lcom/can/ui/CarInfo;->mBigLedYzg:Landroid/widget/ImageView;

    if-eqz v6, :cond_18

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_17

    .line 799
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_17
    const/4 v3, 0x4

    .line 801
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move v9, v3

    goto :goto_b

    .line 803
    :cond_18
    iget-object v6, v0, Lcom/can/ui/CarInfo;->mBigLed:Landroid/widget/ImageView;

    const v7, 0x7f07011e

    if-eqz v6, :cond_1b

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1a

    .line 805
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 806
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mBigLed:Landroid/widget/ImageView;

    const v6, 0x7f0700e7

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_a

    .line 808
    :cond_19
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mBigLed:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 810
    :goto_a
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mBigLed:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_1a
    const/4 v9, 0x4

    .line 812
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    :cond_1b
    const/4 v9, 0x4

    .line 814
    iget-object v6, v0, Lcom/can/ui/CarInfo;->mBigLedZlh:Landroid/widget/ImageView;

    if-eqz v6, :cond_1d

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1c

    .line 816
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mBigLedFarZlh:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 817
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mBigLedZlh:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 819
    :cond_1c
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mBigLedFarZlh:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 820
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mBigLedZlh:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 822
    :cond_1d
    iget-object v6, v0, Lcom/can/ui/CarInfo;->mSmallLed:Landroid/widget/ImageView;

    if-eqz v6, :cond_1f

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1e

    .line 825
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 826
    iget-object v3, v0, Lcom/can/ui/CarInfo;->mSmallLed:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 828
    :cond_1e
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 833
    :cond_1f
    :goto_b
    aget-byte v3, p2, v4

    and-int/2addr v3, v5

    if-ne v5, v3, :cond_21

    .line 835
    iget-object v1, v0, Lcom/can/ui/CarInfo;->mGear:Landroid/widget/ImageView;

    if-eqz v1, :cond_20

    .line 836
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 838
    :cond_20
    iget-object v1, v0, Lcom/can/ui/CarInfo;->mGearText:Landroid/widget/TextView;

    if-eqz v1, :cond_23

    const-string v2, ""

    .line 839
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 842
    :cond_21
    iget-object v6, v0, Lcom/can/ui/CarInfo;->mGear:Landroid/widget/ImageView;

    if-eqz v6, :cond_22

    .line 843
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_22
    if-eqz v3, :cond_37

    if-eq v3, v4, :cond_32

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2d

    const/4 v6, 0x4

    if-eq v3, v6, :cond_28

    if-eq v3, v1, :cond_26

    if-eq v3, v2, :cond_24

    :cond_23
    :goto_c
    const/4 v1, 0x2

    goto/16 :goto_15

    .line 887
    :cond_24
    iget-object v1, v0, Lcom/can/ui/CarInfo;->mGear:Landroid/widget/ImageView;

    if-eqz v1, :cond_25

    const v2, 0x7f07012a

    .line 888
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 890
    :cond_25
    iget-object v1, v0, Lcom/can/ui/CarInfo;->mGearText:Landroid/widget/TextView;

    if-eqz v1, :cond_23

    const-string v2, "M"

    .line 891
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 879
    :cond_26
    iget-object v1, v0, Lcom/can/ui/CarInfo;->mGear:Landroid/widget/ImageView;

    if-eqz v1, :cond_27

    const v2, 0x7f07012e

    .line 880
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 882
    :cond_27
    iget-object v1, v0, Lcom/can/ui/CarInfo;->mGearText:Landroid/widget/TextView;

    if-eqz v1, :cond_23

    const-string v2, "S"

    .line 883
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 871
    :cond_28
    iget-object v1, v0, Lcom/can/ui/CarInfo;->mGear:Landroid/widget/ImageView;

    if-eqz v1, :cond_2c

    .line 872
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v2

    if-eqz v2, :cond_29

    const v2, 0x7f0700e9

    goto :goto_e

    :cond_29
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_d

    :cond_2a
    const v2, 0x7f070129

    goto :goto_e

    :cond_2b
    :goto_d
    const v2, 0x7f0703c1

    :goto_e
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 874
    :cond_2c
    iget-object v1, v0, Lcom/can/ui/CarInfo;->mGearText:Landroid/widget/TextView;

    if-eqz v1, :cond_23

    const-string v2, "D"

    .line 875
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 863
    :cond_2d
    iget-object v1, v0, Lcom/can/ui/CarInfo;->mGear:Landroid/widget/ImageView;

    if-eqz v1, :cond_31

    .line 864
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v2

    if-eqz v2, :cond_2e

    const v2, 0x7f0700ea

    goto :goto_10

    :cond_2e
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_f

    :cond_2f
    const v2, 0x7f07012b

    goto :goto_10

    :cond_30
    :goto_f
    const v2, 0x7f0703c2

    :goto_10
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 866
    :cond_31
    iget-object v1, v0, Lcom/can/ui/CarInfo;->mGearText:Landroid/widget/TextView;

    if-eqz v1, :cond_23

    const-string v2, "N"

    .line 867
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 855
    :cond_32
    iget-object v1, v0, Lcom/can/ui/CarInfo;->mGear:Landroid/widget/ImageView;

    if-eqz v1, :cond_36

    .line 856
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v2

    if-eqz v2, :cond_33

    const v2, 0x7f0700ec

    goto :goto_12

    :cond_33
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_11

    :cond_34
    const v2, 0x7f07012d

    goto :goto_12

    :cond_35
    :goto_11
    const v2, 0x7f0703c4

    :goto_12
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 858
    :cond_36
    iget-object v1, v0, Lcom/can/ui/CarInfo;->mGearText:Landroid/widget/TextView;

    if-eqz v1, :cond_23

    const-string v2, "R"

    .line 859
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 847
    :cond_37
    iget-object v1, v0, Lcom/can/ui/CarInfo;->mGear:Landroid/widget/ImageView;

    if-eqz v1, :cond_3b

    .line 848
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v2

    if-eqz v2, :cond_38

    const v2, 0x7f0700eb

    goto :goto_14

    :cond_38
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_13

    :cond_39
    const v2, 0x7f07012c

    goto :goto_14

    :cond_3a
    :goto_13
    const v2, 0x7f0703c3

    :goto_14
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 850
    :cond_3b
    iget-object v1, v0, Lcom/can/ui/CarInfo;->mGearText:Landroid/widget/TextView;

    if-eqz v1, :cond_23

    const-string v2, "P"

    .line 851
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 897
    :goto_15
    aget-byte v1, p2, v1

    and-int/2addr v1, v5

    .line 898
    iget-object v2, v0, Lcom/can/ui/CarInfo;->mSafeBelt:Landroid/widget/ImageView;

    if-eqz v2, :cond_3d

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_3c

    const/4 v3, 0x4

    .line 901
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_16

    .line 903
    :cond_3c
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 906
    :cond_3d
    :goto_16
    iget-object v2, v0, Lcom/can/ui/CarInfo;->mFootBrake:Landroid/widget/ImageView;

    if-eqz v2, :cond_3f

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_3e

    .line 909
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_17

    :cond_3e
    const/4 v3, 0x4

    .line 911
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18

    :cond_3f
    :goto_17
    const/4 v3, 0x4

    .line 914
    :goto_18
    iget-object v0, v0, Lcom/can/ui/CarInfo;->mHandBrake:Landroid/widget/ImageView;

    if-eqz v0, :cond_41

    and-int/2addr v1, v4

    if-eqz v1, :cond_40

    .line 917
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_19

    .line 919
    :cond_40
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_41
    :goto_19
    invoke-direct {p0}, Lcom/can/ui/CarInfo;->updateExtraGauges()V

    return-void
.end method

.method private updateCarRate(I)V
    .locals 7

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCarRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_b

    const/16 v0, 0x3e7

    if-gt p1, v0, :cond_b

    .line 410
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCarRateText:Landroid/widget/TextView;

    const-wide v1, 0x3fe3e2435696e58aL    # 0.62137

    const/4 v3, 0x0

    const-string v4, "persist.sys.mileage_unit"

    if-eqz v0, :cond_1

    .line 411
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCarRateText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    int-to-double v5, p1

    mul-double/2addr v5, v1

    .line 415
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCarRateText:Landroid/widget/TextView;

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    :cond_1
    :goto_0
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    .line 420
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCarRate:Lcom/can/ui/view/Speedometer;

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {v0, p1}, Lcom/can/ui/view/Speedometer;->setSpeed(I)V

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/can/ui/CarInfo;->speedID8SpeedMeter:Lcom/can/ui/view/ID8SpeedMeter;

    if-eqz v0, :cond_3

    .line 424
    invoke-virtual {v0, p1}, Lcom/can/ui/view/ID8SpeedMeter;->setSpeed(I)V

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCarRateText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 427
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :cond_4
    iget-object p1, p0, Lcom/can/ui/CarInfo;->mRateUnit:Landroid/widget/TextView;

    const-string v0, "km/h"

    if-eqz p1, :cond_5

    .line 430
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    :cond_5
    iget-object p0, p0, Lcom/can/ui/CarInfo;->mRateUnit1:Landroid/widget/TextView;

    if-eqz p0, :cond_b

    .line 432
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    int-to-double v3, p1

    mul-double/2addr v3, v1

    .line 435
    iget-object p1, p0, Lcom/can/ui/CarInfo;->mCarRate:Lcom/can/ui/view/Speedometer;

    if-eqz p1, :cond_7

    double-to-int v0, v3

    .line 436
    invoke-virtual {p1, v0}, Lcom/can/ui/view/Speedometer;->setSpeed(I)V

    .line 438
    :cond_7
    iget-object p1, p0, Lcom/can/ui/CarInfo;->speedID8SpeedMeter:Lcom/can/ui/view/ID8SpeedMeter;

    if-eqz p1, :cond_8

    double-to-int v0, v3

    .line 439
    invoke-virtual {p1, v0}, Lcom/can/ui/view/ID8SpeedMeter;->setSpeed(I)V

    .line 441
    :cond_8
    iget-object p1, p0, Lcom/can/ui/CarInfo;->mCarRateText:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    double-to-int v0, v3

    .line 442
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    :cond_9
    iget-object p1, p0, Lcom/can/ui/CarInfo;->mRateUnit:Landroid/widget/TextView;

    const-string v0, "mph"

    if-eqz p1, :cond_a

    .line 445
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    :cond_a
    iget-object p0, p0, Lcom/can/ui/CarInfo;->mRateUnit1:Landroid/widget/TextView;

    if-eqz p0, :cond_b

    .line 447
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_1
    return-void
.end method

.method private updateCarRpm(I)V
    .locals 6

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCarRpm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_5

    const/16 v0, 0x270f

    if-gt p1, v0, :cond_5

    .line 455
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCarRpmText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    const-string v1, "0"

    .line 457
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 459
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isZLHCustomerUI1()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x720And240dpi()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCarRpmText:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float v4, p1

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%.1f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 460
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCarRpmText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCarRpm:Lcom/can/ui/view/Speedometer;

    if-eqz v0, :cond_4

    .line 469
    invoke-virtual {v0, p1}, Lcom/can/ui/view/Speedometer;->setSpeed(I)V

    .line 471
    :cond_4
    iget-object p0, p0, Lcom/can/ui/CarInfo;->rpmID8SpeedMeter:Lcom/can/ui/view/ID8SpeedMeter;

    if-eqz p0, :cond_5

    .line 472
    invoke-virtual {p0, p1}, Lcom/can/ui/view/ID8SpeedMeter;->setRpm(I)V

    :cond_5
    return-void
.end method

.method private updateDoorView(B)V
    .locals 0

    .line 974
    iget-object p0, p0, Lcom/can/ui/CarInfo;->mDoor:Lcom/can/ui/draw/Door;

    if-eqz p0, :cond_0

    .line 978
    invoke-virtual {p0, p1}, Lcom/can/ui/draw/Door;->updateView(B)V

    :cond_0
    return-void
.end method

.method private updateMileageView()V
    .locals 6

    .line 929
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCarMileage:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const-string v1, "persist.sys.mileage_unit"

    .line 930
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCarMileage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/can/ui/CarInfo;->mMileage:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "km"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 933
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result v0

    const-string v1, "mi"

    if-nez v0, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide v2, 0x3fe3e2435696e58aL    # 0.62137

    .line 936
    iget v0, p0, Lcom/can/ui/CarInfo;->mMileage:I

    int-to-double v4, v0

    mul-double/2addr v4, v2

    .line 937
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 938
    iget v0, p0, Lcom/can/ui/CarInfo;->mMileage:I

    int-to-double v4, v0

    .line 940
    :cond_2
    iget-object p0, p0, Lcom/can/ui/CarInfo;->mCarMileage:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 934
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCarMileage:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/can/ui/CarInfo;->mMileage:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateOutTempView(B)V
    .locals 6

    .line 950
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mOutTemp:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const/16 v1, 0xff

    and-int/2addr p1, v1

    if-ne v1, p1, :cond_0

    .line 955
    invoke-virtual {p0}, Lcom/can/ui/CarInfo;->getDate()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v0, p1, -0x50

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 959
    iget-boolean v1, p0, Lcom/can/ui/CarInfo;->showTempUnitF:Z

    if-eqz v1, :cond_2

    .line 960
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, -0x28

    int-to-float v0, p1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x42000000    # 32.0f

    const v1, 0x3fe66666    # 1.8f

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    .line 966
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/can/ui/CarInfo;->mOutTemp:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/can/ui/CarInfo;->dfone:Ljava/text/DecimalFormat;

    float-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget-boolean p0, p0, Lcom/can/ui/CarInfo;->showTempUnitF:Z

    if-eqz p0, :cond_3

    const-string p0, "\u2109"

    goto :goto_1

    :cond_3
    const-string p0, "\u2103"

    :goto_1
    aput-object p0, v1, v0

    const-string p0, "%s%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateTimerView()V
    .locals 1

    .line 1257
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mDateText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1258
    invoke-virtual {p0}, Lcom/can/ui/CarInfo;->getTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateWeekView()V
    .locals 2

    .line 1268
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mDateWeekText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1269
    invoke-direct {p0}, Lcom/can/ui/CarInfo;->getWeek()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/can/ui/CarInfo;->updateExtraGauges()V

    return-void
.end method

.method private updateExtraGauges()V
    .locals 6

    # --- 1. Coolant Temperature ---
    :try_start_0
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCoolantTemp:Landroid/widget/TextView;

    if-eqz v0, :cond_coolant_done

    const-string v1, "persist.sys.bmw.coolant"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_coolant_can

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u2103"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :cond_coolant_done

    :cond_coolant_can
    iget-object v1, p0, Lcom/can/ui/CarInfo;->cmdcode18Data:[B

    if-eqz v1, :cond_coolant_default

    array-length v2, v1

    const/4 v3, 0x6

    if-lt v2, v3, :cond_coolant_default

    const/4 v2, 0x5

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    if-lez v1, :cond_coolant_default

    const/16 v2, 0xff

    if-ge v1, v2, :cond_coolant_default

    const/16 v2, 0x82

    if-lt v1, v2, :cond_coolant_fmt

    const/16 v2, 0xb4

    if-gt v1, v2, :cond_coolant_fmt

    add-int/lit8 v1, v1, -0x28

    :cond_coolant_fmt
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u2103"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :cond_coolant_done

    :cond_coolant_default
    const-string v1, "90\u2103"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_coolant_done
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_coolant

    :catch_coolant

    # --- 2. Battery Voltage ---
    :try_start_1
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mBatteryVol:Landroid/widget/TextView;

    if-eqz v0, :cond_vol_done

    const-string v1, "persist.sys.bmw.voltage"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_vol_can

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "V"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :cond_vol_done

    :cond_vol_can
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/can/ui/CarInfo;->cmdcode12Data:[B

    if-eqz v2, :cond_vol_check18

    array-length v3, v2

    const/4 v4, 0x6

    if-le v3, v4, :cond_vol_check18

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x50

    if-lt v2, v3, :cond_vol_check18

    const/16 v3, 0xaa

    if-gt v2, v3, :cond_vol_check18

    int-to-float v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    :cond_vol_check18
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-gtz v3, :cond_vol_apply

    iget-object v3, p0, Lcom/can/ui/CarInfo;->cmdcode18Data:[B

    if-eqz v3, :cond_vol_apply

    array-length v4, v3

    const/16 v5, 0x9

    if-le v4, v5, :cond_vol_apply

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x50

    if-lt v3, v4, :cond_vol_apply

    const/16 v4, 0xaa

    if-gt v3, v4, :cond_vol_apply

    int-to-float v1, v3

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    :cond_vol_apply
    cmpl-float v2, v1, v2

    if-gtz v2, :cond_vol_format

    const v1, 0x41633333    # 14.2f

    :cond_vol_format
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.1fV"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_vol_done
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_vol

    :catch_vol
    # --- 3. Cruising Range ---
    :try_start_2
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCruisingRange:Landroid/widget/TextView;

    if-eqz v0, :cond_range_done

    const-string v1, "persist.sys.bmw.range"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_range_calc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "km"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_range_has_km

    const-string v1, " km"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_range_has_km
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :cond_range_done

    :cond_range_calc
    const-string v1, "450 km"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_range_done
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_range

    :catch_range
    const-string v0, "persist.sys.bmw.demo"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_no_demo

    invoke-direct {p0}, Lcom/can/ui/CarInfo;->applyDemoState()V

    :cond_no_demo
    return-void
.end method

.method private applyDemoState()V
    .locals 4

    # Speed: 120 km/h
    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lcom/can/ui/CarInfo;->updateCarRate(I)V

    # RPM: 3200
    const/16 v0, 0xc80

    invoke-direct {p0, v0}, Lcom/can/ui/CarInfo;->updateCarRpm(I)V

    # Mileage: 185420 km
    const v0, 0x2d44c

    iput v0, p0, Lcom/can/ui/CarInfo;->mMileage:I

    invoke-direct {p0}, Lcom/can/ui/CarInfo;->updateMileageView()V

    # Fuel: 55L
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mGas:Landroid/widget/TextView;

    if-eqz v0, :cond_demo_gas

    const-string v1, "55L"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_demo_gas
    # Gear: D
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mGear:Landroid/widget/ImageView;

    if-eqz v0, :cond_demo_gear

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f070129

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_demo_gear
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mGearText:Landroid/widget/TextView;

    if-eqz v0, :cond_demo_geartext

    const-string v1, "D"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_demo_geartext
    # Headlight road beam & cluster icon handling based on persist.sys.bmw.beam
    const-string v0, "persist.sys.bmw.beam"

    const-string v1, "high"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "low"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_beam_check_off

    # LOW BEAM
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mBigLed:Landroid/widget/ImageView;

    if-eqz v0, :cond_low_led

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f07011e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_low_led
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mBigLedZlh:Landroid/widget/ImageView;

    if-eqz v0, :cond_low_road

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_low_road
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mBigLedFarZlh:Landroid/widget/ImageView;

    if-eqz v0, :cond_demo_beams_done

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :cond_demo_beams_done

    :cond_beam_check_off
    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_beam_high

    # OFF
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mBigLed:Landroid/widget/ImageView;

    if-eqz v0, :cond_off_led

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_off_led
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mBigLedZlh:Landroid/widget/ImageView;

    if-eqz v0, :cond_off_low

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_off_low
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mBigLedFarZlh:Landroid/widget/ImageView;

    if-eqz v0, :cond_demo_beams_done

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :cond_demo_beams_done

    :cond_beam_high
    # HIGH BEAM (default)
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mBigLed:Landroid/widget/ImageView;

    if-eqz v0, :cond_high_led

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f07011d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_high_led
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mBigLedZlh:Landroid/widget/ImageView;

    if-eqz v0, :cond_high_road

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_high_road
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mBigLedFarZlh:Landroid/widget/ImageView;

    if-eqz v0, :cond_demo_beams_done

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_demo_beams_done
    # Cruising Range
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mCruisingRange:Landroid/widget/TextView;

    if-eqz v0, :cond_demo_range

    const-string v1, "450 km"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_demo_range
    # Seatbelt: Warning
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mSafeBelt:Landroid/widget/ImageView;

    if-eqz v0, :cond_demo_safeb

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_demo_safeb
    # Handbrake
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mHandBrake:Landroid/widget/ImageView;

    if-eqz v0, :cond_demo_handb

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_demo_handb
    # Footbrake
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mFootBrake:Landroid/widget/ImageView;

    if-eqz v0, :cond_demo_footb

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_demo_footb
    # Turn signals: Left & Right
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mLeftLight:Landroid/widget/ImageView;

    if-eqz v0, :cond_demo_leftl

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_demo_leftl
    iget-object v0, p0, Lcom/can/ui/CarInfo;->mRightLight:Landroid/widget/ImageView;

    if-eqz v0, :cond_demo_rightl

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_demo_rightl
    # Doors: only open if persist.sys.bmw.demo is 2
    const-string v0, "persist.sys.bmw.demo"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_demo_door

    iget-object v0, p0, Lcom/can/ui/CarInfo;->mDoor:Lcom/can/ui/draw/Door;

    if-eqz v0, :cond_demo_door

    const/16 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/can/ui/draw/Door;->updateView(B)V

    :cond_demo_door
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 508
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    const/16 v1, 0x47

    if-eq v0, v1, :cond_0

    const/16 v1, 0x48

    if-eq v0, v1, :cond_1

    const/16 v1, 0x128

    if-eq v0, v1, :cond_2

    const/16 v1, 0x129

    if-eq v0, v1, :cond_4

    .line 529
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/can/ui/CarInfo;->onBackPressed()V

    :cond_1
    return v2

    .line 517
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    .line 518
    iget-object p0, p0, Lcom/can/ui/CarInfo;->mAdapter:Lcom/can/ui/CarInfo$MainPageAdapter;

    invoke-virtual {p0}, Lcom/can/ui/CarInfo$MainPageAdapter;->snap2Right()V

    :cond_3
    return v2

    .line 511
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_5

    .line 512
    iget-object p0, p0, Lcom/can/ui/CarInfo;->mAdapter:Lcom/can/ui/CarInfo$MainPageAdapter;

    invoke-virtual {p0}, Lcom/can/ui/CarInfo$MainPageAdapter;->snap2Left()V

    :cond_5
    return v2
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 1242
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "MM/dd"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1243
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNumberBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    if-eqz p2, :cond_2

    .line 571
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 572
    invoke-direct {p0, p3}, Lcom/can/ui/CarInfo;->getBitmapsByNumber(Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object p3

    .line 573
    array-length v0, p3

    new-array v0, v0, [I

    .line 574
    array-length v2, p3

    new-array v2, v2, [I

    move v3, v1

    .line 575
    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_2

    .line 577
    aget-object v4, p3, v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    aput v4, v0, v3

    .line 578
    aget-object v4, p3, v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    aput v4, v2, v3

    if-nez v3, :cond_0

    move v5, v1

    goto :goto_2

    :cond_0
    move v4, v1

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_1

    .line 586
    aget v6, v0, v4

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 591
    :cond_1
    :goto_2
    aget v4, v0, v3

    add-int/2addr v4, v5

    .line 592
    aget v6, v2, v3

    .line 594
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v5, v1, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 595
    aget-object v4, p3, v3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/can/ui/CarInfo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 1248
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1249
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1251
    :cond_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "hh:mm"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1253
    :goto_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    new-instance p1, Lcom/can/ui/CarInfo$UIHandler;

    invoke-direct {p1, p0}, Lcom/can/ui/CarInfo$UIHandler;-><init>(Lcom/can/ui/CarInfo;)V

    iput-object p1, p0, Lcom/can/ui/CarInfo;->uiHandler:Lcom/can/ui/CarInfo$UIHandler;

    .line 114
    invoke-virtual {p0}, Lcom/can/ui/CarInfo;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/high16 v0, 0xc000000

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 118
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 121
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    const/high16 v0, 0x4000000

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, 0x8000000

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 125
    :cond_1
    :goto_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomerUI1()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isZLHCustomerUI1()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x720And240dpi()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    :cond_2
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1024x460And160dpi()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/16 v0, 0x400

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 130
    :cond_4
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f0b0021

    .line 131
    invoke-virtual {p0, p1}, Lcom/can/ui/CarInfo;->setContentView(I)V

    goto :goto_3

    .line 133
    :cond_5
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomerUI1()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isZLHCustomerUI1()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x720And240dpi()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 136
    :cond_6
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    const p1, 0x7f0b0020

    .line 139
    invoke-virtual {p0, p1}, Lcom/can/ui/CarInfo;->setContentView(I)V

    goto :goto_3

    :cond_8
    :goto_1
    const p1, 0x7f0b0091

    .line 137
    invoke-virtual {p0, p1}, Lcom/can/ui/CarInfo;->setContentView(I)V

    goto :goto_3

    :cond_9
    :goto_2
    const p1, 0x7f0b0022

    .line 134
    invoke-virtual {p0, p1}, Lcom/can/ui/CarInfo;->setContentView(I)V

    .line 145
    :goto_3
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/can/ui/CarInfo;->mPaint:Landroid/graphics/Paint;

    .line 147
    new-instance p1, Lcom/can/ui/CarInfo$MainPageAdapter;

    invoke-direct {p1, p0}, Lcom/can/ui/CarInfo$MainPageAdapter;-><init>(Lcom/can/ui/CarInfo;)V

    iput-object p1, p0, Lcom/can/ui/CarInfo;->mAdapter:Lcom/can/ui/CarInfo$MainPageAdapter;

    const p1, 0x7f0805b8

    .line 148
    invoke-virtual {p0, p1}, Lcom/can/ui/CarInfo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/can/ui/CarInfo;->mPages:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    .line 149
    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 151
    iget-object p1, p0, Lcom/can/ui/CarInfo;->mPages:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/can/ui/CarInfo;->mAdapter:Lcom/can/ui/CarInfo$MainPageAdapter;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 153
    iget-object p1, p0, Lcom/can/ui/CarInfo;->mPages:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/can/ui/CarInfo;->mAdapter:Lcom/can/ui/CarInfo$MainPageAdapter;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 155
    invoke-direct {p0}, Lcom/can/ui/CarInfo;->initData()V

    .line 157
    iget-object p1, p0, Lcom/can/ui/CarInfo;->mPages:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/can/ui/CarInfo;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "page"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "persist.sys.bmw.page"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 159
    invoke-direct {p0}, Lcom/can/ui/CarInfo;->updateTimerView()V

    .line 160
    invoke-direct {p0}, Lcom/can/ui/CarInfo;->updateWeekView()V

    .line 161
    iget-object p1, p0, Lcom/can/ui/CarInfo;->uiHandler:Lcom/can/ui/CarInfo$UIHandler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Lcom/can/ui/CarInfo$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 163
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 164
    invoke-virtual {p0}, Lcom/can/ui/CarInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "content://com.carocean.status.provider/sys/SYS_THEME"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/can/ui/CarInfo;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_a
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 565
    invoke-direct {p0}, Lcom/can/ui/CarInfo;->release()V

    .line 566
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 535
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 541
    invoke-direct {p0, v0}, Lcom/can/ui/CarInfo;->notifyShowingCarInfo(Z)V

    .line 542
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 4

    const/4 v0, 0x1

    .line 548
    invoke-direct {p0, v0}, Lcom/can/ui/CarInfo;->openOBD(Z)V

    .line 549
    iget-object v0, p0, Lcom/can/ui/CarInfo;->uiHandler:Lcom/can/ui/CarInfo$UIHandler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/can/ui/CarInfo$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 550
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/can/ui/CarInfo;->uiHandler:Lcom/can/ui/CarInfo$UIHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/can/ui/CarInfo$UIHandler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 557
    invoke-direct {p0, v0}, Lcom/can/ui/CarInfo;->openOBD(Z)V

    .line 558
    invoke-direct {p0, v0}, Lcom/can/ui/CarInfo;->notifyShowingCarInfo(Z)V

    .line 559
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 479
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory: level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x50

    if-lt p1, v0, :cond_4

    .line 482
    iget-object p1, p0, Lcom/can/ui/CarInfo;->mNumBitmaps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 483
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 485
    :cond_0
    iget-object p1, p0, Lcom/can/ui/CarInfo;->mNumBitmaps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 486
    iget-object p1, p0, Lcom/can/ui/CarInfo;->mRateBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 487
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 488
    iput-object v0, p0, Lcom/can/ui/CarInfo;->mRateBitmap:Landroid/graphics/Bitmap;

    .line 490
    :cond_1
    iget-object p1, p0, Lcom/can/ui/CarInfo;->mRateCanvas:Landroid/graphics/Canvas;

    if-eqz p1, :cond_2

    .line 491
    invoke-virtual {p1}, Landroid/graphics/Canvas;->release()V

    .line 492
    iput-object v0, p0, Lcom/can/ui/CarInfo;->mRateCanvas:Landroid/graphics/Canvas;

    .line 494
    :cond_2
    iget-object p1, p0, Lcom/can/ui/CarInfo;->mRpmBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 495
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 496
    iput-object v0, p0, Lcom/can/ui/CarInfo;->mRpmBitmap:Landroid/graphics/Bitmap;

    .line 498
    :cond_3
    iget-object p1, p0, Lcom/can/ui/CarInfo;->mRpmCanvas:Landroid/graphics/Canvas;

    if-eqz p1, :cond_4

    .line 499
    invoke-virtual {p1}, Landroid/graphics/Canvas;->release()V

    .line 500
    iput-object v0, p0, Lcom/can/ui/CarInfo;->mRpmCanvas:Landroid/graphics/Canvas;

    :cond_4
    return-void
.end method

.method public updateID8Theme(I)V
    .locals 2

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateID8Theme: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 621
    :cond_0
    iget-object p0, p0, Lcom/can/ui/CarInfo;->mAdapter:Lcom/can/ui/CarInfo$MainPageAdapter;

    if-eqz p0, :cond_1

    .line 622
    invoke-virtual {p0, p1}, Lcom/can/ui/CarInfo$MainPageAdapter;->updateID8Theme(I)V

    :cond_1
    return-void
.end method
