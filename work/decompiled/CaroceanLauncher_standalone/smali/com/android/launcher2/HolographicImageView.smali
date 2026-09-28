.class public Lcom/android/launcher2/HolographicImageView;
.super Landroid/widget/ImageView;
.source "HolographicImageView.java"


# instance fields
.field private final mHolographicHelper:Lcom/android/launcher2/HolographicViewHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/HolographicImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/HolographicImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p2, Lcom/android/launcher2/HolographicViewHelper;

    invoke-direct {p2, p1}, Lcom/android/launcher2/HolographicViewHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/launcher2/HolographicImageView;->mHolographicHelper:Lcom/android/launcher2/HolographicViewHelper;

    return-void
.end method


# virtual methods
.method invalidatePressedFocusedStates()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/launcher2/HolographicImageView;->mHolographicHelper:Lcom/android/launcher2/HolographicViewHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/HolographicViewHelper;->invalidatePressedFocusedStates(Landroid/widget/ImageView;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    iget-object p1, p0, Lcom/android/launcher2/HolographicImageView;->mHolographicHelper:Lcom/android/launcher2/HolographicViewHelper;

    invoke-virtual {p1, p0}, Lcom/android/launcher2/HolographicViewHelper;->generatePressedFocusedStates(Landroid/widget/ImageView;)V

    return-void
.end method
