.class public Lcom/android/launcher2/popuView/MainCustomerJly;
.super Landroid/widget/FrameLayout;
.source "MainCustomerJly.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popuView/MainCustomerJly$SystemStatusConnectObserver;,
        Lcom/android/launcher2/popuView/MainCustomerJly$UIHandler;,
        Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;,
        Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;,
        Lcom/android/launcher2/popuView/MainCustomerJly$MainPageTransformer;
    }
.end annotation


# static fields
.field public static final ACTION_CITY_INFO_UPDATE:Ljava/lang/String; = "com.autochips.action.city.INFO_UPDATE"

.field public static final ACTION_CLOCK_TYPE:Ljava/lang/String; = "com.yecon.action.ACTION_CLOCK_TYPE"

.field public static final ACTION_SWITCH_VIEW:Ljava/lang/String; = "com.yecon.action.ACTION_SWITCH_VIEW"

.field public static final ACTION_WEATHER_INFO_UPDATE:Ljava/lang/String; = "com.autochips.action.weathe.INFO_UPDATE"

.field public static final ACTION_WEATHER_ON_CLICK:Ljava/lang/String; = "com.autochips.action.weathe.ON_CLICK"

.field private static final MSG_START:I = 0x2710

.field private static final MSG_UPDATE_CAR_INFO:I = 0x2711

.field public static final PERSYS_CLOCK_TYPE:Ljava/lang/String; = "persist.sys.clock_type"

.field public static final PERSYS_DVR_CVBS:Ljava/lang/String; = "persist.sys.dvr_cvbs"

.field public static final PERSYS_FRONT_CAMERA:Ljava/lang/String; = "persist.sys.front_camera"

.field public static final PERSYS_HOST_TYPE:Ljava/lang/String; = "persist.sys.host_type"

.field public static final PERSYS_ORIGINAL_BT:Ljava/lang/String; = "persist.sys.original_bt"

.field private static final PREFS_CLOCK_WEATHER:Ljava/lang/String; = "mc.clockweather"

.field public static final RO_RELEASE_CARPLAY:Ljava/lang/String; = "ro.release.car_play"

.field private static final TAG:Ljava/lang/String; = "MainCustomerJly"

.field private static final URI_SYS_BT_CONNECT_STATUS:Ljava/lang/String; = "content://com.carocean.status.provider/sys/SYS_BT_CONNECT_STATUS"

