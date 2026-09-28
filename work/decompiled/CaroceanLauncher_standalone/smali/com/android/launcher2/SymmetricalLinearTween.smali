.class Lcom/android/launcher2/SymmetricalLinearTween;
.super Ljava/lang/Object;
.source "SymmetricalLinearTween.java"


# static fields
.field private static final FPS:I = 0x1e

.field private static final FRAME_TIME:I = 0x21


# instance fields
.field mBase:J

.field mCallback:Lcom/android/launcher2/TweenCallback;

.field mDirection:Z

.field mDuration:I

.field mHandler:Landroid/os/Handler;

.field mRunning:Z

.field mTick:Ljava/lang/Runnable;

.field mValue:F


# direct methods
.method public constructor <init>(ZILcom/android/launcher2/TweenCallback;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/android/launcher2/SymmetricalLinearTween$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/SymmetricalLinearTween$1;-><init>(Lcom/android/launcher2/SymmetricalLinearTween;)V

    iput-object v0, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mTick:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    iput v0, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mValue:F

    .line 45
    iput-boolean p1, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mDirection:Z

    .line 46
    iput p2, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mDuration:I

    .line 47
    iput-object p3, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mCallback:Lcom/android/launcher2/TweenCallback;

    .line 48
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public start(Z)V
    .locals 2

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/SymmetricalLinearTween;->start(ZJ)V

    return-void
.end method

.method public start(ZJ)V
    .locals 2

    .line 71
    iget-boolean v0, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mDirection:Z

    if-eq p1, v0, :cond_1

    .line 72
    iget-boolean v0, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mRunning:Z

    if-nez v0, :cond_0

    .line 73
    iput-wide p2, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mBase:J

    const/4 p2, 0x1

    .line 74
    iput-boolean p2, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mRunning:Z

    .line 75
    iget-object p2, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mCallback:Lcom/android/launcher2/TweenCallback;

    invoke-interface {p2}, Lcom/android/launcher2/TweenCallback;->onTweenStarted()V

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    const-wide/16 v0, 0x21

    add-long/2addr p2, v0

    .line 77
    iget-object v0, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    .line 81
    iget-wide v0, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mBase:J

    sub-long v0, p2, v0

    add-long/2addr p2, v0

    .line 82
    iget v0, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mDuration:I

    int-to-long v0, v0

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mBase:J

    .line 84
    :goto_0
    iput-boolean p1, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mDirection:Z

    :cond_1
    return-void
.end method
