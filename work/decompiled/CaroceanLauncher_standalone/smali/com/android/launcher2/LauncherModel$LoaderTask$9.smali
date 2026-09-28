.class Lcom/android/launcher2/LauncherModel$LoaderTask$9;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspace(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field final synthetic val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

.field final synthetic val$t:J


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;J)V
    .locals 0

    .line 1958
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iput-wide p3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->val$t:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1960
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->val$oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1962
    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->finishBindingItems()V

    :cond_0
    const/4 v0, 0x0

    .line 1966
    invoke-static {v0}, Lcom/android/launcher2/InstallShortcutHelper;->setInstallingShortcut(Z)V

    .line 1970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bound workspace in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1971
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->val$t:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.Model"

    .line 1970
    invoke-static {v2, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    iget-object p0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$9;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-static {p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->access$1402(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)Z

    return-void
.end method
