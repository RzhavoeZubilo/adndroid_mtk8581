.class Lcom/android/launcher2/Launcher$10;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .line 1624
    iput-object p1, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnter(Landroid/view/View;)V
    .locals 0

    .line 1653
    iget-object p0, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Launcher;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onFocused(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onMenuDown(II)V
    .locals 0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_2

    .line 1634
    iget-object p2, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {p2, p1}, Lcom/android/launcher2/Launcher;->setMMIKeyRegion(I)V

    .line 1635
    iget-object p1, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    iget-object p1, p1, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/carocean/navicar/MMIKeyHelper;->showSelectedStatus(Z)Z

    .line 1636
    iget-object p1, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$1400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomerJly;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1637
    iget-object p1, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$1400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomerJly;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object p0, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$1400(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomerJly;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p0}, Lcom/carocean/navicar/MMIKeyHelper;->getSelectedIndex()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(II)V

    goto :goto_0

    .line 1638
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$1500(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1639
    iget-object p1, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$1500(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomer;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object p0, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$1500(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomer;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p0}, Lcom/carocean/navicar/MMIKeyHelper;->getSelectedIndex()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMenuUp(II)V
    .locals 0

    return-void
.end method

.method public onMenuUpEnd()V
    .locals 0

    return-void
.end method

.method public onSelectChanged(Landroid/view/View;Z)V
    .locals 0

    .line 1646
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p0

    if-eq p0, p2, :cond_0

    .line 1647
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public onTurnning(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method
