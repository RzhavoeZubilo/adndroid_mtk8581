.class final Lcom/android/launcher2/FocusHelper$1;
.super Ljava/lang/Object;
.source "FocusHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FocusHelper;->getCellLayoutChildrenSortedSpatially(Lcom/android/launcher2/CellLayout;Landroid/view/ViewGroup;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$cellCountX:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 610
    iput p1, p0, Lcom/android/launcher2/FocusHelper$1;->val$cellCountX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 2

    .line 613
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 614
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 615
    iget v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v1, p0, Lcom/android/launcher2/FocusHelper$1;->val$cellCountX:I

    mul-int/2addr v0, v1

    iget p1, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int/2addr v0, p1

    .line 616
    iget p1, p2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget p0, p0, Lcom/android/launcher2/FocusHelper$1;->val$cellCountX:I

    mul-int/2addr p1, p0

    iget p0, p2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int/2addr p1, p0

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 610
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/FocusHelper$1;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0
.end method