.field public static conditionImages:[Ljava/lang/String;

.field private static conditionItems:[Ljava/lang/String;


# instance fields
.field private final AUTO_SHOWTIME_TIME:I

.field private final MSG_SHOWTIME:I

.field private clock:Landroid/view/View;

.field private compassManager:Lcom/android/launcher2/popuView/CompassManager;

.field iv_pm25_pic:Landroid/widget/ImageView;

.field iv_time:Landroid/widget/ImageView;

.field iv_time2:Landroid/widget/ImageView;

.field iv_weather:Landroid/widget/ImageView;

.field private leftEdge:Landroid/widget/EdgeEffect;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCalendar:Ljava/util/Calendar;

.field private mCarBg:Landroid/widget/ImageView;

.field mCarIcons:[I

.field private mDotFlip:Z

.field private final mGap:I

.field private final mIconsId:[I

.field private mImageResArray:[I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field mLayoutDatetime:Landroid/view/View;

.field private mMainMyBmw:Landroid/widget/ImageView;

.field public mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

.field private mMainPageLayout:Landroid/view/View;

.field private mMainPageLeftArrow:Landroid/view/View;

.field public mMainPageNewArrow:Landroid/widget/ImageView;

.field private mMainPageRightArrow:Landroid/view/View;

.field private mMainPages:Landroidx/viewpager/widget/ViewPager;

.field private mMaoHaoBitmap:Landroid/graphics/Bitmap;

.field private mMusicArtist:Landroid/widget/TextView;

.field private mMusicTitle:Landroid/widget/TextView;

.field private mNumBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mPMQualityPicId:[I

.field private mPaint:Landroid/graphics/Paint;

.field mPmQualityArray:[Ljava/lang/String;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

.field private mSubPageLayout:Landroid/view/View;

.field private mSubPages:Landroidx/viewpager/widget/ViewPager;

.field private mSwitchIconView:Lcom/android/launcher2/popuView/SwitchIconView;

.field private mTimeBitmap:Landroid/graphics/Bitmap;

.field private mTimeBitmap2:Landroid/graphics/Bitmap;

.field private mTimeCanvas:Landroid/graphics/Canvas;

.field private mTimeCanvas2:Landroid/graphics/Canvas;

.field mWeatherPM25Layout:Landroid/widget/LinearLayout;

.field private musicArtist:Ljava/lang/String;

.field private musicTitle:Ljava/lang/String;

.field private rightEdge:Landroid/widget/EdgeEffect;

.field private systemStatusConnectObserver:Lcom/android/launcher2/popuView/MainCustomerJly$SystemStatusConnectObserver;

.field tv_city:Landroid/widget/TextView;

.field tv_date:Landroid/widget/TextView;

.field tv_date2:Landroid/widget/TextView;

.field tv_pm25:Landroid/widget/TextView;

.field tv_quality:Landroid/widget/TextView;

.field tv_temp:Landroid/widget/TextView;

.field tv_time:Landroid/widget/TextView;

.field tv_weather:Landroid/widget/TextView;

.field tv_week:Landroid/widget/TextView;

.field tv_week2:Landroid/widget/TextView;

.field private uiHandler:Lcom/android/launcher2/popuView/MainCustomerJly$UIHandler;

.field vAnalogClock:Landroid/view/View;

.field vDigitalClock:Landroid/view/View;

.field private weather:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/popuView/MainCustomerJly;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/popuView/MainCustomerJly;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 225
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    .line 102
    iput p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mGap:I

    const/16 p2, 0xa

    new-array p2, p2, [I

    .line 103
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mImageResArray:[I

    const/4 p2, 0x0

    new-array p3, p2, [I

    .line 107
    iput-object p3, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mIconsId:[I

    const/4 p3, 0x6

    new-array p3, p3, [I

    .line 113
    fill-array-data p3, :array_1

    iput-object p3, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mPMQualityPicId:[I

    const/4 p3, 0x0

    .line 118
    iput-object p3, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mPmQualityArray:[Ljava/lang/String;

    const/16 p3, 0xb

    new-array p3, p3, [I

    .line 121
    fill-array-data p3, :array_2

    iput-object p3, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mCarIcons:[I

    const/4 p3, 0x1

    .line 153
    iput p3, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->MSG_SHOWTIME:I

    const/16 v0, 0x1f40

    .line 154
    iput v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->AUTO_SHOWTIME_TIME:I

    .line 172
    new-instance v0, Lcom/android/launcher2/popuView/MainCustomerJly$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/MainCustomerJly$1;-><init>(Lcom/android/launcher2/popuView/MainCustomerJly;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, ""

    .line 462
    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->musicTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->musicArtist:Ljava/lang/String;

    .line 658
    iput-boolean p3, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mDotFlip:Z

    .line 226
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 228
    new-instance v0, Lcom/android/launcher2/popuView/MainCustomerJly$UIHandler;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/MainCustomerJly$UIHandler;-><init>(Lcom/android/launcher2/popuView/MainCustomerJly;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->uiHandler:Lcom/android/launcher2/popuView/MainCustomerJly$UIHandler;

    .line 229
    new-instance v0, Lcom/android/launcher2/popuView/MainCustomerJly$SystemStatusConnectObserver;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->uiHandler:Lcom/android/launcher2/popuView/MainCustomerJly$UIHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/popuView/MainCustomerJly$SystemStatusConnectObserver;-><init>(Lcom/android/launcher2/popuView/MainCustomerJly;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->systemStatusConnectObserver:Lcom/android/launcher2/popuView/MainCustomerJly$SystemStatusConnectObserver;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/popuView/MainCustomerJly;->conditionItems:[Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mNumBitmaps:Ljava/util/List;

    .line 233
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702dd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMaoHaoBitmap:Landroid/graphics/Bitmap;

    move v0, p2

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mImageResArray:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mNumBitmaps:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mImageResArray:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mPaint:Landroid/graphics/Paint;

    .line 238
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 242
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action.lexus.update360icon"

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 255
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mCalendar:Ljava/util/Calendar;

    .line 261
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 262
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 260
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mTimeBitmap:Landroid/graphics/Bitmap;

    .line 264
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mTimeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mTimeCanvas:Landroid/graphics/Canvas;

    .line 266
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 267
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 265
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mTimeBitmap2:Landroid/graphics/Bitmap;

    .line 269
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mTimeBitmap2:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mTimeCanvas2:Landroid/graphics/Canvas;

    .line 274
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 277
    invoke-virtual {p0, p2}, Lcom/android/launcher2/popuView/MainCustomerJly;->notifyStatusBar(I)V

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "content://com.carocean.status.provider/sys/SYS_BT_CONNECT_STATUS"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->systemStatusConnectObserver:Lcom/android/launcher2/popuView/MainCustomerJly$SystemStatusConnectObserver;

    invoke-virtual {p1, p2, p3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :array_0
    .array-data 4
        0x7f07034a
        0x7f07034b
        0x7f07034c
        0x7f07034d
        0x7f07034e
        0x7f07034f
        0x7f070350
        0x7f070351
        0x7f070352
        0x7f070353
    .end array-data

    :array_1
    .array-data 4
        0x7f070301
        0x7f070302
        0x7f070303
        0x7f070304
        0x7f070305
        0x7f070306
    .end array-data

    :array_2
    .array-data 4
        0x7f0702d1
        0x7f0702c7
        0x7f0702c8
        0x7f0702c9
        0x7f0702ca
        0x7f0702cb
        0x7f0702cc
        0x7f0702cd
        0x7f0702ce
        0x7f0702cf
        0x7f0702d0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/launcher2/popuView/MainCustomerJly;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->showMain1()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/popuView/MainCustomerJly;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->showMain2()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/launcher2/popuView/MainCustomerJly;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainMyBmw:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/popuView/MainCustomerJly;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->musicTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/popuView/MainCustomerJly;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->musicArtist:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/popuView/MainCustomerJly;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/popuView/MainCustomerJly;->updateMusicInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/launcher2/popuView/MainCustomerJly;)Lcom/android/launcher2/popuView/MainCustomerJly$UIHandler;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->uiHandler:Lcom/android/launcher2/popuView/MainCustomerJly$UIHandler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->leftEdge:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->rightEdge:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/popuView/MainCustomerJly;)Lcom/android/launcher2/Launcher;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSubPages:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher2/popuView/MainCustomerJly;)Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher2/popuView/MainCustomerJly;Landroid/content/Context;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->updateDateTime(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/popuView/MainCustomerJly;)I
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getNetWorkStatus()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/view/View;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageLeftArrow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/view/View;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageRightArrow:Landroid/view/View;

    return-object p0
.end method

.method private getBitmapsByTime([Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .locals 5

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    new-array v2, v0, [Landroid/graphics/Bitmap;

    :goto_0
    if-ge v1, v0, :cond_0

    .line 714
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 715
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mNumBitmaps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 717
    :catch_0
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMaoHaoBitmap:Landroid/graphics/Bitmap;

    aput-object v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getImageIdByCode(ILandroid/content/Context;)I
    .locals 3

    .line 787
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 788
    sget-object v1, Lcom/android/launcher2/popuView/MainCustomerJly;->conditionImages:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 789
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/popuView/MainCustomerJly;->conditionImages:[Ljava/lang/String;

    :cond_0
    if-ltz p0, :cond_1

    .line 792
    sget-object v1, Lcom/android/launcher2/popuView/MainCustomerJly;->conditionImages:[Ljava/lang/String;

    array-length v2, v1

    if-ge p0, v2, :cond_1

    .line 794
    :try_start_0
    aget-object p0, v1, p0

    const-string v1, "drawable"

    .line 795
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 794
    invoke-virtual {v0, p0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    const p0, 0x7f0700d2

    return p0
.end method

.method private getNetWorkStatus()I
    .locals 2

    .line 160
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 161
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 163
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private showHideTimeLater(Z)V
    .locals 4

    .line 516
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->uiHandler:Lcom/android/launcher2/popuView/MainCustomerJly$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popuView/MainCustomerJly$UIHandler;->removeMessages(I)V

    if-eqz p1, :cond_0

    .line 518
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->uiHandler:Lcom/android/launcher2/popuView/MainCustomerJly$UIHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/popuView/MainCustomerJly$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private showMain1()V
    .locals 3

    .line 836
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 837
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSubPageLayout:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 839
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->notifyStatusBar(I)V

    return-void
.end method

.method private showMain2()V
    .locals 2

    .line 843
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSubPageLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 846
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->notifyStatusBar(I)V

    return-void
.end method

.method private updateDateTime(Landroid/content/Context;)V
    .locals 2

    .line 644
    invoke-static {}, Lcom/android/launcher2/uitl/Utils;->getDate()Ljava/lang/String;

    move-result-object p1

    .line 645
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/uitl/Utils;->getCurrentWeek(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_date:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 648
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_week:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 650
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_date2:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 652
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    :cond_2
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_week2:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    .line 654
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private updateMusicInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMusicTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMusicArtist:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 470
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateTime()V
    .locals 5

    .line 661
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/uitl/Utils;->getHourMinute(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 662
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->iv_time:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 663
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mTimeCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mTimeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/android/launcher2/popuView/MainCustomerJly;->getTimeBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;[Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 664
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_time:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 665
    iget-boolean v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mDotFlip:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 668
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mDotFlip:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mDotFlip:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getPageCount()I
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageCount:I

    :goto_0
    return p0
.end method

.method public getSeletedPage()I
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->access$400(Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->access$400(Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;)I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageItemCount:I

    div-int v1, v0, p0

    :goto_0
    return v1
.end method

.method public getTimeBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;[Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p2, :cond_2

    .line 677
    sget-object p4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 678
    invoke-direct {p0, p3}, Lcom/android/launcher2/popuView/MainCustomerJly;->getBitmapsByTime([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object p3

    .line 679
    array-length p4, p3

    new-array p4, p4, [I

    .line 680
    array-length v1, p3

    new-array v1, v1, [I

    move v2, v0

    .line 681
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_2

    .line 683
    aget-object v3, p3, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    aput v3, p4, v2

    .line 684
    aget-object v3, p3, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    aput v3, v1, v2

    if-nez v2, :cond_0

    move v4, v0

    goto :goto_2

    :cond_0
    move v3, v0

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_1

    .line 692
    aget v5, p4, v3

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 697
    :cond_1
    :goto_2
    aget v3, p4, v2

    add-int/2addr v3, v4

    .line 698
    aget v5, v1, v2

    .line 700
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4, v0, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 701
    aget-object v3, p3, v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1676
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1677
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->handlerKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 1679
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->handlerKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public notifyStatusBar()V
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSubPageLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 829
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->notifyStatusBar(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 831
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->notifyStatusBar(I)V

    :goto_0
    return-void
.end method

.method public notifyStatusBar(I)V
    .locals 3

    .line 813
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    .line 814
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.yecon.action.systemui"

    .line 815
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "mode"

    .line 816
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p1, :cond_0

    const-string p1, "mainpage"

    .line 818
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    const-string p1, "subpage"

    .line 820
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    const-string p1, "allapp"

    .line 822
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 524
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 525
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->setMMIKeyRegion(I)V

    .line 527
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v2}, Lcom/carocean/navicar/MMIKeyHelper;->showSelectedStatus(Z)Z

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    goto :goto_0

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSubPageLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->access$500(Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;)Lcom/carocean/navicar/MMIKeyHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    .line 533
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 611
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onVideo(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 625
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onSettings(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 635
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onZLink(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 631
    :sswitch_3
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->snap2Right()V

    goto/16 :goto_1

    .line 628
    :sswitch_4
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->snap2Left()V

    goto/16 :goto_1

    .line 619
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onCarMedia(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 608
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onMusic(Landroid/content/Context;)V

    goto :goto_1

    .line 614
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onLCDvr(Landroid/content/Context;)V

    goto :goto_1

    .line 603
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onChrome(Landroid/content/Context;)V

    goto :goto_1

    .line 622
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onCarInfo(Landroid/content/Context;)V

    goto :goto_1

    .line 595
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onBT(Landroid/content/Context;)V

    goto :goto_1

    .line 583
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/Launcher;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    goto :goto_1

    .line 540
    :sswitch_c
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->clock:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const-string v0, "mc.clockweather"

    const/16 v3, 0x8

    if-nez p1, :cond_3

    .line 542
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->clock:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 543
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->weather:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 544
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 545
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 546
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 549
    :cond_3
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->clock:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 550
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->weather:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 552
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 553
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 567
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onNavigation(Landroid/content/Context;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f08003e -> :sswitch_d
        0x7f08004a -> :sswitch_c
        0x7f08005a -> :sswitch_b
        0x7f08005c -> :sswitch_a
        0x7f08005f -> :sswitch_9
        0x7f080069 -> :sswitch_8
        0x7f08006b -> :sswitch_7
        0x7f08006d -> :sswitch_6
        0x7f080071 -> :sswitch_5
        0x7f080075 -> :sswitch_d
        0x7f080078 -> :sswitch_4
        0x7f08007a -> :sswitch_3
        0x7f08007b -> :sswitch_2
        0x7f080084 -> :sswitch_1
        0x7f080090 -> :sswitch_0
        0x7f080092 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 285
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 288
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->setupViews()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 878
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080071

    if-ne p1, v0, :cond_0

    .line 879
    new-instance p1, Lcom/android/launcher2/popuView/CarFlagDialog;

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mCarIcons:[I

    invoke-direct {p1, v0, v1}, Lcom/android/launcher2/popuView/CarFlagDialog;-><init>(Landroid/content/Context;[I)V

    .line 880
    new-instance v0, Lcom/android/launcher2/popuView/MainCustomerJly$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/MainCustomerJly$2;-><init>(Lcom/android/launcher2/popuView/MainCustomerJly;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher2/popuView/CarFlagDialog;->setOnCarFlagChangedListener(Lcom/android/launcher2/popuView/CarFlagDialog$OnCarFlagChangedListener;)V

    .line 888
    invoke-virtual {p1}, Lcom/android/launcher2/popuView/CarFlagDialog;->show()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onShowAllApps()V
    .locals 0

    return-void
.end method

.method public onShowWorkspace()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 512
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTrimMemory()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 2

    .line 293
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 294
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->release()V

    .line 295
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 297
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method setClockVisibility()V
    .locals 3

    const-string v0, "persist.sys.clock_type"

    const/4 v1, 0x1

    .line 492
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->vAnalogClock:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 495
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->vDigitalClock:Landroid/view/View;

    if-eqz p0, :cond_3

    .line 496
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->vAnalogClock:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 501
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 502
    :cond_2
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->vDigitalClock:Landroid/view/View;

    if-eqz p0, :cond_3

    .line 503
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setPageIndex(II)V
    .locals 1

    .line 314
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSwitchIconView:Lcom/android/launcher2/popuView/SwitchIconView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 315
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/popuView/SwitchIconView;->setPackageIndex(IIZ)V

    :cond_0
    return-void
.end method

.method setupViews()V
    .locals 4

    .line 319
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mInflater:Landroid/view/LayoutInflater;

    .line 323
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mPmQualityArray:[Ljava/lang/String;

    const v1, 0x7f080086

    .line 325
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popuView/SwitchIconView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSwitchIconView:Lcom/android/launcher2/popuView/SwitchIconView;

    const v1, 0x7f08001c

    .line 327
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->clock:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f0800c6

    .line 331
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->weather:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 333
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v1, 0x7f080048

    .line 336
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    const v1, 0x7f08004a

    .line 341
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 343
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v1, 0x7f080041

    .line 347
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_week:Landroid/widget/TextView;

    const v1, 0x7f08003c

    .line 348
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_date:Landroid/widget/TextView;

    const v1, 0x7f0800b9

    .line 351
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_city:Landroid/widget/TextView;

    const v1, 0x7f0800bb

    .line 355
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_weather:Landroid/widget/TextView;

    const v1, 0x7f0800ba

    .line 359
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_temp:Landroid/widget/TextView;

    const v1, 0x7f08003f

    .line 364
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->iv_time:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 366
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 369
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->iv_time2:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 370
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_4
    const v1, 0x7f080049

    .line 372
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->iv_weather:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    const/16 v2, 0x96

    .line 374
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 375
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->iv_weather:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 377
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->iv_weather:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->iv_weather:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mWeatherPM25Layout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    const/16 v2, 0x8

    .line 387
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 391
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->updateDateTime(Landroid/content/Context;)V

    const v0, 0x7f08003d

    .line 393
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mLayoutDatetime:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 395
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const v0, 0x7f080040

    .line 397
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 399
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->vAnalogClock:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 403
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    :cond_9
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->vDigitalClock:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 407
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->setClockVisibility()V

    .line 413
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mIconsId:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_c

    aget v3, v0, v2

    .line 414
    invoke-virtual {p0, v3}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 416
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_c
    const v0, 0x7f080079

    .line 420
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageNewArrow:Landroid/widget/ImageView;

    const v0, 0x7f080078

    .line 421
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageLeftArrow:Landroid/view/View;

    .line 422
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageLeftArrow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08007a

    .line 424
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageRightArrow:Landroid/view/View;

    .line 425
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080050

    .line 426
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageLayout:Landroid/view/View;

    const v0, 0x7f080051

    .line 427
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSubPageLayout:Landroid/view/View;

    .line 428
    new-instance v0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;-><init>(Lcom/android/launcher2/popuView/MainCustomerJly;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    const v0, 0x7f080077

    .line 429
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    .line 430
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    .line 431
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    goto :goto_1

    .line 433
    :cond_d
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 436
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 438
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mLeftEdge"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mRightEdge"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    .line 444
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 445
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 446
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->leftEdge:Landroid/widget/EdgeEffect;

    .line 447
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->rightEdge:Landroid/widget/EdgeEffect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 453
    :cond_e
    :goto_2
    new-instance v0, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;-><init>(Lcom/android/launcher2/popuView/MainCustomerJly;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    const v0, 0x7f0800ac

    .line 454
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomerJly;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSubPages:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x2

    .line 455
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 457
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSubPages:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 459
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSubPages:Landroidx/viewpager/widget/ViewPager;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method public toggleMainSubView()V
    .locals 2

    .line 851
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 852
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 853
    invoke-direct {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->showMain2()V

    goto :goto_0

    .line 855
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->showMain1()V

    :cond_1
    :goto_0
    return-void
.end method

.method update360Icon()V
    .locals 2

    const-string v0, "persist.sys.ivicar.avm.enable"

    const/4 v1, 0x0

    .line 302
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/launcher2/LauncherApplication;->m360Type:I

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launcher1---360type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/launcher2/LauncherApplication;->m360Type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainCustomerJly"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->update360Icon()V

    .line 306
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->update360Icon()V

    return-void
.end method

.method updateBluetooth(Z)V
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->updateBluetooth(Z)V

    return-void
.end method

.method public updateCarIcon(I)V
    .locals 2

    .line 865
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainMyBmw:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const-string v0, "caricon"

    if-ltz p1, :cond_0

    .line 866
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mCarIcons:[I

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 867
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 869
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_1

    .line 870
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mCarIcons:[I

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 871
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainMyBmw:Landroid/widget/ImageView;

    aget p1, v0, p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public updateCity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 804
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "city_info"

    .line 806
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 807
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_city:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateUiTheme()V
    .locals 0

    .line 894
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->updateUiTheme()V

    return-void
.end method

.method public updateWeather(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 724
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_6

    const-string v0, "weather_info"

    .line 726
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 727
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launcher_yecon1:when update weather, jsonStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainCustomerJly"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-static {p2}, Lcom/android/launcher2/uitl/Utils;->parseWeatherJson(Ljava/lang/String;)Lcom/android/launcher2/uitl/Weather;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launcher_yecon1:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/android/launcher2/uitl/Weather;->cityname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/android/launcher2/uitl/Weather;->lowTemp:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p2, Lcom/android/launcher2/uitl/Weather;->highTemp:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p2, Lcom/android/launcher2/uitl/Weather;->pm25:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p2, Lcom/android/launcher2/uitl/Weather;->quality:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_city:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/launcher2/uitl/Weather;->cityname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget v0, p2, Lcom/android/launcher2/uitl/Weather;->code:I

    if-ltz v0, :cond_0

    iget v0, p2, Lcom/android/launcher2/uitl/Weather;->code:I

    sget-object v1, Lcom/android/launcher2/popuView/MainCustomerJly;->conditionItems:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_weather:Landroid/widget/TextView;

    iget v2, p2, Lcom/android/launcher2/uitl/Weather;->code:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/android/launcher2/uitl/Weather;->lowTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/launcher2/uitl/Weather;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/launcher2/uitl/Weather;->highTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/launcher2/uitl/Weather;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 739
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_temp:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/android/launcher2/uitl/Weather;->code:I

    .line 742
    invoke-static {v1, p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->getImageIdByCode(ILandroid/content/Context;)I

    move-result p1

    .line 741
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 744
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->iv_weather:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 747
    iget-object p1, p2, Lcom/android/launcher2/uitl/Weather;->pm25:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p1, p2, Lcom/android/launcher2/uitl/Weather;->quality:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->iv_pm25_pic:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_pm25:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_quality:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 752
    iget-object p1, p2, Lcom/android/launcher2/uitl/Weather;->pm25:Ljava/lang/String;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_4

    iget-object p1, p2, Lcom/android/launcher2/uitl/Weather;->pm25:Ljava/lang/String;

    const-string v1, "0.0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 753
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_pm25:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/launcher2/uitl/Weather;->pm25:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_quality:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/launcher2/uitl/Weather;->quality:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    move v1, p1

    .line 756
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mPmQualityArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 757
    iget-object v2, p2, Lcom/android/launcher2/uitl/Weather;->quality:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mPmQualityArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 758
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->iv_pm25_pic:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mPMQualityPicId:[I

    aget v1, v2, v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 759
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->iv_pm25_pic:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move p2, p1

    :goto_1
    if-nez p2, :cond_3

    .line 765
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->iv_pm25_pic:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 767
    :cond_3
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_pm25:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 768
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_quality:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 769
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mWeatherPM25Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 771
    :cond_4
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mWeatherPM25Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 772
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_pm25:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 773
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->tv_quality:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 774
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->iv_pm25_pic:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const-string p0, "launcher_yecon1:when update weather, weather=null"

    .line 780
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method
