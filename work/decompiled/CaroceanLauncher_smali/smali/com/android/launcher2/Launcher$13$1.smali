.class Lcom/android/launcher2/Launcher$13$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher$13;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Launcher$13;

.field final synthetic val$backgroundpkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher$13;Ljava/lang/String;)V
    .locals 0

    .line 2062
    iput-object p1, p0, Lcom/android/launcher2/Launcher$13$1;->this$1:Lcom/android/launcher2/Launcher$13;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$13$1;->val$backgroundpkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2065
    sget v0, Lcom/android/launcher2/LauncherApplication;->mTotalMemMb:I

    const/16 v1, 0x800

    if-ge v0, v1, :cond_1

    .line 2066
    iget-object v0, p0, Lcom/android/launcher2/Launcher$13$1;->this$1:Lcom/android/launcher2/Launcher$13;

    iget-object v0, v0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$1100(Lcom/android/launcher2/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2067
    iget-object p0, p0, Lcom/android/launcher2/Launcher$13$1;->this$1:Lcom/android/launcher2/Launcher$13;

    iget-object p0, p0, Lcom/android/launcher2/Launcher$13;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher2/Launcher;->access$1102(Lcom/android/launcher2/Launcher;Z)Z

    .line 2068
    invoke-static {}, Lcom/android/launcher2/Launcher;->access$1200()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.qiyi.video.pad"

    invoke-static {p0, v0}, Lcom/android/launcher2/killApps;->killOneProcess(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2070
    :cond_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->access$1200()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher2/Launcher$13$1;->val$backgroundpkg:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/launcher2/killApps;->killOneProcess(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
