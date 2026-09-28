.class public Lcom/can/ui/view/ID8SpeedMeter;
.super Landroid/view/View;
.source "ID8SpeedMeter.java"


# static fields
.field private static POINTER_WIDTH:I = 0xcf

.field private static POINTER_X_OFFSET:I = 0x23

.field private static POINTER_Y_OFFSET:I = 0x7

.field private static final TAG:Ljava/lang/String; = "ID8SpeedMeter"


# instance fields
.field private mMeterType:I

.field private mPaint:Landroid/graphics/Paint;

.field private pointerBitmap:Landroid/graphics/Bitmap;

.field private rpm:I

.field private rpmPointerXOffset:I

.field private rpmProcessDstR:Landroid/graphics/Rect;

.field private rpmProcessSrcR:Landroid/graphics/Rect;

.field private rpmProgressBitmap:Landroid/graphics/Bitmap;

.field private speed:I

.field private speedPointerXOffset:I

.field private speedProcessDstR:Landroid/graphics/Rect;

.field private speedProcessSrcR:Landroid/graphics/Rect;

.field private speedProgressBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/can/ui/view/ID8SpeedMeter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/can/ui/view/ID8SpeedMeter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/can/ui/view/ID8SpeedMeter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p3, 0xd3

    .line 32
    iput p3, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedPointerXOffset:I

    const/4 p3, 0x0

    .line 33
    iput p3, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmPointerXOffset:I

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/can/ui/view/ID8SpeedMeter;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private convertData(F)F
    .locals 0

    .line 111
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1280x480And160dpi()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    const/high16 p0, 0x40400000    # 3.0f

    div-float/2addr p1, p0

    :cond_0
    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/can/ui/view/ID8SpeedMeter;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object v0, Lcom/can/activity/R$styleable;->ID8SpeedMeter:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->mMeterType:I

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/can/ui/view/ID8SpeedMeter;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700f4

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProgressBitmap:Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {p0}, Lcom/can/ui/view/ID8SpeedMeter;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700f3

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProgressBitmap:Landroid/graphics/Bitmap;

    .line 60
    invoke-virtual {p0}, Lcom/can/ui/view/ID8SpeedMeter;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700f1

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/view/ID8SpeedMeter;->pointerBitmap:Landroid/graphics/Bitmap;

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/can/ui/view/ID8SpeedMeter;->mPaint:Landroid/graphics/Paint;

    .line 64
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProcessSrcR:Landroid/graphics/Rect;

    .line 65
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProcessDstR:Landroid/graphics/Rect;

    .line 67
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProcessSrcR:Landroid/graphics/Rect;

    .line 68
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProcessDstR:Landroid/graphics/Rect;

    const/high16 p1, 0x43530000    # 211.0f

    .line 70
    invoke-direct {p0, p1}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedPointerXOffset:I

    const/4 p1, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmPointerXOffset:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 129
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 130
    invoke-virtual {p0}, Lcom/can/ui/view/ID8SpeedMeter;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    iget v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->mMeterType:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProgressBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 135
    iget-object v2, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProcessSrcR:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProcessDstR:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->pointerBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 138
    iget v2, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedPointerXOffset:I

    int-to-float v2, v2

    sget v3, Lcom/can/ui/view/ID8SpeedMeter;->POINTER_X_OFFSET:I

    int-to-float v3, v3

    invoke-direct {p0, v3}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProcessDstR:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sget v4, Lcom/can/ui/view/ID8SpeedMeter;->POINTER_Y_OFFSET:I

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result p0

    sub-float/2addr v3, p0

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 141
    iget-object v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProgressBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 142
    iget-object v2, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProcessSrcR:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProcessDstR:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->pointerBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 145
    iget v2, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmPointerXOffset:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProcessDstR:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sget v4, Lcom/can/ui/view/ID8SpeedMeter;->POINTER_Y_OFFSET:I

    int-to-float v4, v4

    invoke-direct {p0, v4}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result p0

    sub-float/2addr v3, p0

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setRpm(I)V
    .locals 6

    .line 93
    iget v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpm:I

    if-eq v0, p1, :cond_2

    .line 94
    iput p1, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpm:I

    const/16 v0, 0x1388

    const/high16 v1, 0x43b20000    # 356.0f

    if-gt p1, v0, :cond_0

    .line 96
    sget v0, Lcom/can/ui/view/ID8SpeedMeter;->POINTER_WIDTH:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v0

    int-to-float p1, p1

    const v2, 0x459c4000    # 5000.0f

    sub-float v3, v2, p1

    const/high16 v4, 0x434f0000    # 207.0f

    invoke-direct {p0, v4}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmPointerXOffset:I

    .line 97
    iget-object v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProcessSrcR:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v2

    invoke-direct {p0, v1}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v2

    mul-float/2addr v2, p1

    sub-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 98
    iget-object v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProcessDstR:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v1}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v1

    mul-float/2addr p1, v1

    sub-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    const/16 v2, 0x1f40

    if-le p1, v2, :cond_1

    move p1, v2

    .line 102
    :cond_1
    sget v2, Lcom/can/ui/view/ID8SpeedMeter;->POINTER_WIDTH:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v2

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x43450000    # 197.0f

    invoke-direct {p0, v0}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v0

    mul-float/2addr v0, p1

    const v3, 0x453b8000    # 3000.0f

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    float-to-int v0, v2

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmPointerXOffset:I

    .line 103
    iget-object v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProcessSrcR:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v3

    const/high16 v3, 0x43560000    # 214.0f

    invoke-direct {p0, v3}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v4

    mul-float/2addr v4, p1

    invoke-direct {p0, v1}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v5

    add-float/2addr v4, v5

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 104
    iget-object v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProcessDstR:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v3}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v3

    mul-float/2addr p1, v3

    invoke-direct {p0, v1}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v1

    add-float/2addr p1, v1

    sub-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/can/ui/view/ID8SpeedMeter;->invalidate()V

    :cond_2
    return-void
