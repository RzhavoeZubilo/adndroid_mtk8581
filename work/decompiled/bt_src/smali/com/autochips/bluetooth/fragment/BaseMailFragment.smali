.class public abstract Lcom/autochips/bluetooth/fragment/BaseMailFragment;
.super Lcom/autochips/bluetooth/fragment/BaseFragment;
.source "BaseMailFragment.java"

# interfaces
.implements Lcom/carlos/eventlibrary/IEventReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Lcom/autochips/bluetooth/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/carlos/eventlibrary/EventMailer;->register(Lcom/carlos/eventlibrary/IEventReceiver;)V

    .line 25
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->mActivity:Landroid/app/Activity;

    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->mActivity:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseFragment;->onDestroy()V

    return-void
.end method
