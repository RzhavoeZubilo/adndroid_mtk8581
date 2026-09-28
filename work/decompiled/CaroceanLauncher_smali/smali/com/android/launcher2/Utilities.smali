.class public final Lcom/android/launcher2/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final INTERNAL_PADDING:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Launcher.Utilities"

.field private static sBgBmp:Landroid/graphics/Bitmap; = null

.field private static final sBgPaint:Landroid/graphics/Paint;

.field private static final sBlurPaint:Landroid/graphics/Paint;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I = 0x0

.field static sColors:[I = null

.field private static final sDisabledPaint:Landroid/graphics/Paint;

.field private static final sGlowColorFocusedPaint:Landroid/graphics/Paint;

.field private static final sGlowColorPressedPaint:Landroid/graphics/Paint;

.field private static sHotseatBmp:Landroid/graphics/Bitmap; = null

.field private static final sHotseatPaint:Landroid/graphics/Paint;

.field private static sIconHeight:I = -0x1

.field private static sIconTextureHeight:I = -0x1

.field private static sIconTextureWidth:I = -0x1

.field private static sIconWidth:I = -0x1

.field private static sMaskBmp:Landroid/graphics/Bitmap;

.field private static final sMaskPaint:Landroid/graphics/Paint;

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static sShortcutBmp:Landroid/graphics/Bitmap;

.field private static final sShortcutPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 67
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 70
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/android/launcher2/Utilities;->sBgPaint:Landroid/graphics/Paint;

    .line 71
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/android/launcher2/Utilities;->sShortcutPaint:Landroid/graphics/Paint;

    .line 72
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/android/launcher2/Utilities;->sMaskPaint:Landroid/graphics/Paint;

    .line 73
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/android/launcher2/Utilities;->sHotseatPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 83
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/Utilities;->sColors:[I

    const/4 v0, 0x0

    .line 84
    sput v0, Lcom/android/launcher2/Utilities;->sColorIndex:I

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearBitmap()V
    .locals 1

    const/4 v0, 0x0

    .line 493
    sput-object v0, Lcom/android/launcher2/Utilities;->sBgBmp:Landroid/graphics/Bitmap;

    .line 494
    sput-object v0, Lcom/android/launcher2/Utilities;->sShortcutBmp:Landroid/graphics/Bitmap;

    .line 495
    sput-object v0, Lcom/android/launcher2/Utilities;->sMaskBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method static create3rdIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9

    .line 680
    sget-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 681
    :try_start_0
    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 682
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 685
    :cond_0
    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 686
    sget v2, Lcom/android/launcher2/Utilities;->sIconHeight:I

    .line 688
    instance-of v3, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v3, :cond_1

    .line 689
    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/PaintDrawable;

    .line 690
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 691
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    goto :goto_0

    .line 692
    :cond_1
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 694
    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 695
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 696
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    if-nez v4, :cond_2

    .line 697
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 700
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 701
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-lez v3, :cond_6

    if-lez v4, :cond_6

    if-lt v1, v3, :cond_4

    if-ge v2, v4, :cond_3

    goto :goto_1

    :cond_3
    if-ge v3, v1, :cond_6

    if-ge v4, v2, :cond_6

    move v1, v3

    move v2, v4

    goto :goto_2

    :cond_4
    :goto_1
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    if-le v3, v4, :cond_5

    int-to-float v2, v1

    div-float/2addr v2, v5

    float-to-int v2, v2

    goto :goto_2

    :cond_5
    if-le v4, v3, :cond_6

    int-to-float v1, v2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 720
    :cond_6
    :goto_2
    sget v3, Lcom/android/launcher2/Utilities;->sIconTextureWidth:I

    .line 721
    sget v4, Lcom/android/launcher2/Utilities;->sIconTextureHeight:I

    .line 723
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 726
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sub-int/2addr v3, v1

    .line 728
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v2

    .line 729
    div-int/lit8 v4, v4, 0x2

    .line 744
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v6, 0x7f07025f

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 745
    sget v6, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sget v7, Lcom/android/launcher2/Utilities;->sIconHeight:I

    const/4 v8, 0x0

    invoke-virtual {p1, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 746
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 748
    sget-object p1, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    .line 749
    invoke-virtual {p0, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 753
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 754
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    .line 755
    invoke-virtual {v0, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 757
    monitor-exit v0

    return-object v5

    :catchall_0
    move-exception p0

    .line 758
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    .line 97
    sget v0, Lcom/android/launcher2/Utilities;->sIconTextureWidth:I

    .line 98
    sget v1, Lcom/android/launcher2/Utilities;->sIconTextureHeight:I

    .line 99
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 100
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v0, :cond_0

    if-le v3, v1, :cond_0

    sub-int/2addr v2, v0

    .line 103
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    invoke-static {p0, v2, v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne v2, v0, :cond_1

    if-ne v3, v1, :cond_1

    return-object p0

    .line 112
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v1, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7

    .line 121
    sget-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 122
    :try_start_0
    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 123
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 126
    :cond_0
    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 127
    sget v2, Lcom/android/launcher2/Utilities;->sIconHeight:I

    .line 129
    instance-of v3, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v3, :cond_1

    .line 130
    move-object p1, p0

    check-cast p1, Landroid/graphics/drawable/PaintDrawable;

    .line 131
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 132
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    goto :goto_0

    .line 133
    :cond_1
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 135
    move-object v3, p0

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 136
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 137
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    if-nez v4, :cond_2

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 141
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 142
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez p1, :cond_5

    if-lez v3, :cond_5

    if-lt v1, p1, :cond_3

    if-ge v2, v3, :cond_5

    :cond_3
    int-to-float v4, p1

    int-to-float v5, v3

    div-float/2addr v4, v5

    if-le p1, v3, :cond_4

    int-to-float p1, v1

    div-float/2addr p1, v4

    float-to-int v2, p1

    goto :goto_1

    :cond_4
    if-le v3, p1, :cond_5

    int-to-float p1, v2

    mul-float/2addr p1, v4

    float-to-int v1, p1

    .line 161
    :cond_5
    :goto_1
    sget p1, Lcom/android/launcher2/Utilities;->sIconTextureWidth:I

    .line 162
    sget v3, Lcom/android/launcher2/Utilities;->sIconTextureHeight:I

    .line 164
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 167
    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sub-int/2addr p1, v1

    .line 169
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v3, v2

    .line 170
    div-int/lit8 v3, v3, 0x2

    .line 185
    sget-object v5, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    add-int/2addr v1, p1

    add-int/2addr v2, v3

    .line 186
    invoke-virtual {p0, p1, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 187
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 188
    invoke-virtual {p0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    .line 189
    invoke-virtual {v0, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 191
    monitor-exit v0

    return-object v4

    :catchall_0
    move-exception p0

    .line 192
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lcom/android/launcher2/SceneInfo;)Landroid/graphics/Bitmap;
    .locals 15

    move-object v0, p0

    .line 199
    sget-object v1, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v1

    .line 200
    :try_start_0
    sget v2, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 201
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 203
    :cond_0
    sget v2, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 204
    sget v3, Lcom/android/launcher2/Utilities;->sIconHeight:I

    .line 206
    instance-of v4, v0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v4, :cond_1

    .line 207
    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/PaintDrawable;

    .line 208
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 209
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    goto :goto_0

    .line 210
    :cond_1
    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_2

    .line 212
    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 213
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 214
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v5

    if-nez v5, :cond_2

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 218
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 219
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-lez v4, :cond_6

    if-lez v5, :cond_6

    if-lt v2, v4, :cond_4

    if-ge v3, v5, :cond_3

    goto :goto_1

    :cond_3
    if-ge v4, v2, :cond_6

    if-ge v5, v3, :cond_6

    move v2, v4

    move v3, v5

    goto :goto_2

    :cond_4
    :goto_1
    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    if-le v4, v5, :cond_5

    int-to-float v3, v2

    div-float/2addr v3, v6

    float-to-int v3, v3

    goto :goto_2

    :cond_5
    if-le v5, v4, :cond_6

    int-to-float v2, v3

    mul-float/2addr v2, v6

    float-to-int v2, v2

    .line 238
    :cond_6
    :goto_2
    sget v4, Lcom/android/launcher2/Utilities;->sIconTextureWidth:I

    .line 239
    sget v5, Lcom/android/launcher2/Utilities;->sIconTextureHeight:I

    const-string v6, "hede"

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&&&&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/launcher2/uitl/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 244
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    int-to-float v2, v2

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090029

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v8, v10

    mul-float/2addr v2, v8

    float-to-int v2, v2

    int-to-float v3, v3

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    mul-float/2addr v3, v8

    float-to-int v3, v3

    .line 256
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v8

    if-eqz v8, :cond_7

    int-to-float v8, v2

    .line 257
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_d

    .line 258
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    :goto_3
    float-to-int v3, v3

    goto/16 :goto_8

    .line 262
    :cond_7
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isMRWCustomer()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomerTheme1()Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_7

    :cond_8
    int-to-float v8, v2

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v10

    const v11, 0x7f060004

    const v12, 0x7f060007

    if-eqz v10, :cond_9

    move v10, v11

    goto :goto_4

    :cond_9
    move v10, v12

    :goto_4
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_d

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v11

    goto :goto_5

    :cond_a
    move v3, v12

    :goto_5
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_6

    :cond_b
    move v11, v12

    :goto_6
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    goto :goto_3

    :cond_c
    :goto_7
    int-to-float v8, v2

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_d

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    goto :goto_3

    :cond_d
    :goto_8
    sub-int v8, v4, v2

    .line 275
    div-int/lit8 v8, v8, 0x2

    sub-int v9, v5, v3

    .line 276
    div-int/lit8 v9, v9, 0x2

    .line 283
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/SceneInfo;->needCustomizedIcon()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 284
    sget-object v10, Lcom/android/launcher2/Utilities;->sBgBmp:Landroid/graphics/Bitmap;

    if-nez v10, :cond_e

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 286
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/SceneInfo;->getIconBgResName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "drawable"

    invoke-virtual {v10, v11, v12, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_e

    .line 288
    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 289
    invoke-static {v10, v2, v3}, Lcom/android/launcher2/Utilities;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v10

    sput-object v10, Lcom/android/launcher2/Utilities;->sBgBmp:Landroid/graphics/Bitmap;

    .line 292
    :cond_e
    sget-object v10, Lcom/android/launcher2/Utilities;->sBgBmp:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_f

    .line 293
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int v10, v4, v10

    div-int/lit8 v10, v10, 0x2

    .line 294
    sget-object v11, Lcom/android/launcher2/Utilities;->sBgBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int v11, v5, v11

    div-int/lit8 v11, v11, 0x2

    .line 295
    sget-object v12, Lcom/android/launcher2/Utilities;->sBgBmp:Landroid/graphics/Bitmap;

    int-to-float v10, v10

    int-to-float v11, v11

    sget-object v13, Lcom/android/launcher2/Utilities;->sBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12, v10, v11, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 319
    :cond_f
    sget-object v10, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/SceneInfo;->needCustomizedIcon()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/SceneInfo;->getInnerIconScale()F

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_10

    .line 321
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/SceneInfo;->getInnerIconScale()F

    move-result v11

    int-to-float v12, v2

    mul-float/2addr v12, v11

    float-to-int v12, v12

    int-to-float v13, v3

    mul-float/2addr v13, v11

    float-to-int v11, v13

    sub-int v13, v4, v12

    .line 324
    div-int/lit8 v13, v13, 0x2

    sub-int v14, v5, v11

    .line 325
    div-int/lit8 v14, v14, 0x2

    add-int/2addr v12, v13

    add-int/2addr v11, v14

    .line 326
    invoke-virtual {p0, v13, v14, v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_9

    :cond_10
    add-int v11, v8, v2

    add-int v12, v9, v3

    .line 328
    invoke-virtual {p0, v8, v9, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 330
    :goto_9
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 331
    invoke-virtual {p0, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 332
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/SceneInfo;->isDefault()Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/SceneInfo;->isShortcut()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 336
    sget-object v10, Lcom/android/launcher2/Utilities;->sShortcutBmp:Landroid/graphics/Bitmap;

    if-nez v10, :cond_11

    .line 337
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 338
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/SceneInfo;->getIconShortcutResName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "drawable"

    invoke-virtual {v10, v11, v12, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_11

    .line 340
    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 341
    invoke-static {v10, v2, v3}, Lcom/android/launcher2/Utilities;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v10

    sput-object v10, Lcom/android/launcher2/Utilities;->sShortcutBmp:Landroid/graphics/Bitmap;

    .line 344
    :cond_11
    sget-object v10, Lcom/android/launcher2/Utilities;->sShortcutBmp:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_12

    .line 345
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v4, v10

    div-int/lit8 v4, v4, 0x2

    .line 346
    sget-object v10, Lcom/android/launcher2/Utilities;->sShortcutBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sub-int/2addr v5, v10

    div-int/lit8 v5, v5, 0x2

    .line 347
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 348
    sget-object v10, Lcom/android/launcher2/Utilities;->sShortcutBmp:Landroid/graphics/Bitmap;

    int-to-float v4, v4

    int-to-float v5, v5

    sget-object v11, Lcom/android/launcher2/Utilities;->sShortcutPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v4, v5, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 349
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 354
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/SceneInfo;->needCustomizedIcon()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 355
    sget-object v4, Lcom/android/launcher2/Utilities;->sMaskBmp:Landroid/graphics/Bitmap;

    if-nez v4, :cond_13

    .line 356
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "icon_mask"

    const-string v10, "drawable"

    .line 357
    invoke-virtual {v4, v5, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_13

    .line 359
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 360
    invoke-static {v4, v2, v3}, Lcom/android/launcher2/Utilities;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    sput-object v4, Lcom/android/launcher2/Utilities;->sMaskBmp:Landroid/graphics/Bitmap;

    .line 363
    :cond_13
    sget-object v4, Lcom/android/launcher2/Utilities;->sMaskBmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_14

    .line 364
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 365
    sget-object v4, Lcom/android/launcher2/Utilities;->sMaskBmp:Landroid/graphics/Bitmap;

    int-to-float v5, v8

    int-to-float v10, v9

    sget-object v11, Lcom/android/launcher2/Utilities;->sMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 366
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 370
    :cond_14
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/SceneInfo;->isHotseat()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 371
    sget-object v4, Lcom/android/launcher2/Utilities;->sHotseatBmp:Landroid/graphics/Bitmap;

    if-nez v4, :cond_15

    .line 372
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 373
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/SceneInfo;->getIconShortcutResName()Ljava/lang/String;

    move-result-object v5

    const-string v10, "drawable"

    invoke-virtual {v4, v5, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v10, "hede"

    .line 374
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "$$$$$$$$"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/launcher2/uitl/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_15

    .line 376
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 377
    invoke-static {v4, v2, v3}, Lcom/android/launcher2/Utilities;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/Utilities;->sHotseatBmp:Landroid/graphics/Bitmap;

    .line 380
    :cond_15
    sget-object v2, Lcom/android/launcher2/Utilities;->sHotseatBmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_16

    .line 381
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 382
    sget-object v2, Lcom/android/launcher2/Utilities;->sHotseatBmp:Landroid/graphics/Bitmap;

    int-to-float v3, v8

    int-to-float v4, v9

    sget-object v5, Lcom/android/launcher2/Utilities;->sHotseatPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 383
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 388
    :cond_16
    monitor-exit v1

    return-object v6

    :catchall_0
    move-exception v0

    .line 389
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 6

    .line 396
    sget-object p2, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter p2

    .line 397
    :try_start_0
    sget v0, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 398
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 401
    :cond_0
    sget v0, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 402
    sget v1, Lcom/android/launcher2/Utilities;->sIconHeight:I

    .line 404
    instance-of v2, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v2, :cond_1

    .line 405
    move-object p1, p0

    check-cast p1, Landroid/graphics/drawable/PaintDrawable;

    .line 406
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 407
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    goto :goto_0

    .line 408
    :cond_1
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    .line 410
    move-object v2, p0

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 411
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 412
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    if-nez v3, :cond_2

    .line 413
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 416
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 417
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez p1, :cond_6

    if-lez v2, :cond_6

    if-lt v0, p1, :cond_4

    if-ge v1, v2, :cond_3

    goto :goto_1

    :cond_3
    if-ge p1, v0, :cond_6

    if-ge v2, v1, :cond_6

    move v0, p1

    move v1, v2

    goto :goto_2

    :cond_4
    :goto_1
    int-to-float v3, p1

    int-to-float v4, v2

    div-float/2addr v3, v4

    if-le p1, v2, :cond_5

    int-to-float p1, v0

    div-float/2addr p1, v3

    float-to-int v1, p1

    goto :goto_2

    :cond_5
    if-le v2, p1, :cond_6

    int-to-float p1, v1

    mul-float/2addr p1, v3

    float-to-int v0, p1

    .line 436
    :cond_6
    :goto_2
    sget p1, Lcom/android/launcher2/Utilities;->sIconTextureWidth:I

    int-to-double v2, p1

    const-wide v4, 0x3ff999999999999aL    # 1.6

    mul-double/2addr v2, v4

    double-to-int p1, v2

    .line 437
    sget v2, Lcom/android/launcher2/Utilities;->sIconTextureHeight:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 439
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 442
    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sub-int/2addr p1, v0

    .line 444
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v2, v1

    .line 445
    div-int/lit8 v2, v2, 0x2

    .line 458
    sget-object v4, Lcom/android/launcher2/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    add-int/2addr v0, p1

    add-int/2addr v1, v2

    .line 459
    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 460
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 461
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    .line 462
    invoke-virtual {p2, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 464
    monitor-exit p2

    return-object v3

    :catchall_0
    move-exception p0

    .line 465
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static drawDisabledBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    .line 550
    sget-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 551
    :try_start_0
    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 552
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 554
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 557
    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 559
    sget-object v1, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    .line 561
    invoke-virtual {v0, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 563
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    .line 564
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static drawSelectedAllAppsBitmap(Landroid/graphics/Canvas;IIZLandroid/graphics/Bitmap;)V
    .locals 6

    .line 501
    sget-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 502
    :try_start_0
    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 509
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v1, 0x2

    new-array v3, v1, [I

    .line 512
    sget-object v4, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, v4, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 514
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr p1, v5

    div-int/2addr p1, v1

    int-to-float p1, p1

    .line 515
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    div-int/2addr p2, v1

    int-to-float p2, p2

    .line 516
    aget p4, v3, v2

    int-to-float p4, p4

    add-float/2addr p1, p4

    const/4 p4, 0x1

    aget p4, v3, p4

    int-to-float p4, p4

    add-float/2addr p2, p4

    if-eqz p3, :cond_0

    sget-object p3, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    :goto_0
    invoke-virtual {p0, v4, p1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 519
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 520
    monitor-exit v0

    return-void

    .line 506
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Assertion failed: Utilities not initialized"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 520
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static generateRandomId()I
    .locals 3

    .line 627
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 3

    .line 568
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 569
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 570
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 572
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f060003

    .line 573
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    sput p0, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sput p0, Lcom/android/launcher2/Utilities;->sIconWidth:I

    goto :goto_2

    .line 575
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isMRWCustomer()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomerTheme1()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 578
    :cond_1
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLCCustomer()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f060004

    goto :goto_0

    :cond_2
    const v1, 0x7f060007

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    sput p0, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sput p0, Lcom/android/launcher2/Utilities;->sIconWidth:I

    goto :goto_2

    :cond_3
    :goto_1
    const v1, 0x7f060005

    .line 576
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    sput p0, Lcom/android/launcher2/Utilities;->sIconHeight:I

    sput p0, Lcom/android/launcher2/Utilities;->sIconWidth:I

    .line 581
    :goto_2
    sget p0, Lcom/android/launcher2/Utilities;->sIconWidth:I

    sput p0, Lcom/android/launcher2/Utilities;->sIconTextureHeight:I

    sput p0, Lcom/android/launcher2/Utilities;->sIconTextureWidth:I

    .line 583
    sget-object p0, Lcom/android/launcher2/Utilities;->sBlurPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v0, v2

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v0, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 584
    sget-object p0, Lcom/android/launcher2/Utilities;->sGlowColorPressedPaint:Landroid/graphics/Paint;

    const/16 v0, -0x3d00

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 585
    sget-object p0, Lcom/android/launcher2/Utilities;->sGlowColorFocusedPaint:Landroid/graphics/Paint;

    const/16 v0, -0x7200

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 587
    new-instance p0, Landroid/graphics/ColorMatrix;

    invoke-direct {p0}, Landroid/graphics/ColorMatrix;-><init>()V

    const v0, 0x3e4ccccd    # 0.2f

    .line 588
    invoke-virtual {p0, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 589
    sget-object v0, Lcom/android/launcher2/Utilities;->sDisabledPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, p0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/16 p0, 0x88

    .line 590
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 593
    sget-object p0, Lcom/android/launcher2/Utilities;->sBgPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v1, 0x1

    .line 594
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 595
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 597
    sget-object p0, Lcom/android/launcher2/Utilities;->sShortcutPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 598
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 599
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 601
    sget-object p0, Lcom/android/launcher2/Utilities;->sMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 602
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 603
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 604
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public static isComponentEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 6

    const-string v0, "Launcher.Utilities"

    .line 640
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mediatek.StkSelection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.stk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 644
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v3, 0x0

    .line 649
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 651
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isComponentEnabled NameNotFoundException: pkgName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/launcher2/uitl/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez v3, :cond_1

    .line 655
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isComponentEnabled return false because package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " has been uninstalled!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 659
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    .line 660
    sget-boolean v3, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isComponentEnabled: cmpName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",pkgEnableState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-ne v1, v3, :cond_5

    .line 665
    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    .line 666
    sget-boolean p1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p1, :cond_4

    .line 667
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isComponentEnabled: cmpEnableState = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p0, :cond_6

    if-ne p0, v3, :cond_5

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_1
    return v3

    :cond_7
    :goto_2
    return v2
.end method

.method static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    .line 535
    sget-object v0, Lcom/android/launcher2/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v0

    .line 536
    :try_start_0
    sget v1, Lcom/android/launcher2/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 537
    invoke-static {p1}, Lcom/android/launcher2/Utilities;->initStatics(Landroid/content/Context;)V

    .line 540
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget v2, Lcom/android/launcher2/Utilities;->sIconWidth:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget v2, Lcom/android/launcher2/Utilities;->sIconHeight:I

    if-ne v1, v2, :cond_1

    .line 541
    monitor-exit v0

    return-object p0

    .line 543
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 544
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v2, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 546
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static roundToPow2(I)I
    .locals 3

    shr-int/lit8 v0, p0, 0x1

    const/high16 v1, 0x8000000

    :goto_0
    if-eqz v1, :cond_0

    and-int v2, v0, v1

    if-nez v2, :cond_0

    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    or-int/2addr v0, v1

    shr-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-eq v0, p0, :cond_2

    shl-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method static scaleBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-object p0

    .line 487
    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 488
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 489
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 475
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 476
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v1

    div-float/2addr p2, v0

    .line 479
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/Utilities;->scaleBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
