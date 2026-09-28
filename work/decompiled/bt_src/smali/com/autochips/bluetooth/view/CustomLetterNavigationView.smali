.class public Lcom/autochips/bluetooth/view/CustomLetterNavigationView;
.super Landroid/view/View;
.source "CustomLetterNavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/view/CustomLetterNavigationView$OnNavigationScrollerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomLetterNavigation"


# instance fields
.field private mBackGroundAngle:I

.field private mBackgroundColor:I

.field private mContentDiv:F

.field private mContentTextColor:I

.field private mContentTextSize:F

.field private mCurSelectIndex:I

.field private mCurrentLetter:Ljava/lang/String;

.field private mDownContentTextColor:I

.field private mEventActionState:Z

.field private mNavigationContent:[Ljava/lang/String;

.field private mOnNavigationScrollerListener:Lcom/autochips/bluetooth/view/CustomLetterNavigationView$OnNavigationScrollerListener;

.field private mPaintBackgrount:Landroid/graphics/Paint;

.field private mSelectTextPaint:Landroid/text/TextPaint;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 36
    iput p3, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mBackGroundAngle:I

    .line 42
    iput-boolean p3, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mEventActionState:Z

    const-string p3, ""

    .line 43
    iput-object p3, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mCurrentLetter:Ljava/lang/String;

    const/4 p3, -0x1

    .line 45
    iput p3, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mCurSelectIndex:I

    .line 57
    invoke-direct {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->initDefaultData()V

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getContentLength()I
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mNavigationContent:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 246
    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 228
    sget-object v0, Lcom/autochips/bluetooth/R$styleable;->CustomLetterNavigationView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 229
    iget p2, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mContentTextColor:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mContentTextColor:I

    .line 230
    iget p2, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mBackgroundColor:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mBackgroundColor:I

    .line 231
    iget p2, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mDownContentTextColor:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mDownContentTextColor:I

    .line 232
    iget p2, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mContentTextSize:F

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mContentTextSize:F

    .line 233
    iget p2, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mContentDiv:F

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mContentDiv:F

    .line 234
    iget p2, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mBackGroundAngle:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mBackGroundAngle:I

    .line 235
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initDefaultData()V
    .locals 28

    move-object/from16 v0, p0

    const-string v1, "A"

    const-string v2, "B"

    const-string v3, "C"

    const-string v4, "D"

    const-string v5, "E"

    const-string v6, "F"

    const-string v7, "G"

    const-string v8, "H"

    const-string v9, "I"

    const-string v10, "J"

    const-string v11, "K"

    const-string v12, "L"

    const-string v13, "M"

    const-string v14, "N"

    const-string v15, "O"

    const-string v16, "P"

    const-string v17, "Q"

    const-string v18, "R"

    const-string v19, "S"

    const-string v20, "T"

    const-string v21, "U"

    const-string v22, "V"

    const-string v23, "W"

    const-string v24, "X"

    const-string v25, "Y"

    const-string v26, "Z"

    const-string v27, "#"

    .line 195
    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mNavigationContent:[Ljava/lang/String;

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mContentDiv:F

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v3, 0x2

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v3, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mContentTextSize:F

    const/4 v1, -0x1

    .line 198
    iput v1, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mContentTextColor:I

    const-string v1, "#2FB6E6"

    .line 199
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mDownContentTextColor:I

    const-string v1, "#d7d7d7"

    .line 200
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mBackgroundColor:I

    const/4 v1, 0x0

    .line 201
    iput v1, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mBackGroundAngle:I

    .line 203
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mTextPaint:Landroid/text/TextPaint;

    .line 204
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 205
    iget-object v1, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mTextPaint:Landroid/text/TextPaint;

    iget v3, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mContentTextSize:F

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 206
    iget-object v1, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mTextPaint:Landroid/text/TextPaint;

    iget v3, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mContentTextColor:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 207
    iget-object v1, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 209
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mSelectTextPaint:Landroid/text/TextPaint;

    .line 210
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 211
    iget-object v1, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mSelectTextPaint:Landroid/text/TextPaint;

    iget v3, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mContentTextSize:F

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 212
    iget-object v1, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mSelectTextPaint:Landroid/text/TextPaint;

    iget v3, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mDownContentTextColor:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 213
    iget-object v1, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mSelectTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 216
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mPaintBackgrount:Landroid/graphics/Paint;

    .line 217
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 218
    iget-object v1, v0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mPaintBackgrount:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private scrollCount(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getContentLength()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mNavigationContent:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 261
    iget-object v1, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mCurrentLetter:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    iput-object v0, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mCurrentLetter:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mOnNavigationScrollerListener:Lcom/autochips/bluetooth/view/CustomLetterNavigationView$OnNavigationScrollerListener;

    if-eqz v1, :cond_0

    .line 264
    invoke-interface {v1, v0, p1}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView$OnNavigationScrollerListener;->onScroll(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public measureTextSize()Landroid/graphics/Rect;
    .locals 5

    .line 276
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mTextPaint:Landroid/text/TextPaint;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "\u7530"

    .line 278
    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 75
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getWidth()I

    move-result v0

    .line 77
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 79
    iget-boolean v0, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mEventActionState:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 80
    iget v0, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mCurSelectIndex:I

    .line 81
    iget-object v3, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mPaintBackgrount:Landroid/graphics/Paint;

    iget v4, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget v3, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mBackGroundAngle:I

    int-to-float v4, v3

    int-to-float v3, v3

    iget-object v5, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mPaintBackgrount:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mContentTextColor:I

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mPaintBackgrount:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    instance-of v3, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_1

    .line 88
    iget-object v3, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mPaintBackgrount:Landroid/graphics/Paint;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    :cond_1
    iget v0, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mBackGroundAngle:I

    int-to-float v3, v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mPaintBackgrount:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v0, -0x1

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 95
    invoke-direct {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getContentLength()I

    move-result v3

    .line 97
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mContentDiv:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getPaddingRight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    int-to-float v5, v3

    div-float/2addr v4, v5

    :goto_1
    if-ge v2, v3, :cond_3

    add-int/lit8 v5, v2, 0x1

    int-to-float v6, v5

    mul-float/2addr v6, v4

    .line 100
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    if-ne v0, v2, :cond_2

    .line 103
    iget-object v7, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mNavigationContent:[Ljava/lang/String;

    aget-object v2, v7, v2

    iget-object v7, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mSelectTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v6, v1, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 105
    :cond_2
    iget-object v7, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mNavigationContent:[Ljava/lang/String;

    aget-object v2, v7, v2

    iget-object v7, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v6, v1, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    move v2, v5

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 147
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 157
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 158
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 160
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 161
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 162
    invoke-direct {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getContentLength()I

    move-result v2

    .line 164
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->measureTextSize()Landroid/graphics/Rect;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/2addr v4, v2

    int-to-float v4, v4

    iget v5, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mContentDiv:F

    add-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 168
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mContentDiv:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-ne v5, v0, :cond_0

    float-to-int p1, v4

    .line 171
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getPaddingLeft()I

    move-result v4

    add-int/2addr p1, v4

    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getPaddingRight()I

    move-result v4

    :goto_0
    add-int/2addr p1, v4

    goto :goto_1

    :cond_0
    if-ne v3, v0, :cond_1

    int-to-float v6, p1

    cmpg-float v6, v6, v4

    if-gez v6, :cond_1

    float-to-int p1, v4

    .line 175
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getPaddingLeft()I

    move-result v4

    add-int/2addr p1, v4

    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getPaddingRight()I

    move-result v4

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v5, v1, :cond_2

    float-to-int p2, v2

    .line 180
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getPaddingBottom()I

    move-result v0

    :goto_2
    add-int/2addr p2, v0

    goto :goto_3

    :cond_2
    if-ne v3, v0, :cond_3

    int-to-float v0, p2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    float-to-int p2, v2

    .line 184
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getPaddingBottom()I

    move-result v0

    goto :goto_2

    .line 187
    :cond_3
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 116
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mContentDiv:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-direct {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getContentLength()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 117
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mCurSelectIndex:I

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->invalidate()V

    .line 130
    iget p1, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mCurSelectIndex:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->scrollCount(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 134
    iput-boolean p1, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mEventActionState:Z

    .line 135
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->invalidate()V

    .line 136
    iget-object p1, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mOnNavigationScrollerListener:Lcom/autochips/bluetooth/view/CustomLetterNavigationView$OnNavigationScrollerListener;

    if-eqz p1, :cond_4

    .line 137
    invoke-interface {p1}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView$OnNavigationScrollerListener;->onUp()V

    goto :goto_0

    .line 121
    :cond_2
    iput-boolean v0, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mEventActionState:Z

    .line 122
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->invalidate()V

    .line 123
    iget-object p1, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mOnNavigationScrollerListener:Lcom/autochips/bluetooth/view/CustomLetterNavigationView$OnNavigationScrollerListener;

    if-eqz p1, :cond_3

    .line 124
    invoke-interface {p1}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView$OnNavigationScrollerListener;->onDown()V

    .line 126
    :cond_3
    iget p1, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mCurSelectIndex:I

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->scrollCount(I)V

    :cond_4
    :goto_0
    return v0
.end method

.method public setNavigationContent(Ljava/lang/String;)V
    .locals 3

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mNavigationContent:[Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mNavigationContent:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 302
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mNavigationContent:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->requestLayout()V

    return-void
.end method

.method public setOnNavigationScrollerListener(Lcom/autochips/bluetooth/view/CustomLetterNavigationView$OnNavigationScrollerListener;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->mOnNavigationScrollerListener:Lcom/autochips/bluetooth/view/CustomLetterNavigationView$OnNavigationScrollerListener;

    return-void
.end method
