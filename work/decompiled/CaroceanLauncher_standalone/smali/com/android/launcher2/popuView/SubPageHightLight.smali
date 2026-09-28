.class public Lcom/android/launcher2/popuView/SubPageHightLight;
.super Landroid/view/View;
.source "SubPageHightLight.java"


# instance fields
.field private mIndex:I

.field private mLeftBmp:Landroid/graphics/Bitmap;

.field private mMidBmp:Landroid/graphics/Bitmap;

.field private mRightBmp:Landroid/graphics/Bitmap;

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SubPageHightLight;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701ba

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mRightBmp:Landroid/graphics/Bitmap;

    .line 44
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SubPageHightLight;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701bb

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mLeftBmp:Landroid/graphics/Bitmap;

    .line 45
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SubPageHightLight;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701b9

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mMidBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SubPageHightLight;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701ba

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mRightBmp:Landroid/graphics/Bitmap;

    .line 35
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SubPageHightLight;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701bb

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mLeftBmp:Landroid/graphics/Bitmap;

    .line 36
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SubPageHightLight;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701b9

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mMidBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SubPageHightLight;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701ba

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mRightBmp:Landroid/graphics/Bitmap;

    .line 54
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SubPageHightLight;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701bb

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mLeftBmp:Landroid/graphics/Bitmap;

    .line 55
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SubPageHightLight;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701b9

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mMidBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SubPageHightLight;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701ba

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mRightBmp:Landroid/graphics/Bitmap;

    .line 26
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SubPageHightLight;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701bb

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mLeftBmp:Landroid/graphics/Bitmap;

    .line 27
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SubPageHightLight;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701b9

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mMidBmp:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 68
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    iget v0, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mIndex:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mLeftBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mMidBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 77
    iget-object v0, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mRightBmp:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 80
    iget v2, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mX:I

    int-to-float v2, v2

    iget p0, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mY:I

    int-to-float p0, p0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public setPosition(III)V
    .locals 0

    .line 60
    iput p2, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mX:I

    .line 61
    iput p3, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mY:I

    .line 62
    iput p1, p0, Lcom/android/launcher2/popuView/SubPageHightLight;->mIndex:I

    return-void
.end method
