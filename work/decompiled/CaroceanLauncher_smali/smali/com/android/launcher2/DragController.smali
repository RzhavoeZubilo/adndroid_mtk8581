.class public Lcom/android/launcher2/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DragController$ScrollRunnable;,
        Lcom/android/launcher2/DragController$DragListener;
    }
.end annotation


# static fields
.field public static final DRAG_ACTION_COPY:I = 0x1

.field public static final DRAG_ACTION_MOVE:I = 0x0

.field private static final MAX_FLING_DEGREES:F = 35.0f

.field private static final PROFILE_DRAWING_DURING_DRAG:Z = false

.field private static final RESCROLL_DELAY:I = 0x2ee

.field private static final SCROLL_DELAY:I = 0x1f4

.field static final SCROLL_LEFT:I = 0x0

.field static final SCROLL_NONE:I = -0x1

.field private static final SCROLL_OUTSIDE_ZONE:I = 0x0

.field static final SCROLL_RIGHT:I = 0x1

.field private static final SCROLL_WAITING_IN_ZONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Launcher.DragController"

.field private static final VIBRATE_DURATION:I = 0xf


# instance fields
.field private final mCoordinatesTemp:[I

.field private mDistanceSinceScroll:I

.field private mDragLayerRect:Landroid/graphics/Rect;

.field private mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

.field private mDragScroller:Lcom/android/launcher2/DragScroller;

.field private mDragging:Z

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

.field protected mFlingToDeleteThresholdVelocity:I

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mLastDropTarget:Lcom/android/launcher2/DropTarget;

.field private mLastTouch:[I

.field private mLastTouchUpTime:J

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mMoveTarget:Landroid/view/View;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

.field private mScrollState:I

.field private mScrollView:Landroid/view/View;

.field private mScrollZone:I

.field private mTmpPoint:[I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 4

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mRectTemp:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 73
    iput-object v1, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 105
    iput v1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 106
    new-instance v2, Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-direct {v2, p0}, Lcom/android/launcher2/DragController$ScrollRunnable;-><init>(Lcom/android/launcher2/DragController;)V

    iput-object v2, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    new-array v2, v0, [I

    .line 112
    iput-object v2, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const-wide/16 v2, -0x1

    .line 113
    iput-wide v2, p0, Lcom/android/launcher2/DragController;->mLastTouchUpTime:J

    .line 114
    iput v1, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    new-array v0, v0, [I

    .line 116
    iput-object v0, p0, Lcom/android/launcher2/DragController;->mTmpPoint:[I

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    .line 149
    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 150
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 151
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    const v1, 0x7f06008f

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    .line 153
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const-string v1, "vibrator"

    .line 154
    invoke-virtual {p1, v1}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/launcher2/DragController;->mVibrator:Landroid/os/Vibrator;

    .line 156
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x7f09001c

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteThresholdVelocity:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/DragScroller;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/launcher2/DragController;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/launcher2/DragController;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/DragController;)Lcom/android/launcher2/Launcher;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object p0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 815
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 817
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private clearScrollRunnable()V
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 500
    iget v0, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 501
    iput v0, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 502
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 503
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    invoke-interface {v0}, Lcom/android/launcher2/DragScroller;->onExitScrollArea()Z

    .line 504
    iget-object p0, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->onExitScrollArea()V

    :cond_0
    return-void
.end method

.method private drop(FF)V
    .locals 5

    .line 705
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    float-to-int v1, p1

    float-to-int v2, p2

    .line 706
    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher2/DragController;->findDropTarget(II[I)Lcom/android/launcher2/DropTarget;

    move-result-object v1

    .line 708
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v3, 0x0

    aget v4, v0, v3

    iput v4, v2, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    .line 709
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v4, 0x1

    aget v0, v0, v4

    iput v0, v2, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    .line 710
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop: x = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", y = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mDragObject.x = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget p2, p2, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mDragObject.y = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget p2, p2, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", dropTarget = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Launcher.DragController"

    invoke-static {p2, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 717
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput-boolean v4, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    .line 718
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v1, p1}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 719
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v1, p1}, Lcom/android/launcher2/DropTarget;->acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 720
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v1, p1}, Lcom/android/launcher2/DropTarget;->onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    goto :goto_0

    :cond_1
    move v4, v3

    .line 724
    :goto_0
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object p1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {p1, v1, p0, v3, v4}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;ZZ)V

    return-void
.end method

.method private dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V
    .locals 3

    .line 677
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 679
    iget-object p2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v0, 0x0

    aget v1, p1, v0

    iput v1, p2, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    .line 680
    iget-object p2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v1, 0x1

    aget p1, p1, v1

    iput p1, p2, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    .line 684
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

    if-eq p2, p1, :cond_0

    .line 685
    iget-object p2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {p1, p2}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 690
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object p2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {p1, p2}, Lcom/android/launcher2/DropTarget;->onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 693
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput-boolean v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    .line 694
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object p2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {p1, p2}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 695
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object p2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {p1, p2}, Lcom/android/launcher2/DropTarget;->acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 696
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

    iget-object p2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget v0, p2, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget v2, v2, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    invoke-interface {p1, p2, v0, v2, p3}, Lcom/android/launcher2/DropTarget;->onFlingToDelete(Lcom/android/launcher2/DropTarget$DragObject;IILandroid/graphics/PointF;)V

    move v0, v1

    .line 700
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object p1, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    iget-object p2, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

    check-cast p2, Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {p1, p2, p0, v1, v0}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;ZZ)V

    return-void
.end method

.method private endDrag()V
    .locals 3

    .line 367
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endDrag: mDragging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDragObject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.DragController"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 371
    iput-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    .line 372
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->clearScrollRunnable()V

    .line 374
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    if-eqz v1, :cond_2

    .line 375
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-boolean v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-nez v0, :cond_1

    .line 377
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v1}, Lcom/android/launcher2/DragView;->remove()V

    .line 379
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    :cond_2
    if-nez v0, :cond_3

    .line 384
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragController$DragListener;

    .line 385
    invoke-interface {v1}, Lcom/android/launcher2/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    .line 390
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->releaseVelocityTracker()V

    return-void
.end method

.method private findDropTarget(II[I)Lcom/android/launcher2/DropTarget;
    .locals 9

    .line 728
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 730
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 731
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_3

    .line 733
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/DropTarget;

    .line 734
    invoke-interface {v4}, Lcom/android/launcher2/DropTarget;->isDropEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 738
    :cond_0
    invoke-interface {v4, v0}, Lcom/android/launcher2/DropTarget;->getHitRect(Landroid/graphics/Rect;)V

    .line 741
    invoke-interface {v4, p3}, Lcom/android/launcher2/DropTarget;->getLocationInDragLayer([I)V

    const/4 v5, 0x0

    .line 742
    aget v6, p3, v5

    invoke-interface {v4}, Lcom/android/launcher2/DropTarget;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    aget v7, p3, v3

    invoke-interface {v4}, Lcom/android/launcher2/DropTarget;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 744
    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput p1, v6, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    .line 745
    iget-object v6, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput p2, v6, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    .line 746
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 747
    iget-object p0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v4, p0}, Lcom/android/launcher2/DropTarget;->getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 750
    invoke-interface {p0, p3}, Lcom/android/launcher2/DropTarget;->getLocationInDragLayer([I)V

    move-object v4, p0

    .line 754
    :cond_1
    aget p0, p3, v5

    sub-int/2addr p1, p0

    aput p1, p3, v5

    .line 755
    aget p0, p3, v3

    sub-int/2addr p2, p0

    aput p2, p3, v3

    return-object v4

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getClampedDragLayerPos(FF)[I
    .locals 4

    .line 413
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 414
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mTmpPoint:[I

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 415
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mTmpPoint:[I

    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    aput p2, p1, v3

    .line 416
    iget-object p0, p0, Lcom/android/launcher2/DragController;->mTmpPoint:[I

    return-object p0
.end method

.method private handleMoveEvent(II)V
    .locals 11

    .line 509
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/DragView;->move(II)V

    .line 512
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 513
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/DragController;->findDropTarget(II[I)Lcom/android/launcher2/DropTarget;

    move-result-object v1

    .line 514
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v3, 0x0

    aget v4, v0, v3

    iput v4, v2, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    .line 515
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v4, 0x1

    aget v0, v0, v4

    iput v0, v2, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    .line 516
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_DRAG:Z

    if-eqz v0, :cond_0

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMoveEvent: x = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", y = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", dragView = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", dragX = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget v2, v2, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", dragY = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget v2, v2, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Launcher.DragController"

    invoke-static {v2, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_4

    .line 522
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v1, v0}, Lcom/android/launcher2/DropTarget;->getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    .line 529
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v0, v2}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 531
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v1, v0}, Lcom/android/launcher2/DropTarget;->onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 533
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v1, v0}, Lcom/android/launcher2/DropTarget;->onDragOver(Lcom/android/launcher2/DropTarget$DragObject;)V

    goto :goto_0

    .line 535
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eqz v0, :cond_5

    .line 536
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v0, v2}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 539
    :cond_5
    :goto_0
    iput-object v1, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    .line 543
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    .line 544
    iget v1, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    int-to-double v1, v1

    iget-object v5, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    aget v5, v5, v3

    sub-int/2addr v5, p1

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 545
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget-object v9, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    aget v9, v9, v4

    sub-int/2addr v9, p2

    int-to-double v9, v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    add-double/2addr v1, v5

    double-to-int v1, v1

    iput v1, p0, Lcom/android/launcher2/DragController;->mDistanceSinceScroll:I

    .line 546
    iget-object v2, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    aput p1, v2, v3

    .line 547
    aput p2, v2, v4

    if-ge v1, v0, :cond_6

    const/16 v0, 0x2ee

    goto :goto_1

    :cond_6
    const/16 v0, 0x1f4

    .line 550
    :goto_1
    iget v1, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    if-ge p1, v1, :cond_7

    .line 551
    iget v1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    if-nez v1, :cond_9

    .line 552
    iput v4, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 553
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    invoke-interface {v1, p1, p2, v3}, Lcom/android/launcher2/DragScroller;->onEnterScrollArea(III)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 554
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/launcher2/DragLayer;->onEnterScrollArea(I)V

    .line 555
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-virtual {p1, v3}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 556
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 559
    :cond_7
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_8

    .line 560
    iget v1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    if-nez v1, :cond_9

    .line 561
    iput v4, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 562
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    invoke-interface {v1, p1, p2, v4}, Lcom/android/launcher2/DragScroller;->onEnterScrollArea(III)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 563
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/launcher2/DragLayer;->onEnterScrollArea(I)V

    .line 564
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-virtual {p1, v4}, Lcom/android/launcher2/DragController$ScrollRunnable;->setDirection(I)V

    .line 565
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 569
    :cond_8
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->clearScrollRunnable()V

    :cond_9
    :goto_2
    return-void
.end method

.method private isFlingingToDelete(Lcom/android/launcher2/DragSource;)Landroid/graphics/PointF;
    .locals 6

    .line 656
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 657
    :cond_0
    invoke-interface {p1}, Lcom/android/launcher2/DragSource;->supportsFlingToDelete()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    .line 659
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 660
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 662
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    iget v0, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteThresholdVelocity:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 664
    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object p0, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 665
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 666
    new-instance p0, Landroid/graphics/PointF;

    const/4 v0, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 667
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 668
    invoke-virtual {p1}, Landroid/graphics/PointF;->length()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/PointF;->length()F

    move-result p0

    mul-float/2addr v2, p0

    div-float/2addr v0, v2

    float-to-double v2, v0

    .line 667
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    double-to-float p0, v2

    float-to-double v2, p0

    const-wide v4, 0x4041800000000000L    # 35.0

    .line 669
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    cmpg-double p0, v2, v4

    if-gtz p0, :cond_2

    return-object p1

    :cond_2
    return-object v1
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 823
    iput-object v0, p0, Lcom/android/launcher2/DragController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method public addDragListener(Lcom/android/launcher2/DragController$DragListener;)V
    .locals 0

    .line 775
    iget-object p0, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDropTarget(Lcom/android/launcher2/DropTarget;)V
    .locals 0

    .line 789
    iget-object p0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancelDrag()V
    .locals 4

    .line 330
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelDrag: mDragging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLastDropTarget = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.DragController"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    if-eqz v0, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DropTarget;->onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 339
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->cancelled:Z

    .line 340
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    .line 341
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    invoke-interface {v0, v2, v3, v1, v1}, Lcom/android/launcher2/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;ZZ)V

    .line 343
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 314
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_KEY:Z

    if-eqz v0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent: keycode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 316
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", mDragging = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher.DragController"

    .line 315
    invoke-static {v0, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    iget-boolean p0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return p0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 2

    .line 491
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG_KEY:Z

    if-eqz v0, :cond_0

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchUnhandledMove: focused = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", direction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.DragController"

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dragging()Z
    .locals 0

    .line 162
    iget-boolean p0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return p0
.end method

.method public forceMoveEvent()V
    .locals 3

    .line 574
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mLastTouch:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/DragController;->handleMoveEvent(II)V

    :cond_0
    return-void
.end method

.method getDragView()Lcom/android/launcher2/DragView;
    .locals 0

    .line 835
    iget-object p0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object p0, p0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    return-object p0
.end method

.method getLastGestureUpTime()J
    .locals 2

    .line 420
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v0, :cond_0

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 423
    :cond_0
    iget-wide v0, p0, Lcom/android/launcher2/DragController;->mLastTouchUpTime:J

    return-wide v0
.end method

.method getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    const/4 p0, 0x0

    .line 270
    invoke-virtual {p1, p0}, Landroid/view/View;->setPressed(Z)V

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v0

    .line 273
    invoke-virtual {p1, p0}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v1

    .line 278
    invoke-virtual {p1, p0}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 280
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 285
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 292
    :cond_1
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 296
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 297
    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 298
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    return-object v2
.end method

.method public isDragging()Z
    .locals 0

    .line 323
    iget-boolean p0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return p0
.end method

.method public onAppsRemoved(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 347
    iget-object p2, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    if-eqz p2, :cond_1

    .line 348
    iget-object p2, p2, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 349
    instance-of v0, p2, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v0, :cond_1

    .line 350
    check-cast p2, Lcom/android/launcher2/ShortcutInfo;

    .line 351
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 353
    iget-object v1, p2, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 355
    invoke-virtual {p2}, Lcom/android/launcher2/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    :cond_1
    return-void
.end method

.method onDeferredEndDrag(Lcom/android/launcher2/DragView;)V
    .locals 0

    .line 397
    invoke-virtual {p1}, Lcom/android/launcher2/DragView;->remove()V

    .line 400
    iget-object p0, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/DragController$DragListener;

    .line 401
    invoke-interface {p1}, Lcom/android/launcher2/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method onDeferredEndFling(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 0

    .line 406
    iget-object p0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    invoke-interface {p0}, Lcom/android/launcher2/DragSource;->onFlingToDeleteCompleted()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 443
    invoke-direct {p0, p1}, Lcom/android/launcher2/DragController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/android/launcher2/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object p1

    const/4 v1, 0x0

    .line 447
    aget v1, p1, v1

    const/4 v2, 0x1

    .line 448
    aget p1, p1, v2

    .line 449
    sget-boolean v3, Lcom/android/launcher2/uitl/L;->DEBUG_MOTION:Z

    if-eqz v3, :cond_0

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInterceptTouchEvent: action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDragging = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dragLayerX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dragLayerY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Launcher.DragController"

    invoke-static {v4, v3}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_1

    .line 476
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    goto :goto_1

    .line 464
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/DragController;->mLastTouchUpTime:J

    .line 465
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v0, :cond_4

    .line 466
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    invoke-direct {p0, v0}, Lcom/android/launcher2/DragController;->isFlingingToDelete(Lcom/android/launcher2/DragSource;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_3

    int-to-float v1, v1

    int-to-float p1, p1

    .line 468
    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher2/DragController;->dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V

    goto :goto_0

    :cond_3
    int-to-float v0, v1

    int-to-float p1, p1

    .line 470
    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/DragController;->drop(FF)V

    .line 473
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    goto :goto_1

    .line 459
    :cond_5
    iput v1, p0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    .line 460
    iput p1, p0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    const/4 p1, 0x0

    .line 461
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mLastDropTarget:Lcom/android/launcher2/DropTarget;

    .line 480
    :goto_1
    iget-boolean p0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 592
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 597
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/DragController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 599
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 600
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/android/launcher2/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object p1

    .line 601
    aget v2, p1, v1

    const/4 v3, 0x1

    .line 602
    aget p1, p1, v3

    .line 604
    sget-boolean v4, Lcom/android/launcher2/uitl/L;->DEBUG_MOTION:Z

    if-eqz v4, :cond_1

    .line 605
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent: action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dragLayerX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dragLayerY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mMotionDownX = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mMotionDownY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mScrollState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Launcher.DragController"

    invoke-static {v5, v4}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_2

    .line 642
    :cond_2
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 643
    invoke-virtual {p0}, Lcom/android/launcher2/DragController;->cancelDrag()V

    goto :goto_2

    .line 624
    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/android/launcher2/DragController;->handleMoveEvent(II)V

    goto :goto_2

    .line 628
    :cond_4
    invoke-direct {p0, v2, p1}, Lcom/android/launcher2/DragController;->handleMoveEvent(II)V

    .line 629
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 631
    iget-boolean v0, p0, Lcom/android/launcher2/DragController;->mDragging:Z

    if-eqz v0, :cond_6

    .line 632
    iget-object v0, p0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    invoke-direct {p0, v0}, Lcom/android/launcher2/DragController;->isFlingingToDelete(Lcom/android/launcher2/DragSource;)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_5

    int-to-float v1, v2

    int-to-float p1, p1

    .line 634
    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher2/DragController;->dropOnFlingToDeleteTarget(FFLandroid/graphics/PointF;)V

    goto :goto_0

    :cond_5
    int-to-float v0, v2

    int-to-float p1, p1

    .line 636
    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/DragController;->drop(FF)V

    .line 639
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/DragController;->endDrag()V

    goto :goto_2

    .line 613
    :cond_7
    iput v2, p0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    .line 614
    iput p1, p0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    .line 616
    iget p1, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    if-lt v2, p1, :cond_9

    iget-object p1, p0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/android/launcher2/DragController;->mScrollZone:I

    sub-int/2addr p1, v0

    if-le v2, p1, :cond_8

    goto :goto_1

    .line 620
    :cond_8
    iput v1, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    goto :goto_2

    .line 617
    :cond_9
    :goto_1
    iput v3, p0, Lcom/android/launcher2/DragController;->mScrollState:I

    .line 618
    iget-object p1, p0, Lcom/android/launcher2/DragController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/launcher2/DragController;->mScrollRunnable:Lcom/android/launcher2/DragController$ScrollRunnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return v3
.end method

.method public removeDragListener(Lcom/android/launcher2/DragController$DragListener;)V
    .locals 0

    .line 782
    iget-object p0, p0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDropTarget(Lcom/android/launcher2/DropTarget;)V
    .locals 0

    .line 796
    iget-object p0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetDropTarget()V
    .locals 0

    .line 803
    iget-object p0, p0, Lcom/android/launcher2/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method resetLastGestureUpTime()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 428
    iput-wide v0, p0, Lcom/android/launcher2/DragController;->mLastTouchUpTime:J

    return-void
.end method

.method public setDragScoller(Lcom/android/launcher2/DragScroller;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mDragScroller:Lcom/android/launcher2/DragScroller;

    return-void
.end method

.method public setFlingToDeleteDropTarget(Lcom/android/launcher2/DropTarget;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mFlingToDeleteDropTarget:Lcom/android/launcher2/DropTarget;

    return-void
.end method

.method setMoveTarget(Landroid/view/View;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mMoveTarget:Landroid/view/View;

    return-void
.end method

.method public setScrollView(Landroid/view/View;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mScrollView:Landroid/view/View;

    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/android/launcher2/DragController;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    .line 216
    iget-object v5, v0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v5, :cond_0

    .line 217
    iget-object v5, v0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v6, "input_method"

    .line 218
    invoke-virtual {v5, v6}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, v0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 220
    :cond_0
    iget-object v5, v0, Lcom/android/launcher2/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v0, Lcom/android/launcher2/DragController;->mWindowToken:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 222
    iget-object v5, v0, Lcom/android/launcher2/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/DragController$DragListener;

    move/from16 v8, p6

    .line 223
    invoke-interface {v6, v1, v2, v8}, Lcom/android/launcher2/DragController$DragListener;->onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V

    goto :goto_0

    .line 226
    :cond_1
    iget v5, v0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    sub-int v11, v5, p2

    .line 227
    iget v5, v0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    sub-int v12, v5, p3

    if-nez v4, :cond_2

    move v5, v7

    goto :goto_1

    .line 236
    :cond_2
    iget v5, v4, Landroid/graphics/Rect;->left:I

    :goto_1
    if-nez v4, :cond_3

    move v6, v7

    goto :goto_2

    .line 237
    :cond_3
    iget v6, v4, Landroid/graphics/Rect;->top:I

    :goto_2
    const/4 v8, 0x1

    .line 239
    iput-boolean v8, v0, Lcom/android/launcher2/DragController;->mDragging:Z

    .line 241
    new-instance v8, Lcom/android/launcher2/DropTarget$DragObject;

    invoke-direct {v8}, Lcom/android/launcher2/DropTarget$DragObject;-><init>()V

    iput-object v8, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    .line 243
    iput-boolean v7, v8, Lcom/android/launcher2/DropTarget$DragObject;->dragComplete:Z

    .line 244
    iget-object v7, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget v8, v0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    add-int v5, p2, v5

    sub-int/2addr v8, v5

    iput v8, v7, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    .line 245
    iget-object v5, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iget v7, v0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    add-int v6, p3, v6

    sub-int/2addr v7, v6

    iput v7, v5, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    .line 246
    iget-object v5, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput-object v1, v5, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    .line 247
    iget-object v1, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    iput-object v2, v1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    .line 249
    iget-object v1, v0, Lcom/android/launcher2/DragController;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v5, 0xf

    invoke-virtual {v1, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 251
    iget-object v1, v0, Lcom/android/launcher2/DragController;->mDragObject:Lcom/android/launcher2/DropTarget$DragObject;

    new-instance v2, Lcom/android/launcher2/DragView;

    iget-object v9, v0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 252
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object v8, v2

    move-object/from16 v10, p1

    move/from16 v17, p9

    invoke-direct/range {v8 .. v17}, Lcom/android/launcher2/DragView;-><init>(Lcom/android/launcher2/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V

    iput-object v2, v1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    if-eqz v3, :cond_4

    .line 255
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v2, v1}, Lcom/android/launcher2/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    :cond_4
    if-eqz v4, :cond_5

    .line 258
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Lcom/android/launcher2/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 261
    :cond_5
    iget v1, v0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    iget v3, v0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher2/DragView;->show(II)V

    .line 262
    iget v1, v0, Lcom/android/launcher2/DragController;->mMotionDownX:I

    iget v2, v0, Lcom/android/launcher2/DragController;->mMotionDownY:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/DragController;->handleMoveEvent(II)V

    return-void
.end method

.method public startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;F)V
    .locals 11

    move-object v0, p0

    move-object v10, p1

    .line 179
    iget-object v1, v0, Lcom/android/launcher2/DragController;->mCoordinatesTemp:[I

    .line 180
    iget-object v2, v0, Lcom/android/launcher2/DragController;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    const/4 v2, 0x0

    .line 181
    aget v2, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 182
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    .line 183
    aget v1, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    .line 184
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v3, v1

    const/4 v7, 0x0

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 186
    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)V

    if-nez p5, :cond_0

    const/16 v0, 0x8

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
