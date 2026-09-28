.class public Lcom/android/launcher2/HolographicLinearLayout;
.super Landroid/widget/LinearLayout;
.source "HolographicLinearLayout.java"


# instance fields
.field private final mHolographicHelper:Lcom/android/launcher2/HolographicViewHelper;

.field private mImageView:Landroid/widget/ImageView;

.field private mImageViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/HolographicLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/HolographicLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget-object v0, Lcom/yecon/launcher1/R$styleable;->HolographicLinearLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, -0x1

    .line 49
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/android/launcher2/HolographicLinearLayout;->mImageViewId:I

    .line 50
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    invoke-virtual {p0, v1}, Lcom/android/launcher2/HolographicLinearLayout;->setWillNotDraw(Z)V

    .line 53
    new-instance p2, Lcom/android/launcher2/HolographicViewHelper;

    invoke-direct {p2, p1}, Lcom/android/launcher2/HolographicViewHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher2/HolographicLinearLayout;->mHolographicHelper:Lcom/android/launcher2/HolographicViewHelper;

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 58
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 60
    iget-object v0, p0, Lcom/android/launcher2/HolographicLinearLayout;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 62
    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 63
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 64
    invoke-virtual {p0}, Lcom/android/launcher2/HolographicLinearLayout;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method invalidatePressedFocusedStates()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/launcher2/HolographicLinearLayout;->mHolographicHelper:Lcom/android/launcher2/HolographicViewHelper;

    iget-object v1, p0, Lcom/android/launcher2/HolographicLinearLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HolographicViewHelper;->invalidatePressedFocusedStates(Landroid/widget/ImageView;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/launcher2/HolographicLinearLayout;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    iget-object p1, p0, Lcom/android/launcher2/HolographicLinearLayout;->mImageView:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    .line 81
    iget p1, p0, Lcom/android/launcher2/HolographicLinearLayout;->mImageViewId:I

    invoke-virtual {p0, p1}, Lcom/android/launcher2/HolographicLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/launcher2/HolographicLinearLayout;->mImageView:Landroid/widget/ImageView;

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/HolographicLinearLayout;->mHolographicHelper:Lcom/android/launcher2/HolographicViewHelper;

    iget-object p0, p0, Lcom/android/launcher2/HolographicLinearLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Lcom/android/launcher2/HolographicViewHelper;->generatePressedFocusedStates(Landroid/widget/ImageView;)V

    return-void
.end method
