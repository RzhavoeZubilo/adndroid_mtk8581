.class Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;
.super Ljava/lang/Object;
.source "MainCustomer.java"

# interfaces
.implements Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;-><init>(Lcom/android/launcher2/popuView/MainCustomer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

.field final synthetic val$this$0:Lcom/android/launcher2/popuView/MainCustomer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;Lcom/android/launcher2/popuView/MainCustomer;)V
    .locals 0

    .line 1427
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iput-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->val$this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnter(Landroid/view/View;)V
    .locals 0

    .line 1468
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomer;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onFocused(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onMenuDown(II)V
    .locals 0

    .line 1493
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 1495
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer;->access$1500(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    .line 1497
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$1500(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 1498
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->snap2Right()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMenuUp(II)V
    .locals 0

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 1475
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result p2

    if-nez p2, :cond_2

    .line 1476
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer;->access$1400(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_2

    .line 1479
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 1480
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$1400(Lcom/android/launcher2/popuView/MainCustomer;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 1481
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->snap2Left()V

    goto :goto_0

    .line 1483
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {p1}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/Launcher;

    invoke-virtual {p1, p2}, Lcom/android/launcher2/Launcher;->setMMIKeyRegion(I)V

    .line 1484
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p1, p2}, Lcom/carocean/navicar/MMIKeyHelper;->showSelectedStatus(Z)Z

    .line 1485
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {p1}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/Launcher;

    iget-object p1, p1, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomer;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/Launcher;

    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p0}, Lcom/carocean/navicar/MMIKeyHelper;->getSelectedIndex()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMenuUpEnd()V
    .locals 0

    return-void
.end method

.method public onSelectChanged(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1439
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-virtual {p2, p1}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->getIndexFromView(Landroid/view/View;)I

    move-result p1

    .line 1440
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSelectChanged , index="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MainCustomer"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_1

    .line 1442
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->access$900(Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, p1, :cond_0

    .line 1443
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-static {p2, p1}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->access$902(Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;I)I

    .line 1444
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$800(Lcom/android/launcher2/popuView/MainCustomer;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->access$900(Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;)I

    move-result p2

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget v1, v1, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->PageItemCount:I

    div-int/2addr p2, v1

    invoke-virtual {p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 1446
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$200(Lcom/android/launcher2/popuView/MainCustomer;)Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->getSelectIndex()I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->access$900(Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;)I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 1447
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomer;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomer;->access$200(Lcom/android/launcher2/popuView/MainCustomer;)Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;->access$900(Lcom/android/launcher2/popuView/MainCustomer$MainPageAdapter;)I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/launcher2/popuView/MainCustomer$SubPageAdapter;->setSelectViewByIndex(IZZ)V

    :cond_1
    return-void
.end method

.method public onTurnning(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method
