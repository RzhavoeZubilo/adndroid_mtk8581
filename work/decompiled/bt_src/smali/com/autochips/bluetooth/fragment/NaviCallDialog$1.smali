.class Lcom/autochips/bluetooth/fragment/NaviCallDialog$1;
.super Ljava/lang/Object;
.source "NaviCallDialog.java"

# interfaces
.implements Lcom/autochips/bluetooth/view/CustomFrameLayout$dispatchKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/NaviCallDialog;->initView(Landroid/content/Context;)V
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

    .line 88
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$1;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$1;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$000(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)Lcom/carocean/navicar/MMIKeyHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$1;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-static {v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$000(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)Lcom/carocean/navicar/MMIKeyHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->handlerMMIKeys(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
