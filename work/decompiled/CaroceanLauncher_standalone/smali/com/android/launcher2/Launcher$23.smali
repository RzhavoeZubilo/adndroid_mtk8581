.class Lcom/android/launcher2/Launcher$23;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->hideAppsCustomizeHelper(Lcom/android/launcher2/Launcher$State;ZZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 4080
    iput-object p1, p0, Lcom/android/launcher2/Launcher$23;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$23;->val$fromView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$23;->val$toView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 4083
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 4084
    iget-object p1, p0, Lcom/android/launcher2/Launcher$23;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$23;->val$fromView:Landroid/view/View;

    invoke-static {p1, v1, v0}, Lcom/android/launcher2/Launcher;->access$3800(Lcom/android/launcher2/Launcher;Landroid/view/View;F)V

    .line 4085
    iget-object p1, p0, Lcom/android/launcher2/Launcher$23;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$23;->val$toView:Landroid/view/View;

    invoke-static {p1, v1, v0}, Lcom/android/launcher2/Launcher;->access$3800(Lcom/android/launcher2/Launcher;Landroid/view/View;F)V

    .line 4087
    sget-boolean p1, Lcom/android/launcher2/AppsCustomizeTabHost;->NEED_SHOW_WALLPAPER:Z

    if-eqz p1, :cond_0

    .line 4089
    iget-object p1, p0, Lcom/android/launcher2/Launcher$23;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher2/Workspace;->showScrollingIndicator(Z)V

    .line 4090
    iget-object p1, p0, Lcom/android/launcher2/Launcher$23;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Hotseat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4091
    iget-object p0, p0, Lcom/android/launcher2/Launcher$23;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Hotseat;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    :cond_0
    return-void
.end method
