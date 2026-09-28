.class public Lcom/android/launcher2/popuView/MainCustomer;
.super Landroid/widget/FrameLayout;
.source "MainCustomer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popuView/MainCustomer$SystemStatusConnectObserver;,
        Lcom/android/launcher2/popuView/MainCustomer$UIHandler;,
        Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;,
        Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;,
        Lcom/android/launcher2/popuView/MainCustomer$MainPageTransformer;
    }
.end annotation


# static fields
.field public static final ACTION_CITY_INFO_UPDATE:Ljava/lang/String; = "com.autochips.action.city.INFO_UPDATE"

.field public static final ACTION_CLOCK_TYPE:Ljava/lang/String; = "com.yecon.action.ACTION_CLOCK_TYPE"

.field public static final ACTION_SWITCH_VIEW:Ljava/lang/String; = "com.yecon.action.ACTION_SWITCH_VIEW"

.field public static final ACTION_WEATHER_INFO_UPDATE:Ljava/lang/String; = "com.autochips.action.weathe.INFO_UPDATE"

.field public static final ACTION_WEATHER_ON_CLICK:Ljava/lang/String; = "com.autochips.action.weathe.ON_CLICK"

.field public static final ID8_PAGE_ADD1_COMPONENTNAME:Ljava/lang/String; = "id8.page.add1.componentname"

.field public static final ID8_PAGE_ADD_COMPONENTNAME:Ljava/lang/String; = "id8.page.add.componentname"

.field private static final MSG_START:I = 0x2710

.field private static final MSG_UPDATE_CAR_INFO:I = 0x2711

.field public static final PERSYS_CAR_FLAG_INDEX:Ljava/lang/String; = "persist.sys.car.flag.index"

.field public static final PERSYS_CLOCK_TYPE:Ljava/lang/String; = "persist.sys.clock_type"

.field public static final PERSYS_DVR_CVBS:Ljava/lang/String; = "persist.sys.dvr_cvbs"

.field public static final PERSYS_FRONT_CAMERA:Ljava/lang/String; = "persist.sys.front_camera"

.field public static final PERSYS_HOST_TYPE:Ljava/lang/String; = "persist.sys.host_type"

.field public static final PERSYS_ORIGINAL_BT:Ljava/lang/String; = "persist.sys.original_bt"

.field private static final PREFS_CLOCK_WEATHER:Ljava/lang/String; = "mc.clockweather"

.field public static final RO_RELEASE_CARPLAY:Ljava/lang/String; = "ro.release.car_play"

.field private static final TAG:Ljava/lang/String; = "MainCustomer"

.field private static final URI_MEDIA_MUSIC_INFO:Ljava/lang/String; = "content://com.carocean.status.provider/media/MEDIA_MUSIC_INFO"

.field private static final URI_SOURCE_ID:Ljava/lang/String; = "content://com.carocean.status.provider/sys/SYS_SOURCE_ID"

.field private static final URI_SYS_BT_CONNECT_STATUS:Ljava/lang/String; = "content://com.carocean.status.provider/sys/SYS_BT_CONNECT_STATUS"

