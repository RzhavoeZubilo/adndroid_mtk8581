.class Lcom/autochips/bluetooth/BTCallActivity$1;
.super Ljava/lang/Object;
.source "BTCallActivity.java"

# interfaces
.implements Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/BTCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/BTCallActivity;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/BTCallActivity;)V
    .locals 0

    .line 512
    iput-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnter(Landroid/view/View;)V
    .locals 3

    .line 548
    invoke-static {}, Lcom/autochips/bluetooth/BTCallActivity;->access$100()Ljava/lang/String;

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

    .line 549
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0800a9

    if-ne v0, v1, :cond_0

    .line 550
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    invoke-static {p1}, Lcom/autochips/bluetooth/BTCallActivity;->access$000(Lcom/autochips/bluetooth/BTCallActivity;)Lcom/autochips/bluetooth/view/DialpadCallingLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->getCurChar()C

    move-result p1

    .line 551
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->access$200(Lcom/autochips/bluetooth/BTCallActivity;C)V

    .line 552
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->access$300(Lcom/autochips/bluetooth/BTCallActivity;Ljava/lang/String;)V

    return-void

    .line 557
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 589
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 559
    :sswitch_0
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    const v0, 0x7f0800b0

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/BTCallActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 562
    :sswitch_1
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    const v0, 0x7f0800ae

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/BTCallActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 583
    :sswitch_2
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    const v0, 0x7f0800a1

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 584
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 565
    :sswitch_3
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    const v0, 0x7f08009f

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 566
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 577
    :sswitch_4
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    const v0, 0x7f080096

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 578
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 571
    :sswitch_5
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    const v0, 0x7f08007a

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 572
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08007b -> :sswitch_5
        0x7f080097 -> :sswitch_4
        0x7f0800a0 -> :sswitch_3
        0x7f0800a2 -> :sswitch_2
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

    .line 599
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    invoke-static {p1}, Lcom/autochips/bluetooth/BTCallActivity;->access$400(Lcom/autochips/bluetooth/BTCallActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 600
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    const v0, 0x7f08009f

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 601
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 602
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    invoke-static {p1}, Lcom/autochips/bluetooth/BTCallActivity;->access$400(Lcom/autochips/bluetooth/BTCallActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 603
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/BTCallActivity;->access$500(Lcom/autochips/bluetooth/BTCallActivity;Z)V

    goto :goto_0

    .line 607
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    invoke-static {p1}, Lcom/autochips/bluetooth/BTCallActivity;->access$600(Lcom/autochips/bluetooth/BTCallActivity;)Lcom/carocean/navicar/MMIKeyHelper;

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

    .line 617
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    invoke-static {p1}, Lcom/autochips/bluetooth/BTCallActivity;->access$400(Lcom/autochips/bluetooth/BTCallActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 618
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/BTCallActivity;->access$500(Lcom/autochips/bluetooth/BTCallActivity;Z)V

    :cond_0
    return-void
.end method

.method public onMenuUpEnd()V
    .locals 2

    .line 535
    invoke-static {}, Lcom/autochips/bluetooth/BTCallActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMenuUpEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/BTCallActivity;->onBackPressed()V

    return-void
.end method

.method public onSelectChanged(Landroid/view/View;Z)V
    .locals 3

    .line 529
    invoke-static {}, Lcom/autochips/bluetooth/BTCallActivity;->access$100()Ljava/lang/String;

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

    return-void
.end method

.method public onTurnning(Landroid/view/View;Z)V
    .locals 1

    .line 517
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0800a9

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 519
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    invoke-static {p1}, Lcom/autochips/bluetooth/BTCallActivity;->access$000(Lcom/autochips/bluetooth/BTCallActivity;)Lcom/autochips/bluetooth/view/DialpadCallingLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->pointForward()V

    goto :goto_0

    .line 521
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity$1;->this$0:Lcom/autochips/bluetooth/BTCallActivity;

    invoke-static {p1}, Lcom/autochips/bluetooth/BTCallActivity;->access$000(Lcom/autochips/bluetooth/BTCallActivity;)Lcom/autochips/bluetooth/view/DialpadCallingLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->pointBackward()V

    :cond_1
    :goto_0
    return-void
.end method
