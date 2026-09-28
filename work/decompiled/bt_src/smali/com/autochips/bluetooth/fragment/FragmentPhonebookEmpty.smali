.class public Lcom/autochips/bluetooth/fragment/FragmentPhonebookEmpty;
.super Lcom/autochips/bluetooth/fragment/BaseMailFragment;
.source "FragmentPhonebookEmpty.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public MailBox(Lcom/carlos/eventlibrary/EventMail;)V
    .locals 0

    return-void
.end method

.method public init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    const p3, 0x7f0b0037

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookEmpty;->rootView:Landroid/view/View;

    return-void
.end method
