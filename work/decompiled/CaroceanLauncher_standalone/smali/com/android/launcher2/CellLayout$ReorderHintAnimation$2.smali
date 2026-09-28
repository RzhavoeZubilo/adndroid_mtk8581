.class Lcom/android/launcher2/CellLayout$ReorderHintAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayout$ReorderHintAnimation;)V
    .locals 0

    .line 2390
    iput-object p1, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$2;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 2393
    iget-object p1, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$2;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->initDeltaX:F

    .line 2394
    iget-object p1, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$2;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iput v0, p1, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->initDeltaY:F

    .line 2395
    iget-object p0, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation$2;->this$1:Lcom/android/launcher2/CellLayout$ReorderHintAnimation;

    iget-object p1, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->this$0:Lcom/android/launcher2/CellLayout;

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getChildrenScale()F

    move-result p1

    iput p1, p0, Lcom/android/launcher2/CellLayout$ReorderHintAnimation;->initScale:F

    return-void
.end method
