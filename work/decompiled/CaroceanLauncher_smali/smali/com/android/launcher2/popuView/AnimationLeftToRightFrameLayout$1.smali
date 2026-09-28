.class Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout$1;
.super Ljava/lang/Object;
.source "AnimationLeftToRightFrameLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout$1;->this$0:Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout$1;->this$0:Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->access$002(Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;I)I

    .line 93
    iget-object p0, p0, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout$1;->this$0:Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AnimationLeftToRightFrameLayout;->invalidate()V

    return-void
.end method
