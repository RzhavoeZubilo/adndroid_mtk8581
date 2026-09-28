.class public Lcom/android/launcher2/HolographicViewHelper;
.super Ljava/lang/Object;
.source "HolographicViewHelper.java"


# instance fields
.field private mHighlightColor:I

.field private mStatesUpdated:Z

.field private final mTempCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HolographicViewHelper;->mTempCanvas:Landroid/graphics/Canvas;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1060012

    .line 39
    invoke-static {p1, v0}, Lcom/android/launcher2/Launcher;->getThemeColor(Landroid/content/res/Resources;I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/HolographicViewHelper;->mHighlightColor:I

    return-void
.end method

.method private createOriginalImage(Landroid/widget/ImageView;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 2

    .line 78
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 79
    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 82
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 84
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 85
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    const/4 p0, 0x0

    .line 86
    invoke-virtual {p2, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method private createPressImage(Landroid/widget/ImageView;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;
    .locals 3

    .line 96
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 97
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 102
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 103
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 104
    iget p0, p0, Lcom/android/launcher2/HolographicViewHelper;->mHighlightColor:I

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 p0, 0x0

    .line 105
    invoke-virtual {p2, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method generatePressedFocusedStates(Landroid/widget/ImageView;)V
    .locals 6

    .line 46
    iget-boolean v0, p0, Lcom/android/launcher2/HolographicViewHelper;->mStatesUpdated:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/android/launcher2/HolographicViewHelper;->mStatesUpdated:Z

    .line 49
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060012

    invoke-static {v1, v2}, Lcom/android/launcher2/Launcher;->getThemeColor(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/HolographicViewHelper;->mHighlightColor:I

    .line 51
    iget-object v1, p0, Lcom/android/launcher2/HolographicViewHelper;->mTempCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/HolographicViewHelper;->createOriginalImage(Landroid/widget/ImageView;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/android/launcher2/HolographicViewHelper;->mTempCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/HolographicViewHelper;->createPressImage(Landroid/widget/ImageView;Landroid/graphics/Canvas;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 53
    new-instance v2, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v2, v1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 54
    new-instance v1, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v1, p0}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    new-instance p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v3, v0, [I

    const v4, 0x10100a7

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 57
    invoke-virtual {p0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v0, [I

    const v3, 0x101009c

    aput v3, v0, v5

    .line 58
    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v0, v5, [I

    .line 59
    invoke-virtual {p0, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method invalidatePressedFocusedStates(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/android/launcher2/HolographicViewHelper;->mStatesUpdated:Z

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method
