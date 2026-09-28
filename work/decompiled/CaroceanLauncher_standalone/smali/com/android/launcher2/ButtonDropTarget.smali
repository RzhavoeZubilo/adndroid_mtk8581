.class public Lcom/android/launcher2/ButtonDropTarget;
.super Landroid/widget/TextView;
.source "ButtonDropTarget.java"

# interfaces
.implements Lcom/android/launcher2/DropTarget;
.implements Lcom/android/launcher2/DragController$DragListener;


# instance fields
.field protected mActive:Z

.field private mBottomDragPadding:I

.field protected mHoverColor:I

.field protected mLauncher:Lcom/android/launcher2/Launcher;

.field protected mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

.field protected mText:Landroid/widget/TextView;

.field protected final mTransitionDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/android/launcher2/ButtonDropTarget;->mHoverColor:I

    .line 55
    invoke-virtual {p0}, Lcom/android/launcher2/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f09001b

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher2/ButtonDropTarget;->mTransitionDuration:I

    const p2, 0x7f06004f

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher2/ButtonDropTarget;->mBottomDragPadding:I

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/android/launcher2/ButtonDropTarget;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    .line 74
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 75
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 76
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 116
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/android/launcher2/ButtonDropTarget;->mBottomDragPadding:I

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method getIconRect(IIII)Landroid/graphics/Rect;
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/android/launcher2/ButtonDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 124
    invoke-virtual {v0, p0, v1}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 127
    iget v0, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/launcher2/ButtonDropTarget;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    .line 128
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/launcher2/ButtonDropTarget;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr p0, p4

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v2, p0

    add-int p0, v0, p3

    add-int v3, v2, p4

    .line 129
    invoke-virtual {v1, v0, v2, p0, v3}, Landroid/graphics/Rect;->set(IIII)V

    sub-int/2addr p1, p3

    neg-int p0, p1

    .line 132
    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p2, p4

    neg-int p1, p2

    .line 133
    div-int/lit8 p1, p1, 0x2

    .line 134
    invoke-virtual {v1, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-object v1
.end method

.method public getLocationInDragLayer([I)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/launcher2/ButtonDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    return-void
.end method

.method public isDropEnabled()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/android/launcher2/ButtonDropTarget;->mActive:Z

    return p0
.end method

.method public onDragEnd()V
    .locals 0

    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 0

    .line 90
    iget-object p1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    iget p0, p0, Lcom/android/launcher2/ButtonDropTarget;->mHoverColor:I

    invoke-virtual {p1, p0}, Lcom/android/launcher2/DragView;->setColor(I)V

    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 0

    .line 98
    iget-object p0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/DragView;->setColor(I)V

    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 0

    return-void
.end method

.method public onFlingToDelete(Lcom/android/launcher2/DropTarget$DragObject;IILandroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/launcher2/ButtonDropTarget;->mLauncher:Lcom/android/launcher2/Launcher;

    return-void
.end method

.method public setSearchDropTargetBar(Lcom/android/launcher2/SearchDropTargetBar;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/launcher2/ButtonDropTarget;->mSearchDropTargetBar:Lcom/android/launcher2/SearchDropTargetBar;

    return-void
.end method
