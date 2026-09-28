.class Lcom/autochips/bluetooth/fragment/CallDialogFragment$2;
.super Ljava/lang/Object;
.source "CallDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/CallDialogFragment;->moveWindowToTop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/CallDialogFragment;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/CallDialogFragment;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment$2;->this$0:Lcom/autochips/bluetooth/fragment/CallDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment$2;->this$0:Lcom/autochips/bluetooth/fragment/CallDialogFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->access$000(Lcom/autochips/bluetooth/fragment/CallDialogFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment$2;->this$0:Lcom/autochips/bluetooth/fragment/CallDialogFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->access$000(Lcom/autochips/bluetooth/fragment/CallDialogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CallDialogFragment"

    const-string v1, "refreshWindow finish"

    .line 184
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment$2;->this$0:Lcom/autochips/bluetooth/fragment/CallDialogFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->access$100(Lcom/autochips/bluetooth/fragment/CallDialogFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 187
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment$2;->this$0:Lcom/autochips/bluetooth/fragment/CallDialogFragment;

    invoke-static {v1}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->access$000(Lcom/autochips/bluetooth/fragment/CallDialogFragment;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 188
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment$2;->this$0:Lcom/autochips/bluetooth/fragment/CallDialogFragment;

    invoke-static {v1}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->access$000(Lcom/autochips/bluetooth/fragment/CallDialogFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment$2;->this$0:Lcom/autochips/bluetooth/fragment/CallDialogFragment;

    invoke-static {v2}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->access$200(Lcom/autochips/bluetooth/fragment/CallDialogFragment;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment$2;->this$0:Lcom/autochips/bluetooth/fragment/CallDialogFragment;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->notifyRadioRadioMoveTop()V

    return-void
.end method
