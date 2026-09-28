.class public Lcom/android/launcher2/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public canReorder:Z

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

.field dropped:Z

.field public isLockedToGrid:Z

.field public tmpCellX:I

.field public tmpCellY:I

.field public useTmpCoords:Z

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    const/4 v0, -0x1

    .line 3294
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 v0, 0x1

    .line 3256
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 3262
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->canReorder:Z

    .line 3295
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 3296
    iput p2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 3297
    iput p3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 3298
    iput p4, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3274
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 3256
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 3262
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->canReorder:Z

    .line 3275
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 3276
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3280
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 3256
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 3262
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->canReorder:Z

    .line 3281
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 3282
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/CellLayout$LayoutParams;)V
    .locals 1

    .line 3286
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x1

    .line 3256
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 3262
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->canReorder:Z

    .line 3287
    iget v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 3288
    iget v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 3289
    iget v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 3290
    iget p1, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    .line 3334
    iget p0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 3326
    iget p0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    return p0
.end method

.method public getX()I
    .locals 0

    .line 3342
    iget p0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    return p0
.end method

.method public getY()I
    .locals 0

    .line 3350
    iget p0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    return p0
.end method

.method public setHeight(I)V
    .locals 0

    .line 3330
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 3322
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 3338
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 3346
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    return-void
.end method

.method public setup(IIII)V
    .locals 5

    .line 3302
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v0, :cond_2

    .line 3303
    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 3304
    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 3305
    iget-boolean v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    :goto_0
    if-eqz v2, :cond_1

    .line 3306
    iget v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    :goto_1
    mul-int v4, v0, p1

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, p3

    add-int/2addr v4, v0

    .line 3308
    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v0

    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    mul-int v0, v1, p2

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p4

    add-int/2addr v0, v1

    .line 3310
    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    add-int/2addr p1, p3

    mul-int/2addr v3, p1

    .line 3312
    iget p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    add-int/2addr p2, p4

    mul-int/2addr v2, p2

    .line 3313
    iget p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
