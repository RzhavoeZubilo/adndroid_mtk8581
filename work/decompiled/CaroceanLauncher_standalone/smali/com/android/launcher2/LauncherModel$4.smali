.class final Lcom/android/launcher2/LauncherModel$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cellX:I

.field final synthetic val$cellY:I

.field final synthetic val$container:J

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/android/launcher2/ItemInfo;

.field final synthetic val$notify:Z

.field final synthetic val$screen:I

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ItemInfo;JIIILandroid/content/ContentResolver;ZLandroid/content/ContentValues;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iput-wide p2, p0, Lcom/android/launcher2/LauncherModel$4;->val$container:J

    iput p4, p0, Lcom/android/launcher2/LauncherModel$4;->val$screen:I

    iput p5, p0, Lcom/android/launcher2/LauncherModel$4;->val$cellX:I

    iput p6, p0, Lcom/android/launcher2/LauncherModel$4;->val$cellY:I

    iput-object p7, p0, Lcom/android/launcher2/LauncherModel$4;->val$cr:Landroid/content/ContentResolver;

    iput-boolean p8, p0, Lcom/android/launcher2/LauncherModel$4;->val$notify:Z

    iput-object p9, p0, Lcom/android/launcher2/LauncherModel$4;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DbDebug    Add item ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-object v1, v1, Lcom/android/launcher2/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") to db, id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v1, v1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/launcher2/LauncherModel$4;->val$container:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/LauncherModel$4;->val$screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/LauncherModel$4;->val$cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/LauncherModel$4;->val$cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    sget-object v1, Lcom/android/launcher2/Launcher;->sDumpLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "Launcher.Model"

    .line 654
    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$4;->val$cr:Landroid/content/ContentResolver;

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$4;->val$notify:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$4;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 660
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v1, v1, Lcom/android/launcher2/ItemInfo;->id:J

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher2/LauncherModel;->checkItemInfoLocked(JLcom/android/launcher2/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 662
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sBgItemsIdMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "Launcher.Model"

    .line 664
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addItemToDatabase sBgItemsIdMap.put = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v3, v3, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget v1, v1, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    goto/16 :goto_2

    .line 686
    :cond_2
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sBgAppWidgets:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "Launcher.Model"

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addItemToDatabase sAppWidgets.add = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 668
    :cond_3
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    check-cast v3, Lcom/android/launcher2/FolderInfo;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v1, v1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v3, -0x64

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v1, v1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v3, -0x65

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    goto :goto_1

    .line 676
    :cond_5
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sBgFolders:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " to a folder that  doesn\'t exist"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Launcher.Model"

    .line 680
    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-static {}, Lcom/android/launcher2/Launcher;->dumpDebugLogsToConsole()V

    goto :goto_2

    .line 674
    :cond_6
    :goto_1
    sget-object v1, Lcom/android/launcher2/LauncherModel;->sBgWorkspaceItems:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher2/LauncherModel$4;->val$item:Lcom/android/launcher2/ItemInfo;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_7
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
