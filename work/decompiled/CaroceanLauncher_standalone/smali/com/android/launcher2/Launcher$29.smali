.class Lcom/android/launcher2/Launcher$29;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->runNewAppsAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .line 5085
    iput-object p1, p0, Lcom/android/launcher2/Launcher$29;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 1

    .line 5088
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 5089
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 5090
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result p2

    .line 5091
    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    mul-int/2addr v0, p2

    iget p0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int/2addr v0, p0

    iget p0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    mul-int/2addr p0, p2

    iget p1, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int/2addr p0, p1

    sub-int/2addr v0, p0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 5085
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/Launcher$29;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0
.end method
