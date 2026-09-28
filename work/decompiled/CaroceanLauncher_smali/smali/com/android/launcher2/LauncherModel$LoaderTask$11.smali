.class Lcom/android/launcher2/LauncherModel$LoaderTask$11;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAllAppsByBatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field final synthetic val$added:Ljava/util/ArrayList;

.field final synthetic val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

.field final synthetic val$first:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/LauncherModel$Callbacks;ZLjava/util/ArrayList;)V
    .locals 0

    .line 2143
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->this$1:Lcom/android/launcher2/LauncherModel$LoaderTask;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iput-boolean p3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$first:Z

    iput-object p4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$added:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2146
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    const-string v3, "Launcher.Model"

    if-eqz v2, :cond_1

    .line 2147
    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$first:Z

    if-eqz v4, :cond_0

    .line 2148
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$added:Ljava/util/ArrayList;

    invoke-interface {v2, v4}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindAllApplications(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 2150
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$added:Ljava/util/ArrayList;

    invoke-interface {v2, v4}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindAppsAdded(Ljava/util/ArrayList;)V

    .line 2153
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bound "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask$11;->val$added:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " apps in "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2154
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2153
    invoke-static {v3, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "not binding apps: no Launcher activity"

    .line 2157
    invoke-static {v3, p0}, Lcom/android/launcher2/uitl/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
