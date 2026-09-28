.class public Lcom/android/launcher2/DrawableStateProxyView;
.super Landroid/widget/LinearLayout;
.source "DrawableStateProxyView.java"


# instance fields
.field private mView:Landroid/view/View;

.field private mViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/DrawableStateProxyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/DrawableStateProxyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    sget-object v0, Lcom/yecon/launcher1/R$styleable;->DrawableStateProxyView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, -0x1

    .line 47
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/DrawableStateProxyView;->mViewId:I

    .line 48
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    invoke-virtual {p0, v1}, Lcom/android/launcher2/DrawableStateProxyView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 55
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 57
    iget-object v0, p0, Lcom/android/launcher2/DrawableStateProxyView;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/launcher2/DrawableStateProxyView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 59
    iget v1, p0, Lcom/android/launcher2/DrawableStateProxyView;->mViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DrawableStateProxyView;->mView:Landroid/view/View;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DrawableStateProxyView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher2/DrawableStateProxyView;->isPressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/launcher2/DrawableStateProxyView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher2/DrawableStateProxyView;->isHovered()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setHovered(Z)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
