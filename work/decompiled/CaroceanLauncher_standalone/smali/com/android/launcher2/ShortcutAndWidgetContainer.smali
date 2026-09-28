.class public Lcom/android/launcher2/ShortcutAndWidgetContainer;
.super Landroid/view/ViewGroup;
.source "ShortcutAndWidgetContainer.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CellLayoutChildren"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mHeightGap:I

.field private final mTmpCellXY:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 32
    iput-object v0, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    .line 44
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 3

    .line 157
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 162
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6

    .line 55
    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 60
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v3

    if-ge p2, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 4

    .line 103
    iget v0, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mCellWidth:I

    .line 104
    iget v1, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mCellHeight:I

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 107
    iget v3, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mWidthGap:I

    iget p0, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mHeightGap:I

    invoke-virtual {v2, v0, v1, v3, p0}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIII)V

    .line 108
    iget p0, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 109
    iget v1, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 111
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    .line 118
    invoke-virtual {p0, p3}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 119
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v0, 0x8

    if-eq p5, v0, :cond_0

    .line 120
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 122
    iget v0, p5, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 123
    iget v1, p5, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 124
    iget v2, p5, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    add-int/2addr v2, v0

    iget v3, p5, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    add-int/2addr v3, v1

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 126
    iget-boolean p4, p5, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    if-eqz p4, :cond_0

    .line 127
    iput-boolean p2, p5, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 129
    iget-object p4, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mTmpCellXY:[I

    .line 130
    invoke-virtual {p0, p4}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getLocationOnScreen([I)V

    .line 131
    iget-object v2, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    aget v4, p4, p2

    add-int/2addr v4, v0

    iget v0, p5, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    div-int/lit8 v0, v0, 0x2

    add-int v5, v4, v0

    const/4 v0, 0x1

    aget p4, p4, v0

    add-int/2addr p4, v1

    iget p5, p5, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    div-int/lit8 p5, p5, 0x2

    add-int v6, p4, p5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, "android.home.drop"

    invoke-virtual/range {v2 .. v8}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 90
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 91
    invoke-virtual {p0, v2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 94
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->setMeasuredDimension(II)V

    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 147
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_0

    .line 149
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 151
    invoke-virtual {p0, p2}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public setCellDimensions(IIII)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mCellWidth:I

    .line 49
    iput p2, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mCellHeight:I

    .line 50
    iput p3, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mWidthGap:I

    .line 51
    iput p4, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mHeightGap:I

    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 171
    invoke-virtual {p0, v1}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 172
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 174
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 175
    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0

    .line 182
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V
    .locals 3

    .line 99
    iget v0, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mCellWidth:I

    iget v1, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mCellHeight:I

    iget v2, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mWidthGap:I

    iget p0, p0, Lcom/android/launcher2/ShortcutAndWidgetContainer;->mHeightGap:I

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIII)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
