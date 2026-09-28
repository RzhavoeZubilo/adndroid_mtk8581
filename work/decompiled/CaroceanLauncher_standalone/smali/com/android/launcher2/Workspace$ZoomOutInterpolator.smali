.class Lcom/android/launcher2/Workspace$ZoomOutInterpolator;
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
    name = "ZoomOutInterpolator"
.end annotation


# instance fields
.field private final decelerate:Landroid/view/animation/DecelerateInterpolator;

.field private final zInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1580
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    .line 1581
    new-instance v0, Lcom/android/launcher2/Workspace$ZInterpolator;

    const v1, 0x3e051eb8    # 0.13f

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace$ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;->zInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .line 1584
    iget-object v0, p0, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;->decelerate:Landroid/view/animation/DecelerateInterpolator;

    iget-object p0, p0, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;->zInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace$ZInterpolator;->getInterpolation(F)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method
