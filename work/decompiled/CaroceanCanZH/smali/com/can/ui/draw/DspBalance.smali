.class public Lcom/can/ui/draw/DspBalance;
.super Landroid/view/View;
.source "DspBalance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/ui/draw/DspBalance$OnTouchListener;
    }
.end annotation


# instance fields
.field private mObjHeightParent:F

.field private mObjPoint:Landroid/graphics/Bitmap;

.field private mObjTouchListener:Lcom/can/ui/draw/DspBalance$OnTouchListener;

.field private mObjWidthParent:F

.field private mfBal:F

.field private mfFad:F

.field private miDefBal:I

.field private miDefFad:I

.field private w_ajust:I

.field private y_ajust:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/can/ui/draw/DspBalance;->mObjTouchListener:Lcom/can/ui/draw/DspBalance$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/can/ui/draw/DspBalance;->mObjTouchListener:Lcom/can/ui/draw/DspBalance$OnTouchListener;

    .line 42
    invoke-virtual {p0}, Lcom/can/ui/draw/DspBalance;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0704c6

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/draw/DspBalance;->mObjPoint:Landroid/graphics/Bitmap;

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/can/ui/draw/DspBalance;->w_ajust:I

    .line 44
    iget-object p1, p0, Lcom/can/ui/draw/DspBalance;->mObjPoint:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/can/ui/draw/DspBalance;->y_ajust:I

    return-void
.end method

.method private move(FF)V
    .locals 2

    .line 112
    iput p1, p0, Lcom/can/ui/draw/DspBalance;->mfFad:F

    .line 113
    iput p2, p0, Lcom/can/ui/draw/DspBalance;->mfBal:F

    .line 115
    iget v0, p0, Lcom/can/ui/draw/DspBalance;->w_ajust:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    int-to-float p1, v0

    .line 116
    iput p1, p0, Lcom/can/ui/draw/DspBalance;->mfFad:F

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/can/ui/draw/DspBalance;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/can/ui/draw/DspBalance;->w_ajust:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/can/ui/draw/DspBalance;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/can/ui/draw/DspBalance;->w_ajust:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/can/ui/draw/DspBalance;->mfFad:F

    .line 121
    :cond_1
    :goto_0
    iget p1, p0, Lcom/can/ui/draw/DspBalance;->y_ajust:I

    int-to-float v0, p1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_2

    int-to-float p1, p1

    .line 122
    iput p1, p0, Lcom/can/ui/draw/DspBalance;->mfBal:F

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/can/ui/draw/DspBalance;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/can/ui/draw/DspBalance;->y_ajust:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    .line 124
    invoke-virtual {p0}, Lcom/can/ui/draw/DspBalance;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/can/ui/draw/DspBalance;->y_ajust:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/can/ui/draw/DspBalance;->mfBal:F

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 68
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    iget-object v0, p0, Lcom/can/ui/draw/DspBalance;->mObjPoint:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/can/ui/draw/DspBalance;->mfFad:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/can/ui/draw/DspBalance;->mfBal:F

    iget-object p0, p0, Lcom/can/ui/draw/DspBalance;->mObjPoint:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    sub-float/2addr v2, p0

    const/4 p0, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 77
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 79
    invoke-virtual {p0}, Lcom/can/ui/draw/DspBalance;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/can/ui/draw/DspBalance;->getDefaultSize(II)I

    move-result p2

    .line 80
    invoke-virtual {p0}, Lcom/can/ui/draw/DspBalance;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/can/ui/draw/DspBalance;->getDefaultSize(II)I

    move-result p1

    .line 82
    iget v0, p0, Lcom/can/ui/draw/DspBalance;->w_ajust:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/can/ui/draw/DspBalance;->mObjWidthParent:F

    .line 83
    iget p1, p0, Lcom/can/ui/draw/DspBalance;->y_ajust:I

    mul-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    int-to-float p1, p2

    iput p1, p0, Lcom/can/ui/draw/DspBalance;->mObjHeightParent:F

    .line 85
    invoke-virtual {p0}, Lcom/can/ui/draw/DspBalance;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget p2, p0, Lcom/can/ui/draw/DspBalance;->miDefFad:I

    int-to-float v0, p2

    iget v1, p0, Lcom/can/ui/draw/DspBalance;->mObjWidthParent:F

    mul-float/2addr v0, v1

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    div-float/2addr v0, p2

    add-float/2addr p1, v0

    iput p1, p0, Lcom/can/ui/draw/DspBalance;->mfFad:F

    .line 86
    invoke-virtual {p0}, Lcom/can/ui/draw/DspBalance;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iget p2, p0, Lcom/can/ui/draw/DspBalance;->miDefBal:I

    int-to-float v0, p2

    iget v1, p0, Lcom/can/ui/draw/DspBalance;->mObjHeightParent:F

    mul-float/2addr v0, v1

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    div-float/2addr v0, p2

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/can/ui/draw/DspBalance;->mfBal:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/can/ui/draw/DspBalance;->move(FF)V

    .line 99
    invoke-virtual {p0}, Lcom/can/ui/draw/DspBalance;->invalidate()V

    .line 100
    iget-object p1, p0, Lcom/can/ui/draw/DspBalance;->mObjTouchListener:Lcom/can/ui/draw/DspBalance$OnTouchListener;

    if-eqz p1, :cond_1

    .line 101
    iget v0, p0, Lcom/can/ui/draw/DspBalance;->mfFad:F

    iget v1, p0, Lcom/can/ui/draw/DspBalance;->miDefFad:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/can/ui/draw/DspBalance;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/can/ui/draw/DspBalance;->w_ajust:I

    mul-int/2addr v3, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/can/ui/draw/DspBalance;->mfBal:F

    iget v3, p0, Lcom/can/ui/draw/DspBalance;->miDefBal:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/can/ui/draw/DspBalance;->getHeight()I

    move-result v3

    iget p0, p0, Lcom/can/ui/draw/DspBalance;->w_ajust:I

    mul-int/2addr p0, v2

    sub-int/2addr v3, p0

    int-to-float p0, v3

    div-float/2addr v1, p0

    invoke-interface {p1, v0, v1}, Lcom/can/ui/draw/DspBalance$OnTouchListener;->onBalance(FF)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setBalanceVal(II)V
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/can/ui/draw/DspBalance;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/can/ui/draw/DspBalance;->miDefFad:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/can/ui/draw/DspBalance;->getHeight()I

    move-result v1

    mul-int/2addr v1, p2

    iget v2, p0, Lcom/can/ui/draw/DspBalance;->miDefBal:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/can/ui/draw/DspBalance;->move(FF)V

    .line 54
    invoke-virtual {p0}, Lcom/can/ui/draw/DspBalance;->invalidate()V

    .line 56
    iget-object p0, p0, Lcom/can/ui/draw/DspBalance;->mObjTouchListener:Lcom/can/ui/draw/DspBalance$OnTouchListener;

    if-eqz p0, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    .line 57
    invoke-interface {p0, p1, p2}, Lcom/can/ui/draw/DspBalance$OnTouchListener;->onBalance(FF)V

    :cond_0
    return-void
.end method

.method public setBalenceListener(Lcom/can/ui/draw/DspBalance$OnTouchListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/can/ui/draw/DspBalance;->mObjTouchListener:Lcom/can/ui/draw/DspBalance$OnTouchListener;

    return-void
.end method

.method public setDefMaxVal(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/can/ui/draw/DspBalance;->miDefFad:I

    .line 49
    iput p1, p0, Lcom/can/ui/draw/DspBalance;->miDefBal:I

    return-void
.end method
