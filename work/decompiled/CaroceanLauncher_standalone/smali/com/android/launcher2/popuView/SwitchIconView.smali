.class public Lcom/android/launcher2/popuView/SwitchIconView;
.super Landroid/view/View;
.source "SwitchIconView.java"

# interfaces
.implements Lcom/android/launcher2/DragScroller;


# instance fields
.field private final MAX_ALPHA:I

.field private isWorkSpace:Z

.field private mAlpha:I

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mCurBtnPic:Landroid/graphics/Bitmap;

.field private mCurNum:I

.field private mCurtbPic2:Landroid/graphics/Bitmap;

.field private mHome:Landroid/graphics/Bitmap;

.field private mHomeNum:I

.field private mHomePress:Landroid/graphics/Bitmap;

.field private mNormal:Landroid/graphics/Bitmap;

.field private mNormalPress:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mParent:Landroid/view/ViewParent;

.field private mSaveLayerRectF:Landroid/graphics/RectF;

.field private mWeight:I

.field private mXfermode:Landroid/graphics/PorterDuffXfermode;

.field private yPos:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/popuView/SwitchIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/popuView/SwitchIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput p2, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mCount:I

    .line 61
    iput p3, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mHomeNum:I

    .line 62
    iput-boolean p4, p0, Lcom/android/launcher2/popuView/SwitchIconView;->isWorkSpace:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/popuView/SwitchIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    .line 38
    iput v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mCurNum:I

    const/4 v1, 0x5

    .line 39
    iput v1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mCount:I

    .line 40
    iput v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mHomeNum:I

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->isWorkSpace:Z

    const/16 v1, 0xff

    .line 45
    iput v1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->MAX_ALPHA:I

    .line 47
    iput v1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mAlpha:I

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mWeight:I

    .line 72
    sget-object v2, Lcom/yecon/launcher1/R$styleable;->SwitchIconView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x0

    .line 74
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/android/launcher2/popuView/SwitchIconView;->yPos:F

    .line 75
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result p2

    if-eq p2, v0, :cond_2

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p2

    const p3, 0x7f060097

    if-eqz p2, :cond_1

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/launcher2/popuView/SwitchIconView;->yPos:F

    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/launcher2/popuView/SwitchIconView;->yPos:F

    goto :goto_1

    .line 76
    :cond_2
    :goto_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06007a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/launcher2/popuView/SwitchIconView;->yPos:F

    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060079

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/android/launcher2/popuView/SwitchIconView;->yPos:F

    .line 86
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/SwitchIconView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private attemptClaimDrag()V
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SwitchIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    .line 199
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initView(Landroid/content/Context;)V
    .locals 4

    .line 90
    iput-object p1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mContext:Landroid/content/Context;

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 96
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 97
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0700a8

    .line 98
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mNormal:Landroid/graphics/Bitmap;

    const v0, 0x7f0700a5

    .line 99
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mNormalPress:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_0
    const v0, 0x7f0700a6

    .line 101
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mNormal:Landroid/graphics/Bitmap;

    const v0, 0x7f0700a3

    .line 102
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mNormalPress:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 104
    :cond_1
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLFECustomer()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x7f0702fe

    .line 108
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mNormal:Landroid/graphics/Bitmap;

    const v0, 0x7f0702fd

    .line 109
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mNormalPress:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    :goto_0
    const v0, 0x7f070051

    .line 105
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mNormal:Landroid/graphics/Bitmap;

    const v0, 0x7f070050

    .line 106
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mNormalPress:Landroid/graphics/Bitmap;

    :goto_1
    const v0, 0x7f0702dc

    .line 111
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mHome:Landroid/graphics/Bitmap;

    const v0, 0x7f0702db

    .line 112
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mHomePress:Landroid/graphics/Bitmap;

    .line 113
    iput-object p1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mCurtbPic2:Landroid/graphics/Bitmap;

    .line 130
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SwitchIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 131
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SwitchIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SwitchIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mSaveLayerRectF:Landroid/graphics/RectF;

    .line 135
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public layout(IIII)V
    .locals 0

    .line 264
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 221
    iget v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mWeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->yPos:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 222
    iget-object v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 232
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SwitchIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 233
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v4

    if-eq v4, v1, :cond_1

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SwitchIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto :goto_1

    .line 234
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SwitchIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 239
    :goto_2
    iget v3, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mCount:I

    const/4 v4, 0x0

    if-ge v1, v3, :cond_5

    .line 240
    iget v5, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mHomeNum:I

    if-ne v1, v5, :cond_3

    iget-boolean v5, p0, Lcom/android/launcher2/popuView/SwitchIconView;->isWorkSpace:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mHome:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mNormal:Landroid/graphics/Bitmap;

    :goto_3
    iput-object v5, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mCurBtnPic:Landroid/graphics/Bitmap;

    .line 241
    rem-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_4

    .line 242
    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    div-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v2

    mul-int/2addr v3, v6

    goto :goto_4

    .line 244
    :cond_4
    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    div-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v2

    mul-int/2addr v3, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    :goto_4
    int-to-float v3, v3

    .line 246
    iget-object v6, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 250
    :cond_5
    rem-int/lit8 v1, v3, 0x2

    if-eqz v1, :cond_6

    .line 251
    iget v1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mCurNum:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    mul-int/2addr v1, v0

    goto :goto_5

    .line 253
    :cond_6
    iget v1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mCurNum:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    mul-int/2addr v1, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 255
    :goto_5
    iget-object v0, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mCurtbPic2:Landroid/graphics/Bitmap;

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 258
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onEnterScrollArea(III)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onExitScrollArea()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 270
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SwitchIconView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/launcher2/popuView/SwitchIconView;->getDefaultSize(II)I

    move-result v0

    .line 276
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SwitchIconView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/launcher2/popuView/SwitchIconView;->getDefaultSize(II)I

    move-result v1

    .line 281
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/popuView/SwitchIconView;->setMeasuredDimension(II)V

    .line 283
    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0xe

    iput v1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mWeight:I

    .line 284
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 205
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public scrollLeft()V
    .locals 0

    return-void
.end method

.method public scrollRight()V
    .locals 0

    return-void
.end method

.method public setPackageIndex(IIZ)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mCurNum:I

    .line 141
    iput-boolean p3, p0, Lcom/android/launcher2/popuView/SwitchIconView;->isWorkSpace:Z

    .line 142
    iput p2, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mCount:I

    .line 147
    iget p2, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mHomeNum:I

    if-eq p1, p2, :cond_0

    .line 148
    iget-object p1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mNormalPress:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mCurtbPic2:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_1

    .line 150
    iget-object p1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mHomePress:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mCurtbPic2:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    if-ne p1, p2, :cond_2

    if-nez p3, :cond_2

    .line 152
    iget-object p1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mNormalPress:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/launcher2/popuView/SwitchIconView;->mCurtbPic2:Landroid/graphics/Bitmap;

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/SwitchIconView;->invalidate()V

    :cond_2
    return-void
.end method
