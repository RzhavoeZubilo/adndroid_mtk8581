.class Lcom/android/launcher2/Launcher$21$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Launcher$21;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher$21;)V
    .locals 0

    .line 3978
    iput-object p1, p0, Lcom/android/launcher2/Launcher$21$1;->this$1:Lcom/android/launcher2/Launcher$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3982
    iget-object v0, p0, Lcom/android/launcher2/Launcher$21$1;->this$1:Lcom/android/launcher2/Launcher$21;

    iget-object v0, v0, Lcom/android/launcher2/Launcher$21;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$4100(Lcom/android/launcher2/Launcher;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher$21$1;->this$1:Lcom/android/launcher2/Launcher$21;

    iget-object v1, v1, Lcom/android/launcher2/Launcher$21;->val$stateAnimation:Landroid/animation/AnimatorSet;

    if-eq v0, v1, :cond_0

    return-void

    .line 3984
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/Launcher$21$1;->this$1:Lcom/android/launcher2/Launcher$21;

    iget-object p0, p0, Lcom/android/launcher2/Launcher$21;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$4100(Lcom/android/launcher2/Launcher;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