.end method

.method public setRpmProgressResource(I)V
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/can/ui/view/ID8SpeedMeter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/view/ID8SpeedMeter;->rpmProgressBitmap:Landroid/graphics/Bitmap;

    .line 124
    invoke-virtual {p0}, Lcom/can/ui/view/ID8SpeedMeter;->invalidate()V

    return-void
.end method

.method public setSpeed(I)V
    .locals 6

    .line 75
    iget v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->speed:I

    if-eq v0, p1, :cond_2

    .line 76
    iput p1, p0, Lcom/can/ui/view/ID8SpeedMeter;->speed:I

    const/16 v0, 0x88

    if-gt p1, v0, :cond_0

    rsub-int v0, p1, 0x88

    int-to-float v0, v0

    const/high16 v1, 0x43530000    # 211.0f

    .line 78
    invoke-direct {p0, v1}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x43080000    # 136.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedPointerXOffset:I

    .line 79
    iget-object v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProcessSrcR:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float p1, p1

    div-float/2addr p1, v1

    const v1, 0x43af8000    # 351.0f

    invoke-direct {p0, v1}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v3

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 80
    iget-object v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProcessDstR:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v1}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v1

    mul-float/2addr p1, v1

    sub-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    const/16 v1, 0xdc

    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x433d0000    # 189.0f

    .line 84
    invoke-direct {p0, v0}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x42a80000    # 84.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedPointerXOffset:I

    .line 85
    iget-object v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProcessSrcR:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v1

    const/high16 v1, 0x43590000    # 217.0f

    invoke-direct {p0, v1}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v3

    mul-float/2addr v3, p1

    const v4, 0x43ae8000    # 349.0f

    invoke-direct {p0, v4}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v5

    add-float/2addr v3, v5

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 86
    iget-object v0, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProcessDstR:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProgressBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v1}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v1

    mul-float/2addr p1, v1

    invoke-direct {p0, v4}, Lcom/can/ui/view/ID8SpeedMeter;->convertData(F)F

    move-result v1

    add-float/2addr p1, v1

    sub-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/can/ui/view/ID8SpeedMeter;->invalidate()V

    :cond_2
    return-void
.end method

.method public setSpeedProgressResource(I)V
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/can/ui/view/ID8SpeedMeter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/view/ID8SpeedMeter;->speedProgressBitmap:Landroid/graphics/Bitmap;

    .line 119
    invoke-virtual {p0}, Lcom/can/ui/view/ID8SpeedMeter;->invalidate()V

    return-void
.end method
