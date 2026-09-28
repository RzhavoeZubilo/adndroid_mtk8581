.class public Lcom/android/launcher2/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;
    }
.end annotation


# static fields
.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final EXTRA_SHORTCUT_ICON_ARRAY:Ljava/lang/String; = "com.android.launcher2.extra.shortcut.array.ICON"

.field private static final EXTRA_SHORTCUT_ICON_RESOURCE_ARRAY:Ljava/lang/String; = "com.android.launcher2.extra.shortcut.array.ICON_RESOURCE"

.field private static final EXTRA_SHORTCUT_INTENT_ARRAY:Ljava/lang/String; = "com.android.launcher2.extra.shortcut.array.INTENT"

.field private static final EXTRA_SHORTCUT_NAME_ARRAY:Ljava/lang/String; = "com.android.launcher2.extra.shortcut.array.NAME"

.field private static final EXTRA_SHORTCUT_STEP_NUMBER:Ljava/lang/String; = "com.android.launcher2.extra.shortcut.stepnumber"

.field private static final EXTRA_SHORTCUT_TOTAL_NUMBER:Ljava/lang/String; = "com.android.launcher2.extra.shortcut.totalnumber"

.field private static final INSTALL_SHORTCUT_ADD_FAIL:I = -0x3

.field private static final INSTALL_SHORTCUT_IS_DUPLICATE:I = -0x1

.field private static final INSTALL_SHORTCUT_NO_SPACE:I = -0x2

.field private static final INSTALL_SHORTCUT_SUCCESSFUL:I = 0x0

.field public static final NEW_APPS_LIST_KEY:Ljava/lang/String; = "apps.new.list"

.field public static final NEW_APPS_PAGE_KEY:Ljava/lang/String; = "apps.new.page"

.field public static final NEW_SHORTCUT_BOUNCE_DURATION:I = 0x1c2

.field public static final NEW_SHORTCUT_STAGGER_DELAY:I = 0x4b

.field public static final SHORTCUT_MIMETYPE:Ljava/lang/String; = "com.android.launcher/shortcut"

.field private static final TAG:Ljava/lang/String; = "InstallShortcutReceiver"

.field private static mInstallQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mUseInstallQueue:Z

