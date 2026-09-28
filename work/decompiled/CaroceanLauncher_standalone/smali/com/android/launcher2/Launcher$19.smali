.class Lcom/android/launcher2/Launcher$19;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

.field final synthetic val$fromView:Landroid/view/View;

.field final synthetic val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Lcom/android/launcher2/popuView/AppsCustomizeFrame;)V
    .locals 0

    .line 3881
    iput-object p1, p0, Lcom/android/launcher2/Launcher$19;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$19;->val$fromView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$19;->val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 3887
    sget-boolean v0, Lcom/android/launcher2/AppsCustomizeTabHost;->NEED_SHOW_WALLPAPER:Z

    if-eqz v0, :cond_1

    .line 3888
    iget-object v0, p0, Lcom/android/launcher2/Launcher$19;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3890
    iget-object v0, p0, Lcom/android/launcher2/Launcher$19;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->hideScrollingIndicator(Z)V

    .line 3892
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$19;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3893
    iget-object v0, p0, Lcom/android/launcher2/Launcher$19;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Hotseat;->setVisibility(I)V

    .line 3896
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 3897
    iget-object v0, p0, Lcom/android/launcher2/Launcher$19;->this$0:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/Launcher$19;->val$fromView:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/android/launcher2/Launcher;->access$3800(Lcom/android/launcher2/Launcher;Landroid/view/View;F)V

    .line 3898
    iget-object v0, p0, Lcom/android/launcher2/Launcher$19;->this$0:Lcom/android/launcher2/Launcher;

    iget-object p0, p0, Lcom/android/launcher2/Launcher$19;->val$toView:Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    invoke-static {v0, p0, p1}, Lcom/android/launcher2/Launcher;->access$3800(Lcom/android/launcher2/Launcher;Landroid/view/View;F)V

    return-void

    .line 3885
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "animation is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
