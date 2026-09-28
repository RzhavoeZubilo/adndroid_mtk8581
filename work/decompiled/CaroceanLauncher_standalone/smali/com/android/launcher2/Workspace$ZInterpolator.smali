.class Lcom/android/launcher2/Workspace$ZInterpolator;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZInterpolator"
.end annotation


# instance fields
.field private focalLength:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1554
    iput p1, p0, Lcom/android/launcher2/Workspace$ZInterpolator;->focalLength:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .line 1558
    iget p0, p0, Lcom/android/launcher2/Workspace$ZInterpolator;->focalLength:F

    add-float/2addr p1, p0

    div-float p1, p0, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    add-float v1, p0, v0

    div-float/2addr p0, v1

    sub-float/2addr v0, p0

    div-float/2addr p1, v0

    return p1
.end method
