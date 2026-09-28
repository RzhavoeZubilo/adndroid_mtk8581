.class Lcom/android/launcher2/CellLayout$ViewCluster;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCluster"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;
    }
.end annotation


# static fields
.field static final BOTTOM:I = 0x3

.field static final LEFT:I = 0x0

.field static final RIGHT:I = 0x2

.field static final TOP:I = 0x1


# instance fields
.field bottomEdge:[I

.field bottomEdgeDirty:Z

.field boundingRect:Landroid/graphics/Rect;

.field boundingRectDirty:Z

.field comparator:Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;

.field config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

.field leftEdge:[I

.field leftEdgeDirty:Z

.field rightEdge:[I

.field rightEdgeDirty:Z

.field final synthetic this$0:Lcom/android/launcher2/CellLayout;

.field topEdge:[I

.field topEdgeDirty:Z

.field views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher2/CellLayout$ItemConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher2/CellLayout$ItemConfiguration;",
            ")V"
        }
    .end annotation

    .line 1645
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1636
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    .line 1638
    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$300(Lcom/android/launcher2/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdge:[I

    .line 1639
    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$300(Lcom/android/launcher2/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdge:[I

    .line 1640
    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$400(Lcom/android/launcher2/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdge:[I

    .line 1641
    invoke-static {p1}, Lcom/android/launcher2/CellLayout;->access$400(Lcom/android/launcher2/CellLayout;)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdge:[I

    .line 1831
    new-instance p1, Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;

    invoke-direct {p1, p0}, Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;-><init>(Lcom/android/launcher2/CellLayout$ViewCluster;)V

    iput-object p1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->comparator:Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;

    .line 1646
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    .line 1647
    iput-object p3, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    .line 1648
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->resetEdges()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 1769
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->resetEdges()V

    return-void
.end method

.method computeEdge(I[I)V
    .locals 7

    .line 1668
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_b

    .line 1670
    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$CellAndSpan;

    if-eqz p1, :cond_7

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto :goto_5

    .line 1697
    :cond_0
    iget v3, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v3, v4

    .line 1698
    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    :goto_1
    iget v5, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v6, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_a

    .line 1699
    aget v5, p2, v4

    if-le v3, v5, :cond_1

    .line 1700
    aput v3, p2, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1681
    :cond_2
    iget v3, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v3, v4

    .line 1682
    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    :goto_2
    iget v5, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v6, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_a

    .line 1683
    aget v5, p2, v4

    if-le v3, v5, :cond_3

    .line 1684
    aput v3, p2, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1689
    :cond_4
    iget v3, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    .line 1690
    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    :goto_3
    iget v5, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v6, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_a

    .line 1691
    aget v5, p2, v4

    if-lt v3, v5, :cond_5

    aget v5, p2, v4

    if-gez v5, :cond_6

    .line 1692
    :cond_5
    aput v3, p2, v4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1673
    :cond_7
    iget v3, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    .line 1674
    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    :goto_4
    iget v5, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v6, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_a

    .line 1675
    aget v5, p2, v4

    if-lt v3, v5, :cond_8

    aget v5, p2, v4

    if-gez v5, :cond_9

    .line 1676
    :cond_8
    aput v3, p2, v4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_b
    return-void
.end method

.method public getBottomEdge()[I
    .locals 2

    .line 1825
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdgeDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 1826
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1828
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdge:[I

    return-object p0
.end method

.method public getBoundingRect()Landroid/graphics/Rect;
    .locals 8

    .line 1774
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRectDirty:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1776
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1777
    iget-object v3, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    iget-object v3, v3, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$CellAndSpan;

    if-eqz v0, :cond_0

    .line 1779
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v3, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v5, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v6, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    iget v6, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v2, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v6, v2

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x0

    goto :goto_0

    .line 1782
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v4, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v5, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v6, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v7, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v6, v7

    iget v7, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v2, v2, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    .line 1786
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getEdge(I)[I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1799
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->getBottomEdge()[I

    move-result-object p0

    return-object p0

    .line 1794
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->getRightEdge()[I

    move-result-object p0

    return-object p0

    .line 1796
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->getTopEdge()[I

    move-result-object p0

    return-object p0

    .line 1792
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->getLeftEdge()[I

    move-result-object p0

    return-object p0
.end method

.method public getLeftEdge()[I
    .locals 2

    .line 1804
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdgeDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1805
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1807
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdge:[I

    return-object p0
.end method

.method public getRightEdge()[I
    .locals 2

    .line 1811
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdgeDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 1812
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1814
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdge:[I

    return-object p0
.end method

.method public getTopEdge()[I
    .locals 2

    .line 1818
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdgeDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1819
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1821
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdge:[I

    return-object p0
.end method

.method isViewTouchingEdge(Landroid/view/View;I)Z
    .locals 4

    .line 1709
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/CellLayout$CellAndSpan;

    .line 1711
    invoke-virtual {p0, p2}, Lcom/android/launcher2/CellLayout$ViewCluster;->getEdge(I)[I

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p2, :cond_6

    if-eq p2, v0, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_4

    .line 1736
    :cond_0
    iget p2, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    :goto_0
    iget v1, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v2, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_8

    .line 1737
    aget v1, p0, p2

    iget v2, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1722
    :cond_2
    iget p2, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    :goto_1
    iget v1, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v2, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_8

    .line 1723
    aget v1, p0, p2

    iget v2, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    if-ne v1, v2, :cond_3

    return v0

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1729
    :cond_4
    iget p2, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    :goto_2
    iget v1, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v2, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_8

    .line 1730
    aget v1, p0, p2

    iget v2, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v3, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_5

    return v0

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 1715
    :cond_6
    iget p2, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    :goto_3
    iget v1, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    iget v2, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_8

    .line 1716
    aget v1, p0, p2

    iget v2, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    iget v3, p1, Lcom/android/launcher2/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_7

    return v0

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    const/4 p0, 0x0

    return p0
.end method

.method resetEdges()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1652
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v2}, Lcom/android/launcher2/CellLayout;->access$400(Lcom/android/launcher2/CellLayout;)I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    .line 1653
    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdge:[I

    aput v3, v2, v1

    .line 1654
    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdge:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1656
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-static {v1}, Lcom/android/launcher2/CellLayout;->access$300(Lcom/android/launcher2/CellLayout;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1657
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdge:[I

    aput v3, v1, v0

    .line 1658
    iget-object v1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdge:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 1660
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->leftEdgeDirty:Z

    .line 1661
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->rightEdgeDirty:Z

    .line 1662
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->bottomEdgeDirty:Z

    .line 1663
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->topEdgeDirty:Z

    .line 1664
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->boundingRectDirty:Z

    return-void
.end method

.method shift(II)V
    .locals 3

    .line 1747
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1748
    iget-object v2, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$CellAndSpan;

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 1761
    iget v2, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    add-int/2addr v2, p2

    iput v2, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    goto :goto_0

    .line 1754
    :cond_0
    iget v2, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    add-int/2addr v2, p2

    iput v2, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    goto :goto_0

    .line 1757
    :cond_1
    iget v2, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    sub-int/2addr v2, p2

    iput v2, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->y:I

    goto :goto_0

    .line 1751
    :cond_2
    iget v2, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    sub-int/2addr v2, p2

    iput v2, v1, Lcom/android/launcher2/CellLayout$CellAndSpan;->x:I

    goto :goto_0

    .line 1765
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout$ViewCluster;->resetEdges()V

    return-void
.end method

.method public sortConfigurationForEdgePush(I)V
    .locals 1

    .line 1852
    iget-object v0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->comparator:Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;

    iput p1, v0, Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    .line 1853
    iget-object p1, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->config:Lcom/android/launcher2/CellLayout$ItemConfiguration;

    iget-object p1, p1, Lcom/android/launcher2/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher2/CellLayout$ViewCluster;->comparator:Lcom/android/launcher2/CellLayout$ViewCluster$PositionComparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
