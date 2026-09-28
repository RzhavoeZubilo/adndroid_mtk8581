.class public Lcom/can/ui/draw/Compass;
.super Landroid/view/View;
.source "Compass.java"


# instance fields
.field private mAngle:I

.field private mClockBgBmp:Landroid/graphics/Bitmap;

.field private mClockbgId:I

.field private mLayoutHeight:I

.field private mLayoutWidth:I

.field private mPointBmp:Landroid/graphics/Bitmap;

.field private mPointId:I

.field private mPointX:I

.field private mPointY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/can/ui/draw/Compass;->mClockBgBmp:Landroid/graphics/Bitmap;

    .line 16
    iput-object v0, p0, Lcom/can/ui/draw/Compass;->mPointBmp:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/can/ui/draw/Compass;->mLayoutWidth:I

    .line 19
    iput v0, p0, Lcom/can/ui/draw/Compass;->mLayoutHeight:I

    .line 21
    iput v0, p0, Lcom/can/ui/draw/Compass;->mPointX:I

    .line 22
    iput v0, p0, Lcom/can/ui/draw/Compass;->mPointY:I

    .line 23
    iput v0, p0, Lcom/can/ui/draw/Compass;->mClockbgId:I

    .line 24
    iput v0, p0, Lcom/can/ui/draw/Compass;->mPointId:I

    const/16 v1, 0xf0

    .line 25
    iput v1, p0, Lcom/can/ui/draw/Compass;->mAngle:I

    .line 28
    sget-object v1, Lcom/can/activity/R$styleable;->Compass:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/can/ui/draw/Compass;->mClockbgId:I

    const/4 p2, 0x1

    .line 30
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/can/ui/draw/Compass;->mPointId:I

    .line 31
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 32
    iget v0, p0, Lcom/can/ui/draw/Compass;->mClockbgId:I

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/can/ui/draw/Compass;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/can/ui/draw/Compass;->mClockbgId:I

    invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/can/ui/draw/Compass;->mClockBgBmp:Landroid/graphics/Bitmap;

    .line 34
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/can/ui/draw/Compass;->mLayoutWidth:I

    .line 35
    iget-object v0, p0, Lcom/can/ui/draw/Compass;->mClockBgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/can/ui/draw/Compass;->mLayoutHeight:I

    .line 37
    :cond_0
    iget v0, p0, Lcom/can/ui/draw/Compass;->mPointId:I

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/can/ui/draw/Compass;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/can/ui/draw/Compass;->mPointId:I

    invoke-static {v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/can/ui/draw/Compass;->mPointBmp:Landroid/graphics/Bitmap;

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 45
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    iget-object v0, p0, Lcom/can/ui/draw/Compass;->mClockBgBmp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/can/ui/draw/Compass;->mPointBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 72
    iget v3, p0, Lcom/can/ui/draw/Compass;->mLayoutWidth:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/can/ui/draw/Compass;->mPointX:I

    .line 73
    iget v3, p0, Lcom/can/ui/draw/Compass;->mLayoutHeight:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/can/ui/draw/Compass;->mPointY:I

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 75
    iget v3, p0, Lcom/can/ui/draw/Compass;->mPointX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/can/ui/draw/Compass;->mPointY:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 76
    iget p0, p0, Lcom/can/ui/draw/Compass;->mAngle:I

    int-to-float p0, p0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, p0, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 77
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public setAngle(I)V
    .locals 1

    .line 83
    iget v0, p0, Lcom/can/ui/draw/Compass;->mAngle:I

    if-eq v0, p1, :cond_0

    .line 84
    iput p1, p0, Lcom/can/ui/draw/Compass;->mAngle:I

    .line 85
    invoke-virtual {p0}, Lcom/can/ui/draw/Compass;->invalidate()V

    :cond_0
    return-void
.end method
