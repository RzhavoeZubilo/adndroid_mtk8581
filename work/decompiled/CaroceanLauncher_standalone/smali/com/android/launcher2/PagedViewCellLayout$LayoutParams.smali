.class public Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "PagedViewCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PagedViewCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public isDragging:Z

.field private mTag:Ljava/lang/Object;

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 546
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x1

    .line 547
    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 548
    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    const/4 v0, -0x1

    .line 572
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 573
    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 574
    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 575
    iput p3, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 576
    iput p4, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 552
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 553
    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 554
    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 558
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 559
    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 560
    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;)V
    .locals 1

    .line 564
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 565
    iget v0, p1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 566
    iget v0, p1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 567
    iget v0, p1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 568
    iget p1, p1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/Object;
    .locals 0

    .line 599
    iget-object p0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->mTag:Ljava/lang/Object;

    return-void
.end method

.method public setup(IIIIII)V
    .locals 5

    .line 581
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 582
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 583
    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 584
    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    mul-int v4, v0, p1

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, p3

    add-int/2addr v4, v0

    .line 586
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v0

    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->width:I

    mul-int v0, v1, p2

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p4

    add-int/2addr v0, v1

    .line 587
    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->height:I

    .line 589
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/2addr p1, p3

    mul-int/2addr v2, p1

    add-int/2addr p5, v2

    .line 590
    iget p1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->leftMargin:I

    add-int/2addr p5, p1

    iput p5, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->x:I

    add-int/2addr p2, p4

    mul-int/2addr v3, p2

    add-int/2addr p6, v3

    .line 591
    iget p1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->topMargin:I

    add-int/2addr p6, p1

    iput p6, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->y:I

    goto :goto_0

    :cond_0
    add-int/2addr p1, p3

    mul-int/2addr v2, p1

    .line 593
    iget p1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->x:I

    add-int/2addr p2, p4

    mul-int/2addr v3, p2

    .line 594
    iget p1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->y:I

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
