.class public abstract Lcom/autochips/bluetooth/fragment/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/carocean/navicar/BmwID8ThemeChanged;


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseFragment"


# instance fields
.field public mActivity:Landroid/app/Activity;

.field protected mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

.field protected rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/BaseFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public abstract init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/BaseFragment;->mActivity:Landroid/app/Activity;

    if-nez p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/BaseFragment;->mActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/BaseFragment;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/BaseFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/BaseFragment;->rootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 53
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/autochips/bluetooth/fragment/BaseFragment;->init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 54
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/BaseFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x1

    const-string p3, "content://com.carocean.status.provider/sys"

    const-string v0, "SYS_THEME"

    invoke-static {p3, p1, v0, p2}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/BaseFragment;->updateID8Theme(I)V

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/BaseFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 103
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 42
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onInVisible()V
    .locals 0

    return-void
.end method

.method public onVisible()V
    .locals 0

    return-void
.end method

.method public setMMIKeyHelper(Lcom/carocean/navicar/MMIKeyHelper;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/BaseFragment;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 75
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserVisibleHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/BaseFragment;->getUserVisibleHint()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/BaseFragment;->getUserVisibleHint()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/BaseFragment;->onVisible()V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/BaseFragment;->onInVisible()V

    :goto_0
    return-void
.end method

.method public updateID8Theme(I)V
    .locals 0

    return-void
.end method
