.class Lcom/android/launcher2/Launcher$21;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->showAppsCustomizeHelper(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$animated:Z

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$scale:F

.field final synthetic val$stateAnimation:Landroid/animation/AnimatorSet;

.field final synthetic val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/animation/AnimatorSet;Lcom/android/launcher2/popuView/AppsCustomizeFrame;FLandroid/view/View;Z)V
    .locals 0

    .line 3969
    iput-object p1, p0, Lcom/android/launcher2/Launcher$21;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$21;->val$stateAnimation:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$21;->val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    iput p4, p0, Lcom/android/launcher2/Launcher$21;->val$scale:F

    iput-object p5, p0, Lcom/android/launcher2/Launcher$21;->val$fromView:Landroid/view/View;

    iput-boolean p6, p0, Lcom/android/launcher2/Launcher$21;->val$animated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3973
    iget-object v0, p0, Lcom/android/launcher2/Launcher$21;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$4100(Lcom/android/launcher2/Launcher;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher$21;->val$stateAnimation:Landroid/animation/AnimatorSet;

    if-eq v0, v1, :cond_0

    return-void

    .line 3975
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$21;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$21;->val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    iget v2, p0, Lcom/android/launcher2/Launcher$21;->val$scale:F

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Launcher;->access$4200(Lcom/android/launcher2/Launcher;Landroid/view/View;F)V

    .line 3976
    iget-object v0, p0, Lcom/android/launcher2/Launcher$21;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$21;->val$fromView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher$21;->val$animated:Z

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->access$4300(Lcom/android/launcher2/Launcher;Landroid/view/View;ZZ)V

    .line 3977
    iget-object v0, p0, Lcom/android/launcher2/Launcher$21;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$21;->val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    iget-boolean v2, p0, Lcom/android/launcher2/Launcher$21;->val$animated:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/Launcher;->access$4300(Lcom/android/launcher2/Launcher;Landroid/view/View;ZZ)V

    .line 3978
    iget-object v0, p0, Lcom/android/launcher2/Launcher$21;->val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    new-instance v1, Lcom/android/launcher2/Launcher$21$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Launcher$21$1;-><init>(Lcom/android/launcher2/Launcher$21;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
