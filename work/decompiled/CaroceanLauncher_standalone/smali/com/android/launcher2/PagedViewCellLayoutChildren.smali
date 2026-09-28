.class public Lcom/android/launcher2/PagedViewCellLayoutChildren;
.super Landroid/view/ViewGroup;
.source "PagedViewCellLayoutChildren.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PagedViewCellLayoutChildren"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mCenterContent:Z

.field private mHeightGap:I

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 3

    .line 45
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 48
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 50
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enableCenteredContent(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/android/launcher2/PagedViewCellLayoutChildren;->mCenterContent:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildCount()I

    move-result p1

    .line 114
    iget-boolean p2, p0, Lcom/android/launcher2/PagedViewCellLayoutChildren;->mCenterContent:Z

    const/16 p3, 0x8

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    if-lez p1, :cond_2

    const p2, 0x7fffffff

    move p5, p4

    move v0, p5

    :goto_0
    if-ge p5, p1, :cond_1

    .line 119
    invoke-virtual {p0, p5}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, p3, :cond_0

    .line 122
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .line 123
    iget v2, v1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->x:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 124
    iget v2, v1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->x:I

    iget v1, v1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->width:I

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p2

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_2
    move p2, p4

    :goto_1
    if-ge p4, p1, :cond_4

    .line 132
    invoke-virtual {p0, p4}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 133
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p3, :cond_3

    .line 135
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .line 137
    iget v1, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->x:I

    add-int/2addr v1, p2

    .line 138
    iget v2, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->y:I

    .line 139
    iget v3, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->width:I

    add-int/2addr v3, v1

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->height:I

    add-int/2addr v0, v2

    invoke-virtual {p5, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 80
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 82
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 83
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 91
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .line 94
    iget v5, p0, Lcom/android/launcher2/PagedViewCellLayoutChildren;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher2/PagedViewCellLayoutChildren;->mCellHeight:I

    iget v7, p0, Lcom/android/launcher2/PagedViewCellLayoutChildren;->mWidthGap:I

    iget v8, p0, Lcom/android/launcher2/PagedViewCellLayoutChildren;->mHeightGap:I

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getPaddingLeft()I

    move-result v9

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getPaddingTop()I

    move-result v10

    move-object v4, v3

    .line 94
    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->setup(IIIIII)V

    .line 98
    iget v4, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->width:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 100
    iget v3, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->height:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 103
    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setMeasuredDimension(II)V

    return-void

    .line 86
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 69
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 71
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 73
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public setCellDimensions(II)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayoutChildren;->mCellWidth:I

    .line 63
    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayoutChildren;->mCellHeight:I

    .line 64
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->requestLayout()V

    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4

    .line 150
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 153
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 155
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 156
    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGap(II)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayoutChildren;->mWidthGap:I

    .line 57
    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayoutChildren;->mHeightGap:I

    .line 58
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->requestLayout()V

    return-void
.end method
