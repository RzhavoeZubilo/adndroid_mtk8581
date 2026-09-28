.class Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;
.super Ljava/lang/Object;
.source "MainCustomerJly.java"

# interfaces
.implements Lcom/carocean/navicar/MMIKeyHelper$CallbackEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;-><init>(Lcom/android/launcher2/popuView/MainCustomerJly;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

.field final synthetic val$this$0:Lcom/android/launcher2/popuView/MainCustomerJly;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;Lcom/android/launcher2/popuView/MainCustomerJly;)V
    .locals 0

    .line 1000
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iput-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->val$this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnter(Landroid/view/View;)V
    .locals 0

    .line 1041
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onFocused(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onMenuDown(II)V
    .locals 1

    .line 1066
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-nez p2, :cond_0

    .line 1068
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$900(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 1070
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$900(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    .line 1071
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->snap2Right()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMenuUp(II)V
    .locals 1

    const/4 p1, 0x1

    if-nez p2, :cond_0

    .line 1048
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result p2

    if-eq p2, p1, :cond_2

    .line 1049
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$800(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_2

    .line 1052
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->getUIThemeid()I

    move-result p2

    const/4 v0, 0x0

    if-eq p2, p1, :cond_1

    .line 1053
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$800(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1054
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly;->mMainPageAdapter:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->snap2Left()V

    goto :goto_0

    .line 1056
    :cond_1
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/Launcher;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/Launcher;->setMMIKeyRegion(I)V

    .line 1057
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p1, v0}, Lcom/carocean/navicar/MMIKeyHelper;->showSelectedStatus(Z)Z

    .line 1058
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/Launcher;

    iget-object p1, p1, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-virtual {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/Launcher;

    iget-object p0, p0, Lcom/android/launcher2/Launcher;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p0}, Lcom/carocean/navicar/MMIKeyHelper;->getSelectedIndex()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(II)V

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

    .line 1012
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-virtual {p2, p1}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->getIndexFromView(Landroid/view/View;)I

    move-result p1

    .line 1013
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSelectChanged , index="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MainCustomerJly"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_1

    .line 1015
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->access$400(Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, p1, :cond_0

    .line 1016
    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-static {p2, p1}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->access$402(Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;I)I

    .line 1017
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$700(Lcom/android/launcher2/popuView/MainCustomerJly;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->access$400(Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;)I

    move-result p2

    iget-object v1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget v1, v1, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->PageItemCount:I

    div-int/2addr p2, v1

    invoke-virtual {p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 1019
    :cond_0
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$200(Lcom/android/launcher2/popuView/MainCustomerJly;)Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->getSelectIndex()I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-static {p2}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->access$400(Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;)I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 1020
    iget-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    iget-object p1, p1, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$200(Lcom/android/launcher2/popuView/MainCustomerJly;)Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter$1;->this$1:Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;->access$400(Lcom/android/launcher2/popuView/MainCustomerJly$MainPageAdapter;)I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/launcher2/popuView/MainCustomerJly$SubPageAdapter;->setSelectViewByIndex(IZZ)V

    :cond_1
    return-void
.end method

.method public onTurnning(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method
