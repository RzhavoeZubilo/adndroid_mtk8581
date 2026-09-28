.class Lcom/android/launcher2/Launcher$24;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


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

.field final synthetic val$animated:Z

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field final synthetic val$toView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/View;ZLandroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 4104
    iput-object p1, p0, Lcom/android/launcher2/Launcher$24;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$24;->val$fromView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/launcher2/Launcher$24;->val$animated:Z

    iput-object p4, p0, Lcom/android/launcher2/Launcher$24;->val$toView:Landroid/view/View;

    iput-object p5, p0, Lcom/android/launcher2/Launcher$24;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 4107
    iget-object p1, p0, Lcom/android/launcher2/Launcher$24;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 4108
    iget-object p1, p0, Lcom/android/launcher2/Launcher$24;->val$fromView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4109
    iget-object p1, p0, Lcom/android/launcher2/Launcher$24;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$24;->val$fromView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher$24;->val$animated:Z

    invoke-static {p1, v1, v2, v0}, Lcom/android/launcher2/Launcher;->access$3900(Lcom/android/launcher2/Launcher;Landroid/view/View;ZZ)V

    .line 4110
    iget-object p1, p0, Lcom/android/launcher2/Launcher$24;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$24;->val$toView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher$24;->val$animated:Z

    invoke-static {p1, v1, v2, v0}, Lcom/android/launcher2/Launcher;->access$3900(Lcom/android/launcher2/Launcher;Landroid/view/View;ZZ)V

    .line 4111
    iget-object p1, p0, Lcom/android/launcher2/Launcher$24;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4112
    iget-object p1, p0, Lcom/android/launcher2/Launcher$24;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    .line 4114
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/Launcher$24;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 4115
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4117
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/Launcher$24;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$4400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher2/AppsCustomizePagedView;->updateCurrentPageScroll()V

    .line 4118
    iget-object p0, p0, Lcom/android/launcher2/Launcher$24;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$4400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->resumeScrolling()V

    const-string p0, "Launcher"

    const-string p1, "[PerfTest --> drag widget] end process."

    .line 4119
    invoke-static {p0, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
