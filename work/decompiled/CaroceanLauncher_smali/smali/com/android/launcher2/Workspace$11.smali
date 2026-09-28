.class Lcom/android/launcher2/Workspace$11;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$layout:Landroid/view/ViewGroup;

.field final synthetic val$layoutParent:Lcom/android/launcher2/CellLayout;

.field final synthetic val$packageNames:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Lcom/android/launcher2/CellLayout;)V
    .locals 0

    .line 3931
    iput-object p1, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$11;->val$layout:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$11;->val$packageNames:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/android/launcher2/Workspace$11;->val$layoutParent:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 3933
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3934
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3936
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3937
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3939
    iget-object v2, p0, Lcom/android/launcher2/Workspace$11;->val$layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    .line 3941
    iget-object v5, p0, Lcom/android/launcher2/Workspace$11;->val$layout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3942
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 3944
    instance-of v7, v6, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v7, :cond_1

    .line 3945
    check-cast v6, Lcom/android/launcher2/ShortcutInfo;

    .line 3946
    iget-object v7, v6, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3947
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 3950
    iget-object v8, p0, Lcom/android/launcher2/Workspace$11;->val$packageNames:Ljava/util/HashSet;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3955
    iget-object v8, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    .line 3956
    invoke-virtual {v8}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/launcher2/Utilities;->isComponentEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v8

    .line 3957
    sget-boolean v9, Lcom/android/launcher2/uitl/L;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 3958
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeFinalItem: name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ",isComponentEnabled = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Workspace"

    invoke-static {v9, v7}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez v8, :cond_4

    .line 3962
    iget-object v7, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v7}, Lcom/android/launcher2/Workspace;->access$000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 3963
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3967
    :cond_1
    instance-of v7, v6, Lcom/android/launcher2/FolderInfo;

    if-eqz v7, :cond_3

    .line 3968
    check-cast v6, Lcom/android/launcher2/FolderInfo;

    .line 3969
    iget-object v5, v6, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 3970
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 3971
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3975
    iget-object v7, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v8, p0, Lcom/android/launcher2/Workspace$11;->val$packageNames:Ljava/util/HashSet;

    invoke-static {v7, v6, v8, v5}, Lcom/android/launcher2/Workspace;->access$1500(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3976
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3978
    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v7, v6, v5}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderInfo;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 3980
    :cond_3
    instance-of v7, v6, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-eqz v7, :cond_4

    .line 3981
    check-cast v6, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 3982
    iget-object v7, v6, Lcom/android/launcher2/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v7, :cond_4

    .line 3984
    iget-object v8, p0, Lcom/android/launcher2/Workspace$11;->val$packageNames:Ljava/util/HashSet;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3985
    iget-object v7, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v7}, Lcom/android/launcher2/Workspace;->access$000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 3986
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 3993
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_6

    .line 3995
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/FolderInfo;

    .line 3996
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3997
    iget-object v7, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v8, p0, Lcom/android/launcher2/Workspace$11;->val$packageNames:Ljava/util/HashSet;

    invoke-static {v7, v5, v8, v6}, Lcom/android/launcher2/Workspace;->access$1700(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)I

    .line 3998
    iget-object v7, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v7, v5, v6}, Lcom/android/launcher2/Workspace;->access$1600(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderInfo;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4001
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v3, v1, :cond_8

    .line 4003
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 4006
    iget-object v4, p0, Lcom/android/launcher2/Workspace$11;->val$layoutParent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 4007
    instance-of v4, v2, Lcom/android/launcher2/DropTarget;

    if-eqz v4, :cond_7

    .line 4008
    iget-object v4, p0, Lcom/android/launcher2/Workspace$11;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;

    move-result-object v4

    check-cast v2, Lcom/android/launcher2/DropTarget;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    if-lez v1, :cond_9

    .line 4013
    iget-object v0, p0, Lcom/android/launcher2/Workspace$11;->val$layout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4014
    iget-object p0, p0, Lcom/android/launcher2/Workspace$11;->val$layout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_9
    return-void
.end method
