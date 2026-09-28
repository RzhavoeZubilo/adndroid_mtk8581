.class public Lcom/can/ui/draw/Windlv;
.super Landroid/view/View;
.source "Windlv.java"


# static fields
.field private static final DEFAULT_SPACING:I = 0x5

.field private static final MAX_WIND_LEVEL:I = 0x7


# instance fields
.field private mBmpNormal:Landroid/graphics/Bitmap;

.field private mBmpSelect:Landroid/graphics/Bitmap;

.field private mCurLevel:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxLevel:I

.field private mSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/can/ui/draw/Windlv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcom/can/ui/draw/Windlv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x5

    .line 24
    iput v0, p0, Lcom/can/ui/draw/Windlv;->mSpacing:I

    const/4 v1, 0x7

    .line 25
    iput v1, p0, Lcom/can/ui/draw/Windlv;->mMaxLevel:I

    const/4 v2, 0x4

    .line 26
    iput v2, p0, Lcom/can/ui/draw/Windlv;->mCurLevel:I

    const/4 v2, 0x0

    .line 27
    iput-object v2, p0, Lcom/can/ui/draw/Windlv;->mBmpSelect:Landroid/graphics/Bitmap;

    .line 28
    iput-object v2, p0, Lcom/can/ui/draw/Windlv;->mBmpNormal:Landroid/graphics/Bitmap;

    .line 29
    iput-object v2, p0, Lcom/can/ui/draw/Windlv;->mMatrix:Landroid/graphics/Matrix;

    .line 42
    sget-object v2, Lcom/can/activity/R$styleable;->WindLevel:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/can/ui/draw/Windlv;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 48
    invoke-virtual {p1, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 47
    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/can/ui/draw/Windlv;->mBmpNormal:Landroid/graphics/Bitmap;

    .line 49
    invoke-virtual {p0}, Lcom/can/ui/draw/Windlv;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x1

    .line 50
    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 49
    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/can/ui/draw/Windlv;->mBmpSelect:Landroid/graphics/Bitmap;

    const/4 p2, 0x2

    .line 51
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/can/ui/draw/Windlv;->mMaxLevel:I

    const/4 p2, 0x3

    .line 54
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/can/ui/draw/Windlv;->mSpacing:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 58
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/can/ui/draw/Windlv;->mMatrix:Landroid/graphics/Matrix;

    return-void

    .line 60
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    throw p0
.end method


# virtual methods
.method public getCurLevel()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/can/ui/draw/Windlv;->mCurLevel:I

    return p0
.end method

.method public getMaxLevel()I
    .locals 0

    .line 72
    iget p0, p0, Lcom/can/ui/draw/Windlv;->mMaxLevel:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 106
    iget-object v0, p0, Lcom/can/ui/draw/Windlv;->mBmpSelect:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/can/ui/draw/Windlv;->mBmpNormal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/can/ui/draw/Windlv;->mMaxLevel:I

    if-lez v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/can/ui/draw/Windlv;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/can/ui/draw/Windlv;->mSpacing:I

    iget v2, p0, Lcom/can/ui/draw/Windlv;->mMaxLevel:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 109
    iget-object v1, p0, Lcom/can/ui/draw/Windlv;->mBmpNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 110
    iget-object v2, p0, Lcom/can/ui/draw/Windlv;->mBmpNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 113
    iget v4, p0, Lcom/can/ui/draw/Windlv;->mMaxLevel:I

    mul-int v5, v1, v4

    int-to-float v5, v5

    cmpl-float v5, v5, v0

    if-lez v5, :cond_0

    int-to-float v3, v4

    div-float/2addr v0, v3

    int-to-float v3, v1

    div-float v3, v0, v3

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/can/ui/draw/Windlv;->getHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v2

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    const/4 v2, 0x0

    move v4, v2

    .line 122
    :goto_0
    iget v5, p0, Lcom/can/ui/draw/Windlv;->mMaxLevel:I

    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    .line 123
    iget-object v5, p0, Lcom/can/ui/draw/Windlv;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 124
    iget-object v5, p0, Lcom/can/ui/draw/Windlv;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v7, v1

    mul-float/2addr v7, v3

    iget v8, p0, Lcom/can/ui/draw/Windlv;->mSpacing:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    int-to-float v8, v4

    mul-float/2addr v7, v8

    invoke-virtual {v5, v7, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 125
    iget-object v5, p0, Lcom/can/ui/draw/Windlv;->mBmpNormal:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/can/ui/draw/Windlv;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v5, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 129
    :cond_1
    :goto_1
    iget v4, p0, Lcom/can/ui/draw/Windlv;->mCurLevel:I

    if-ge v2, v4, :cond_3

    .line 130
    iget-object v4, p0, Lcom/can/ui/draw/Windlv;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 131
    iget-object v4, p0, Lcom/can/ui/draw/Windlv;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v5, v1

    mul-float/2addr v5, v3

    iget v7, p0, Lcom/can/ui/draw/Windlv;->mSpacing:I

    int-to-float v7, v7

    add-float/2addr v5, v7

    int-to-float v7, v2

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 132
    iget-object v4, p0, Lcom/can/ui/draw/Windlv;->mBmpSelect:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/can/ui/draw/Windlv;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method public setCurLevel(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/can/ui/draw/Windlv;->mCurLevel:I

    return-void
.end method

.method public setMaxLevel(I)V
    .locals 0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    .line 81
    :goto_0
    iput p1, p0, Lcom/can/ui/draw/Windlv;->mMaxLevel:I

    return-void
.end method
