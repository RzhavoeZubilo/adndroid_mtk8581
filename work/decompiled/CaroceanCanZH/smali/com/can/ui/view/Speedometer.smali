.class public Lcom/can/ui/view/Speedometer;
.super Landroid/view/View;
.source "Speedometer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/ui/view/Speedometer$MyInterpolator;,
        Lcom/can/ui/view/Speedometer$Mode;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "Speedometer"


# instance fields
.field availableHeight:I

.field availableWidth:I

.field centerX:I

.field centerY:I

.field private mArcRect:Landroid/graphics/RectF;

.field private mBmpPointer:Landroid/graphics/Bitmap;

.field private mBmpPointerBg:Landroid/graphics/Bitmap;

.field private mBmpPointerScale:Landroid/graphics/Bitmap;

.field private mBmpdPointer:Landroid/graphics/drawable/BitmapDrawable;

.field private mBmpdPointerBg:Landroid/graphics/drawable/BitmapDrawable;

.field private mGap:I

.field private mHandler:Landroid/os/Handler;

.field mHeight:I

.field private mImageResArray:[I

.field private mMaxSpeed:F

.field private mMaxSpeedAngle:F

.field private mMode:I

.field private mNumBitmapHeight:I

.field private mNumBitmapWidth:I

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

.field private mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

.field private mRateBitmap:Landroid/graphics/Bitmap;

.field private mRateCanvas:Landroid/graphics/Canvas;

.field private mRotateFactor:I

.field private mSpeed:F

.field private mSpeedDrawing:F

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/can/ui/view/Speedometer;->mNumBitmaps:Ljava/util/List;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 47
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/can/ui/view/Speedometer;->mImageResArray:[I

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/can/ui/view/Speedometer;->availableWidth:I

    .line 59
    iput v0, p0, Lcom/can/ui/view/Speedometer;->availableHeight:I

    .line 61
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/can/ui/view/Speedometer;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 62
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/can/ui/view/Speedometer;->mPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 65
    new-instance v0, Lcom/can/ui/view/Speedometer$1;

    invoke-direct {v0, p0}, Lcom/can/ui/view/Speedometer$1;-><init>(Lcom/can/ui/view/Speedometer;)V

    iput-object v0, p0, Lcom/can/ui/view/Speedometer;->mHandler:Landroid/os/Handler;

    const/high16 v0, 0x43870000    # 270.0f

    .line 74
    iput v0, p0, Lcom/can/ui/view/Speedometer;->mMaxSpeedAngle:F

    const/high16 v0, 0x43820000    # 260.0f

    iput v0, p0, Lcom/can/ui/view/Speedometer;->mMaxSpeed:F

    const/4 v0, 0x1

    .line 75
    iput v0, p0, Lcom/can/ui/view/Speedometer;->mMode:I

    .line 76
    iput v0, p0, Lcom/can/ui/view/Speedometer;->mRotateFactor:I

    .line 78
    iput v0, p0, Lcom/can/ui/view/Speedometer;->mGap:I

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/can/ui/view/Speedometer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        0x7f07014a
        0x7f07014b
        0x7f07014c
        0x7f07014d
        0x7f07014e
        0x7f07014f
        0x7f070150
        0x7f070151
        0x7f070152
        0x7f070153
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/can/ui/view/Speedometer;->mNumBitmaps:Ljava/util/List;

    const/16 p1, 0xa

    new-array p1, p1, [I

    .line 47
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/can/ui/view/Speedometer;->mImageResArray:[I

    const/4 p1, -0x1

    .line 58
    iput p1, p0, Lcom/can/ui/view/Speedometer;->availableWidth:I

    .line 59
    iput p1, p0, Lcom/can/ui/view/Speedometer;->availableHeight:I

    .line 61
    new-instance p1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p2, 0x0

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p1, p0, Lcom/can/ui/view/Speedometer;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 62
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/can/ui/view/Speedometer;->mPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 65
    new-instance p1, Lcom/can/ui/view/Speedometer$1;

    invoke-direct {p1, p0}, Lcom/can/ui/view/Speedometer$1;-><init>(Lcom/can/ui/view/Speedometer;)V

    iput-object p1, p0, Lcom/can/ui/view/Speedometer;->mHandler:Landroid/os/Handler;

    const/high16 p1, 0x43870000    # 270.0f

    .line 74
    iput p1, p0, Lcom/can/ui/view/Speedometer;->mMaxSpeedAngle:F

    const/high16 p1, 0x43820000    # 260.0f

    iput p1, p0, Lcom/can/ui/view/Speedometer;->mMaxSpeed:F

    const/4 p1, 0x1

    .line 75
    iput p1, p0, Lcom/can/ui/view/Speedometer;->mMode:I

    .line 76
    iput p1, p0, Lcom/can/ui/view/Speedometer;->mRotateFactor:I

    .line 78
    iput p1, p0, Lcom/can/ui/view/Speedometer;->mGap:I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f07014a
        0x7f07014b
        0x7f07014c
        0x7f07014d
        0x7f07014e
        0x7f07014f
        0x7f070150
        0x7f070151
        0x7f070152
        0x7f070153
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/can/ui/view/Speedometer;->mNumBitmaps:Ljava/util/List;

    const/16 p1, 0xa

    new-array p1, p1, [I

    .line 47
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/can/ui/view/Speedometer;->mImageResArray:[I

    const/4 p1, -0x1

    .line 58
    iput p1, p0, Lcom/can/ui/view/Speedometer;->availableWidth:I

    .line 59
    iput p1, p0, Lcom/can/ui/view/Speedometer;->availableHeight:I

    .line 61
    new-instance p1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p2, 0x0

    const/4 p3, 0x3

    invoke-direct {p1, p2, p3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object p1, p0, Lcom/can/ui/view/Speedometer;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 62
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/can/ui/view/Speedometer;->mPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 65
    new-instance p1, Lcom/can/ui/view/Speedometer$1;

    invoke-direct {p1, p0}, Lcom/can/ui/view/Speedometer$1;-><init>(Lcom/can/ui/view/Speedometer;)V

    iput-object p1, p0, Lcom/can/ui/view/Speedometer;->mHandler:Landroid/os/Handler;

    const/high16 p1, 0x43870000    # 270.0f

    .line 74
    iput p1, p0, Lcom/can/ui/view/Speedometer;->mMaxSpeedAngle:F

    const/high16 p1, 0x43820000    # 260.0f

    iput p1, p0, Lcom/can/ui/view/Speedometer;->mMaxSpeed:F

    const/4 p1, 0x1

    .line 75
    iput p1, p0, Lcom/can/ui/view/Speedometer;->mMode:I

    .line 76
    iput p1, p0, Lcom/can/ui/view/Speedometer;->mRotateFactor:I

    .line 78
    iput p1, p0, Lcom/can/ui/view/Speedometer;->mGap:I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f07014a
        0x7f07014b
        0x7f07014c
        0x7f07014d
        0x7f07014e
        0x7f07014f
        0x7f070150
        0x7f070151
        0x7f070152
        0x7f070153
    .end array-data
.end method

.method static synthetic access$000(Lcom/can/ui/view/Speedometer;)F
    .locals 0

    .line 37
    iget p0, p0, Lcom/can/ui/view/Speedometer;->mSpeedDrawing:F

    return p0
.end method

.method static synthetic access$002(Lcom/can/ui/view/Speedometer;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/can/ui/view/Speedometer;->mSpeedDrawing:F

    return p1
.end method

.method private calculatePointerAngle()F
    .locals 2

    .line 292
    iget v0, p0, Lcom/can/ui/view/Speedometer;->mMaxSpeedAngle:F

    iget v1, p0, Lcom/can/ui/view/Speedometer;->mSpeedDrawing:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/can/ui/view/Speedometer;->mMaxSpeed:F

    div-float/2addr v0, v1

    .line 293
    iget p0, p0, Lcom/can/ui/view/Speedometer;->mRotateFactor:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method private checkBmpRes()V
    .locals 6

    .line 148
    iget v0, p0, Lcom/can/ui/view/Speedometer;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 149
    iget-object v0, p0, Lcom/can/ui/view/Speedometer;->mNumBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v2

    .line 150
    :goto_0
    iget-object v3, p0, Lcom/can/ui/view/Speedometer;->mImageResArray:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 151
    iget-object v3, p0, Lcom/can/ui/view/Speedometer;->mNumBitmaps:Ljava/util/List;

    invoke-virtual {p0}, Lcom/can/ui/view/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/can/ui/view/Speedometer;->mImageResArray:[I

    aget v5, v5, v0

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/can/ui/view/Speedometer;->mNumBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/can/ui/view/Speedometer;->mNumBitmaps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/can/ui/view/Speedometer;->mNumBitmapWidth:I

    .line 156
    iget-object v0, p0, Lcom/can/ui/view/Speedometer;->mNumBitmaps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/can/ui/view/Speedometer;->mNumBitmapHeight:I

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/can/ui/view/Speedometer;->mRateBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/can/ui/view/Speedometer;->mNumBitmaps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget v3, p0, Lcom/can/ui/view/Speedometer;->mGap:I

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/can/ui/view/Speedometer;->mNumBitmaps:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/view/Speedometer;->mRateBitmap:Landroid/graphics/Bitmap;

    .line 161
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/can/ui/view/Speedometer;->mRateBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/can/ui/view/Speedometer;->mRateCanvas:Landroid/graphics/Canvas;

    :cond_2
    return-void
.end method

.method private getBitmapsByNumber(Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .locals 5

    .line 199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 203
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 204
    iget-object v4, p0, Lcom/can/ui/view/Speedometer;->mNumBitmaps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 206
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public config(FF)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/can/ui/view/Speedometer;->mMaxSpeedAngle:F

    .line 298
    iput p2, p0, Lcom/can/ui/view/Speedometer;->mMaxSpeed:F

    return-void
.end method

.method public getNumberBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    if-eqz p2, :cond_2

    .line 168
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 169
    invoke-direct {p0, p3}, Lcom/can/ui/view/Speedometer;->getBitmapsByNumber(Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object p3

    .line 170
    array-length v0, p3

    new-array v0, v0, [I

    .line 171
    array-length v2, p3

    new-array v2, v2, [I

    move v3, v1

    .line 172
    :goto_0
    array-length v4, p3

    if-ge v3, v4, :cond_2

    .line 174
    aget-object v4, p3, v3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    aput v4, v0, v3

    .line 175
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

    .line 183
    aget v6, v0, v4

    iget v7, p0, Lcom/can/ui/view/Speedometer;->mGap:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 188
    :cond_1
    :goto_2
    aget v4, v0, v3

    add-int/2addr v4, v5

    .line 189
    aget v6, v2, v3

    .line 191
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v5, v1, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 192
    aget-object v4, p3, v3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/can/ui/view/Speedometer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 112
    invoke-virtual {p0}, Lcom/can/ui/view/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object v0, Lcom/can/activity/R$styleable;->speedometer:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/can/ui/view/Speedometer;->mMode:I

    const/4 v1, 0x4

    .line 115
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/can/ui/view/Speedometer;->mRotateFactor:I

    const/4 v1, 0x5

    .line 116
    iget v2, p0, Lcom/can/ui/view/Speedometer;->mMaxSpeedAngle:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/can/ui/view/Speedometer;->mMaxSpeedAngle:F

    const/4 v1, 0x6

    .line 117
    iget v2, p0, Lcom/can/ui/view/Speedometer;->mMaxSpeed:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/can/ui/view/Speedometer;->mMaxSpeed:F

    .line 118
    invoke-virtual {p0}, Lcom/can/ui/view/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/view/Speedometer;->mBmpPointer:Landroid/graphics/Bitmap;

    .line 119
    invoke-virtual {p0}, Lcom/can/ui/view/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/view/Speedometer;->mBmpPointerBg:Landroid/graphics/Bitmap;

    .line 120
    invoke-virtual {p0}, Lcom/can/ui/view/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/can/ui/view/Speedometer;->mBmpPointerScale:Landroid/graphics/Bitmap;

    .line 121
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/can/ui/view/Speedometer;->mBmpPointer:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/can/ui/view/Speedometer;->mWidth:I

    .line 138
    iget-object p1, p0, Lcom/can/ui/view/Speedometer;->mBmpPointer:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/can/ui/view/Speedometer;->mHeight:I

    .line 140
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/can/ui/view/Speedometer;->mPaint:Landroid/graphics/Paint;

    .line 144
    invoke-direct {p0}, Lcom/can/ui/view/Speedometer;->checkBmpRes()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 213
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 214
    invoke-virtual {p0}, Lcom/can/ui/view/Speedometer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 216
    :cond_0
    iget v0, p0, Lcom/can/ui/view/Speedometer;->availableWidth:I

    const/4 v1, 0x2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/can/ui/view/Speedometer;->availableHeight:I

    if-gtz v0, :cond_2

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/can/ui/view/Speedometer;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/can/ui/view/Speedometer;->availableWidth:I

    .line 218
    invoke-virtual {p0}, Lcom/can/ui/view/Speedometer;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/can/ui/view/Speedometer;->availableHeight:I

    .line 219
    iget v2, p0, Lcom/can/ui/view/Speedometer;->availableWidth:I

    div-int/2addr v2, v1

    iput v2, p0, Lcom/can/ui/view/Speedometer;->centerX:I

    .line 220
    div-int/2addr v0, v1

    iput v0, p0, Lcom/can/ui/view/Speedometer;->centerY:I

    .line 221
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/can/ui/view/Speedometer;->centerX:I

    iget v3, p0, Lcom/can/ui/view/Speedometer;->mWidth:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/can/ui/view/Speedometer;->centerY:I

    iget v6, p0, Lcom/can/ui/view/Speedometer;->mHeight:I

    div-int/lit8 v7, v6, 0x2

    sub-int v7, v5, v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    div-int/2addr v3, v1

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    int-to-float v2, v2

    div-int/2addr v6, v1

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    int-to-float v3, v5

    invoke-direct {v0, v4, v7, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/can/ui/view/Speedometer;->mArcRect:Landroid/graphics/RectF;

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/can/ui/view/Speedometer;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 240
    invoke-direct {p0}, Lcom/can/ui/view/Speedometer;->calculatePointerAngle()F

    move-result v0

    .line 241
    iget v2, p0, Lcom/can/ui/view/Speedometer;->mMode:I

    if-ne v2, v1, :cond_3

    .line 242
    iget-object v2, p0, Lcom/can/ui/view/Speedometer;->mBmpPointerBg:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 243
    iget v2, p0, Lcom/can/ui/view/Speedometer;->mWidth:I

    int-to-float v6, v2

    iget v2, p0, Lcom/can/ui/view/Speedometer;->mHeight:I

    int-to-float v7, v2

    const/4 v8, 0x0

    const/16 v9, 0x1f

    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v2

    .line 244
    iget-object v3, p0, Lcom/can/ui/view/Speedometer;->mBmpPointerBg:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/can/ui/view/Speedometer;->centerX:I

    iget v5, p0, Lcom/can/ui/view/Speedometer;->mWidth:I

    div-int/2addr v5, v1

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/can/ui/view/Speedometer;->centerY:I

    iget v6, p0, Lcom/can/ui/view/Speedometer;->mHeight:I

    div-int/2addr v6, v1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/can/ui/view/Speedometer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 246
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, 0x43070000    # 135.0f

    .line 247
    iget v4, p0, Lcom/can/ui/view/Speedometer;->centerX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/can/ui/view/Speedometer;->centerY:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 250
    iget-object v3, p0, Lcom/can/ui/view/Speedometer;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/can/ui/view/Speedometer;->mPorterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 251
    iget-object v6, p0, Lcom/can/ui/view/Speedometer;->mArcRect:Landroid/graphics/RectF;

    const/high16 v3, 0x40a00000    # 5.0f

    add-float v7, v0, v3

    const/high16 v3, 0x43870000    # 270.0f

    sub-float v8, v3, v0

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/can/ui/view/Speedometer;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 253
    iget-object v0, p0, Lcom/can/ui/view/Speedometer;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 254
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 261
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 262
    invoke-direct {p0}, Lcom/can/ui/view/Speedometer;->calculatePointerAngle()F

    move-result v0

    iget v2, p0, Lcom/can/ui/view/Speedometer;->centerX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/can/ui/view/Speedometer;->centerY:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 266
    iget-object v0, p0, Lcom/can/ui/view/Speedometer;->mBmpPointer:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/can/ui/view/Speedometer;->centerX:I

    iget v3, p0, Lcom/can/ui/view/Speedometer;->mWidth:I

    div-int/2addr v3, v1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/can/ui/view/Speedometer;->centerY:I

    iget v4, p0, Lcom/can/ui/view/Speedometer;->mHeight:I

    div-int/2addr v4, v1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/can/ui/view/Speedometer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 270
    iget v0, p0, Lcom/can/ui/view/Speedometer;->mMode:I

    if-ne v0, v1, :cond_5

    .line 271
    iget-object v0, p0, Lcom/can/ui/view/Speedometer;->mBmpPointerScale:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 272
    iget v2, p0, Lcom/can/ui/view/Speedometer;->centerX:I

    iget v3, p0, Lcom/can/ui/view/Speedometer;->mWidth:I

    div-int/2addr v3, v1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/can/ui/view/Speedometer;->centerY:I

    iget v4, p0, Lcom/can/ui/view/Speedometer;->mHeight:I

    div-int/2addr v4, v1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/can/ui/view/Speedometer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 277
    :cond_4
    iget v0, p0, Lcom/can/ui/view/Speedometer;->mSpeed:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/can/ui/view/Speedometer;->getBitmapsByNumber(Ljava/lang/String;)[Landroid/graphics/Bitmap;

    move-result-object v0

    .line 278
    iget v2, p0, Lcom/can/ui/view/Speedometer;->centerX:I

    array-length v3, v0

    iget v4, p0, Lcom/can/ui/view/Speedometer;->mNumBitmapWidth:I

    iget v5, p0, Lcom/can/ui/view/Speedometer;->mGap:I

    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    sub-int/2addr v3, v5

    div-int/2addr v3, v1

    sub-int/2addr v2, v3

    .line 279
    iget v3, p0, Lcom/can/ui/view/Speedometer;->centerY:I

    iget v4, p0, Lcom/can/ui/view/Speedometer;->mNumBitmapHeight:I

    div-int/2addr v4, v1

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0xa

    const/4 v1, 0x0

    .line 280
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_5

    .line 281
    aget-object v4, v0, v1

    int-to-float v5, v2

    int-to-float v6, v3

    iget-object v7, p0, Lcom/can/ui/view/Speedometer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 282
    iget v4, p0, Lcom/can/ui/view/Speedometer;->mNumBitmapWidth:I

    iget v5, p0, Lcom/can/ui/view/Speedometer;->mGap:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setMode(I)V
    .locals 2

    .line 307
    iget v0, p0, Lcom/can/ui/view/Speedometer;->mMode:I

    if-eq v0, p1, :cond_4

    .line 308
    iput p1, p0, Lcom/can/ui/view/Speedometer;->mMode:I

    .line 309
    iget-object v0, p0, Lcom/can/ui/view/Speedometer;->mBmpPointer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Lcom/can/ui/view/Speedometer;->mBmpPointer:Landroid/graphics/Bitmap;

    .line 313
    :cond_0
    iget v0, p0, Lcom/can/ui/view/Speedometer;->mMode:I

    if-nez v0, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/can/ui/view/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700e2

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/view/Speedometer;->mBmpPointer:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    .line 317
    invoke-virtual {p0}, Lcom/can/ui/view/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07050b

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/view/Speedometer;->mBmpPointer:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v1, v0, :cond_3

    .line 320
    invoke-virtual {p0}, Lcom/can/ui/view/Speedometer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07046d

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/view/Speedometer;->mBmpPointer:Landroid/graphics/Bitmap;

    .line 325
    :goto_0
    invoke-virtual {p0}, Lcom/can/ui/view/Speedometer;->invalidate()V

    goto :goto_1

    .line 323
    :cond_3
    new-instance p0, Ljava/security/InvalidParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not support mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method public setSpeed(I)V
    .locals 2

    .line 331
    iget v0, p0, Lcom/can/ui/view/Speedometer;->mSpeed:F

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 332
    iput p1, p0, Lcom/can/ui/view/Speedometer;->mSpeed:F

    .line 333
    iget-object p1, p0, Lcom/can/ui/view/Speedometer;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v0, 0x0

    .line 336
    iget v1, p0, Lcom/can/ui/view/Speedometer;->mSpeedDrawing:F

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/can/ui/view/Speedometer;->mSpeed:F

    aput v1, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/view/Speedometer;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x7d0

    .line 337
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 338
    iget-object p1, p0, Lcom/can/ui/view/Speedometer;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/can/ui/view/Speedometer$MyInterpolator;

    invoke-direct {v0, p0}, Lcom/can/ui/view/Speedometer$MyInterpolator;-><init>(Lcom/can/ui/view/Speedometer;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 339
    iget-object p1, p0, Lcom/can/ui/view/Speedometer;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/can/ui/view/Speedometer$2;

    invoke-direct {v0, p0}, Lcom/can/ui/view/Speedometer$2;-><init>(Lcom/can/ui/view/Speedometer;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    return-void
.end method
