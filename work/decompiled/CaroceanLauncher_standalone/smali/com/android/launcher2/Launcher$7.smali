.class Lcom/android/launcher2/Launcher$7;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .line 1179
    iput-object p1, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1182
    sget v0, Lcom/android/launcher2/LauncherApplication;->mTotalMemMb:I

    const/16 v1, 0x800

    if-ge v0, v1, :cond_1

    .line 1183
    iget-object v0, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$1100(Lcom/android/launcher2/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    iget-object p0, p0, Lcom/android/launcher2/Launcher$7;->this$0:Lcom/android/launcher2/Launcher;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher2/Launcher;->access$1102(Lcom/android/launcher2/Launcher;Z)Z

    .line 1185
    invoke-static {}, Lcom/android/launcher2/Launcher;->access$1200()Landroid/content/Context;

    move-result-object p0

    const-string v0, "com.qiyi.video.pad"

    invoke-static {p0, v0}, Lcom/android/launcher2/killApps;->killOneProcess(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1187
    :cond_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->access$1200()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher2/Launcher;->access$1300()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher2/killApps;->killOneProcess(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
