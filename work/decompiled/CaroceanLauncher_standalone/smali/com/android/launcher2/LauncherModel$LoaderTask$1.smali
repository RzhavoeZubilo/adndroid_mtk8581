.class Lcom/android/launcher2/LauncherModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->waitForIdle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V
    .locals 0

    .line 1168
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1170
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    monitor-enter v0

    .line 1171
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$102(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)Z

    const-string v1, "Launcher.Model"

    const-string v2, "done with previous binding step"

    .line 1173
    invoke-static {v1, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    iget-object p0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$1;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1176
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
