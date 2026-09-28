.class Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;
.super Ljava/lang/Object;
.source "NaviCallDialog.java"

# interfaces
.implements Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/fragment/NaviCallDialog;
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

    .line 656
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnter(Landroid/view/View;)V
    .locals 3

    .line 687
    invoke-static {}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnter :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    sget-boolean v0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->isShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 691
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 717
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 693
    :sswitch_0
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    const v0, 0x7f0801ae

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$400(Lcom/autochips/bluetooth/fragment/NaviCallDialog;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 696
    :sswitch_1
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    const v0, 0x7f0801ad

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$400(Lcom/autochips/bluetooth/fragment/NaviCallDialog;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 699
    :sswitch_2
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    const v0, 0x7f0801aa

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$400(Lcom/autochips/bluetooth/fragment/NaviCallDialog;I)Landroid/view/View;

    move-result-object p1

    .line 700
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 711
    :sswitch_3
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    const v0, 0x7f0801a9

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$400(Lcom/autochips/bluetooth/fragment/NaviCallDialog;I)Landroid/view/View;

    move-result-object p1

    .line 712
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 705
    :sswitch_4
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    const v0, 0x7f08019c

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$400(Lcom/autochips/bluetooth/fragment/NaviCallDialog;I)Landroid/view/View;

    move-result-object p1

    .line 706
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08007b -> :sswitch_4
        0x7f080097 -> :sswitch_3
        0x7f0800a0 -> :sswitch_2
        0x7f0800af -> :sswitch_1
        0x7f0800b1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFocused(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onMenuDown(II)V
    .locals 1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_1

    .line 727
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-static {p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$500(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 728
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    const v0, 0x7f0801aa

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$400(Lcom/autochips/bluetooth/fragment/NaviCallDialog;I)Landroid/view/View;

    move-result-object p1

    .line 729
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 730
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-static {p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$500(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 731
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$600(Lcom/autochips/bluetooth/fragment/NaviCallDialog;Z)V

    goto :goto_0

    .line 736
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-static {p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$000(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)Lcom/carocean/navicar/MMIKeyHelper;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectSector(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMenuUp(II)V
    .locals 0

    if-nez p1, :cond_0

    .line 747
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-static {p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$500(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 748
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;->this$0:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$600(Lcom/autochips/bluetooth/fragment/NaviCallDialog;Z)V

    :cond_0
    return-void
.end method

.method public onMenuUpEnd()V
    .locals 2

    .line 675
    invoke-static {}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMenuUpEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSelectChanged(Landroid/view/View;Z)V
    .locals 3

    .line 667
    invoke-static {}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectChanged :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    sget-boolean p1, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->isShowing:Z

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public onTurnning(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method
