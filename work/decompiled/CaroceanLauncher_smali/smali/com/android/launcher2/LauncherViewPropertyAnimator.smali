.class public Lcom/android/launcher2/LauncherViewPropertyAnimator;
.super Landroid/animation/Animator;
.source "LauncherViewPropertyAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;
    }
.end annotation


# instance fields
.field mAlpha:F

.field mDuration:J

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field mPropertiesToSet:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;",
            ">;"
        }
    .end annotation
.end field

.field mRotationY:F

.field mRunning:Z

.field mScaleX:F

.field mScaleY:F

.field mStartDelay:J

.field mTarget:Landroid/view/View;

.field mTranslationX:F

.field mTranslationY:F

.field mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 40
    const-class v0, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mRunning:Z

    .line 57
    iput-object p1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mTarget:Landroid/view/View;

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public alpha(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 253
    iput p1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mAlpha:F

    return-object p0
.end method

.method public cancel()V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .locals 1

    .line 75
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->clone()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public end()V
    .locals 1

    .line 80
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDuration()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mDuration:J

    return-wide v0
.end method

.method public getListeners()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object p0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getStartDelay()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mRunning:Z

    return p0
.end method

.method public isStarted()Z
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/4 p1, 0x0

    move v0, p1

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 102
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mRunning:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 p1, 0x0

    move v0, p1

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    .line 111
    invoke-interface {v1, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mRunning:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x0

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 120
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x0

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 128
    invoke-interface {v0, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mRunning:Z

    return-void
.end method

.method public removeAllListeners()V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public rotationY(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 247
    iput p1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mRotationY:F

    return-object p0
.end method

.method public scaleX(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 235
    iput p1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mScaleX:F

    return-object p0
.end method

.method public scaleY(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 241
    iput p1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mScaleY:F

    return-object p0
.end method

.method public setDuration(J)Landroid/animation/Animator;
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 156
    iput-wide p1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mDuration:J

    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 163
    iput-object p1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public setStartDelay(J)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 169
    iput-wide p1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mStartDelay:J

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 0

    .line 174
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setupEndValues()V
    .locals 0

    return-void
.end method

.method public setupStartValues()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    .line 189
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mScaleX:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mRotationY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mScaleY:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 204
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 205
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 207
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 208
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-wide v1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mStartDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 210
    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 211
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-wide v1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 213
    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 214
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 216
    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 217
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mViewPropertyAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 218
    invoke-static {p0}, Lcom/android/launcher2/LauncherAnimUtils;->cancelOnDestroyActivity(Landroid/animation/Animator;)V

    return-void
.end method

.method public translationX(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 223
    iput p1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mTranslationX:F

    return-object p0
.end method

.method public translationY(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mPropertiesToSet:Ljava/util/EnumSet;

    sget-object v1, Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/android/launcher2/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 229
    iput p1, p0, Lcom/android/launcher2/LauncherViewPropertyAnimator;->mTranslationY:F

    return-object p0
.end method
