.class final Lcom/android/launcher2/LauncherModel$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher2/ItemInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/android/launcher2/ItemInfo;

.field final synthetic val$itemId:J

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;JLcom/android/launcher2/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$3;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$3;->val$values:Landroid/content/ContentValues;

    iput-wide p4, p0, Lcom/android/launcher2/LauncherModel$3;->val$itemId:J

    iput-object p6, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/ItemInfo;

    iput-object p7, p0, Lcom/android/launcher2/LauncherModel$3;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 366
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$3;->val$uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$3;->val$values:Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 369
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_0
    iget-wide v1, p0, Lcom/android/launcher2/LauncherModel$3;->val$itemId:J

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$3;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher2/LauncherModel;->checkItemInfoLocked(JLcom/android/launcher2/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 372
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v1, v1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    const-wide/16 v5, -0x65

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v1, v1, Lcom/android/launcher2/ItemInfo;->container:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_0

    .line 375
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v7, v2, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/ItemInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " container being set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$3;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v7, v2, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", not in the list of folders"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher.Model"

    .line 380
    invoke-static {v2, v1}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/android/launcher2/Launcher;->dumpDebugLogsToConsole()V

    .line 388
    :cond_0
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    iget-wide v7, p0, Lcom/android/launcher2/LauncherModel$3;->val$itemId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/ItemInfo;

    .line 389
    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->container:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->container:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    goto :goto_0

    .line 403
    :cond_1
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 391
    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    goto :goto_1

    .line 395
    :cond_3
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 396
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
