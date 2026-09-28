.class final Lcom/android/launcher2/UninstallShortcutReceiver$1;
.super Ljava/lang/Thread;
.source "UninstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/UninstallShortcutReceiver;->removeShortcut(Landroid/content/Context;Landroid/content/Intent;Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$savedNewApps:Ljava/util/Set;

.field final synthetic val$sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Set;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 164
    iput-object p2, p0, Lcom/android/launcher2/UninstallShortcutReceiver$1;->val$savedNewApps:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/launcher2/UninstallShortcutReceiver$1;->val$sharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/android/launcher2/UninstallShortcutReceiver$1;->val$savedNewApps:Ljava/util/Set;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/UninstallShortcutReceiver$1;->val$sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "apps.new.list"

    .line 168
    iget-object v3, p0, Lcom/android/launcher2/UninstallShortcutReceiver$1;->val$savedNewApps:Ljava/util/Set;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 170
    iget-object p0, p0, Lcom/android/launcher2/UninstallShortcutReceiver$1;->val$savedNewApps:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "apps.new.page"

    const/4 v2, -0x1

    .line 172
    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 174
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
