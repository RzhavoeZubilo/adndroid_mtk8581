.class public Lcom/android/launcher2/popuView/AnimationFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AnimationFrameLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimationFrameLayout"


# instance fields
.field private downXValueAnimator:Landroid/animation/ValueAnimator;

.field private downYValueAnimator:Landroid/animation/ValueAnimator;

.field private enableAnimator:Z

.field private mAnimaDownSelect:Landroid/graphics/drawable/Drawable;

.field private mAnimaDownSelectResource:I

.field private mAnimaUpSelect:Landroid/graphics/drawable/Drawable;

.field private mAnimaUpSelectResource:I

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mDownDrawableHeight:I

.field private mDownDrawableWidth:I

.field private mDownXPos:I

.field private mDownYPos:I

.field private mUpDrawableHeight:I

.field private mUpDrawableWidth:I

.field private mUpXPos:I

.field private mUpYPos:I

.field private upXValueAnimator:Landroid/animation/ValueAnimator;

.field private upYValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpXPos:I

    .line 27
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpYPos:I

    .line 31
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownXPos:I

    .line 32
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownYPos:I

    .line 34
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpDrawableWidth:I

    .line 35
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpDrawableHeight:I

    .line 36
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownDrawableWidth:I

    .line 37
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownDrawableHeight:I

    .line 41
    iput-boolean p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->enableAnimator:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p4, 0x0

    .line 26
    iput p4, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpXPos:I

    .line 27
    iput p4, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpYPos:I

    .line 31
    iput p4, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownXPos:I

    .line 32
    iput p4, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownYPos:I

    .line 34
    iput p4, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpDrawableWidth:I

    .line 35
    iput p4, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpDrawableHeight:I

    .line 36
    iput p4, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownDrawableWidth:I

    .line 37
    iput p4, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownDrawableHeight:I

    .line 41
    iput-boolean p4, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->enableAnimator:Z

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/popuView/AnimationFrameLayout;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpXPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/launcher2/popuView/AnimationFrameLayout;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpYPos:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/launcher2/popuView/AnimationFrameLayout;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownXPos:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/launcher2/popuView/AnimationFrameLayout;I)I
    .locals 0

    .line 15
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownYPos:I

    return p1
.end method

