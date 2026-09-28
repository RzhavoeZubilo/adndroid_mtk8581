.class Lcom/android/launcher2/PagedView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/PagedView;->hideScrollingIndicator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lcom/android/launcher2/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PagedView;)V
    .locals 0

    .line 1910
    iput-object p1, p0, Lcom/android/launcher2/PagedView$2;->this$0:Lcom/android/launcher2/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 1911
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView$2;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1914
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView$2;->cancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1918
    iget-boolean p1, p0, Lcom/android/launcher2/PagedView$2;->cancelled:Z

    if-nez p1, :cond_0

    .line 1919
    iget-object p0, p0, Lcom/android/launcher2/PagedView$2;->this$0:Lcom/android/launcher2/PagedView;

    invoke-static {p0}, Lcom/android/launcher2/PagedView;->access$100(Lcom/android/launcher2/PagedView;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
