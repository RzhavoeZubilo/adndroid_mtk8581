.class public Lcom/android/launcher2/DragLayer$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 381
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 375
    iput-boolean p1, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    .line 397
    iget p0, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 389
    iget p0, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    return p0
.end method

.method public getX()I
    .locals 0

    .line 405
    iget p0, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    return p0
.end method

.method public getY()I
    .locals 0

    .line 413
    iget p0, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    return p0
.end method

.method public setHeight(I)V
    .locals 0

    .line 393
    iput p1, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 385
    iput p1, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 401
    iput p1, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 409
    iput p1, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    return-void
.end method
