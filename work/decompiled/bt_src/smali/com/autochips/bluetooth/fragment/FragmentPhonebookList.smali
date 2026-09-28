.class public Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;
.super Lcom/autochips/bluetooth/fragment/BaseMailFragment;
.source "FragmentPhonebookList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/carocean/navicar/MMIKeyHelper$Callback;
.implements Lcom/autochips/bluetooth/event/IBTObserver;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/carocean/navicar/MMIKeyHelper$onDispatchKeyEvent;


# static fields
.field private static final LIST_VISIBLE_ITEM_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "PhonebookFragment"


# instance fields
.field private contactModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadLayout:Landroid/view/View;

.field private mDownloadTextView:Landroid/widget/TextView;

.field private mPhonebookListView:Landroid/widget/ListView;

.field private mTipEmptyTextView:Landroid/widget/TextView;

.field private phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

.field private searchBtn:Landroid/view/View;

.field private selectInstructionsIv:Landroid/widget/ImageView;

.field private syncBtn:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->contactModels:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;Ljava/util/List;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->setAdapterData(Ljava/util/List;)V

    return-void
.end method

.method private checkMMIKeyHelper()V
    .locals 1

    .line 150
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/autochips/bluetooth/BaseFragmentActivity;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/autochips/bluetooth/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/BaseFragmentActivity;->getMMIKeyHelper()Lcom/carocean/navicar/MMIKeyHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    :cond_1
    :goto_0
    return-void
.end method

