.class Lcom/android/launcher2/popuView/AnimationFrameLayout$3;
.super Ljava/lang/Object;
.source "AnimationFrameLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/popuView/AnimationFrameLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/AnimationFrameLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/AnimationFrameLayout;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout$3;->this$0:Lcom/android/launcher2/popuView/AnimationFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout$3;->this$0:Lcom/android/launcher2/popuView/AnimationFrameLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->access$202(Lcom/android/launcher2/popuView/AnimationFrameLayout;I)I

    .line 138
    iget-object p0, p0, Lcom/android/launcher2/popuView/AnimationFrameLayout$3;->this$0:Lcom/android/launcher2/popuView/AnimationFrameLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationFrameLayout;->invalidate()V

    return-void
.end method
