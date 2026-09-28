.class Lcom/autochips/bluetooth/fragment/NaviCallDialog$2;
.super Ljava/lang/Object;
.source "NaviCallDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/NaviCallDialog;->moveWindowToTop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$2;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$2;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$100(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)Lcom/autochips/bluetooth/view/CustomFrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$2;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$100(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)Lcom/autochips/bluetooth/view/CustomFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/view/CustomFrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "refreshWindow finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$2;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    iget-object v0, v0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 221
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$2;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-static {v1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$100(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)Lcom/autochips/bluetooth/view/CustomFrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 222
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$2;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-static {v1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$100(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)Lcom/autochips/bluetooth/view/CustomFrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$2;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-static {v2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$300(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
