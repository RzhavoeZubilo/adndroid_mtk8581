.class Lcom/android/launcher2/SymmetricalLinearTween$1;
.super Ljava/lang/Object;
.source "SymmetricalLinearTween.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SymmetricalLinearTween;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/SymmetricalLinearTween;


# direct methods
.method constructor <init>(Lcom/android/launcher2/SymmetricalLinearTween;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 90
    iget-object v0, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iget-wide v0, v0, Lcom/android/launcher2/SymmetricalLinearTween;->mBase:J

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 93
    iget-object v4, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iget v4, v4, Lcom/android/launcher2/SymmetricalLinearTween;->mDuration:I

    long-to-float v5, v2

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 95
    iget-object v6, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iget-boolean v6, v6, Lcom/android/launcher2/SymmetricalLinearTween;->mDirection:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v6, :cond_0

    sub-float v5, v7, v5

    :cond_0
    cmpl-float v6, v5, v7

    const/4 v8, 0x0

    if-lez v6, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float v6, v5, v8

    if-gez v6, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    move v7, v5

    .line 103
    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iget v5, v5, Lcom/android/launcher2/SymmetricalLinearTween;->mValue:F

    .line 104
    iget-object v6, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iput v7, v6, Lcom/android/launcher2/SymmetricalLinearTween;->mValue:F

    .line 105
    iget-object v6, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iget-object v6, v6, Lcom/android/launcher2/SymmetricalLinearTween;->mCallback:Lcom/android/launcher2/TweenCallback;

    invoke-interface {v6, v7, v5}, Lcom/android/launcher2/TweenCallback;->onTweenValueChanged(FF)V

    const-wide/16 v5, 0x21

    .line 106
    div-long v5, v2, v5

    long-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x21

    int-to-long v5, v5

    add-long/2addr v0, v5

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 109
    iget-object v3, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iget-object v3, v3, Lcom/android/launcher2/SymmetricalLinearTween;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_3
    if-ltz v2, :cond_4

    .line 112
    iget-object v0, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    iget-object v0, v0, Lcom/android/launcher2/SymmetricalLinearTween;->mCallback:Lcom/android/launcher2/TweenCallback;

    invoke-interface {v0}, Lcom/android/launcher2/TweenCallback;->onTweenFinished()V

    .line 113
    iget-object p0, p0, Lcom/android/launcher2/SymmetricalLinearTween$1;->this$0:Lcom/android/launcher2/SymmetricalLinearTween;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SymmetricalLinearTween;->mRunning:Z

    :cond_4
    return-void
.end method
