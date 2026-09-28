.class public Lcom/autochips/bluetooth/fragment/SearchFragment;
.super Lcom/autochips/bluetooth/fragment/BaseMailFragment;
.source "SearchFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SearchFragment"


# instance fields
.field contactAdapter:Lcom/autochips/bluetooth/adapter/ContactAdapter;

.field handler:Landroid/os/Handler;

.field mT9Filter:Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;

.field phoneBookModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field searchEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method private hideInput(Landroid/view/View;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public MailBox(Lcom/carlos/eventlibrary/EventMail;)V
    .locals 0

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "afterTextChanged="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->mT9Filter:Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;

    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    const p3, 0x7f0b0059

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->rootView:Landroid/view/View;

    const p1, 0x7f0801e1

    .line 66
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/SearchFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0801f7

    .line 67
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/SearchFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->searchEditText:Landroid/widget/EditText;

    .line 68
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->searchEditText:Landroid/widget/EditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 70
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    const p1, 0x7f080059

    .line 71
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/SearchFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 73
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->phoneBookModels:Ljava/util/List;

    .line 75
    new-instance p1, Lcom/autochips/bluetooth/adapter/ContactAdapter;

    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->mActivity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->phoneBookModels:Ljava/util/List;

    invoke-direct {p1, p2, p3}, Lcom/autochips/bluetooth/adapter/ContactAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->contactAdapter:Lcom/autochips/bluetooth/adapter/ContactAdapter;

    .line 76
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 77
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->contactAdapter:Lcom/autochips/bluetooth/adapter/ContactAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    new-instance p1, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;-><init>(Lcom/autochips/bluetooth/fragment/SearchFragment;Lcom/autochips/bluetooth/fragment/SearchFragment$1;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->mT9Filter:Lcom/autochips/bluetooth/fragment/SearchFragment$T9Filter;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080059

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/SearchFragment;->hideInput(Landroid/view/View;)V

    .line 102
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onResume()V

    const-string v0, "SearchFragment"

    const-string v1, "onResume"

    .line 53
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->searchEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->phoneBookModels:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->contactAdapter:Lcom/autochips/bluetooth/adapter/ContactAdapter;

    if-eqz v1, :cond_0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 58
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/SearchFragment;->contactAdapter:Lcom/autochips/bluetooth/adapter/ContactAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/adapter/ContactAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