.method private clearAndHideList()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->contactModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 237
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->contactModels:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->setAdapterData(Ljava/util/List;)V

    .line 238
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mPhonebookListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method private initHintView()V
    .locals 5

    .line 159
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getConnectState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    const-string v4, "PhonebookFragment"

    if-ne v0, v1, :cond_7

    .line 160
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getSyncContactState()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 161
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getPhoneBookDownload()Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "initHintView phoneBookDownload null"

    .line 164
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->clearAndHideList()V

    .line 166
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mDownloadLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mTipEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mTipEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0056

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 170
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

    .line 206
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->clearAndHideList()V

    .line 208
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mTipEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mDownloadLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mDownloadTextView:Landroid/widget/TextView;

    const v1, 0x7f0f00ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 189
    :cond_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->clearAndHideList()V

    const-string v0, "initHintView STATE_DOWNLOAD_ERROR"

    .line 190
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mDownloadLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mTipEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mTipEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0054

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "initHintView STATE_DOWNLOAD_FINISHED"

    .line 198
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mTipEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mDownloadLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mPhonebookListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 202
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getContacts()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->notifyData(Ljava/util/List;)V

    goto/16 :goto_0

    .line 181
    :cond_4
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->clearAndHideList()V

    const-string v0, "initHintView STATE_DOWNLOADING"

    .line 182
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mTipEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mDownloadLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mDownloadTextView:Landroid/widget/TextView;

    const v3, 0x7f0f0047

    invoke-virtual {p0, v3}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->getString(I)Ljava/lang/String;

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

    .line 173
    :cond_5
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->clearAndHideList()V

    const-string v0, "initHintView STATE_NOT_START"

    .line 174
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mDownloadLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mTipEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f0f00a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mTipEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    const-string v0, "initHintView isSyncContact false"

    .line 215
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->clearAndHideList()V

    .line 218
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mDownloadLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mTipEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mTipEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0055

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_7
    const-string v0, "initHintView no device connected"

    .line 224
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->clearAndHideList()V

    .line 226
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mDownloadLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mTipEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mTipEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0052

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private notifyData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;)V"
        }
    .end annotation

    .line 245
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->setAdapterData(Ljava/util/List;)V

    .line 247
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 248
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mTipEmptyTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mPhonebookListView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method private onClickListItem(I)V
    .locals 6

    .line 277
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->contactModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/model/PhoneBookModel;

    .line 278
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object p1

    .line 279
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 280
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/info/BTCallManager;->call(Ljava/lang/String;)V

    goto :goto_1

    .line 282
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 284
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0b0054

    .line 285
    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(I)V

    const v2, 0x7f080159

    .line 286
    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 287
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 288
    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 289
    new-instance v3, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList$2;

    invoke-direct {v3, p0, v0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList$2;-><init>(Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;Landroid/app/AlertDialog;)V

    .line 296
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v4, 0x7f0b0060

    const/4 v5, 0x0

    .line 298
    invoke-virtual {v2, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 299
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 301
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 302
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setAdapterData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->contactModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->contactModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->setData(Ljava/util/List;)V

    .line 134
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateID8Background(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x7f0700a4

    goto :goto_0

    :cond_1
    const p1, 0x7f0700f3

    goto :goto_0

    :cond_2
    const p1, 0x7f0700df

    .line 416
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->rootView:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 417
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->rootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    return-void
.end method

.method private updateID8LeftBtn(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    const v1, 0x7f050022

    const p1, 0x7f07009f

    goto :goto_0

    :cond_1
    const v1, 0x7f050026

    const p1, 0x7f0700ee

    goto :goto_0

    :cond_2
    const v1, 0x7f050024

    const p1, 0x7f0700db

    :goto_0
    move v4, v1

    move v1, p1

    move p1, v4

    .line 439
    :goto_1
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->searchBtn:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 440
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 441
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->searchBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->syncBtn:Landroid/view/View;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 445
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 446
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->syncBtn:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public MailBox(Lcom/carlos/eventlibrary/EventMail;)V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "PhonebookFragment"

    const-string v0, "MailBox not added return"

    .line 145
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->handlerMMIKeys(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 0

    .line 254
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->isAdded()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x7d1

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 258
    :pswitch_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->initHintView()V

    goto :goto_0

    .line 264
    :cond_1
    :pswitch_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->initHintView()V

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

    .line 62
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f0b0038

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const p3, 0x7f0b0036

    goto :goto_1

    :cond_2
    :goto_0
    const p3, 0x7f0b003a

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->rootView:Landroid/view/View;

    .line 63
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->rootView:Landroid/view/View;

    const p2, 0x7f0800f9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mDownloadLayout:Landroid/view/View;

    .line 64
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->rootView:Landroid/view/View;

    const p2, 0x7f080285

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mDownloadTextView:Landroid/widget/TextView;

    .line 65
    new-instance p1, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mActivity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->contactModels:Ljava/util/List;

    invoke-direct {p1, p2, p3}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    .line 66
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->rootView:Landroid/view/View;

    const p2, 0x7f0801d2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mPhonebookListView:Landroid/widget/ListView;

    const/16 p2, 0x8

    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 68
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mPhonebookListView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mPhonebookListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->rootView:Landroid/view/View;

    const p2, 0x7f0801d3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mTipEmptyTextView:Landroid/widget/TextView;

    .line 71
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->rootView:Landroid/view/View;

    const p2, 0x7f0801cd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->searchBtn:Landroid/view/View;

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->rootView:Landroid/view/View;

    const p2, 0x7f080218

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->syncBtn:Landroid/view/View;

    .line 74
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080222

    .line 75
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->selectInstructionsIv:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->initMMIkey()V

    .line 78
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerMainThreadObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 79
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->initHintView()V

    return-void
.end method

.method public initMMIkey()V
    .locals 6

    .line 83
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->checkMMIKeyHelper()V

    .line 84
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/carocean/navicar/MMIKeyHelper;

    invoke-direct {v0, v2}, Lcom/carocean/navicar/MMIKeyHelper;-><init>(I)V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    .line 86
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->searchBtn:Landroid/view/View;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 87
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->syncBtn:Landroid/view/View;

    invoke-virtual {v0, v2, v4, v5}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 88
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mPhonebookListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2, v1, v3}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 89
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->searchBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->selectInstructionsIv:Landroid/widget/ImageView;

    const v1, 0x7f0700f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, p0}, Lcom/carocean/navicar/MMIKeyHelper;->setCustomCallback(Lcom/carocean/navicar/MMIKeyHelper$Callback;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v3}, Lcom/carocean/navicar/MMIKeyHelper;->removeFromSector(I)V

    .line 94
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v3}, Lcom/carocean/navicar/MMIKeyHelper;->insertSector(I)V

    .line 95
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v2}, Lcom/carocean/navicar/MMIKeyHelper;->insertSector(I)V

    .line 96
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v4, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mPhonebookListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4, v1, v2}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 97
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->searchBtn:Landroid/view/View;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 98
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->syncBtn:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 99
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v3}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectSector(I)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0801cd

    if-eq p1, v0, :cond_1

    const v0, 0x7f080218

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->syncContact()V

    goto :goto_0

    .line 117
    :cond_1
    new-instance p1, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;

    invoke-direct {p1}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;-><init>()V

    .line 118
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "phonebook_keyboard"

    invoke-virtual {p1, v0, v1}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList$1;-><init>(Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;)V

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/fragment/PhonebookKeyboard;->setOnSearchResultListener(Lcom/autochips/bluetooth/fragment/PhonebookKeyboard$OnSearchResultListener;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 139
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 106
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onDestroyView()V

    return-void
.end method

.method public onEnter(Landroid/view/View;)V
    .locals 2

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0801d2

    if-ne v0, v1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->getSelectIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->onClickListItem(I)V

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onFocused(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 271
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectSector(I)V

    .line 272
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    invoke-virtual {p1, p3}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->setSelectIndex(I)V

    .line 273
    invoke-direct {p0, p3}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->onClickListItem(I)V

    return-void
.end method

.method public onMenuUpEnd()V
    .locals 2

    const-string v0, "PhonebookFragment"

    const-string v1, "onMenuUpEnd"

    .line 342
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onSelectChanged(Landroid/view/View;Z)V
    .locals 3

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelectChanged : v.getId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhonebookFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0801d2

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    .line 312
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectSector(I)V

    return-void

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectChanged listview : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p2}, Lcom/carocean/navicar/MMIKeyHelper;->getSelectedSector()I

    move-result p2

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->setListSelected(Z)V

    goto :goto_2

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p2}, Lcom/carocean/navicar/MMIKeyHelper;->getSelectedSector()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->setListSelected(Z)V

    .line 322
    :goto_2
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->notifyDataSetChanged()V

    .line 324
    :cond_4
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 325
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->selectInstructionsIv:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p2}, Lcom/carocean/navicar/MMIKeyHelper;->getSelectedSector()I

    move-result p2

    if-nez p2, :cond_5

    const p2, 0x7f0700f4

    goto :goto_3

    :cond_5
    const p2, 0x7f0700c1

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    return-void
.end method

