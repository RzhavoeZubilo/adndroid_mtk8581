.class Lcom/android/launcher2/LauncherApplication$1;
.super Landroid/database/ContentObserver;
.source "LauncherApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/launcher2/LauncherApplication$1;->this$0:Lcom/android/launcher2/LauncherApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 151
    sget-boolean v0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v1, "LauncherApplication"

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFavoritesObserver onChange: selfChange = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    invoke-static {}, Lcom/android/launcher2/InstallShortcutHelper;->isInstallingShortcut()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 159
    sget-boolean p1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "mFavoritesObserver onChange: is installing shortcut, so decrease the install count and return"

    .line 160
    invoke-static {v1, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1
    iget-object p0, p0, Lcom/android/launcher2/LauncherApplication$1;->this$0:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/launcher2/InstallShortcutHelper;->decreaseInstallingCount(Landroid/content/Context;Z)V

    return-void

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/android/launcher2/LauncherApplication$1;->this$0:Lcom/android/launcher2/LauncherApplication;

    iget-object p1, p1, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher2/LauncherModel;->resetLoadedState(ZZ)V

    .line 170
    iget-object p0, p0, Lcom/android/launcher2/LauncherApplication$1;->this$0:Lcom/android/launcher2/LauncherApplication;

    iget-object p0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground()V

    return-void
.end method
