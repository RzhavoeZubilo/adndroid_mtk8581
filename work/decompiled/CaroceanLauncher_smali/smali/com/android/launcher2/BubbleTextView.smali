.class public Lcom/android/launcher2/BubbleTextView;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"


# static fields
.field static final CORNER_RADIUS:F = 4.0f

.field static final PADDING_H:F = 8.0f

.field static final PADDING_V:F = 3.0f

.field static final SHADOW_LARGE_COLOUR:I = -0x23000000

.field static final SHADOW_LARGE_RADIUS:F = 4.0f

.field static final SHADOW_SMALL_COLOUR:I = -0x34000000

.field static final SHADOW_SMALL_RADIUS:F = 1.75f

.field static final SHADOW_Y_OFFSET:F = 2.0f


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private mDidInvalidateForPressedState:Z

.field private mFocusedGlowColor:I

.field private mFocusedOutlineColor:I

.field private mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

.field private final mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field private mPressedGlowColor:I

.field private mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

.field private mPressedOutlineColor:I

.field private mPrevAlpha:I

.field private mStayPressed:Z

.field private final mTempCanvas:Landroid/graphics/Canvas;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/android/launcher2/BubbleTextView;->mPrevAlpha:I

    .line 49
    new-instance p1, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {p1}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/BubbleTextView;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 50
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 51
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 67
    invoke-direct {p0}, Lcom/android/launcher2/BubbleTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/android/launcher2/BubbleTextView;->mPrevAlpha:I

    .line 49
    new-instance p1, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {p1}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/BubbleTextView;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 50
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 51
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 72
    invoke-direct {p0}, Lcom/android/launcher2/BubbleTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/android/launcher2/BubbleTextView;->mPrevAlpha:I

    .line 49
    new-instance p1, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {p1}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/BubbleTextView;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 50
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 51
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 77
    invoke-direct {p0}, Lcom/android/launcher2/BubbleTextView;->init()V

    return-void
.end method

