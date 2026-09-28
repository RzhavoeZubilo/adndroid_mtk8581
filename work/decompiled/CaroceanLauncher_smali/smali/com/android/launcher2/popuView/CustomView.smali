.class public Lcom/android/launcher2/popuView/CustomView;
.super Landroid/widget/FrameLayout;
.source "CustomView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ACTION_CITY_INFO_UPDATE:Ljava/lang/String; = "com.autochips.action.city.INFO_UPDATE"

.field public static final ACTION_CLOCK_TYPE:Ljava/lang/String; = "com.yecon.action.ACTION_CLOCK_TYPE"

.field public static final ACTION_WEATHER_INFO_UPDATE:Ljava/lang/String; = "com.autochips.action.weathe.INFO_UPDATE"

.field public static final ACTION_WEATHER_ON_CLICK:Ljava/lang/String; = "com.autochips.action.weathe.ON_CLICK"

.field public static final PERSYS_CLOCK_TYPE:Ljava/lang/String; = "persist.sys.clock_type"

.field private static final TAG:Ljava/lang/String; = "MainCustomer"

.field public static conditionImages:[Ljava/lang/String;

.field private static conditionItems:[Ljava/lang/String;


# instance fields
.field iv_weather:Landroid/widget/ImageView;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCalendar:Ljava/util/Calendar;

.field private mContent:Landroid/widget/FrameLayout;

.field private final mGap:I

.field private mImageResArray:[I

.field mLayoutAnalogClock:Landroid/widget/LinearLayout;

.field mLayoutDatetime:Landroid/widget/LinearLayout;

.field private mMaoHaoBitmap:Landroid/graphics/Bitmap;

.field private mNumBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/graphics/Paint;

.field private mTimeBitmap:Landroid/graphics/Bitmap;

.field private mTimeCanvas:Landroid/graphics/Canvas;

.field private mWeekdays:[Ljava/lang/String;

.field private pmam:[Ljava/lang/String;

.field private time:[Ljava/lang/String;

.field tv_ampm:Landroid/widget/TextView;

.field tv_city:Landroid/widget/TextView;

.field tv_date:Landroid/widget/TextView;

.field tv_hour:Landroid/widget/TextView;

.field tv_minute:Landroid/widget/TextView;

.field tv_temp:Landroid/widget/TextView;

.field tv_weather:Landroid/widget/TextView;

.field tv_week:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/popuView/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/popuView/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    .line 72
    iput p2, p0, Lcom/android/launcher2/popuView/CustomView;->mGap:I

    const/16 p3, 0xa

    new-array p3, p3, [I

    .line 73
    fill-array-data p3, :array_0

    iput-object p3, p0, Lcom/android/launcher2/popuView/CustomView;->mImageResArray:[I

    .line 85
    new-instance p3, Lcom/android/launcher2/popuView/CustomView$1;

    invoke-direct {p3, p0}, Lcom/android/launcher2/popuView/CustomView$1;-><init>(Lcom/android/launcher2/popuView/CustomView;)V

    iput-object p3, p0, Lcom/android/launcher2/popuView/CustomView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string p3, "AM"

    const-string v0, "PM"

    .line 220
    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher2/popuView/CustomView;->pmam:[Ljava/lang/String;

    new-array p2, p2, [Ljava/lang/String;

    .line 221
    iput-object p2, p0, Lcom/android/launcher2/popuView/CustomView;->time:[Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f02000a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/launcher2/popuView/CustomView;->conditionItems:[Ljava/lang/String;

    .line 123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/popuView/CustomView;->mNumBitmaps:Ljava/util/List;

    .line 124
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CustomView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0702dd

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/CustomView;->mMaoHaoBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    move p2, p1

    .line 125
    :goto_0
    iget-object p3, p0, Lcom/android/launcher2/popuView/CustomView;->mImageResArray:[I

    array-length p3, p3

    if-ge p2, p3, :cond_0

    .line 126
    iget-object p3, p0, Lcom/android/launcher2/popuView/CustomView;->mNumBitmaps:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CustomView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->mImageResArray:[I

    aget v1, v1, p2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 128
    :cond_0
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher2/popuView/CustomView;->mPaint:Landroid/graphics/Paint;

    .line 129
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 130
    iget-object p1, p0, Lcom/android/launcher2/popuView/CustomView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 131
    iget-object p1, p0, Lcom/android/launcher2/popuView/CustomView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/CustomView;->mCalendar:Ljava/util/Calendar;

    .line 135
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CustomView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f020009

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/CustomView;->mWeekdays:[Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CustomView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06009c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 139
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CustomView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06009a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 137
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/CustomView;->mTimeBitmap:Landroid/graphics/Bitmap;

    .line 141
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/android/launcher2/popuView/CustomView;->mTimeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/android/launcher2/popuView/CustomView;->mTimeCanvas:Landroid/graphics/Canvas;

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
.end method

.method private getBitmapsByTime([Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .locals 5

    .line 286
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

    .line 292
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 293
    iget-object v4, p0, Lcom/android/launcher2/popuView/CustomView;->mNumBitmaps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 295
    :catch_0
    iget-object v3, p0, Lcom/android/launcher2/popuView/CustomView;->mMaoHaoBitmap:Landroid/graphics/Bitmap;

    aput-object v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getImageIdByCode(ILandroid/content/Context;)I
    .locals 3

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 327
    sget-object v1, Lcom/android/launcher2/popuView/CustomView;->conditionImages:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 328
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/popuView/CustomView;->conditionImages:[Ljava/lang/String;

    .line 332
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/launcher2/popuView/CustomView;->conditionImages:[Ljava/lang/String;

    aget-object p0, v1, p0

    const-string v1, "drawable"

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-virtual {v0, p0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const p0, 0x7f0700d2

    return p0
.end method


# virtual methods
.method public getTimeBitmap(Landroid/graphics/Bitmap;[Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8

    if-eqz p1, :cond_2

    .line 255
    iget-object p3, p0, Lcom/android/launcher2/popuView/CustomView;->mTimeCanvas:Landroid/graphics/Canvas;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 256
    invoke-direct {p0, p2}, Lcom/android/launcher2/popuView/CustomView;->getBitmapsByTime([Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object p2

    .line 257
    array-length p3, p2

    new-array p3, p3, [I

    .line 258
    array-length v0, p2

    new-array v0, v0, [I

    move v2, v1

    .line 259
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_2

    .line 261
    aget-object v3, p2, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    aput v3, p3, v2

    .line 262
    aget-object v3, p2, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    aput v3, v0, v2

    if-nez v2, :cond_0

    move v4, v1

    goto :goto_2

    :cond_0
    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_1

    .line 270
    aget v5, p3, v3

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 275
    :cond_1
    :goto_2
    aget v3, p3, v2

    add-int/2addr v3, v4

    .line 276
    aget v5, v0, v2

    .line 278
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4, v1, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 279
    iget-object v3, p0, Lcom/android/launcher2/popuView/CustomView;->mTimeCanvas:Landroid/graphics/Canvas;

    aget-object v4, p2, v2

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/launcher2/popuView/CustomView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 352
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.yecon.action.ACTION_CLOCK_TYPE"

    .line 353
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.action.weathe.INFO_UPDATE"

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.action.city.INFO_UPDATE"

    .line 355
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autochips.action.weathe.ON_CLICK"

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 357
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 358
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 359
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 360
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CustomView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/popuView/CustomView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 362
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 210
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CustomView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onCarlife(Landroid/content/Context;)V

    goto :goto_0

    .line 213
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CustomView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onSetWeatherCity(Landroid/content/Context;)V

    goto :goto_0

    .line 204
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CustomView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onSetDatetime(Landroid/content/Context;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f08002a -> :sswitch_2
        0x7f08002b -> :sswitch_1
        0x7f0800bd -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CustomView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 369
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 146
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f080052

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/CustomView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/launcher2/popuView/CustomView;->mContent:Landroid/widget/FrameLayout;

    .line 148
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CustomView;->resetLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 195
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method resetLayout()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/android/launcher2/popuView/CustomView;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/CustomView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a0064

    const/4 v3, 0x0

    .line 155
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/android/launcher2/popuView/CustomView;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 158
    iget-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->mContent:Landroid/widget/FrameLayout;

    const v2, 0x7f0800c7

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->tv_week:Landroid/widget/TextView;

    .line 159
    iget-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->mContent:Landroid/widget/FrameLayout;

    const v2, 0x7f08001d

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->tv_date:Landroid/widget/TextView;

    .line 160
    iget-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->mContent:Landroid/widget/FrameLayout;

    const v2, 0x7f080018

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->tv_city:Landroid/widget/TextView;

    .line 164
    iget-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->mContent:Landroid/widget/FrameLayout;

    const v2, 0x7f0800c4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->tv_weather:Landroid/widget/TextView;

    .line 168
    iget-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->mContent:Landroid/widget/FrameLayout;

    const v2, 0x7f0800b4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->tv_temp:Landroid/widget/TextView;

    .line 173
    iget-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->mContent:Landroid/widget/FrameLayout;

    const v2, 0x7f080036

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->tv_hour:Landroid/widget/TextView;

    .line 174
    iget-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->mContent:Landroid/widget/FrameLayout;

    const v2, 0x7f080094

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->tv_minute:Landroid/widget/TextView;

    .line 175
    iget-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->mContent:Landroid/widget/FrameLayout;

    const v2, 0x7f08009f

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->tv_ampm:Landroid/widget/TextView;

    .line 176
    iget-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->mContent:Landroid/widget/FrameLayout;

    const v2, 0x7f0800c5

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->iv_weather:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const/16 v2, 0x96

    .line 178
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 179
    iget-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->iv_weather:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 182
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 183
    iget-object v2, p0, Lcom/android/launcher2/popuView/CustomView;->iv_weather:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f08002a

    .line 185
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/CustomView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08002b

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/CustomView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0800bd

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popuView/CustomView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/CustomView;->updateDateTime(Landroid/content/Context;)V

    return-void
.end method

.method setClockVisibility()V
    .locals 3

    const-string v0, "persist.sys.clock_type"

    const/4 v1, 0x0

    .line 102
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/launcher2/popuView/CustomView;->mLayoutAnalogClock:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object p0, p0, Lcom/android/launcher2/popuView/CustomView;->mLayoutDatetime:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/CustomView;->mLayoutAnalogClock:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    iget-object p0, p0, Lcom/android/launcher2/popuView/CustomView;->mLayoutDatetime:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateCity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 341
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "city_info"

    .line 343
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 344
    iget-object p0, p0, Lcom/android/launcher2/popuView/CustomView;->tv_city:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public updateDateTime(Landroid/content/Context;)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/android/launcher2/popuView/CustomView;->tv_week:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/launcher2/uitl/Utils;->getCurrentWeek(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/android/launcher2/popuView/CustomView;->tv_date:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher2/uitl/Utils;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/android/launcher2/popuView/CustomView;->time:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/launcher2/uitl/Utils;->getHourMinute(Landroid/content/Context;[Ljava/lang/String;)I

    move-result p1

    .line 226
    iget-object v0, p0, Lcom/android/launcher2/popuView/CustomView;->tv_hour:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->time:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/android/launcher2/popuView/CustomView;->tv_minute:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->time:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/CustomView;->tv_ampm:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 229
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/popuView/CustomView;->tv_ampm:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/launcher2/popuView/CustomView;->pmam:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public updateWeather(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 302
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "weather_info"

    .line 304
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 305
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-static {p2}, Lcom/android/launcher2/uitl/Utils;->parseWeatherJson(Ljava/lang/String;)Lcom/android/launcher2/uitl/Weather;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/launcher2/popuView/CustomView;->tv_city:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/launcher2/uitl/Weather;->cityname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lcom/android/launcher2/popuView/CustomView;->tv_weather:Landroid/widget/TextView;

    sget-object v1, Lcom/android/launcher2/popuView/CustomView;->conditionItems:[Ljava/lang/String;

    iget v2, p2, Lcom/android/launcher2/uitl/Weather;->code:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/android/launcher2/uitl/Weather;->lowTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/launcher2/uitl/Weather;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/launcher2/uitl/Weather;->highTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/launcher2/uitl/Weather;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/android/launcher2/popuView/CustomView;->tv_temp:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p2, p2, Lcom/android/launcher2/uitl/Weather;->code:I

    .line 316
    invoke-static {p2, p1}, Lcom/android/launcher2/popuView/CustomView;->getImageIdByCode(ILandroid/content/Context;)I

    move-result p1

    .line 315
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 318
    iget-object p0, p0, Lcom/android/launcher2/popuView/CustomView;->iv_weather:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
