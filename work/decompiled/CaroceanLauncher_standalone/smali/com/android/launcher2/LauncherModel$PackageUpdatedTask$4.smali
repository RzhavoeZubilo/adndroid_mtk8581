.class Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

.field final synthetic val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 0

    .line 2319
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;->this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2322
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;->this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;->this$1:Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2323
    :goto_0
    iget-object p0, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    if-ne p0, v0, :cond_1

    if-eqz v0, :cond_1

    .line 2324
    invoke-interface {p0}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindPackagesUpdated()V

    :cond_1
    return-void
.end method
