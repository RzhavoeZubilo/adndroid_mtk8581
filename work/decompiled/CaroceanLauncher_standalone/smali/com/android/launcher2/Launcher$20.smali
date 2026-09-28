.class Lcom/android/launcher2/Launcher$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->showAppsCustomizeHelper(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field animationCancelled:Z

.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$animated:Z

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$springLoaded:Z

.field final synthetic val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/popuView/AppsCustomizeFrame;Landroid/view/View;ZZ)V
    .locals 0

    .line 3908
    iput-object p1, p0, Lcom/android/launcher2/Launcher$20;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$20;->val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$20;->val$fromView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/launcher2/Launcher$20;->val$animated:Z

    iput-boolean p5, p0, Lcom/android/launcher2/Launcher$20;->val$springLoaded:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 3909
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher$20;->animationCancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 3943
    iput-boolean p1, p0, Lcom/android/launcher2/Launcher$20;->animationCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 3923
    iget-object p1, p0, Lcom/android/launcher2/Launcher$20;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v0, p0, Lcom/android/launcher2/Launcher$20;->val$fromView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher$20;->val$animated:Z

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher2/Launcher;->access$3900(Lcom/android/launcher2/Launcher;Landroid/view/View;ZZ)V

    .line 3924
    iget-object p1, p0, Lcom/android/launcher2/Launcher$20;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v0, p0, Lcom/android/launcher2/Launcher$20;->val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    iget-boolean v1, p0, Lcom/android/launcher2/Launcher$20;->val$animated:Z

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher2/Launcher;->access$3900(Lcom/android/launcher2/Launcher;Landroid/view/View;ZZ)V

    .line 3926
    iget-object p1, p0, Lcom/android/launcher2/Launcher$20;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/launcher2/Launcher$20;->val$springLoaded:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3928
    iget-object p1, p0, Lcom/android/launcher2/Launcher$20;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    .line 3929
    iget-object p1, p0, Lcom/android/launcher2/Launcher$20;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher2/Launcher;->hideDockDivider()V

    .line 3931
    :cond_0
    iget-boolean p1, p0, Lcom/android/launcher2/Launcher$20;->animationCancelled:Z

    if-nez p1, :cond_1

    .line 3932
    iget-object p1, p0, Lcom/android/launcher2/Launcher$20;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {p1, v2}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 3936
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/Launcher$20;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$4000(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/SearchDropTargetBar;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3937
    iget-object p0, p0, Lcom/android/launcher2/Launcher$20;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$4000(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/SearchDropTargetBar;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/SearchDropTargetBar;->hideSearchBar(Z)V

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 3913
    iget-object p1, p0, Lcom/android/launcher2/Launcher$20;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 3915
    iget-object p1, p0, Lcom/android/launcher2/Launcher$20;->val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setTranslationX(F)V

    .line 3916
    iget-object p1, p0, Lcom/android/launcher2/Launcher$20;->val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setTranslationY(F)V

    .line 3917
    iget-object p1, p0, Lcom/android/launcher2/Launcher$20;->val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->setVisibility(I)V

    .line 3918
    iget-object p0, p0, Lcom/android/launcher2/Launcher$20;->val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->bringToFront()V

    return-void
.end method