.method private createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;
    .locals 4

    .line 197
    sget v0, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 199
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 198
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 201
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 202
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/BubbleTextView;->drawWithPadding(Landroid/graphics/Canvas;I)V

    .line 203
    iget-object p0, p0, Lcom/android/launcher2/BubbleTextView;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {p0, v1, p1, p3, p2}, Lcom/android/launcher2/HolographicOutlineHelper;->applyExtraThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    const/4 p0, 0x0

    .line 204
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private drawWithPadding(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mTempRect:Landroid/graphics/Rect;

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/launcher2/BubbleTextView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 184
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getScaleY()F

    move-result v2

    .line 185
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getHeight()I

    move-result v4

    add-int/2addr v4, p2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 184
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 186
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v1, p2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getScrollY()I

    move-result v2

    neg-int v2, v2

    add-int/2addr v2, p2

    int-to-float p2, v2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    sget-object p2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/launcher2/BubbleTextView;->draw(Landroid/graphics/Canvas;)V

    .line 189
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 81
    new-instance v0, Lcom/android/launcher2/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060012

    .line 87
    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->getThemeColor(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/BubbleTextView;->mPressedGlowColor:I

    .line 88
    iput v0, p0, Lcom/android/launcher2/BubbleTextView;->mFocusedOutlineColor:I

    .line 89
    iput v0, p0, Lcom/android/launcher2/BubbleTextView;->mFocusedGlowColor:I

    .line 90
    iput v0, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOutlineColor:I

    const/high16 v0, 0x40800000    # 4.0f

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x23000000

    .line 92
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher2/BubbleTextView;->setShadowLayer(FFFI)V

    return-void
.end method


# virtual methods
.method public applyFromShortcutInfo(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/IconCache;)V
    .locals 1

    .line 96
    invoke-virtual {p1, p2}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 98
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v0, p2}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v0, p2, p2}, Lcom/android/launcher2/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object p2, p1, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/android/launcher2/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/launcher2/BubbleTextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public cancelLongPress()V
    .locals 0

    .line 354
    invoke-super {p0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 356
    iget-object p0, p0, Lcom/android/launcher2/BubbleTextView;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method clearPressedOrFocusedBackground()V
    .locals 1

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 269
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 282
    iget-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getScrollX()I

    move-result v1

    .line 285
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getScrollY()I

    move-result v2

    .line 287
    iget-boolean v3, p0, Lcom/android/launcher2/BubbleTextView;->mBackgroundSizeChanged:Z

    if-eqz v3, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 289
    iput-boolean v5, p0, Lcom/android/launcher2/BubbleTextView;->mBackgroundSizeChanged:Z

    :cond_0
    or-int v3, v1, v2

    if-nez v3, :cond_1

    .line 293
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    int-to-float v3, v1

    int-to-float v4, v2

    .line 295
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 296
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v1

    int-to-float v0, v0

    neg-int v1, v2

    int-to-float v1, v1

    .line 297
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 302
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 304
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 307
    invoke-static {p1, p0}, Lcom/android/launcher2/MTKUnreadLoader;->drawUnreadEventIfNeed(Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void

    .line 313
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x23000000

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 314
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 315
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 316
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getScrollX()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v7, v0

    .line 317
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v8, v0

    .line 318
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v9, v0

    sget-object v10, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v5, p1

    .line 316
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 319
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x3fe00000    # 1.75f

    const/high16 v2, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 320
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 321
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 324
    invoke-static {p1, p0}, Lcom/android/launcher2/MTKUnreadLoader;->drawUnreadEventIfNeed(Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 6

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-boolean v0, p0, Lcom/android/launcher2/BubbleTextView;->mDidInvalidateForPressedState:Z

    if-nez v0, :cond_6

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    goto :goto_3

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 138
    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher2/BubbleTextView;->mStayPressed:Z

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 139
    iput-object v4, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 142
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_3

    .line 145
    iput-object v4, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 147
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    iget v4, p0, Lcom/android/launcher2/BubbleTextView;->mFocusedGlowColor:I

    iget v5, p0, Lcom/android/launcher2/BubbleTextView;->mFocusedOutlineColor:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/launcher2/BubbleTextView;->createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 150
    :goto_1
    iput-boolean v2, p0, Lcom/android/launcher2/BubbleTextView;->mStayPressed:Z

    .line 151
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 153
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    .line 155
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    .line 159
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 160
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 161
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 163
    :cond_7
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    return-void
.end method

.method getPressedOrFocusedBackground()Landroid/graphics/Bitmap;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method getPressedOrFocusedBackgroundPadding()I
    .locals 0

    .line 277
    sget p0, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 329
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 330
    iget-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 337
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 338
    iget-object p0, p0, Lcom/android/launcher2/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 339
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1

    .line 345
    iget v0, p0, Lcom/android/launcher2/BubbleTextView;->mPrevAlpha:I

    if-eq v0, p1, :cond_0

    .line 346
    iput p1, p0, Lcom/android/launcher2/BubbleTextView;->mPrevAlpha:I

    .line 347
    invoke-super {p0, p1}, Landroid/widget/TextView;->onSetAlpha(I)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 213
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->isPressed()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 240
    iput-object p1, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 243
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/BubbleTextView;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_1

    .line 220
    :cond_2
    iget-object p1, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez p1, :cond_3

    .line 221
    iget-object p1, p0, Lcom/android/launcher2/BubbleTextView;->mTempCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/android/launcher2/BubbleTextView;->mPressedGlowColor:I

    iget v3, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOutlineColor:I

    invoke-direct {p0, p1, v2, v3}, Lcom/android/launcher2/BubbleTextView;->createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 226
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 227
    iput-boolean v1, p0, Lcom/android/launcher2/BubbleTextView;->mDidInvalidateForPressedState:Z

    .line 228
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 230
    iput-boolean p1, p0, Lcom/android/launcher2/BubbleTextView;->mDidInvalidateForPressedState:Z

    .line 233
    :goto_0
    iget-object p0, p0, Lcom/android/launcher2/BubbleTextView;->mLongPressHelper:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/android/launcher2/CheckLongPressHelper;->postCheckForLongPress()V

    :goto_1
    return v0
.end method

.method setCellLayoutPressedOrFocusedIcon()V
    .locals 2

    .line 258
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 262
    iget-object v1, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setPressedOrFocusedIcon(Lcom/android/launcher2/BubbleTextView;)V

    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getLeft()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getRight()I

    move-result v0

    if-ne v0, p3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getTop()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->getBottom()I

    move-result v0

    if-eq v0, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/android/launcher2/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 110
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result p0

    return p0
.end method

.method setStayPressed(Z)V
    .locals 0

    .line 250
    iput-boolean p1, p0, Lcom/android/launcher2/BubbleTextView;->mStayPressed:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 252
    iput-object p1, p0, Lcom/android/launcher2/BubbleTextView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/BubbleTextView;->setCellLayoutPressedOrFocusedIcon()V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 121
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->checkItemInfo(Lcom/android/launcher2/ItemInfo;)V

    .line 123
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/launcher2/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
