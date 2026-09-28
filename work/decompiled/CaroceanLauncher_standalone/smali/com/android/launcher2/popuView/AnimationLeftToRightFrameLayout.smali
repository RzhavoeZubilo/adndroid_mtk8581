.class public Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AnimationLeftToRightFrameLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimationLeftToRightFrameLayout"


# instance fields
.field private enableAnimator:Z

.field private mAnimaBackground:Landroid/graphics/drawable/Drawable;

.field private mAnimaBackgroundSelectResource:I

.field private mAnimaDrawableWidth:I

.field private mXPos:I

.field private xValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->mXPos:I

    .line 23
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->mAnimaDrawableWidth:I

    .line 25
    iput-boolean p1, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->enableAnimator:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, 0x0

    .line 21
    iput p4, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->mXPos:I

    .line 23
    iput p4, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->mAnimaDrawableWidth:I

    .line 25
    iput-boolean p4, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->enableAnimator:Z

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;I)I
    .locals 0

    .line 14
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->mXPos:I

    return p1
.end method

.method private drawAnimaSelect(Landroid/graphics/Canvas;)V
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->mAnimaBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->getScrollX()I

    move-result v1

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->getScrollY()I

    move-result v2

    .line 110
    iget-object v4, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->xValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    iget p0, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->mXPos:I

    goto :goto_0

    :cond_1
    move p0, v3

    .line 112
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    or-int v4, v1, v2

    if-nez v4, :cond_2

    int-to-float v1, p0

    const/4 v2, 0x0

    .line 114
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 115
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p0, p0

    int-to-float p0, p0

    .line 116
    invoke-virtual {p1, p0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_2
    add-int v4, p0, v1

    int-to-float v4, v4

    add-int/lit8 v5, v2, 0x0

    int-to-float v5, v5

    .line 118
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 119
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sub-int/2addr p0, v1

    int-to-float p0, p0

    sub-int/2addr v3, v2

    int-to-float v0, v3

    .line 120
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 122
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 81
    sget-object v0, Lcom/yecon/launcher1/R$styleable;->AnimationLeftToRightFrameLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->mAnimaBackground:Landroid/graphics/drawable/Drawable;

    .line 84
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->mAnimaDrawableWidth:I

    .line 85
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    iget p1, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->mAnimaDrawableWidth:I

    neg-int p1, p1

    iput p1, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->mXPos:I

    const/4 p3, 0x2

    new-array p3, p3, [I

    aput p1, p3, v1

    aput v1, p3, p2

    .line 88
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->xValueAnimator:Landroid/animation/ValueAnimator;

    .line 89
    new-instance p2, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout$1;

    invoke-direct {p2, p0}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout$1;-><init>(Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 96
    iget-object p1, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->xValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 97
    iget-object p0, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->xValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 49
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 50
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->getDrawableState()[I

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->mAnimaBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->enableAnimator:Z

    if-eqz v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->xValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 60
    :cond_1
    iput-boolean v2, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->enableAnimator:Z

    .line 61
    iget-object v1, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->xValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_1
    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->drawAnimaSelect(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setAnimaSelect(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->setAnimaSelectDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setAnimaSelectDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->mAnimaBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->mAnimaBackgroundSelectResource:I

    .line 150
    iput-object p1, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->mAnimaBackground:Landroid/graphics/drawable/Drawable;

    .line 152
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->invalidate()V

    return-void
.end method

.method public setAnimaSelectResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 126
    iget v0, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->mAnimaBackgroundSelectResource:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->setAnimaSelect(Landroid/graphics/drawable/Drawable;)V

    .line 136
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->mAnimaBackgroundSelectResource:I

    return-void
.end method

.method public setEnableAnimator(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->enableAnimator:Z

    return-void
.end method
