.class public Lcom/android/launcher2/DragView;
.super Landroid/view/View;
.source "DragView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DragView"

.field private static sDragAlpha:F = 1.0f


# instance fields
.field mAnim:Landroid/animation/ValueAnimator;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCrossFadeBitmap:Landroid/graphics/Bitmap;

.field private mCrossFadeProgress:F

.field private mDragLayer:Lcom/android/launcher2/DragLayer;

.field private mDragRegion:Landroid/graphics/Rect;

.field private mDragVisualizeOffset:Landroid/graphics/Point;

.field private mHasDrawn:Z

.field private mInitialScale:F

.field private mOffsetX:F

.field private mOffsetY:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRegistrationX:I

.field private mRegistrationY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V
    .locals 13

    move-object v6, p0

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v4, p9

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 47
    iput-object v0, v6, Lcom/android/launcher2/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    .line 48
    iput-object v0, v6, Lcom/android/launcher2/DragView;->mDragRegion:Landroid/graphics/Rect;

    .line 49
    iput-object v0, v6, Lcom/android/launcher2/DragView;->mDragLayer:Lcom/android/launcher2/DragLayer;

    const/4 v9, 0x0

    .line 50
    iput-boolean v9, v6, Lcom/android/launcher2/DragView;->mHasDrawn:Z

    const/4 v0, 0x0

    .line 51
    iput v0, v6, Lcom/android/launcher2/DragView;->mCrossFadeProgress:F

    .line 54
    iput v0, v6, Lcom/android/launcher2/DragView;->mOffsetX:F

    .line 55
    iput v0, v6, Lcom/android/launcher2/DragView;->mOffsetY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 56
    iput v0, v6, Lcom/android/launcher2/DragView;->mInitialScale:F

    .line 72
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    iput-object v0, v6, Lcom/android/launcher2/DragView;->mDragLayer:Lcom/android/launcher2/DragLayer;

    .line 73
    iput v4, v6, Lcom/android/launcher2/DragView;->mInitialScale:F

    .line 75
    invoke-virtual {p0}, Lcom/android/launcher2/DragView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004c

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v2, v1

    const v1, 0x7f06004d

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v3, v1

    const v1, 0x7f06004e

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v7

    add-float/2addr v0, v1

    div-float v5, v0, v1

    .line 82
    invoke-virtual {p0, v4}, Lcom/android/launcher2/DragView;->setScaleX(F)V

    .line 83
    invoke-virtual {p0, v4}, Lcom/android/launcher2/DragView;->setScaleY(F)V

    const/4 v10, 0x2

    new-array v0, v10, [F

    .line 86
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v6, Lcom/android/launcher2/DragView;->mAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v11, 0x96

    .line 87
    invoke-virtual {v0, v11, v12}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 88
    iget-object v11, v6, Lcom/android/launcher2/DragView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v12, Lcom/android/launcher2/DragView$1;

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/DragView$1;-><init>(Lcom/android/launcher2/DragView;FFFF)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v0, p2

    move/from16 v1, p5

    move/from16 v2, p6

    .line 113
    invoke-static {p2, v1, v2, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v6, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    move/from16 v0, p3

    .line 117
    iput v0, v6, Lcom/android/launcher2/DragView;->mRegistrationX:I

    move/from16 v0, p4

    .line 118
    iput v0, v6, Lcom/android/launcher2/DragView;->mRegistrationY:I

    .line 120
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DragView constructor: mRegistrationX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/android/launcher2/DragView;->mRegistrationX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRegistrationY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Lcom/android/launcher2/DragView;->mRegistrationY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DragView"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 127
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher2/DragView;->measure(II)V

    .line 128
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v6, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/launcher2/DragView;)F
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/launcher2/DragView;->mOffsetX:F

    return p0
.end method

.method static synthetic access$002(Lcom/android/launcher2/DragView;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/android/launcher2/DragView;->mOffsetX:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/DragView;)F
    .locals 0

    .line 37
    iget p0, p0, Lcom/android/launcher2/DragView;->mOffsetY:F

    return p0
.end method

.method static synthetic access$102(Lcom/android/launcher2/DragView;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/android/launcher2/DragView;->mOffsetY:F

    return p1
.end method

.method static synthetic access$200()F
    .locals 1

    .line 37
    sget v0, Lcom/android/launcher2/DragView;->sDragAlpha:F

    return v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/DragView;F)F
    .locals 0

    .line 37
    iput p1, p0, Lcom/android/launcher2/DragView;->mCrossFadeProgress:F

    return p1
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object p0, p0, Lcom/android/launcher2/DragView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public crossFade(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 214
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v1, p1

    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 216
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {p1, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 217
    new-instance p1, Lcom/android/launcher2/DragView$2;

    invoke-direct {p1, p0}, Lcom/android/launcher2/DragView$2;-><init>(Lcom/android/launcher2/DragView;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 223
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getDragRegion()Landroid/graphics/Rect;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/launcher2/DragView;->mDragRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getDragRegionHeight()I
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/launcher2/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public getDragRegionLeft()I
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/launcher2/DragView;->mDragRegion:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getDragRegionTop()I
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/launcher2/DragView;->mDragRegion:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public getDragRegionWidth()I
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/launcher2/DragView;->mDragRegion:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public getDragVisualizeOffset()Landroid/graphics/Point;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/launcher2/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    return-object p0
.end method

.method public getInitialScale()F
    .locals 0

    .line 168
    iget p0, p0, Lcom/android/launcher2/DragView;->mInitialScale:F

    return p0
.end method

.method public getOffsetY()F
    .locals 0

    .line 132
    iget p0, p0, Lcom/android/launcher2/DragView;->mOffsetY:F

    return p0
.end method

.method public hasDrawn()Z
    .locals 0

    .line 239
    iget-boolean p0, p0, Lcom/android/launcher2/DragView;->mHasDrawn:Z

    return p0
.end method

.method isHotseat(II)V
    .locals 0

    return-void
.end method

.method move(II)V
    .locals 1

    .line 300
    iget v0, p0, Lcom/android/launcher2/DragView;->mRegistrationX:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/launcher2/DragView;->mOffsetX:F

    float-to-int v0, v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/DragView;->setTranslationX(F)V

    .line 301
    iget p1, p0, Lcom/android/launcher2/DragView;->mRegistrationY:I

    sub-int/2addr p2, p1

    iget p1, p0, Lcom/android/launcher2/DragView;->mOffsetY:F

    float-to-int p1, p1

    add-int/2addr p2, p1

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/DragView;->setTranslationY(F)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 185
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 186
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const v0, 0x66ffffff

    .line 187
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    invoke-virtual {p0}, Lcom/android/launcher2/DragView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/launcher2/DragView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/android/launcher2/DragView;->mHasDrawn:Z

    .line 192
    iget v1, p0, Lcom/android/launcher2/DragView;->mCrossFadeProgress:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v3, 0x437f0000    # 255.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    sub-float v1, v4, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0xff

    .line 195
    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 197
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher2/DragView;->mCrossFadeProgress:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 201
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iget-object v1, p0, Lcom/android/launcher2/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 202
    iget-object v1, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget-object v3, p0, Lcom/android/launcher2/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 203
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 204
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/DragView;->setMeasuredDimension(II)V

    return-void
.end method

.method remove()V
    .locals 2

    .line 312
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove DragView: this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DragView"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/DragLayer;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public resetLayoutParams()V
    .locals 1

    const/4 v0, 0x0

    .line 287
    iput v0, p0, Lcom/android/launcher2/DragView;->mOffsetY:F

    iput v0, p0, Lcom/android/launcher2/DragView;->mOffsetX:F

    .line 288
    invoke-virtual {p0}, Lcom/android/launcher2/DragView;->requestLayout()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 244
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 245
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 246
    invoke-virtual {p0}, Lcom/android/launcher2/DragView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    :cond_0
    if-eqz p1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 233
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/DragView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 235
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/DragView;->invalidate()V

    return-void
.end method

.method public setCrossFadeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/launcher2/DragView;->mCrossFadeBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDragRegion(Landroid/graphics/Rect;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/android/launcher2/DragView;->mDragRegion:Landroid/graphics/Rect;

    return-void
.end method

.method public setDragVisualizeOffset(Landroid/graphics/Point;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/launcher2/DragView;->mDragVisualizeOffset:Landroid/graphics/Point;

    return-void
.end method

.method public show(II)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/android/launcher2/DragView;->mDragLayer:Lcom/android/launcher2/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/DragLayer;->addView(Landroid/view/View;)V

    .line 260
    new-instance v0, Lcom/android/launcher2/DragLayer$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/launcher2/DragLayer$LayoutParams;-><init>(II)V

    .line 261
    iget-object v1, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    .line 262
    iget-object v1, p0, Lcom/android/launcher2/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    const/4 v1, 0x1

    .line 263
    iput-boolean v1, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    .line 264
    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget v1, p0, Lcom/android/launcher2/DragView;->mRegistrationX:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/DragView;->setTranslationX(F)V

    .line 266
    iget p1, p0, Lcom/android/launcher2/DragView;->mRegistrationY:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/DragView;->setTranslationY(F)V

    .line 267
    sget-boolean p1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "show DragView: x = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", y = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", width = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", height = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v0, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", this = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DragView"

    invoke-static {p2, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    new-instance p1, Lcom/android/launcher2/DragView$3;

    invoke-direct {p1, p0}, Lcom/android/launcher2/DragView$3;-><init>(Lcom/android/launcher2/DragView;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/DragView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateInitialScaleToCurrentScale()V
    .locals 1

    .line 172
    invoke-virtual {p0}, Lcom/android/launcher2/DragView;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/DragView;->mInitialScale:F

    return-void
.end method
