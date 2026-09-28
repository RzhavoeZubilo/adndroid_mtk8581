.class public Lcom/android/launcher2/CellLayout$CellLayoutAnimationController;
.super Landroid/view/animation/LayoutAnimationController;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellLayoutAnimationController"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;F)V
    .locals 0

    .line 3203
    invoke-direct {p0, p1, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    return-void
.end method


# virtual methods
.method protected getDelayForView(Landroid/view/View;)J
    .locals 2

    .line 3208
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p0

    const-wide v0, 0x4062c00000000000L    # 150.0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    int-to-long p0, p0

    return-wide p0
.end method
