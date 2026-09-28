.class Lcom/android/launcher2/Launcher$17;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$alreadyOnHome:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Z)V
    .locals 0

    .line 2399
    iput-object p1, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    iput-boolean p2, p0, Lcom/android/launcher2/Launcher$17;->val$alreadyOnHome:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2401
    iget-object v0, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2405
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 2407
    iget-object v1, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    .line 2408
    iget-boolean v1, p0, Lcom/android/launcher2/Launcher$17;->val$alreadyOnHome:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$2200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Launcher$State;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 2412
    iget-object v0, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v1}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->moveOutAppWidget(I)Z

    .line 2413
    iget-object v0, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->moveToDefaultScreen(Z)V

    .line 2416
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->closeFolder()V

    .line 2424
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$17;->val$alreadyOnHome:Z

    if-eqz v0, :cond_2

    .line 2425
    iget-object v0, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 2426
    iget-object v0, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2428
    iget-object v0, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/Hotseat;->mFboxPopu:Lcom/android/launcher2/popuView/FboxPopuWindow;

    if-eqz v0, :cond_3

    .line 2429
    iget-object v0, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$200(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/Hotseat;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/Hotseat;->mFboxPopu:Lcom/android/launcher2/popuView/FboxPopuWindow;

    invoke-virtual {v0}, Lcom/android/launcher2/popuView/FboxPopuWindow;->dismiss()V

    goto :goto_0

    .line 2433
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    sget-object v1, Lcom/android/launcher2/Launcher$State;->WORKSPACE:Lcom/android/launcher2/Launcher$State;

    invoke-static {v0, v1}, Lcom/android/launcher2/Launcher;->access$3602(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$State;)Lcom/android/launcher2/Launcher$State;

    .line 2436
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2437
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2438
    iget-object v1, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2440
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2444
    :cond_4
    iget-boolean v0, p0, Lcom/android/launcher2/Launcher$17;->val$alreadyOnHome:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$2100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2445
    iget-object p0, p0, Lcom/android/launcher2/Launcher$17;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$2100(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/AppsCustomizeFrame;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/AppsCustomizeFrame;->reset()V

    :cond_5
    return-void
.end method
