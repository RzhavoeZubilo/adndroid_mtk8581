.class public Lcom/can/ui/draw/Track;
.super Landroid/view/View;
.source "Track.java"


# instance fields
.field private mDyncTrack:Lcom/can/tool/DyncTrack;

.field private mObjPaint:Landroid/graphics/Paint;

.field private miAngle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/can/ui/draw/Track;->miAngle:I

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/can/ui/draw/Track;->mObjPaint:Landroid/graphics/Paint;

    .line 33
    iput-object p1, p0, Lcom/can/ui/draw/Track;->mDyncTrack:Lcom/can/tool/DyncTrack;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 31
    iput p2, p0, Lcom/can/ui/draw/Track;->miAngle:I

    const/4 p2, 0x0

    .line 32
    iput-object p2, p0, Lcom/can/ui/draw/Track;->mObjPaint:Landroid/graphics/Paint;

    .line 33
    iput-object p2, p0, Lcom/can/ui/draw/Track;->mDyncTrack:Lcom/can/tool/DyncTrack;

    const p2, 0x7f0704dd

    .line 43
    invoke-virtual {p0, p2}, Lcom/can/ui/draw/Track;->setBackgroundResource(I)V

    .line 44
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/can/ui/draw/Track;->mObjPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    iget-object p2, p0, Lcom/can/ui/draw/Track;->mObjPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 47
    iget-object p2, p0, Lcom/can/ui/draw/Track;->mObjPaint:Landroid/graphics/Paint;

    const/16 v0, 0x32

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 48
    iget-object p2, p0, Lcom/can/ui/draw/Track;->mObjPaint:Landroid/graphics/Paint;

    const v0, -0xff0100

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object p2, p0, Lcom/can/ui/draw/Track;->mObjPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget-object p2, p0, Lcom/can/ui/draw/Track;->mObjPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget-object p2, p0, Lcom/can/ui/draw/Track;->mObjPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 52
    iget-object p2, p0, Lcom/can/ui/draw/Track;->mObjPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 54
    invoke-static {}, Lcom/can/tool/DyncTrack;->getInstance()Lcom/can/tool/DyncTrack;

    move-result-object p2

    iput-object p2, p0, Lcom/can/ui/draw/Track;->mDyncTrack:Lcom/can/tool/DyncTrack;

    .line 55
    invoke-virtual {p0, p1}, Lcom/can/ui/draw/Track;->getMetrics(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 56
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 57
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x42b00000    # 88.0f

    .line 58
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x425c0000    # 55.0f

    .line 59
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x4030a3d7    # 2.76f

    .line 60
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x40066666    # 2.1f

    .line 61
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x3f99999a    # 1.2f

    .line 62
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x3fd70a3d    # 1.68f

    .line 63
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x44270000    # 668.0f

    .line 65
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x44160000    # 600.0f

    .line 66
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, p0, Lcom/can/ui/draw/Track;->mDyncTrack:Lcom/can/tool/DyncTrack;

    invoke-virtual {p1, p2}, Lcom/can/tool/DyncTrack;->setParam(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p0, p0, Lcom/can/ui/draw/Track;->mDyncTrack:Lcom/can/tool/DyncTrack;

    invoke-virtual {p0}, Lcom/can/tool/DyncTrack;->CreatePoint()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public DrawTrack(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/can/ui/draw/Track;->miAngle:I

    .line 116
    invoke-virtual {p0}, Lcom/can/ui/draw/Track;->invalidate()V

    return-void
.end method

.method public getMetrics(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    .line 120
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    const-string v0, "window"

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 122
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 123
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 124
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Landroid/graphics/Point;->x:I

    .line 125
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Landroid/graphics/Point;->y:I

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 106
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 109
    iget-object v0, p0, Lcom/can/ui/draw/Track;->mDyncTrack:Lcom/can/tool/DyncTrack;

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/can/ui/draw/Track;->mObjPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/can/ui/draw/Track;->miAngle:I

    int-to-double v2, p0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/can/tool/DyncTrack;->DrawTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;D)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 79
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 80
    invoke-virtual {p0}, Lcom/can/ui/draw/Track;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/can/ui/draw/Track;->getDefaultSize(II)I

    move-result p2

    .line 82
    invoke-virtual {p0}, Lcom/can/ui/draw/Track;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/can/ui/draw/Track;->getDefaultSize(II)I

    move-result p1

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/can/ui/draw/Track;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 88
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "PARENT"

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 91
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 96
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PARENT"

    .line 99
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method