.method public onTurnning(Landroid/view/View;Z)V
    .locals 1

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0801d2

    if-ne p1, v0, :cond_6

    .line 358
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->getSelectIndex()I

    move-result p1

    if-eqz p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 362
    :goto_0
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/carocean/navicar/MMIKeyHelper;->isSelectLoop(I)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-gez p1, :cond_1

    .line 363
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->getCount()I

    move-result p1

    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 364
    :cond_1
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->getCount()I

    move-result p2

    if-lt p1, p2, :cond_4

    goto :goto_2

    :cond_2
    if-gez p1, :cond_3

    :goto_2
    move p1, v0

    goto :goto_3

    .line 369
    :cond_3
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->getCount()I

    move-result p2

    if-lt p1, p2, :cond_4

    .line 370
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->getCount()I

    move-result p1

    goto :goto_1

    .line 374
    :cond_4
    :goto_3
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->setSelectIndex(I)V

    .line 375
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->notifyDataSetChanged()V

    .line 376
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mPhonebookListView:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p2

    .line 377
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mPhonebookListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-gt p1, p2, :cond_5

    .line 379
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mPhonebookListView:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_4

    :cond_5
    if-lt p1, v0, :cond_6

    .line 381
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->mPhonebookListView:Landroid/widget/ListView;

    add-int/lit8 p1, p1, -0x5

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_6
    :goto_4
    return-void
.end method

.method public updateID8Theme(I)V
    .locals 1

    .line 393
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 396
    :cond_0
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->updateID8Background(I)V

    .line 397
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->updateID8LeftBtn(I)V

    .line 398
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentPhonebookList;->phonebookAdapter:Lcom/autochips/bluetooth/adapter/PhonebookAdapter;

    if-eqz p1, :cond_1

    .line 399
    invoke-virtual {p1}, Lcom/autochips/bluetooth/adapter/PhonebookAdapter;->notifyDataSetInvalidated()V

    :cond_1
    return-void
.end method