.field private static sItemsAddingToDatabase:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sName2IntentArrayMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static sName2StepNumberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sName2TotalNumberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 70
    sput-boolean v0, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->sName2TotalNumberMap:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->sName2StepNumberMap:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->sName2IntentArrayMap:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->sItemsAddingToDatabase:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static clearMaps(Ljava/lang/String;)V
    .locals 1

    .line 264
    sget-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->sName2TotalNumberMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->sName2IntentArrayMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->sName2StepNumberMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static disableAndFlushInstallQueue(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 371
    sput-boolean v0, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    .line 372
    invoke-static {p0}, Lcom/android/launcher2/InstallShortcutReceiver;->flushInstallQueue(Landroid/content/Context;)V

    return-void
.end method

.method static enableInstallQueue()V
    .locals 1

    const/4 v0, 0x1

    .line 367
    sput-boolean v0, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    return-void
.end method

.method private static findEmptyCell(Landroid/content/Context;Ljava/util/ArrayList;[II)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;[II)Z"
        }
    .end annotation

    .line 699
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v3

    .line 700
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v4

    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 v0, 0x1

    aput v4, p0, v0

    const/4 v1, 0x0

    aput v3, p0, v1

    .line 701
    const-class v2, Z

    invoke-static {v2, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, [[Z

    move p0, v1

    .line 705
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v6, -0x64

    if-ge p0, v2, :cond_2

    .line 706
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    .line 707
    iget-wide v8, v2, Lcom/android/launcher2/ItemInfo;->container:J

    cmp-long v6, v8, v6

    if-nez v6, :cond_1

    .line 708
    iget v6, v2, Lcom/android/launcher2/ItemInfo;->screen:I

    if-ne v6, p3, :cond_1

    .line 709
    iget v6, v2, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 710
    iget v7, v2, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 711
    iget v8, v2, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 712
    iget v2, v2, Lcom/android/launcher2/ItemInfo;->spanY:I

    move v9, v6

    :goto_1
    if-ltz v9, :cond_1

    add-int v10, v6, v8

    if-ge v9, v10, :cond_1

    if-ge v9, v3, :cond_1

    move v10, v7

    :goto_2
    if-ltz v10, :cond_0

    add-int v11, v7, v2

    if-ge v10, v11, :cond_0

    if-ge v10, v4, :cond_0

    .line 715
    aget-object v11, v5, v9

    aput-boolean v0, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 724
    :cond_2
    :goto_3
    sget-object p0, Lcom/android/launcher2/InstallShortcutReceiver;->sItemsAddingToDatabase:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v1, p0, :cond_5

    .line 725
    sget-object p0, Lcom/android/launcher2/InstallShortcutReceiver;->sItemsAddingToDatabase:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/ItemInfo;

    .line 726
    iget-wide v8, p0, Lcom/android/launcher2/ItemInfo;->container:J

    cmp-long p1, v8, v6

    if-nez p1, :cond_4

    .line 727
    iget p1, p0, Lcom/android/launcher2/ItemInfo;->screen:I

    if-ne p1, p3, :cond_4

    .line 728
    iget p1, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 729
    iget v2, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 730
    iget v8, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 731
    iget p0, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move v9, p1

    :goto_4
    if-ltz v9, :cond_4

    add-int v10, p1, v8

    if-ge v9, v10, :cond_4

    if-ge v9, v3, :cond_4

    move v10, v2

    :goto_5
    if-ltz v10, :cond_3

    add-int v11, v2, p0

    if-ge v10, v11, :cond_3

    if-ge v10, v4, :cond_3

    .line 734
    aget-object v11, v5, v9

    aput-boolean v0, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p2

    .line 742
    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result p0

    return p0
.end method

.method static flushInstallQueue(Landroid/content/Context;)V
    .locals 3

    .line 376
    sget-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 378
    sget-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 379
    sget-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher2/InstallShortcutHelper;->increaseInstallingCount(I)V

    .line 382
    :cond_0
    sget-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->sItemsAddingToDatabase:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 384
    :goto_0
    sget-object v1, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 385
    sget-object v1, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-static {p0, v1}, Lcom/android/launcher2/InstallShortcutReceiver;->processInstallShortcut(Landroid/content/Context;Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 386
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "InstallShortcutReceiver"

    const-string v2, "flushInstallQueue: there is no space for shortcut. Stop right now."

    .line 387
    invoke-static {v1, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_1
    sget-object v1, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    .line 391
    invoke-static {p0, v1}, Lcom/android/launcher2/InstallShortcutHelper;->decreaseInstallingCount(Landroid/content/Context;I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private static installShortcut(Landroid/content/Context;Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Intent;IZLandroid/content/SharedPreferences;[I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "IZ",
            "Landroid/content/SharedPreferences;",
            "[I)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move/from16 v6, p5

    move/from16 v3, p6

    move-object/from16 v4, p7

    .line 624
    sget-boolean v5, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "InstallShortcutReceiver"

    .line 625
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "installShortcut data = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", items = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v8, p3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", intent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", screen = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", shortcutExists = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v7, p0

    .line 631
    invoke-static {p0, v1, v5, v6}, Lcom/android/launcher2/InstallShortcutReceiver;->findEmptyCell(Landroid/content/Context;Ljava/util/ArrayList;[II)Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_8

    if-eqz v2, :cond_9

    .line 633
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.VIEW"

    .line 634
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 635
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 636
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 637
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-interface {v1, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x10200000

    .line 638
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    :goto_0
    const-string v1, "duplicate"

    const/4 v11, 0x1

    .line 644
    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "InstallShortcutReceiver"

    const-string v1, "InstallShortcut Failed: Already Exist!"

    .line 683
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 684
    aput v0, p8, v10

    goto/16 :goto_2

    :cond_4
    :goto_1
    const-string v1, "apps.new.page"

    .line 649
    invoke-interface {v4, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 650
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    if-ne v1, v6, :cond_5

    const-string v1, "apps.new.list"

    .line 652
    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 654
    :cond_5
    monitor-enter v3

    .line 655
    :try_start_0
    invoke-virtual {v2, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 656
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    new-instance v1, Lcom/android/launcher2/InstallShortcutReceiver$1;

    const-string v2, "setNewAppsThread"

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/android/launcher2/InstallShortcutReceiver$1;-><init>(Ljava/lang/String;Ljava/util/Set;Landroid/content/SharedPreferences;I)V

    .line 665
    invoke-virtual {v1}, Lcom/android/launcher2/InstallShortcutReceiver$1;->start()V

    .line 668
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    .line 669
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v1

    const-wide/16 v8, -0x64

    aget v12, v5, v10

    aget v13, v5, v11

    const/4 v14, 0x1

    move-object v2, p0

    move-object/from16 v3, p1

    move-wide v4, v8

    move/from16 v6, p5

    move v7, v12

    move v8, v13

    move v9, v14

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, -0x3

    .line 673
    aput v0, p8, v10

    const-string v0, "InstallShortcutReceiver"

    const-string v1, "InstallShortcut Failed: Due to ShortcutInfo is null"

    .line 674
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    .line 677
    :cond_6
    sget-object v1, Lcom/android/launcher2/InstallShortcutReceiver;->sItemsAddingToDatabase:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    aput v10, p8, v10

    .line 679
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v1, :cond_7

    const-string v1, "InstallShortcutReceiver"

    .line 680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstallShortcut Successfully: Install the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return v11

    :catchall_0
    move-exception v0

    .line 656
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    const-string v0, "InstallShortcutReceiver"

    const-string v1, "InstallShortcut Failed: No Space!"

    .line 690
    invoke-static {v0, v1}, Lcom/android/launcher2/uitl/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    .line 691
    aput v0, p8, v10

    :cond_9
    return v10
.end method

.method private static installShortcutArray(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const-string v0, "com.android.launcher2.extra.shortcut.array.INTENT"

    .line 278
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "com.android.launcher2.extra.shortcut.array.NAME"

    .line 279
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.launcher2.extra.shortcut.array.ICON"

    .line 280
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    const-string v3, "com.android.launcher2.extra.shortcut.array.ICON_RESOURCE"

    .line 282
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 284
    array-length v3, v0

    .line 286
    array-length v4, v1

    const-string v5, "InstallShortcutReceiver"

    if-eq v4, v3, :cond_1

    .line 287
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "installShortcutArray: intent array and name array have different size!"

    .line 288
    invoke-static {v5, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    move v6, v4

    :goto_0
    if-ge v6, v3, :cond_5

    .line 295
    aget-object v7, v0, v6

    check-cast v7, Landroid/content/Intent;

    if-nez v7, :cond_3

    .line 296
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "installShortcutArray: intent is null with "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 302
    :cond_3
    aget-object v7, v1, v6

    if-nez v7, :cond_4

    .line 304
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 305
    aget-object v8, v0, v6

    check-cast v8, Landroid/content/Intent;

    .line 306
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 305
    invoke-virtual {v7, v8, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 307
    invoke-virtual {v8, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    return-void

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_7

    .line 314
    array-length v6, v2

    if-eq v6, v3, :cond_7

    .line 315
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "installShortcutArray: icon array is not null but the size not match!"

    .line 316
    invoke-static {v5, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    if-eqz p1, :cond_9

    .line 322
    array-length v6, p1

    if-eq v6, v3, :cond_9

    .line 323
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_8

    const-string p0, "installShortcutArray: icon resource array is not null but the size not match!"

    .line 324
    invoke-static {v5, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void

    .line 331
    :cond_9
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v6

    if-lez v6, :cond_b

    .line 332
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v6

    if-gtz v6, :cond_a

    goto :goto_2

    :cond_a
    move v6, v4

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v6, 0x1

    .line 334
    :goto_3
    new-array v7, v3, [Landroid/content/Intent;

    :goto_4
    if-ge v4, v3, :cond_11

    .line 336
    aget-object v8, v1, v4

    .line 337
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v10, "android.intent.extra.shortcut.NAME"

    .line 338
    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    aget-object v10, v0, v4

    const-string v11, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v2, :cond_c

    .line 341
    aget-object v10, v2, v4

    const-string v11, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_c
    if-eqz p1, :cond_d

    .line 345
    aget-object v10, p1, v4

    const-string v11, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 348
    :cond_d
    sget-boolean v10, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    if-nez v10, :cond_e

    if-eqz v6, :cond_10

    .line 349
    :cond_e
    sget-boolean v10, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v10, :cond_f

    const-string v10, "installShortcutArray: Add into Install Queue!"

    .line 350
    invoke-static {v5, v10}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_f
    new-instance v10, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;

    aget-object v11, v0, v4

    check-cast v11, Landroid/content/Intent;

    invoke-direct {v10, v9, v8, v11}, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;)V

    .line 354
    sget-object v8, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_10
    aput-object v9, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 359
    :cond_11
    sget-boolean p1, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    if-nez p1, :cond_12

    if-nez v6, :cond_12

    .line 361
    invoke-static {v3}, Lcom/android/launcher2/InstallShortcutHelper;->increaseInstallingCount(I)V

    .line 362
    invoke-static {p0, v7}, Lcom/android/launcher2/InstallShortcutReceiver;->processInstallShortcutArray(Landroid/content/Context;[Landroid/content/Intent;)V

    :cond_12
    return-void
.end method

.method private static installShortcutSingle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 118
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.intent.extra.shortcut.NAME"

    .line 124
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 127
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 128
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 129
    invoke-virtual {v3, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    .line 134
    :cond_1
    :goto_0
    sget-boolean v3, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    const-string v4, "InstallShortcutReceiver"

    if-eqz v3, :cond_2

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installShortcutSingle: data = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", name = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", intent = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v3

    const/4 v5, 0x1

    if-lez v3, :cond_3

    .line 141
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v3

    if-gtz v3, :cond_4

    :cond_3
    move v2, v5

    .line 143
    :cond_4
    new-instance v3, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {v3, p1, v1, v0}, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;)V

    .line 144
    sget-boolean p1, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    if-nez p1, :cond_6

    if-eqz v2, :cond_5

    goto :goto_1

    .line 151
    :cond_5
    invoke-static {v5}, Lcom/android/launcher2/InstallShortcutHelper;->increaseInstallingCount(I)V

    .line 152
    invoke-static {p0, v3}, Lcom/android/launcher2/InstallShortcutReceiver;->processInstallShortcut(Landroid/content/Context;Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;)Z

    goto :goto_2

    .line 145
    :cond_6
    :goto_1
    sget-object p0, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_7

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "installShortcutSingle: Add the install process into queue "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private static installShortcutStep(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v0, "android.intent.extra.shortcut.INTENT"

    .line 165
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "InstallShortcutReceiver"

    if-nez v0, :cond_0

    const-string p0, "installShortcutStep: Intent is null!"

    .line 167
    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "com.android.launcher2.extra.shortcut.totalnumber"

    const/4 v3, 0x0

    .line 171
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ge v2, v4, :cond_1

    const-string p0, "installShortcutStep: total number is smaller than 1!"

    .line 173
    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v5, "com.android.launcher2.extra.shortcut.stepnumber"

    .line 177
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-lt v5, v4, :cond_12

    if-le v5, v2, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v6, 0x0

    .line 186
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 188
    invoke-virtual {v7}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    .line 190
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "installShortcutStep: Package name is null!"

    .line 191
    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 197
    :cond_4
    sget-object v7, Lcom/android/launcher2/InstallShortcutReceiver;->sName2TotalNumberMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 198
    sget-object v7, Lcom/android/launcher2/InstallShortcutReceiver;->sName2TotalNumberMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v2, :cond_5

    .line 199
    new-array v7, v2, [Landroid/content/Intent;

    .line 200
    sget-object v8, Lcom/android/launcher2/InstallShortcutReceiver;->sName2IntentArrayMap:Ljava/util/Map;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v7, Lcom/android/launcher2/InstallShortcutReceiver;->sName2StepNumberMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_5
    sget-object v7, Lcom/android/launcher2/InstallShortcutReceiver;->sName2TotalNumberMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v7, Lcom/android/launcher2/InstallShortcutReceiver;->sName2IntentArrayMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 207
    new-array v7, v2, [Landroid/content/Intent;

    .line 208
    sget-object v8, Lcom/android/launcher2/InstallShortcutReceiver;->sName2IntentArrayMap:Ljava/util/Map;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v7, Lcom/android/launcher2/InstallShortcutReceiver;->sName2StepNumberMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_6
    sget-object v7, Lcom/android/launcher2/InstallShortcutReceiver;->sName2IntentArrayMap:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/Intent;

    add-int/lit8 v8, v5, -0x1

    aput-object p1, v7, v8

    .line 212
    sget-object v7, Lcom/android/launcher2/InstallShortcutReceiver;->sName2StepNumberMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-boolean v7, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v7, :cond_7

    .line 215
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "installShortcutStep: data = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", intent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", total number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", step = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_7
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v7

    if-lez v7, :cond_9

    .line 222
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v7

    if-gtz v7, :cond_8

    goto :goto_0

    :cond_8
    move v4, v3

    .line 224
    :cond_9
    :goto_0
    sget-boolean v7, Lcom/android/launcher2/InstallShortcutReceiver;->mUseInstallQueue:Z

    if-nez v7, :cond_e

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    if-ne v5, v2, :cond_11

    .line 243
    sget-boolean p1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p1, :cond_b

    const-string p1, "installShortcutStep: Hit the total and start to install shortcut array!"

    .line 244
    invoke-static {v1, p1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_b
    sget-object p1, Lcom/android/launcher2/InstallShortcutReceiver;->sName2IntentArrayMap:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    .line 248
    array-length v0, p1

    :goto_1
    if-ge v3, v0, :cond_d

    aget-object v2, p1, v3

    if-nez v2, :cond_c

    const-string p0, "installShortcutStep: IntentArray has null intent!"

    .line 250
    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {v6}, Lcom/android/launcher2/InstallShortcutReceiver;->clearMaps(Ljava/lang/String;)V

    return-void

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 256
    :cond_d
    array-length v0, p1

    invoke-static {v0}, Lcom/android/launcher2/InstallShortcutHelper;->increaseInstallingCount(I)V

    .line 257
    invoke-static {p0, p1}, Lcom/android/launcher2/InstallShortcutReceiver;->processInstallShortcutArray(Landroid/content/Context;[Landroid/content/Intent;)V

    .line 258
    invoke-static {v6}, Lcom/android/launcher2/InstallShortcutReceiver;->clearMaps(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    :goto_2
    const-string v2, "android.intent.extra.shortcut.NAME"

    .line 225
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    .line 228
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 229
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 230
    invoke-virtual {v2, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 232
    :catch_0
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_f

    const-string p0, "installShortcutStep: Activity name is not found!"

    .line 233
    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void

    .line 238
    :cond_10
    :goto_3
    new-instance p0, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;

    invoke-direct {p0, p1, v2, v0}, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;)V

    .line 239
    sget-object p1, Lcom/android/launcher2/InstallShortcutReceiver;->mInstallQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_4
    return-void

    :cond_12
    :goto_5
    const-string p0, "installShortcutStep: Step number is wrong!"

    .line 179
    invoke-static {v1, p0}, Lcom/android/launcher2/uitl/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static processInstallShortcut(Landroid/content/Context;Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 402
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    .line 403
    invoke-virtual {v0, v2, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 405
    iget-object v12, v1, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 406
    iget-object v13, v1, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 407
    iget-object v14, v1, Lcom/android/launcher2/InstallShortcutReceiver$PendingInstallShortcutInfo;->name:Ljava/lang/String;

    .line 409
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "InstallShortcutReceiver"

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processInstallShortcut pendingInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", data = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", intent = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", name = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/launcher2/LauncherApplication;

    const/4 v9, 0x1

    new-array v8, v9, [I

    aput v10, v8, v10

    .line 419
    monitor-enter v15

    .line 420
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v16

    .line 421
    invoke-static {v0, v14, v13}, Lcom/android/launcher2/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v17

    move v1, v10

    move v7, v1

    :goto_0
    const/4 v2, 0x5

    const/4 v6, -0x1

    if-ge v7, v2, :cond_4

    if-nez v1, :cond_4

    int-to-float v2, v7

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 429
    rem-int/lit8 v3, v7, 0x2

    if-ne v3, v9, :cond_1

    move v3, v9

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    mul-int/2addr v2, v3

    add-int/lit8 v5, v2, 0x0

    if-ltz v5, :cond_2

    const/4 v2, 0x2

    if-ge v5, v2, :cond_2

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, v16

    move-object v4, v14

    move/from16 v18, v5

    move-object v5, v13

    move/from16 v6, v18

    move/from16 v18, v7

    move/from16 v7, v17

    move-object/from16 v19, v8

    move-object v8, v11

    move-object/from16 v9, v19

    .line 431
    invoke-static/range {v1 .. v9}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Intent;IZLandroid/content/SharedPreferences;[I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_2
    move/from16 v18, v7

    move-object/from16 v19, v8

    :cond_3
    add-int/lit8 v7, v18, 0x1

    move-object/from16 v8, v19

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v19, v8

    .line 438
    :goto_2
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    aget v1, v19, v10

    const/4 v2, -0x2

    if-ne v1, v2, :cond_5

    const v1, 0x7f0c0020

    .line 444
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 445
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v3, -0x1

    goto :goto_3

    .line 446
    :cond_5
    aget v1, v19, v10

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    const v1, 0x7f0c0128

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v14, v5, v10

    .line 447
    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 448
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v4, 0x1

    .line 452
    :goto_4
    aget v1, v19, v10

    if-eq v1, v2, :cond_7

    aget v1, v19, v10

    if-eq v1, v3, :cond_7

    aget v1, v19, v10

    const/4 v3, -0x3

    if-ne v1, v3, :cond_8

    .line 455
    :cond_7
    invoke-static {v0, v10}, Lcom/android/launcher2/InstallShortcutHelper;->decreaseInstallingCount(Landroid/content/Context;Z)V

    .line 459
    :cond_8
    aget v0, v19, v10

    if-eq v0, v2, :cond_9

    move v10, v4

    :cond_9
    return v10

    :catchall_0
    move-exception v0

    .line 438
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static processInstallShortcutArray(Landroid/content/Context;[Landroid/content/Intent;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 470
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    .line 471
    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/launcher2/LauncherApplication;

    .line 474
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 475
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 476
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 477
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 479
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v16

    move v7, v11

    .line 483
    :goto_0
    array-length v1, v10

    const/4 v6, 0x1

    if-ge v7, v1, :cond_d

    .line 484
    aget-object v5, v10, v7

    .line 485
    aget-object v1, v10, v7

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/content/Intent;

    .line 486
    aget-object v1, v10, v7

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 488
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "InstallShortcutReceiver"

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processInstallShortcutArray: data = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ", intent = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v11, ", name = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-array v11, v6, [I

    const/4 v1, 0x0

    aput v1, v11, v1

    .line 497
    monitor-enter v13

    :try_start_0
    const-string v1, "duplicate"

    .line 498
    invoke-virtual {v5, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 501
    invoke-static {v0, v3, v4}, Lcom/android/launcher2/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    move/from16 v18, v1

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    const/4 v6, 0x5

    if-ge v2, v6, :cond_5

    if-nez v1, :cond_5

    int-to-float v6, v2

    const/high16 v20, 0x40000000    # 2.0f

    div-float v6, v6, v20

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v6, v6, v20

    float-to-int v6, v6

    .line 510
    rem-int/lit8 v10, v2, 0x2

    move/from16 v21, v7

    const/4 v7, 0x1

    if-ne v10, v7, :cond_2

    move v10, v7

    goto :goto_3

    :cond_2
    const/4 v10, -0x1

    :goto_3
    mul-int/2addr v6, v10

    const/4 v10, 0x0

    add-int/2addr v6, v10

    if-ltz v6, :cond_3

    const/4 v10, 0x2

    if-ge v6, v10, :cond_3

    move-object/from16 v1, p0

    move v10, v2

    move-object v2, v5

    move-object/from16 v19, v3

    move-object/from16 v3, v16

    move-object/from16 v22, v4

    move-object/from16 v4, v19

    move-object/from16 v23, v5

    move-object/from16 v5, v22

    move/from16 v7, v18

    move-object/from16 v24, v15

    move-object v15, v8

    move-object v8, v12

    move-object/from16 v25, v12

    move-object v12, v9

    move-object v9, v11

    .line 512
    invoke-static/range {v1 .. v9}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Intent;IZLandroid/content/SharedPreferences;[I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_3
    move v10, v2

    move-object/from16 v19, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v25, v12

    move-object/from16 v24, v15

    move-object v15, v8

    move-object v12, v9

    :cond_4
    add-int/lit8 v2, v10, 0x1

    move-object/from16 v10, p1

    move-object v9, v12

    move-object v8, v15

    move-object/from16 v3, v19

    move/from16 v7, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v15, v24

    move-object/from16 v12, v25

    goto :goto_2

    :cond_5
    move/from16 v21, v7

    move-object/from16 v25, v12

    move-object/from16 v24, v15

    move-object v15, v8

    move-object v12, v9

    .line 519
    :goto_4
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 520
    aget v2, v11, v1

    const/4 v1, -0x3

    const/4 v3, -0x2

    if-eq v2, v1, :cond_9

    if-eq v2, v3, :cond_8

    const/4 v1, -0x1

    if-eq v2, v1, :cond_7

    if-eqz v2, :cond_6

    :goto_5
    move-object/from16 v4, v24

    const/4 v1, 0x0

    goto :goto_7

    .line 522
    :cond_6
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 535
    :cond_7
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 537
    invoke-static {v0, v1}, Lcom/android/launcher2/InstallShortcutHelper;->decreaseInstallingCount(Landroid/content/Context;Z)V

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    .line 530
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    invoke-static {v0, v1}, Lcom/android/launcher2/InstallShortcutHelper;->decreaseInstallingCount(Landroid/content/Context;Z)V

    :goto_6
    move-object/from16 v4, v24

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    .line 525
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v4, v24

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-static {v0, v1}, Lcom/android/launcher2/InstallShortcutHelper;->decreaseInstallingCount(Landroid/content/Context;Z)V

    .line 542
    :goto_7
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "InstallShortcutReceiver"

    .line 543
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processInstallShortcutArray: result is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v11, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_a
    aget v2, v11, v1

    if-ne v2, v3, :cond_c

    .line 547
    sget-boolean v1, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "InstallShortcutReceiver"

    const-string v2, "processInstallShortcutArray: there is no space for shortcut. Stop right now."

    .line 548
    invoke-static {v1, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    move-object/from16 v1, p1

    .line 551
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sub-int v2, v2, v21

    .line 552
    invoke-static {v0, v2}, Lcom/android/launcher2/InstallShortcutHelper;->decreaseInstallingCount(Landroid/content/Context;I)V

    goto :goto_8

    :cond_c
    move-object/from16 v1, p1

    add-int/lit8 v7, v21, 0x1

    move-object v10, v1

    move-object v9, v12

    move-object v8, v15

    move-object/from16 v12, v25

    const/4 v11, 0x0

    move-object v15, v4

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 519
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_d
    move v3, v6

    move-object v12, v9

    move-object v1, v10

    move-object v4, v15

    move-object v15, v8

    const/4 v2, 0x0

    .line 557
    :goto_8
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 558
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 559
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v2

    .line 560
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v5, v3, :cond_e

    .line 564
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    .line 565
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v9, v1, v9

    const-string v10, "android.intent.extra.shortcut.NAME"

    .line 566
    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0c012a

    .line 567
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v9, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_9

    :cond_e
    const/4 v8, 0x0

    if-le v5, v3, :cond_f

    .line 571
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0c0127

    .line 573
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v8

    .line 572
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_f
    :goto_9
    add-int v5, v2, v6

    add-int/2addr v5, v7

    const v9, 0x7f0c010f

    if-ne v5, v3, :cond_14

    if-ne v7, v3, :cond_10

    .line 580
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v17

    :goto_a
    move/from16 v4, v17

    goto :goto_b

    :cond_10
    if-ne v2, v3, :cond_11

    .line 582
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v17

    goto :goto_a

    :cond_11
    if-ne v6, v3, :cond_12

    .line 584
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_b

    :cond_12
    const/4 v4, 0x0

    .line 586
    :goto_b
    aget-object v1, v1, v4

    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne v7, v3, :cond_13

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0c0129

    .line 592
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    .line 591
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c

    :cond_13
    const/4 v5, 0x0

    if-ne v2, v3, :cond_16

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0128

    .line 596
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_c

    :cond_14
    add-int v1, v2, v7

    if-le v1, v3, :cond_16

    if-eqz v7, :cond_15

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0c0126

    .line 606
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 605
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_15
    if-eqz v2, :cond_16

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c0125

    .line 613
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v3, v6

    .line 612
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_16
    :goto_c
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 93
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: received intent action: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "InstallShortcutReceiver"

    invoke-static {v0, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 100
    :cond_1
    sget-object p0, Lcom/android/launcher2/InstallShortcutReceiver;->sItemsAddingToDatabase:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    const-string p0, "com.android.launcher2.extra.shortcut.array.INTENT"

    .line 103
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 104
    array-length p0, p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 112
    :cond_2
    invoke-static {p1, p2}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcutArray(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    const-string v0, "com.android.launcher2.extra.shortcut.totalnumber"

    .line 105
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_4

    .line 107
    invoke-static {p1, p2}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcutSingle(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 109
    :cond_4
    invoke-static {p1, p2}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcutStep(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
