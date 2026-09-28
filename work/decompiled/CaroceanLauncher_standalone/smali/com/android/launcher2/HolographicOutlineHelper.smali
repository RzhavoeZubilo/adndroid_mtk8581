.class public Lcom/android/launcher2/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "HolographicOutlineHelper.java"


# static fields
.field private static final EXTRA_THICK:I = 0x2

.field public static final MAX_OUTER_BLUR_RADIUS:I

.field private static final MEDIUM:I = 0x1

.field public static final MIN_OUTER_BLUR_RADIUS:I

.field private static final THICK:I

.field private static final sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# instance fields
.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mHolographicPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 47
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenDensity()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    float-to-int v2, v1

    .line 49
    sput v2, Lcom/android/launcher2/HolographicOutlineHelper;->MIN_OUTER_BLUR_RADIUS:I

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v2, v0

    float-to-int v3, v2

    .line 50
    sput v3, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 52
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v2, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v3, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 53
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v3, v0

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v2, Lcom/android/launcher2/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 54
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v0

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v4, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v2, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 55
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v5, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v1, v5}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v2, Lcom/android/launcher2/HolographicOutlineHelper;->sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 56
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v3, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 57
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v0, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 58
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget-object v1, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v4, v1}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v0, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 28
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 29
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    const/4 p0, 0x1

    .line 62
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 63
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 65
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 67
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 68
    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static highlightAlphaInterpolator(F)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    const p0, 0x3f19999a    # 0.6f

    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 77
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static viewAlphaInterpolator(F)F
    .locals 4

    const v0, 0x3f733333    # 0.95f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    div-float/2addr p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 86
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method


# virtual methods
.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 98
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZI)V

    return-void
.end method

.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v1, p6

    const/4 v8, 0x0

    if-eqz p5, :cond_2

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v3, v2, [I

    const/4 v11, 0x0

    .line 109
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v9, p1

    move-object v10, v3

    .line 108
    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v4, v8

    :goto_0
    if-ge v4, v2, :cond_1

    .line 111
    aget v5, v3, v4

    ushr-int/lit8 v5, v5, 0x18

    const/16 v6, 0xbc

    if-ge v5, v6, :cond_0

    .line 113
    aput v8, v3, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v9, p1

    move-object v10, v3

    .line 116
    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 119
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v9

    const-string v2, "Invalid blur thickness"

    const/4 v3, 0x2

    const/4 v10, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v10, :cond_4

    if-ne v1, v3, :cond_3

    .line 125
    sget-object v4, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    goto :goto_1

    .line 134
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_4
    sget-object v4, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    goto :goto_1

    .line 128
    :cond_5
    sget-object v4, Lcom/android/launcher2/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 136
    :goto_1
    iget-object v5, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-array v11, v3, [I

    .line 138
    iget-object v4, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v4, v11}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v12

    if-ne v1, v3, :cond_6

    .line 140
    iget-object v4, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v5, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_2

    .line 142
    :cond_6
    iget-object v4, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v5, Lcom/android/launcher2/HolographicOutlineHelper;->sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_2
    new-array v13, v3, [I

    .line 146
    iget-object v4, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v4, v13}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 149
    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/high16 v4, -0x1000000

    .line 150
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz v1, :cond_9

    if-eq v1, v10, :cond_8

    if-ne v1, v3, :cond_7

    .line 154
    sget-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    goto :goto_3

    .line 163
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_8
    sget-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    goto :goto_3

    .line 157
    :cond_9
    sget-object v1, Lcom/android/launcher2/HolographicOutlineHelper;->sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 165
    :goto_3
    iget-object v2, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    new-array v15, v3, [I

    .line 167
    iget-object v1, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v15}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 170
    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 171
    aget v1, v15, v8

    neg-int v1, v1

    int-to-float v1, v1

    aget v2, v15, v10

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 173
    aget v1, v15, v8

    neg-int v1, v1

    int-to-float v4, v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v16, v1

    move-object/from16 v1, p2

    move-object/from16 p5, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 175
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v4, v1

    aget v1, v15, v10

    neg-int v1, v1

    int-to-float v5, v1

    iget-object v6, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v1, p1

    .line 179
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 180
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 181
    iget-object v1, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    aget v1, v15, v8

    int-to-float v1, v1

    aget v2, v15, v10

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p5

    invoke-virtual {v7, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 184
    aget v1, v11, v8

    int-to-float v1, v1

    aget v2, v11, v10

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 188
    iget-object v1, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    aget v1, v13, v8

    int-to-float v1, v1

    aget v2, v13, v10

    int-to-float v2, v2

    iget-object v0, v0, Lcom/android/launcher2/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 193
    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 196
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method applyExtraThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 202
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    return-void
.end method

.method applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 218
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    return-void
.end method

.method applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 212
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZI)V

    return-void
.end method

.method applyThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 207
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    return-void
.end method
