.class Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "WallpaperChooserDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WallpaperChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperDrawable"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mIntrinsicHeight:I

.field mIntrinsicWidth:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 370
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 372
    iget v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;->mIntrinsicWidth:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 373
    iget v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;->mIntrinsicHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 374
    iget-object p0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;->mBitmap:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    return-void

    .line 361
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;->mIntrinsicWidth:I

    .line 362
    iget-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperDrawable;->mIntrinsicHeight:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
