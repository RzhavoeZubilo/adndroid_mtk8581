.class Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;
.super Ljava/lang/Object;
.source "CheckLongPressHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CheckLongPressHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CheckLongPressHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CheckLongPressHelper;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-static {v0}, Lcom/android/launcher2/CheckLongPressHelper;->access$000(Lcom/android/launcher2/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-static {v0}, Lcom/android/launcher2/CheckLongPressHelper;->access$000(Lcom/android/launcher2/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher2/CheckLongPressHelper;

    .line 32
    invoke-static {v0}, Lcom/android/launcher2/CheckLongPressHelper;->access$100(Lcom/android/launcher2/CheckLongPressHelper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    invoke-static {}, Lcom/android/launcher2/InstallShortcutHelper;->isInstallingShortcut()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is installing shortcut, so cancel this long click: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-static {v3}, Lcom/android/launcher2/CheckLongPressHelper;->access$000(Lcom/android/launcher2/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CheckLongPressHelper"

    invoke-static {v3, v0}, Lcom/android/launcher2/uitl/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-static {v0}, Lcom/android/launcher2/CheckLongPressHelper;->access$000(Lcom/android/launcher2/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 37
    iget-object p0, p0, Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-static {p0, v1}, Lcom/android/launcher2/CheckLongPressHelper;->access$102(Lcom/android/launcher2/CheckLongPressHelper;Z)Z

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-static {v0}, Lcom/android/launcher2/CheckLongPressHelper;->access$000(Lcom/android/launcher2/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-static {v0}, Lcom/android/launcher2/CheckLongPressHelper;->access$000(Lcom/android/launcher2/CheckLongPressHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 43
    iget-object p0, p0, Lcom/android/launcher2/CheckLongPressHelper$CheckForLongPress;->this$0:Lcom/android/launcher2/CheckLongPressHelper;

    invoke-static {p0, v1}, Lcom/android/launcher2/CheckLongPressHelper;->access$102(Lcom/android/launcher2/CheckLongPressHelper;Z)Z

    :cond_1
    return-void
.end method
