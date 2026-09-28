.class Lcom/autochips/bluetooth/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/MainActivity;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/MainActivity;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnter(Landroid/view/View;)V
    .locals 2

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnter :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08024c

    if-eq v1, v0, :cond_1

    const v1, 0x7f08024d

    if-eq v1, v0, :cond_1

    const v1, 0x7f08024f

    if-eq v1, v0, :cond_1

    const v1, 0x7f080250

    if-eq v1, v0, :cond_1

    const v1, 0x7f08024e

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/autochips/bluetooth/MainActivity;->access$000(Lcom/autochips/bluetooth/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/autochips/bluetooth/MainActivity;->access$000(Lcom/autochips/bluetooth/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz v0, :cond_2

    .line 587
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/autochips/bluetooth/MainActivity;->access$000(Lcom/autochips/bluetooth/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$Callback;

    .line 588
    invoke-interface {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper$Callback;->onEnter(Landroid/view/View;)V

    goto :goto_1

    .line 581
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 583
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/MainActivity;->onClick(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onFocused(Landroid/view/View;Z)V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/autochips/bluetooth/MainActivity;->access$000(Lcom/autochips/bluetooth/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/autochips/bluetooth/MainActivity;->access$000(Lcom/autochips/bluetooth/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/autochips/bluetooth/MainActivity;->access$000(Lcom/autochips/bluetooth/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$Callback;

    .line 566
    invoke-interface {v0, p1, p2}, Lcom/carocean/navicar/MMIKeyHelper$Callback;->onFocused(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public onMenuDown(II)V
    .locals 0

    return-void
.end method

.method public onMenuUp(II)V
    .locals 0

    .line 596
    iget-object p1, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-static {p1}, Lcom/autochips/bluetooth/MainActivity;->access$200(Lcom/autochips/bluetooth/MainActivity;)Landroid/view/View;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public onMenuUpEnd()V
    .locals 2

    const-string v0, "BTMainActivity"

    const-string v1, "onMenuUpEnd"

    .line 557
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/MainActivity;->onBackPressed()V

    return-void
.end method

.method public onSelectChanged(Landroid/view/View;Z)V
    .locals 2

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelectChanged :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",getSelectedSector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    iget-object v1, v1, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v1}, Lcom/carocean/navicar/MMIKeyHelper;->getSelectedSector()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08024c

    if-eq v1, v0, :cond_1

    const v1, 0x7f08024d

    if-eq v1, v0, :cond_1

    const v1, 0x7f08024f

    if-eq v1, v0, :cond_1

    const v1, 0x7f080250

    if-eq v1, v0, :cond_1

    const v1, 0x7f08024e

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/autochips/bluetooth/MainActivity;->access$000(Lcom/autochips/bluetooth/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/autochips/bluetooth/MainActivity;->access$000(Lcom/autochips/bluetooth/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz v0, :cond_2

    .line 545
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/autochips/bluetooth/MainActivity;->access$000(Lcom/autochips/bluetooth/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$Callback;

    .line 546
    invoke-interface {v0, p1, p2}, Lcom/carocean/navicar/MMIKeyHelper$Callback;->onSelectChanged(Landroid/view/View;Z)V

    goto :goto_1

    .line 539
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eq v0, p2, :cond_2

    .line 540
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 549
    :cond_2
    :goto_1
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 550
    iget-object p1, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-static {p1}, Lcom/autochips/bluetooth/MainActivity;->access$100(Lcom/autochips/bluetooth/MainActivity;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    iget-object p2, p2, Lcom/autochips/bluetooth/MainActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p2}, Lcom/carocean/navicar/MMIKeyHelper;->getSelectedSector()I

    move-result p2

    if-nez p2, :cond_3

    const p2, 0x7f0700f4

    goto :goto_2

    :cond_3
    const p2, 0x7f0700c1

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    return-void
.end method

.method public onTurnning(Landroid/view/View;Z)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/autochips/bluetooth/MainActivity;->access$000(Lcom/autochips/bluetooth/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/autochips/bluetooth/MainActivity;->access$000(Lcom/autochips/bluetooth/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/carocean/navicar/MMIKeyHelper$Callback;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/autochips/bluetooth/MainActivity$2;->this$0:Lcom/autochips/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/autochips/bluetooth/MainActivity;->access$000(Lcom/autochips/bluetooth/MainActivity;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/MMIKeyHelper$Callback;

    .line 524
    invoke-interface {v0, p1, p2}, Lcom/carocean/navicar/MMIKeyHelper$Callback;->onTurnning(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
