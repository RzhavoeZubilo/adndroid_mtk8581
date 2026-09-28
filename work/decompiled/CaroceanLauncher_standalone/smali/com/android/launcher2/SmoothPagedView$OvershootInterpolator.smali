.class public Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;
.super Ljava/lang/Object;
.source "SmoothPagedView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SmoothPagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OvershootInterpolator"
.end annotation


# static fields
.field private static final DEFAULT_TENSION:F = 1.3f


# instance fields
.field private mTension:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fa66666    # 1.3f

    .line 43
    iput v0, p0, Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;->mTension:F

    return-void
.end method


# virtual methods
.method public disableSettle()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;->mTension:F

    return-void
.end method

.method public getInterpolation(F)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    .line 58
    iget p0, p0, Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;->mTension:F

    add-float v2, p0, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, p0

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public setDistance(I)V
    .locals 1

    const v0, 0x3fa66666    # 1.3f

    if-lez p1, :cond_0

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 47
    :cond_0
    iput v0, p0, Lcom/android/launcher2/SmoothPagedView$OvershootInterpolator;->mTension:F

    return-void
.end method
