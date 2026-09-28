.class public Lcom/android/launcher2/InterruptibleInOutAnimator;
.super Ljava/lang/Object;
.source "InterruptibleInOutAnimator.java"


# static fields
.field private static final IN:I = 0x1

.field private static final OUT:I = 0x2

.field private static final STOPPED:I


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mDirection:I

.field private mFirstRun:Z

.field private mOriginalDuration:J

.field private mOriginalFromValue:F

.field private mOriginalToValue:F

.field private mTag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JFF)V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mFirstRun:Z

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mDirection:I

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p3, v2, v1

    aput p4, v2, v0

    .line 48
    invoke-static {v2}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 49
    iput-wide p1, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mOriginalDuration:J

    .line 50
    iput p3, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mOriginalFromValue:F

    .line 51
    iput p4, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mOriginalToValue:F

    .line 53
    new-instance p1, Lcom/android/launcher2/InterruptibleInOutAnimator$1;

    invoke-direct {p1, p0}, Lcom/android/launcher2/InterruptibleInOutAnimator$1;-><init>(Lcom/android/launcher2/InterruptibleInOutAnimator;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/InterruptibleInOutAnimator;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mDirection:I

    return p1
.end method

.method private animate(I)V
    .locals 9

    .line 62
    iget-object v0, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 63
    iget v3, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mOriginalToValue:F

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mOriginalFromValue:F

    .line 64
    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mFirstRun:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mOriginalFromValue:F

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 65
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 68
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->cancel()V

    .line 72
    iput p1, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mDirection:I

    .line 75
    iget-wide v5, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mOriginalDuration:J

    sub-long v0, v5, v0

    .line 76
    iget-object p1, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 78
    iget-object p1, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v4, v0, v1

    aput v3, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 79
    iget-object p1, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 80
    iput-boolean v1, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mFirstRun:Z

    return-void
.end method


# virtual methods
.method public animateIn()V
    .locals 1

    const/4 v0, 0x1

    .line 106
    invoke-direct {p0, v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animate(I)V

    return-void
.end method

.method public animateOut()V
    .locals 1

    const/4 v0, 0x2

    .line 116
    invoke-direct {p0, v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animate(I)V

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mDirection:I

    return-void
.end method

.method public end()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mDirection:I

    return-void
.end method

.method public getAnimator()Landroid/animation/ValueAnimator;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public isStopped()Z
    .locals 0

    .line 97
    iget p0, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mDirection:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/launcher2/InterruptibleInOutAnimator;->mTag:Ljava/lang/Object;

    return-void
.end method
