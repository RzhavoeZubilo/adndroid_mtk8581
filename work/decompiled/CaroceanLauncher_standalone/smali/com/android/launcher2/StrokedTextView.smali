.class public Lcom/android/launcher2/StrokedTextView;
.super Landroid/widget/TextView;
.source "StrokedTextView.java"


# instance fields
.field private mCache:Landroid/graphics/Bitmap;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mPaint:Landroid/graphics/Paint;

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mTextColor:I

.field private mUpdateCachedBitmap:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/StrokedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/StrokedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/StrokedTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 61
    sget-object v0, Lcom/yecon/launcher1/R$styleable;->StrokedTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/high16 p2, -0x1000000

    .line 63
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/StrokedTextView;->mStrokeColor:I

    const/4 p2, 0x2

    const/4 p3, 0x0

    .line 64
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/launcher2/StrokedTextView;->mStrokeWidth:F

    const/4 p2, 0x1

    const/4 p3, -0x1

    .line 65
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/android/launcher2/StrokedTextView;->mTextColor:I

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    iput-boolean p2, p0, Lcom/android/launcher2/StrokedTextView;->mUpdateCachedBitmap:Z

    .line 70
    iget-object p1, p0, Lcom/android/launcher2/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object p0, p0, Lcom/android/launcher2/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 90
    iget-object v0, p0, Lcom/android/launcher2/StrokedTextView;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 91
    iget-boolean v0, p0, Lcom/android/launcher2/StrokedTextView;->mUpdateCachedBitmap:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher2/StrokedTextView;->getMeasuredWidth()I

    move-result v0

    .line 93
    invoke-virtual {p0}, Lcom/android/launcher2/StrokedTextView;->getMeasuredHeight()I

    move-result v2

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher2/StrokedTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher2/StrokedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 97
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    const-string v7, "x"

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 98
    invoke-virtual {v5, v7, v8, v9, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 101
    iget-object v5, p0, Lcom/android/launcher2/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/android/launcher2/StrokedTextView;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    iget-object v5, p0, Lcom/android/launcher2/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v8, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher2/StrokedTextView;->getPaddingLeft()I

    move-result v5

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher2/StrokedTextView;->getPaddingTop()I

    move-result v7

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher2/StrokedTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    move v10, v8

    .line 108
    :goto_0
    array-length v11, v9

    if-ge v10, v11, :cond_1

    .line 109
    aget-object v11, v9, v10

    if-eqz v11, :cond_0

    .line 110
    aget-object v11, v9, v10

    aget-object v12, v9, v10

    .line 111
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    add-int/2addr v12, v5

    aget-object v13, v9, v10

    .line 112
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    add-int/2addr v13, v7

    .line 110
    invoke-virtual {v11, v5, v7, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    aget-object v11, v9, v10

    iget-object v12, p0, Lcom/android/launcher2/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/StrokedTextView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v0, v5

    sub-int/2addr v0, v6

    .line 118
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    .line 121
    iget-object v4, p0, Lcom/android/launcher2/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/launcher2/StrokedTextView;->mStrokeWidth:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    iget-object v4, p0, Lcom/android/launcher2/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/launcher2/StrokedTextView;->mStrokeColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v4, p0, Lcom/android/launcher2/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/launcher2/StrokedTextView;->getTextSize()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 124
    iget-object v4, p0, Lcom/android/launcher2/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v0, v0

    int-to-float v2, v2

    iget-object v5, p0, Lcom/android/launcher2/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v0, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 127
    iget-object v4, p0, Lcom/android/launcher2/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 128
    iget-object v4, p0, Lcom/android/launcher2/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/launcher2/StrokedTextView;->mTextColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v4, p0, Lcom/android/launcher2/StrokedTextView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/android/launcher2/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3, v0, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 131
    iput-boolean v8, p0, Lcom/android/launcher2/StrokedTextView;->mUpdateCachedBitmap:Z

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/StrokedTextView;->mCache:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/launcher2/StrokedTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 135
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    const/4 p3, 0x1

    .line 82
    iput-boolean p3, p0, Lcom/android/launcher2/StrokedTextView;->mUpdateCachedBitmap:Z

    .line 83
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/StrokedTextView;->mCache:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 85
    iput-object p1, p0, Lcom/android/launcher2/StrokedTextView;->mCache:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lcom/android/launcher2/StrokedTextView;->mUpdateCachedBitmap:Z

    return-void
.end method