.field public static conditionImages:[Ljava/lang/String;

.field private static conditionItems:[Ljava/lang/String;


# instance fields
.field private final AUTO_SHOWTIME_TIME:I

.field private final MSG_SHOWTIME:I

.field private clock:Landroid/view/View;

.field private compassManager:Lcom/android/launcher2/popuView/CompassManager;

.field private data0x12:[B

.field private data0x18:[B

.field iv_pm25_pic:Landroid/widget/ImageView;

.field iv_time:Landroid/widget/ImageView;

.field iv_time2:Landroid/widget/ImageView;

.field iv_weather:Landroid/widget/ImageView;

.field private leftEdge:Landroid/widget/EdgeEffect;

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCalendar:Ljava/util/Calendar;

.field private mCarBg:Landroid/widget/ImageView;

.field mCarFlagId:[I

.field private mDotFlip:Z

.field private final mGap:I

.field private final mIconsId:[I

.field private mImageResArray:[I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field mLayoutDatetime:Landroid/view/View;

.field private mMainMyBmw:Landroid/view/View;

.field public mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

.field public mMainPageBmwCar:Landroid/widget/ImageView;

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

.field private mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

.field private mSubPageLayout:Landroid/view/View;

.field private mSubPages:Landroidx/viewpager/widget/ViewPager;

.field private mSwitchIconView:Lcom/android/launcher2/popuView/SwitchIconView;

.field private mThemeTv:Landroid/widget/TextView;

.field private mTimeBitmap:Landroid/graphics/Bitmap;

.field private mTimeBitmap2:Landroid/graphics/Bitmap;

.field private mTimeCanvas:Landroid/graphics/Canvas;

.field private mTimeCanvas2:Landroid/graphics/Canvas;

.field mWeatherPM25Layout:Landroid/widget/LinearLayout;

.field private musicArtist:Ljava/lang/String;

.field private musicTitle:Ljava/lang/String;

.field private rightEdge:Landroid/widget/EdgeEffect;

.field private showOilUnitGal:Z

.field private showTempUnitF:Z

.field private systemStatusConnectObserver:Lcom/android/launcher2/popuView/MainCustomer$SystemStatusConnectObserver;

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

.field private uiHandler:Lcom/android/launcher2/popuView/MainCustomer$UIHandler;

.field vAnalogClock:Landroid/view/View;

.field vDigitalClock:Landroid/view/View;

.field private viewpagerRoot:Landroid/view/View;

.field private weather:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 253
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/popuView/MainCustomer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 257
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/popuView/MainCustomer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 261
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    .line 119
    iput p2, p0, Lcom/android/launcher2/popuView/MainCustomer;->mGap:I

    const/16 p2, 0xa

    new-array p3, p2, [I

    .line 120
    fill-array-data p3, :array_0

    iput-object p3, p0, Lcom/android/launcher2/popuView/MainCustomer;->mImageResArray:[I

    const/4 p3, 0x0

    new-array v0, p3, [I

    .line 124
    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mIconsId:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 130
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mPMQualityPicId:[I

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mPmQualityArray:[Ljava/lang/String;

    new-array p2, p2, [I

    .line 147
    fill-array-data p2, :array_2

    iput-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer;->mCarFlagId:[I

    const/4 p2, 0x1

    .line 173
    iput p2, p0, Lcom/android/launcher2/popuView/MainCustomer;->MSG_SHOWTIME:I

    const/16 v0, 0x1f40

    .line 174
    iput v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->AUTO_SHOWTIME_TIME:I

    .line 193
    new-instance v0, Lcom/android/launcher2/popuView/MainCustomer$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/MainCustomer$1;-><init>(Lcom/android/launcher2/popuView/MainCustomer;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 248
    iput-boolean p3, p0, Lcom/android/launcher2/popuView/MainCustomer;->showTempUnitF:Z

    .line 249
    iput-boolean p3, p0, Lcom/android/launcher2/popuView/MainCustomer;->showOilUnitGal:Z

    const-string v0, ""

    .line 514
    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->musicTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->musicArtist:Ljava/lang/String;

    .line 739
    iput-boolean p2, p0, Lcom/android/launcher2/popuView/MainCustomer;->mDotFlip:Z

    .line 262
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/Launcher;

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mApps:Ljava/util/ArrayList;

    .line 265
    new-instance v0, Lcom/android/launcher2/popuView/MainCustomer$UIHandler;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/MainCustomer$UIHandler;-><init>(Lcom/android/launcher2/popuView/MainCustomer;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->uiHandler:Lcom/android/launcher2/popuView/MainCustomer$UIHandler;

    .line 266
    new-instance v0, Lcom/android/launcher2/popuView/MainCustomer$SystemStatusConnectObserver;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->uiHandler:Lcom/android/launcher2/popuView/MainCustomer$UIHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/popuView/MainCustomer$SystemStatusConnectObserver;-><init>(Lcom/android/launcher2/popuView/MainCustomer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->systemStatusConnectObserver:Lcom/android/launcher2/popuView/MainCustomer$SystemStatusConnectObserver;

    const-string v0, "persist.sys.temp_unit_f"

    .line 268
    invoke-static {v0, p3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->showTempUnitF:Z

    const-string v0, "persist.sys.oil_uint_gal"

    .line 269
    invoke-static {v0, p3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p2, :cond_1

    move v0, p2

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    iput-boolean v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->showOilUnitGal:Z

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/popuView/MainCustomer;->conditionItems:[Ljava/lang/String;

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mNumBitmaps:Ljava/util/List;

    .line 273
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702dd

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMaoHaoBitmap:Landroid/graphics/Bitmap;

    move v0, p3

    .line 274
    :goto_2
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mImageResArray:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 275
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mNumBitmaps:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer;->mImageResArray:[I

    aget v3, v3, v0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 277
    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mPaint:Landroid/graphics/Paint;

    .line 278
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 279
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 280
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 282
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "action.lexus.update360icon"

    .line 294
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 295
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.carocean.action.SAVE_FACTORY_DATA"

    .line 296
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mCalendar:Ljava/util/Calendar;

    .line 302
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 301
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mTimeBitmap:Landroid/graphics/Bitmap;

    .line 305
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mTimeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mTimeCanvas:Landroid/graphics/Canvas;

    .line 307
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 308
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 306
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mTimeBitmap2:Landroid/graphics/Bitmap;

    .line 310
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mTimeBitmap2:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mTimeCanvas2:Landroid/graphics/Canvas;

    .line 315
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 318
    invoke-virtual {p0, p3}, Lcom/android/launcher2/popuView/MainCustomer;->notifyStatusBar(I)V

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "content://com.carocean.status.provider/sys/SYS_BT_CONNECT_STATUS"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->systemStatusConnectObserver:Lcom/android/launcher2/popuView/MainCustomer$SystemStatusConnectObserver;

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "content://com.carocean.status.provider/media/MEDIA_MUSIC_INFO"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->systemStatusConnectObserver:Lcom/android/launcher2/popuView/MainCustomer$SystemStatusConnectObserver;

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "content://com.carocean.status.provider/sys/SYS_SOURCE_ID"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->systemStatusConnectObserver:Lcom/android/launcher2/popuView/MainCustomer$SystemStatusConnectObserver;

    invoke-virtual {p1, p3, p2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

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
        0x7f0702df
        0x7f0702e0
        0x7f0702e1
        0x7f0702e2
        0x7f0702e3
        0x7f0702e4
        0x7f0702e5
        0x7f0702e6
        0x7f0702e7
        0x7f0702e8
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/launcher2/popuView/MainCustomer;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/launcher2/popuView/MainCustomer;->showMain1()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/popuView/MainCustomer;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/launcher2/popuView/MainCustomer;->showMain2()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/content/SharedPreferences;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/popuView/MainCustomer;)I
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getNetWorkStatus()I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/view/View;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageLeftArrow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/view/View;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageRightArrow:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/launcher2/popuView/MainCustomer;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainMyBmw:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/launcher2/popuView/MainCustomer;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMusicTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/android/launcher2/popuView/MainCustomer;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMusicArtist:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/widget/TextView;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mThemeTv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/android/launcher2/popuView/MainCustomer;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mThemeTv:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/popuView/MainCustomer;)Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/launcher2/popuView/MainCustomer;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->musicTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/launcher2/popuView/MainCustomer;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->musicArtist:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/launcher2/popuView/MainCustomer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/popuView/MainCustomer;->updateMusicInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/launcher2/popuView/MainCustomer;)Lcom/android/launcher2/popuView/MainCustomer$UIHandler;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->uiHandler:Lcom/android/launcher2/popuView/MainCustomer$UIHandler;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/launcher2/popuView/MainCustomer;)Ljava/util/ArrayList;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mApps:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/android/launcher2/popuView/MainCustomer;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mApps:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/launcher2/popuView/MainCustomer;Ljava/util/List;Ljava/lang/String;)Lcom/android/launcher2/ApplicationInfo;
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/popuView/MainCustomer;->findAppByComponentName(Ljava/util/List;Ljava/lang/String;)Lcom/android/launcher2/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->leftEdge:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->rightEdge:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/launcher2/popuView/MainCustomer;)Lcom/android/launcher2/Launcher;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/launcher2/popuView/MainCustomer;Ljava/util/ArrayList;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/popuView/MainCustomer;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->showOilUnitGal:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/android/launcher2/popuView/MainCustomer;Ljava/util/ArrayList;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/launcher2/popuView/MainCustomer;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->showOilUnitGal:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/launcher2/popuView/MainCustomer;Ljava/util/ArrayList;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->removeAppsWithPackageNameWithoutInvalidate(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/launcher2/popuView/MainCustomer;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPages:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/launcher2/popuView/MainCustomer;I[B)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/popuView/MainCustomer;->updateCarInfo(I[B)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/launcher2/popuView/MainCustomer;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/launcher2/popuView/MainCustomer;->dealSourceChangedEvent()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/popuView/MainCustomer;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->showTempUnitF:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/launcher2/popuView/MainCustomer;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->showTempUnitF:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher2/popuView/MainCustomer;)[B
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->data0x12:[B

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/launcher2/popuView/MainCustomer;[B)[B
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->data0x12:[B

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/launcher2/popuView/MainCustomer;)[B
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->data0x18:[B

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/launcher2/popuView/MainCustomer;[B)[B
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->data0x18:[B

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/launcher2/popuView/MainCustomer;Landroid/content/Context;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->updateDateTime(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/popuView/MainCustomer;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method private addAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1077
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1079
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 1080
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer;->mApps:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getAppNameComparator()Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v3, v2, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    if-gez v3, :cond_0

    .line 1083
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomer;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    sget-boolean v4, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1085
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAppsWithoutInvalidate: mApps size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MainCustomer"

    invoke-static {v3, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dealSourceChangedEvent()V
    .locals 4

    .line 2509
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys"

    const-string v2, "SYS_SOURCE_ID"

    const/4 v3, -0x1

    invoke-static {v1, v0, v2, v3}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 2513
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://com.carocean.status.provider/media"

    const-string v3, "MEDIA_MUSIC_INFO"

    .line 2512
    invoke-static {v2, v0, v3}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/Navi$Status$MediaMusicInfo;

    if-eqz v0, :cond_4

    .line 2515
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer;->musicTitle:Ljava/lang/String;

    iget-object v3, v0, Lcom/carocean/navicar/Navi$Status$MediaMusicInfo;->title:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer;->musicArtist:Ljava/lang/String;

    iget-object v3, v0, Lcom/carocean/navicar/Navi$Status$MediaMusicInfo;->artist:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2516
    :cond_0
    iget-object v2, v0, Lcom/carocean/navicar/Navi$Status$MediaMusicInfo;->title:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer;->musicTitle:Ljava/lang/String;

    .line 2517
    iget-object v0, v0, Lcom/carocean/navicar/Navi$Status$MediaMusicInfo;->artist:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->musicArtist:Ljava/lang/String;

    .line 2518
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->musicTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2519
    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->musicTitle:Ljava/lang/String;

    .line 2521
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->musicArtist:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2522
    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->musicArtist:Ljava/lang/String;

    .line 2524
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->musicTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->musicArtist:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/popuView/MainCustomer;->updateMusicInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2528
    :cond_3
    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->musicArtist:Ljava/lang/String;

    .line 2529
    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->musicTitle:Ljava/lang/String;

    .line 2530
    invoke-direct {p0, v1, v1}, Lcom/android/launcher2/popuView/MainCustomer;->updateMusicInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private findAppByComponent(Ljava/util/List;Lcom/android/launcher2/ApplicationInfo;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Lcom/android/launcher2/ApplicationInfo;",
            ")I"
        }
    .end annotation

    .line 1053
    iget-object p0, p2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    .line 1054
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 1056
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 1057
    iget-object v1, v1, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private findAppByComponentName(Ljava/util/List;Ljava/lang/String;)Lcom/android/launcher2/ApplicationInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/launcher2/ApplicationInfo;"
        }
    .end annotation

    .line 1065
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 1067
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 1068
    iget-object v2, v1, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private findAppByPackage(Ljava/util/List;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 1104
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1106
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 1107
    iget-object v3, v2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-static {v3}, Lcom/android/launcher2/ItemInfo;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1112
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 1113
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 1112
    invoke-static {v3, v4}, Lcom/android/launcher2/Utilities;->isComponentEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    .line 1114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findAppByPackage: i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 1115
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",isComponentEnabled = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MainCustomer"

    .line 1114
    invoke-static {v4, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getBitmapsByTime([Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .locals 5

    .line 789
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

    .line 795
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 796
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomer;->mNumBitmaps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 798
    :catch_0
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMaoHaoBitmap:Landroid/graphics/Bitmap;

    aput-object v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getImageIdByCode(ILandroid/content/Context;)I
    .locals 3

    .line 868
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 869
    sget-object v1, Lcom/android/launcher2/popuView/MainCustomer;->conditionImages:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 870
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/popuView/MainCustomer;->conditionImages:[Ljava/lang/String;

    :cond_0
    if-ltz p0, :cond_1

    .line 873
    sget-object v1, Lcom/android/launcher2/popuView/MainCustomer;->conditionImages:[Ljava/lang/String;

    array-length v2, v1

    if-ge p0, v2, :cond_1

    .line 875
    :try_start_0
    aget-object p0, v1, p0

    const-string v1, "drawable"

    .line 876
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 875
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

    .line 181
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 182
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 184
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 186
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

.method private removeAppsWithPackageNameWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1094
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1095
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/popuView/MainCustomer;->findAppByPackage(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 1097
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1098
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/popuView/MainCustomer;->findAppByPackage(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1038
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1040
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 1041
    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v2}, Lcom/android/launcher2/popuView/MainCustomer;->findAppByComponent(Ljava/util/List;Lcom/android/launcher2/ApplicationInfo;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 1043
    iget-object v4, p0, Lcom/android/launcher2/popuView/MainCustomer;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1044
    sget-boolean v4, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1045
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAppsWithoutInvalidate: removeIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ApplicationInfo info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MainCustomer"

    invoke-static {v3, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showHideTimeLater(Z)V
    .locals 4

    .line 568
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->uiHandler:Lcom/android/launcher2/popuView/MainCustomer$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popuView/MainCustomer$UIHandler;->removeMessages(I)V

    if-eqz p1, :cond_0

    .line 570
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->uiHandler:Lcom/android/launcher2/popuView/MainCustomer$UIHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/popuView/MainCustomer$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private showMain1()V
    .locals 3

    .line 917
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 918
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageLayout:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 920
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomer;->notifyStatusBar(I)V

    return-void
.end method

.method private showMain2()V
    .locals 2

    .line 924
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 927
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomer;->notifyStatusBar(I)V

    return-void
.end method

.method private updateCarInfo(I[B)V
    .locals 0

    .line 2452
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateCarInfo(I[B)V

    return-void
.end method

.method private updateDateTime(Landroid/content/Context;)V
    .locals 2

    .line 725
    invoke-static {}, Lcom/android/launcher2/uitl/Utils;->getDate()Ljava/lang/String;

    move-result-object p1

    .line 726
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/uitl/Utils;->getCurrentWeek(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 728
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_date:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 729
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_week:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 731
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_date2:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 733
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    :cond_2
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_week2:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    .line 735
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private updateMusicInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMusicTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMusicArtist:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    .line 522
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateTime()V
    .locals 5

    .line 742
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/uitl/Utils;->getHourMinute(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 743
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->iv_time:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 744
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer;->mTimeCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer;->mTimeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/android/launcher2/popuView/MainCustomer;->getTimeBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;[Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 745
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_time:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 746
    iget-boolean v2, p0, Lcom/android/launcher2/popuView/MainCustomer;->mDotFlip:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 747
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

    .line 749
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

    .line 751
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mDotFlip:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mDotFlip:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1015
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1019
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->addApps(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1021
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->addApps(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public enableID8Animator()Z
    .locals 1

    .line 2432
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2433
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2434
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->enableID8Animator()Z

    move-result p0

    return p0

    .line 2436
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->enableID8Animator()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getPageCount()I
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageCount:I

    :goto_0
    return p0
.end method

.method public getSeletedPage()I
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->access$900(Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->access$900(Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;)I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    div-int v1, v0, p0

    :goto_0
    return v1
.end method

.method public getTimeBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;[Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p2, :cond_2

    .line 758
    sget-object p4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 759
    invoke-direct {p0, p3}, Lcom/android/launcher2/popuView/MainCustomer;->getBitmapsByTime([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object p3

    .line 760
    array-length p4, p3

    new-array p4, p4, [I

    .line 761
    array-length v1, p3

    new-array v1, v1, [I

    move v2, v0

    .line 762
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_2

    .line 764
    aget-object v3, p3, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    aput v3, p4, v2

    .line 765
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

    .line 773
    aget v5, p4, v3

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 778
    :cond_1
    :goto_2
    aget v3, p4, v2

    add-int/2addr v3, v4

    .line 779
    aget v5, v1, v2

    .line 781
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4, v0, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 782
    aget-object v3, p3, v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher2/popuView/MainCustomer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 2444
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2445
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->handlerKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 2447
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->handlerKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public notifyStatusBar()V
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 910
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomer;->notifyStatusBar(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 912
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomer;->notifyStatusBar(I)V

    :goto_0
    return-void
.end method

.method public notifyStatusBar(I)V
    .locals 3

    .line 894
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    .line 895
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.yecon.action.systemui"

    .line 896
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "mode"

    .line 897
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p1, :cond_0

    const-string p1, "mainpage"

    .line 899
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    const-string p1, "subpage"

    .line 901
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    const-string p1, "allapp"

    .line 903
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 576
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 577
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->setMMIKeyRegion(I)V

    .line 579
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v2}, Lcom/carocean/navicar/MMIKeyHelper;->showSelectedStatus(Z)Z

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object v0, v0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    goto :goto_0

    .line 582
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 583
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-static {v0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->access$1000(Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;)Lcom/carocean/navicar/MMIKeyHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    .line 585
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 664
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onVideo(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 692
    :sswitch_1
    new-instance p1, Lcom/android/launcher2/popuView/ID8ThemeDialog;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/launcher2/popuView/ID8ThemeDialog;-><init>(Landroid/content/Context;)V

    .line 693
    invoke-virtual {p1}, Lcom/android/launcher2/popuView/ID8ThemeDialog;->show()V

    goto/16 :goto_1

    .line 679
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onSettings(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 689
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onZLink(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 685
    :sswitch_4
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->snap2Right()V

    goto/16 :goto_1

    .line 682
    :sswitch_5
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->snap2Left()V

    goto/16 :goto_1

    .line 673
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onCarMedia(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 661
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onMusic(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 667
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onLCDvr(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 656
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onChrome(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 670
    :sswitch_a
    invoke-static {}, Lcom/android/launcher2/uitl/Function;->openRear360()V

    goto/16 :goto_1

    .line 676
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onCarInfo(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 647
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onBT(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 653
    :sswitch_d
    invoke-static {}, Lcom/android/launcher2/uitl/Function;->onAUX()V

    goto/16 :goto_1

    .line 635
    :sswitch_e
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/Launcher;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->onClickAllAppsButton(Landroid/view/View;)V

    goto/16 :goto_1

    .line 715
    :sswitch_f
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "id8.page.add.componentname"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 716
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->access$1200(Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;)V

    goto :goto_1

    .line 696
    :sswitch_10
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v0, :cond_4

    .line 698
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object p1, v0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/launcher2/uitl/Function;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_1

    .line 700
    :cond_4
    new-instance v0, Lcom/android/launcher2/popuView/ID8AddViewDialog;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer;->mApps:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/popuView/ID8AddViewDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 701
    new-instance v1, Lcom/android/launcher2/popuView/MainCustomer$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/popuView/MainCustomer$3;-><init>(Lcom/android/launcher2/popuView/MainCustomer;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->setOnAppSelecteChangedListener(Lcom/android/launcher2/popuView/ID8AddViewDialog$OnAppSelectedChangedListener;)V

    .line 710
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->setViewID(I)V

    .line 711
    invoke-virtual {v0}, Lcom/android/launcher2/popuView/ID8AddViewDialog;->show()V

    goto :goto_1

    .line 592
    :sswitch_11
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->clock:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const-string v0, "mc.clockweather"

    const/16 v3, 0x8

    if-nez p1, :cond_5

    .line 594
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->clock:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 595
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->weather:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 596
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 597
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 598
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 601
    :cond_5
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->clock:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 602
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->weather:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 603
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 604
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 605
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 619
    :sswitch_12
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onNavigation(Landroid/content/Context;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f08003e -> :sswitch_12
        0x7f08004a -> :sswitch_11
        0x7f080056 -> :sswitch_10
        0x7f080057 -> :sswitch_f
        0x7f08005a -> :sswitch_e
        0x7f08005b -> :sswitch_d
        0x7f08005c -> :sswitch_c
        0x7f08005f -> :sswitch_b
        0x7f080066 -> :sswitch_a
        0x7f080069 -> :sswitch_9
        0x7f08006b -> :sswitch_8
        0x7f08006d -> :sswitch_7
        0x7f080071 -> :sswitch_6
        0x7f080075 -> :sswitch_12
        0x7f080078 -> :sswitch_5
        0x7f08007a -> :sswitch_4
        0x7f08007b -> :sswitch_3
        0x7f080084 -> :sswitch_2
        0x7f080087 -> :sswitch_1
        0x7f080090 -> :sswitch_0
        0x7f080092 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 328
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 331
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->setupViews()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 964
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080071

    if-ne p1, v0, :cond_0

    .line 965
    new-instance p1, Lcom/android/launcher2/popuView/CarFlagDialog;

    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mCarFlagId:[I

    invoke-direct {p1, v0, v1}, Lcom/android/launcher2/popuView/CarFlagDialog;-><init>(Landroid/content/Context;[I)V

    .line 966
    new-instance v0, Lcom/android/launcher2/popuView/MainCustomer$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/MainCustomer$4;-><init>(Lcom/android/launcher2/popuView/MainCustomer;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher2/popuView/CarFlagDialog;->setOnCarFlagChangedListener(Lcom/android/launcher2/popuView/CarFlagDialog$OnCarFlagChangedListener;)V

    .line 976
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

    .line 564
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTrimMemory()V
    .locals 0

    return-void
.end method

.method public refreshCarInfoViews(I[B)V
    .locals 2

    .line 2456
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->uiHandler:Lcom/android/launcher2/popuView/MainCustomer$UIHandler;

    const/16 v0, 0x2711

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/launcher2/popuView/MainCustomer$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$UIHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public release()V
    .locals 2

    .line 336
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 337
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->release()V

    .line 338
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 340
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1026
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1030
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->removeApps(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1032
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->removeApps(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1004
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1008
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->setApps(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1010
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->setApps(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method setClockVisibility()V
    .locals 3

    const-string v0, "persist.sys.clock_type"

    const/4 v1, 0x1

    .line 544
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->vAnalogClock:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 547
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->vDigitalClock:Landroid/view/View;

    if-eqz p0, :cond_3

    .line 548
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 552
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->vAnalogClock:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 553
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 554
    :cond_2
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->vDigitalClock:Landroid/view/View;

    if-eqz p0, :cond_3

    .line 555
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setPageIndex(II)V
    .locals 1

    .line 361
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSwitchIconView:Lcom/android/launcher2/popuView/SwitchIconView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 362
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/popuView/SwitchIconView;->setPackageIndex(IIZ)V

    :cond_0
    return-void
.end method

.method setupViews()V
    .locals 4

    .line 366
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 368
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mInflater:Landroid/view/LayoutInflater;

    .line 370
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mPmQualityArray:[Ljava/lang/String;

    const v1, 0x7f080086

    .line 372
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popuView/SwitchIconView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSwitchIconView:Lcom/android/launcher2/popuView/SwitchIconView;

    const v1, 0x7f08001c

    .line 374
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->clock:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f0800c6

    .line 378
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->weather:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 380
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v1, 0x7f080048

    .line 383
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    const v1, 0x7f08004a

    .line 388
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 390
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v1, 0x7f080041

    .line 394
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_week:Landroid/widget/TextView;

    const v1, 0x7f08003c

    .line 395
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_date:Landroid/widget/TextView;

    const v1, 0x7f0800b9

    .line 398
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_city:Landroid/widget/TextView;

    const v1, 0x7f0800bb

    .line 402
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_weather:Landroid/widget/TextView;

    const v1, 0x7f0800ba

    .line 406
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_temp:Landroid/widget/TextView;

    const v1, 0x7f08003f

    .line 411
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->iv_time:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 413
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 416
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->iv_time2:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 417
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_4
    const v1, 0x7f080049

    .line 419
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->iv_weather:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    const/16 v2, 0x96

    .line 421
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 422
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->iv_weather:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 423
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 424
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer;->iv_weather:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->iv_weather:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mWeatherPM25Layout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    const/16 v2, 0x8

    .line 434
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 438
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/launcher2/popuView/MainCustomer;->updateDateTime(Landroid/content/Context;)V

    const v0, 0x7f08003d

    .line 440
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mLayoutDatetime:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 442
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const v0, 0x7f080040

    .line 444
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 446
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->vAnalogClock:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 450
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    :cond_9
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->vDigitalClock:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 454
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    :cond_a
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->setClockVisibility()V

    .line 460
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mIconsId:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_c

    aget v3, v0, v2

    .line 461
    invoke-virtual {p0, v3}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 463
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_c
    const v0, 0x7f080079

    .line 467
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageNewArrow:Landroid/widget/ImageView;

    const v0, 0x7f080078

    .line 468
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageLeftArrow:Landroid/view/View;

    .line 469
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageLeftArrow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08007a

    .line 471
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageRightArrow:Landroid/view/View;

    .line 472
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080050

    .line 473
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageLayout:Landroid/view/View;

    const v0, 0x7f080051

    .line 474
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageLayout:Landroid/view/View;

    .line 475
    new-instance v0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;-><init>(Lcom/android/launcher2/popuView/MainCustomer;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    const v0, 0x7f080077

    .line 476
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    .line 477
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 479
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 481
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v0, 0x7f0800bf

    .line 482
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->viewpagerRoot:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 484
    new-instance v1, Lcom/android/launcher2/popuView/MainCustomer$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/popuView/MainCustomer$2;-><init>(Lcom/android/launcher2/popuView/MainCustomer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 493
    :cond_d
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mLeftEdge"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mRightEdge"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 496
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 497
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 498
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->leftEdge:Landroid/widget/EdgeEffect;

    .line 499
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPages:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->rightEdge:Landroid/widget/EdgeEffect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 505
    :cond_e
    :goto_1
    new-instance v0, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;-><init>(Lcom/android/launcher2/popuView/MainCustomer;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    const v0, 0x7f0800ac

    .line 506
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/MainCustomer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPages:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x2

    .line 507
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 509
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPages:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 511
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPages:Landroidx/viewpager/widget/ViewPager;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method public toggleMainSubView()V
    .locals 1

    .line 932
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    if-nez v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 934
    invoke-direct {p0}, Lcom/android/launcher2/popuView/MainCustomer;->showMain2()V

    goto :goto_0

    .line 936
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/popuView/MainCustomer;->showMain1()V

    :cond_1
    :goto_0
    return-void
.end method

.method update360Icon()V
    .locals 2

    const-string v0, "persist.sys.ivicar.avm.enable"

    const/4 v1, 0x0

    .line 345
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/launcher2/LauncherApplication;->m360Type:I

    .line 347
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

    const-string v1, "MainCustomer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->update360Icon()V

    .line 349
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->update360Icon()V

    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 993
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 997
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateApps(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 999
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->updateApps(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method updateBluetooth(Z)V
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateBluetooth(Z)V

    return-void
.end method

.method public updateCarIcon(Z)V
    .locals 4

    .line 946
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isMRWCustomer()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 947
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainMyBmw:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 948
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "caricon"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 951
    :goto_0
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    .line 954
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainMyBmw:Landroid/view/View;

    const p1, 0x7f070091

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 956
    :cond_2
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainMyBmw:Landroid/view/View;

    const p1, 0x7f070092

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateCity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 885
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "city_info"

    .line 887
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 888
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_city:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateID8Theme(I)V
    .locals 1

    .line 982
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 986
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateID8Theme(I)V

    goto :goto_0

    .line 988
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mSubPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->updateID8Theme(I)V

    :goto_0
    return-void
.end method

.method updateMainPageBmwCar(I)V
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->updateMainPageBmwCar(I)V

    return-void
.end method

.method public updateWeather(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 805
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_6

    const-string v0, "weather_info"

    .line 807
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 808
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launcher_yecon1:when update weather, jsonStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainCustomer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-static {p2}, Lcom/android/launcher2/uitl/Utils;->parseWeatherJson(Ljava/lang/String;)Lcom/android/launcher2/uitl/Weather;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 812
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

    .line 814
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_city:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/launcher2/uitl/Weather;->cityname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 815
    iget v0, p2, Lcom/android/launcher2/uitl/Weather;->code:I

    if-ltz v0, :cond_0

    iget v0, p2, Lcom/android/launcher2/uitl/Weather;->code:I

    sget-object v1, Lcom/android/launcher2/popuView/MainCustomer;->conditionItems:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_weather:Landroid/widget/TextView;

    iget v2, p2, Lcom/android/launcher2/uitl/Weather;->code:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 818
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

    .line 820
    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_temp:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lcom/android/launcher2/uitl/Weather;->code:I

    .line 823
    invoke-static {v1, p1}, Lcom/android/launcher2/popuView/MainCustomer;->getImageIdByCode(ILandroid/content/Context;)I

    move-result p1

    .line 822
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 825
    iget-object v0, p0, Lcom/android/launcher2/popuView/MainCustomer;->iv_weather:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 828
    iget-object p1, p2, Lcom/android/launcher2/uitl/Weather;->pm25:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p1, p2, Lcom/android/launcher2/uitl/Weather;->quality:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->iv_pm25_pic:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_pm25:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_quality:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 833
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

    .line 834
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_pm25:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/launcher2/uitl/Weather;->pm25:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_quality:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/launcher2/uitl/Weather;->quality:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    move v1, p1

    .line 837
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer;->mPmQualityArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 838
    iget-object v2, p2, Lcom/android/launcher2/uitl/Weather;->quality:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher2/popuView/MainCustomer;->mPmQualityArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 839
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer;->iv_pm25_pic:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher2/popuView/MainCustomer;->mPMQualityPicId:[I

    aget v1, v2, v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 840
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer;->iv_pm25_pic:Landroid/widget/ImageView;

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

    .line 846
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer;->iv_pm25_pic:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 848
    :cond_3
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_pm25:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 849
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_quality:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 850
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mWeatherPM25Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 852
    :cond_4
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->mWeatherPM25Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 853
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_pm25:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 854
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer;->tv_quality:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 855
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->iv_pm25_pic:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    const-string p0, "launcher_yecon1:when update weather, weather=null"

    .line 861
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method
