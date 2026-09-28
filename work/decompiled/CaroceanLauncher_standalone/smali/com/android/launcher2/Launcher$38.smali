.class Lcom/android/launcher2/Launcher$38;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->bindComponentUnreadChanged(Landroid/content/ComponentName;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$component:Landroid/content/ComponentName;

.field final synthetic val$unreadNum:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/content/ComponentName;I)V
    .locals 0

    .line 5733
    iput-object p1, p0, Lcom/android/launcher2/Launcher$38;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$38;->val$component:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/launcher2/Launcher$38;->val$unreadNum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 5735
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5736
    sget-boolean v2, Lcom/android/launcher2/uitl/L;->DEBUG_PERFORMANCE:Z

    const-string v3, "Launcher"

    if-eqz v2, :cond_0

    .line 5737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindComponentUnreadChanged begin: component = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher2/Launcher$38;->val$component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", unreadNum = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/launcher2/Launcher$38;->val$unreadNum:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", start = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5740
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Launcher$38;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v2}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5741
    iget-object v2, p0, Lcom/android/launcher2/Launcher$38;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v2}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher2/Launcher$38;->val$component:Landroid/content/ComponentName;

    iget v5, p0, Lcom/android/launcher2/Launcher$38;->val$unreadNum:I

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher2/Workspace;->updateComponentUnreadChanged(Landroid/content/ComponentName;I)V

    .line 5744
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Launcher$38;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v2}, Lcom/android/launcher2/Launcher;->access$4400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5745
    iget-object v2, p0, Lcom/android/launcher2/Launcher$38;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v2}, Lcom/android/launcher2/Launcher;->access$4400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/AppsCustomizePagedView;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher2/Launcher$38;->val$component:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/launcher2/Launcher$38;->val$unreadNum:I

    invoke-virtual {v2, v4, p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updateAppsUnreadChanged(Landroid/content/ComponentName;I)V

    .line 5747
    :cond_2
    sget-boolean p0, Lcom/android/launcher2/uitl/L;->DEBUG_PERFORMANCE:Z

    if-eqz p0, :cond_3

    .line 5748
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindComponentUnreadChanged end: current time = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 5749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", time used = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 5750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5748
    invoke-static {v3, p0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
