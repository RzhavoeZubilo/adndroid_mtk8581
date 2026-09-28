.class Lcom/autochips/bluetooth/fragment/VolumeBar$2;
.super Ljava/lang/Object;
.source "VolumeBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/fragment/VolumeBar;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/fragment/VolumeBar;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$2;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 203
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x4

    if-ne p2, p1, :cond_1

    .line 204
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$2;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/fragment/VolumeBar;->dismiss()V

    :cond_0
    return p2

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$2;->this$0:Lcom/autochips/bluetooth/fragment/VolumeBar;

    invoke-static {p1}, Lcom/autochips/bluetooth/fragment/VolumeBar;->access$400(Lcom/autochips/bluetooth/fragment/VolumeBar;)Lcom/carocean/navicar/MMIKeyHelper;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/carocean/navicar/MMIKeyHelper;->handlerMMIKeys(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