.method private drawDownSelect(Landroid/graphics/Canvas;)V
    .locals 7

    .line 212
    iget-object v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimaDownSelect:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 219
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->getScrollX()I

    move-result v1

    .line 220
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->getScrollY()I

    move-result v2

    .line 221
    iget-object v4, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownXPos:I

    goto :goto_0

    :cond_1
    move v4, v3

    .line 222
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v3, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownYPos:I

    :cond_2
    sub-int/2addr v5, v3

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    or-int p0, v1, v2

    if-nez p0, :cond_3

    int-to-float p0, v4

    int-to-float v1, v5

    .line 225
    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p0, v4

    int-to-float p0, p0

    .line 227
    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_3
    add-int p0, v4, v1

    int-to-float p0, p0

    add-int v3, v5, v2

    int-to-float v3, v3

    .line 229
    invoke-virtual {p1, p0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 230
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sub-int/2addr v4, v1

    int-to-float p0, v4

    sub-int/2addr v5, v2

    int-to-float v0, v5

    .line 231
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 233
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawUpSelect(Landroid/graphics/Canvas;)V
    .locals 6

    .line 157
    iget-object v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimaUpSelect:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 164
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->getScrollX()I

    move-result v1

    .line 165
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->getScrollY()I

    move-result v2

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpXPos:I

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    sub-int/2addr v4, v5

    .line 167
    iget-object v5, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v3, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpYPos:I

    .line 168
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    or-int p0, v1, v2

    if-nez p0, :cond_3

    int-to-float p0, v4

    int-to-float v1, v3

    .line 170
    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 171
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p0, v4

    int-to-float p0, p0

    .line 172
    invoke-virtual {p1, p0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_3
    add-int p0, v4, v1

    int-to-float p0, p0

    add-int v5, v3, v2

    int-to-float v5, v5

    .line 174
    invoke-virtual {p1, p0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 175
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sub-int/2addr v4, v1

    int-to-float p0, v4

    sub-int/2addr v3, v2

    int-to-float v0, v3

    .line 176
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 178
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 103
    sget-object v0, Lcom/yecon/launcher1/R$styleable;->AnimationFrameLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimaUpSelect:Landroid/graphics/drawable/Drawable;

    .line 106
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimaDownSelect:Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x5

    .line 107
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpDrawableWidth:I

    const/4 p3, 0x4

    .line 108
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpDrawableHeight:I

    const/4 p3, 0x3

    .line 109
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownDrawableWidth:I

    const/4 p3, 0x2

    .line 110
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownDrawableHeight:I

    .line 111
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    iget p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpDrawableWidth:I

    neg-int p1, p1

    iput p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpXPos:I

    .line 114
    iget v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpDrawableHeight:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpYPos:I

    .line 115
    iget v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownDrawableWidth:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownXPos:I

    .line 116
    iget v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownDrawableHeight:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownYPos:I

    new-array v0, p3, [I

    aput p1, v0, v1

    aput v1, v0, p2

    .line 117
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->upXValueAnimator:Landroid/animation/ValueAnimator;

    .line 118
    new-instance v0, Lcom/android/launcher2/popuView/AnimationFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout$1;-><init>(Lcom/android/launcher2/popuView/AnimationFrameLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, p3, [I

    .line 125
    iget v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mUpYPos:I

    aput v0, p1, v1

    aput v1, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->upYValueAnimator:Landroid/animation/ValueAnimator;

    .line 126
    new-instance v0, Lcom/android/launcher2/popuView/AnimationFrameLayout$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout$2;-><init>(Lcom/android/launcher2/popuView/AnimationFrameLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, p3, [I

    .line 133
    iget v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownXPos:I

    aput v0, p1, v1

    aput v1, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->downXValueAnimator:Landroid/animation/ValueAnimator;

    .line 134
    new-instance v0, Lcom/android/launcher2/popuView/AnimationFrameLayout$3;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout$3;-><init>(Lcom/android/launcher2/popuView/AnimationFrameLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, p3, [I

    .line 141
    iget p3, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mDownYPos:I

    aput p3, p1, v1

    aput v1, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->downYValueAnimator:Landroid/animation/ValueAnimator;

    .line 142
    new-instance p2, Lcom/android/launcher2/popuView/AnimationFrameLayout$4;

    invoke-direct {p2, p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout$4;-><init>(Lcom/android/launcher2/popuView/AnimationFrameLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 150
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 151
    iget-object p2, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->upXValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->upYValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->downXValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->downYValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 152
    iget-object p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 153
    iget-object p0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->drawUpSelect(Landroid/graphics/Canvas;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->drawDownSelect(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 5

    .line 65
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->getDrawableState()[I

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimaUpSelect:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 73
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimaDownSelect:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 74
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v1, v0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->enableAnimator:Z

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 81
    :cond_2
    iput-boolean v2, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->enableAnimator:Z

    .line 82
    iget-object v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :goto_1
    if-eqz v1, :cond_3

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 92
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setAnimaDownSelect(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 251
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->setAnimaDownSelectDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setAnimaDownSelectDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimaDownSelect:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 259
    iput v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimaDownSelectResource:I

    .line 261
    iput-object p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimaDownSelect:Landroid/graphics/drawable/Drawable;

    .line 263
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->invalidate()V

    return-void
.end method

.method public setAnimaDownSelectResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 237
    iget v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimaDownSelectResource:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 245
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->setAnimaDownSelect(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimaDownSelectResource:I

    return-void
.end method

.method public setAnimaUpSelect(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->setAnimaUpSelectDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setAnimaUpSelectDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimaUpSelect:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 204
    iput v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimaUpSelectResource:I

    .line 206
    iput-object p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimaUpSelect:Landroid/graphics/drawable/Drawable;

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->invalidate()V

    return-void
.end method

.method public setAnimaUpSelectResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 182
    iget v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimaUpSelectResource:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 190
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->setAnimaUpSelect(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iput p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->mAnimaUpSelectResource:I

    return-void
.end method

.method public setEnableAnimator(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout;->enableAnimator:Z

    return-void
.end method
