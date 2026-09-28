.class Lcom/android/launcher2/Launcher$11;
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

    .line 1685
    iput-object p1, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnter(Landroid/view/View;)V
    .locals 0

    .line 1719
    iget-object p0, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

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

    if-ne p2, p1, :cond_1

    .line 1695
    iget-object p2, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {p2, p1}, Lcom/android/launcher2/Launcher;->setMMIKeyRegion(I)V

    .line 1696
    iget-object p1, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    iget-object p1, p1, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/carocean/navicar/MMIKeyHelper;->showSelectedStatus(Z)Z

    .line 1697
    iget-object p1, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$1500(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1698
    iget-object p1, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$1500(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomer;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object p0, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$1500(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomer;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p0}, Lcom/carocean/navicar/MMIKeyHelper;->getSelectedIndex()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(II)V

    :cond_1
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
    .locals 1

    .line 1705
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 1706
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 1708
    :cond_0
    iget-object p2, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {p2, p1}, Lcom/android/launcher2/Launcher;->getIndexID8FromView(Landroid/view/View;)I

    move-result p1

    .line 1709
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSelectChanged , index="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", mSelectIndex="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$1600(Lcom/android/launcher2/Launcher;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Launcher"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_1

    .line 1711
    iget-object p2, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p2}, Lcom/android/launcher2/Launcher;->access$1600(Lcom/android/launcher2/Launcher;)I

    move-result p2

    if-eq p2, p1, :cond_1

    .line 1712
    iget-object p0, p0, Lcom/android/launcher2/Launcher$11;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0, p1}, Lcom/android/launcher2/Launcher;->access$1602(Lcom/android/launcher2/Launcher;I)I

    :cond_1
    return-void
.end method

.method public onTurnning(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method
