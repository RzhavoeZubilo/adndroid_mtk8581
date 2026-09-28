.class public Lcom/autochips/bluetooth/fragment/ContactFragment;
.super Lcom/autochips/bluetooth/fragment/BaseMailFragment;
.source "ContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/autochips/bluetooth/view/CustomLetterNavigationView$OnNavigationScrollerListener;
.implements Lcom/autochips/bluetooth/event/IBTObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactFragment"


# instance fields
.field private contactAdapter:Lcom/autochips/bluetooth/adapter/ContactAdapter;

.field private contactCount:Landroid/widget/TextView;

.field private contactModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation
.end field

.field private hintText:Landroid/widget/TextView;

.field private letterHint:Landroid/widget/TextView;

.field private letterNavigationView:Lcom/autochips/bluetooth/view/CustomLetterNavigationView;

.field private progressHint:Landroid/widget/TextView;

.field private progressView:Landroid/view/View;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private searchButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;-><init>()V

    return-void
.end method

.method private clearAndHideList()V
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactModels:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactAdapter:Lcom/autochips/bluetooth/adapter/ContactAdapter;

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactModels:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/adapter/ContactAdapter;->setData(Ljava/util/List;)V

    .line 163
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactAdapter:Lcom/autochips/bluetooth/adapter/ContactAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/adapter/ContactAdapter;->notifyDataSetChanged()V

    .line 164
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactCount:Landroid/widget/TextView;

    const v1, 0x7f0f0051

    invoke-virtual {p0, v1}, Lcom/autochips/bluetooth/fragment/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactModels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method private initHintView()V
    .locals 5

    .line 83
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getConnectState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const-string v4, "ContactFragment"

    if-ne v0, v1, :cond_7

    .line 84
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getSyncContactState()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 85
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getPhoneBookDownload()Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "initHintView phoneBookDownload null"

    .line 88
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/ContactFragment;->clearAndHideList()V

    .line 90
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->progressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->hintText:Landroid/widget/TextView;

    const v1, 0x7f0f0056

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 94
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getPhoneBookDownload()Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->getContactDownloadState()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "initHintView STATE_DOWNLOAD_HANDLE"

    .line 130
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/ContactFragment;->clearAndHideList()V

    .line 132
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->progressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->progressHint:Landroid/widget/TextView;

    const v1, 0x7f0f00ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 113
    :cond_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/ContactFragment;->clearAndHideList()V

    const-string v0, "initHintView STATE_DOWNLOAD_ERROR"

    .line 114
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->progressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->hintText:Landroid/widget/TextView;

    const v1, 0x7f0f0054

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "initHintView STATE_DOWNLOAD_FINISHED"

    .line 122
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->progressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 126
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getContacts()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/fragment/ContactFragment;->notifyData(Ljava/util/List;)V

    goto/16 :goto_0

    .line 105
    :cond_4
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/ContactFragment;->clearAndHideList()V

    const-string v0, "initHintView STATE_DOWNLOADING"

    .line 106
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->progressView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->progressHint:Landroid/widget/TextView;

    const v3, 0x7f0f0047

    invoke-virtual {p0, v3}, Lcom/autochips/bluetooth/fragment/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getPhoneBookDownload()Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->getContactIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :cond_5
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/ContactFragment;->clearAndHideList()V

    const-string v0, "initHintView STATE_NOT_START"

    .line 98
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->progressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->hintText:Landroid/widget/TextView;

    const v1, 0x7f0f00a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 101
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    const-string v0, "initHintView isSyncContact false"

    .line 139
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/ContactFragment;->clearAndHideList()V

    .line 142
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->progressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->hintText:Landroid/widget/TextView;

    const v1, 0x7f0f0055

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_7
    const-string v0, "initHintView no device connected"

    .line 148
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/ContactFragment;->clearAndHideList()V

    .line 150
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->progressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->hintText:Landroid/widget/TextView;

    const v1, 0x7f0f0052

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private notifyData(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;)V"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactAdapter:Lcom/autochips/bluetooth/adapter/ContactAdapter;

    const/4 v1, 0x1

    const v2, 0x7f0f0051

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactModels:Ljava/util/List;

    .line 186
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    new-instance v0, Lcom/autochips/bluetooth/adapter/ContactAdapter;

    iget-object v4, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactModels:Ljava/util/List;

    invoke-direct {v0, v4, v5}, Lcom/autochips/bluetooth/adapter/ContactAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactAdapter:Lcom/autochips/bluetooth/adapter/ContactAdapter;

    .line 188
    iget-object v4, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 189
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/ContactFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 190
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactCount:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/fragment/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactModels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 193
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactAdapter:Lcom/autochips/bluetooth/adapter/ContactAdapter;

    iget-object v4, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactModels:Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/autochips/bluetooth/adapter/ContactAdapter;->setData(Ljava/util/List;)V

    .line 195
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactAdapter:Lcom/autochips/bluetooth/adapter/ContactAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/adapter/ContactAdapter;->notifyDataSetChanged()V

    .line 196
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactCount:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/fragment/ContactFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactModels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 199
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->hintText:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public MailBox(Lcom/carlos/eventlibrary/EventMail;)V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/ContactFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ContactFragment"

    const-string v0, "MailBox not added return"

    .line 54
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 0

    .line 232
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/ContactFragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x7d1

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 236
    :pswitch_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/ContactFragment;->initHintView()V

    goto :goto_0

    .line 242
    :cond_1
    :pswitch_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/ContactFragment;->initHintView()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    const p3, 0x7f0b0056

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->rootView:Landroid/view/View;

    const p1, 0x7f0801da

    .line 67
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/ContactFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->progressHint:Landroid/widget/TextView;

    const p1, 0x7f0801db

    .line 68
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/ContactFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->progressView:Landroid/view/View;

    const p1, 0x7f0801e1

    .line 69
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/ContactFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f080129

    .line 70
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/ContactFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->hintText:Landroid/widget/TextView;

    .line 71
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    const p1, 0x7f080155

    .line 72
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/ContactFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->letterNavigationView:Lcom/autochips/bluetooth/view/CustomLetterNavigationView;

    .line 73
    invoke-virtual {p1, p0}, Lcom/autochips/bluetooth/view/CustomLetterNavigationView;->setOnNavigationScrollerListener(Lcom/autochips/bluetooth/view/CustomLetterNavigationView$OnNavigationScrollerListener;)V

    const p1, 0x7f0801f6

    .line 74
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/ContactFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->searchButton:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080154

    .line 76
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/ContactFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->letterHint:Landroid/widget/TextView;

    const p1, 0x7f0800c7

    .line 77
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/ContactFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->contactCount:Landroid/widget/TextView;

    .line 78
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerMainThreadObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 79
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/ContactFragment;->initHintView()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0801f6

    if-ne p1, v0, :cond_0

    .line 173
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getPhoneBookDownload()Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 174
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getPhoneBookDownload()Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->getContactDownloadState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 176
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/autochips/bluetooth/fragment/SearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/util/FragmentUtil;->startFragment(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 61
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onDestroy()V

    return-void
.end method

.method public onDown()V
    .locals 2

    const-string v0, "ContactFragment"

    const-string v1, "press letter navigation"

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->letterHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onScroll(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 213
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "scroll letter navigation letter=%s,position=%d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ContactFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->letterHint:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getLetterPosition()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 216
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getLetterPosition()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 217
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scrollPosition="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public onUp()V
    .locals 2

    const-string v0, "ContactFragment"

    const-string v1, "up letter navigation"

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->letterHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/ContactFragment;->letterHint:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
