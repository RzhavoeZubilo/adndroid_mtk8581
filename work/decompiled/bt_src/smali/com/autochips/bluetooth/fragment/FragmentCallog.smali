.class public Lcom/autochips/bluetooth/fragment/FragmentCallog;
.super Lcom/autochips/bluetooth/fragment/BaseMailFragment;
.source "FragmentCallog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/carocean/navicar/MMIKeyHelper$Callback;
.implements Lcom/autochips/bluetooth/event/IBTObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MSG_HANDLE_ALL_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CallHistoryFragment"


# instance fields
.field private final LIST_VISIBLE_ITEM_COUNT:I

.field private callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

.field private handler:Landroid/os/Handler;

.field private mHistoryListView:Landroid/widget/ListView;

.field private mT9Filter:Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;

.field private mTipEmptyTextView:Landroid/widget/TextView;

.field private recordModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->recordModels:Ljava/util/List;

    const/4 v0, 0x6

    .line 56
    iput v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->LIST_VISIBLE_ITEM_COUNT:I

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mT9Filter:Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->recordModels:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Lcom/autochips/bluetooth/adapter/CallRecordAdapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/fragment/FragmentCallog;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private checkMMIKeyHelper()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/autochips/bluetooth/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/autochips/bluetooth/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/BaseFragmentActivity;->getMMIKeyHelper()Lcom/carocean/navicar/MMIKeyHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    :cond_0
    return-void
.end method

.method private clearAndHideList()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->recordModels:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 320
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 321
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->recordModels:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->setData(Ljava/util/List;)V

    .line 322
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->notifyDataSetChanged()V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mHistoryListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method private initHintView()V
    .locals 5

    .line 240
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getCurrentConnectDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v3, "CallHistoryFragment"

    if-eqz v0, :cond_7

    .line 241
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getSyncContactState()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    const-string v0, "initHintView getSyncContactState==on"

    .line 242
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getPhoneBookDownload()Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "initHintView phoneBookDownload null"

    .line 246
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->clearAndHideList()V

    .line 249
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mTipEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mTipEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0056

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 252
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getPhoneBookDownload()Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->getCallLogDownloadState()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "initHintView STATE_DOWNLOAD_HANDLE"

    .line 288
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->clearAndHideList()V

    .line 290
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mTipEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 271
    :cond_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->clearAndHideList()V

    const-string v0, "initHintView STATE_DOWNLOAD_ERROR"

    .line 272
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mTipEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mTipEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0054

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const-string v0, "initHintView STATE_DOWNLOAD_FINISHED"

    .line 280
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mTipEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 284
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getCallLogs()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->notifyData(Ljava/util/List;)V

    goto :goto_0

    .line 263
    :cond_4
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->clearAndHideList()V

    const-string v0, "initHintView STATE_DOWNLOADING"

    .line 264
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mTipEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 255
    :cond_5
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->clearAndHideList()V

    const-string v0, "initHintView STATE_NOT_START"

    .line 256
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mTipEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f0f00a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 259
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mTipEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    const-string v0, "initHintView getSyncContactState!=on"

    .line 297
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->clearAndHideList()V

    .line 300
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mTipEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mTipEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0055

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_7
    const-string v0, "initHintView not connected"

    .line 306
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->clearAndHideList()V

    .line 309
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mTipEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mTipEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0052

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private notifyData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;)V"
        }
    .end annotation

    .line 331
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mTipEmptyTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mHistoryListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 334
    new-instance v0, Lcom/autochips/bluetooth/fragment/FragmentCallog$3;

    invoke-direct {v0, p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallog$3;-><init>(Lcom/autochips/bluetooth/fragment/FragmentCallog;Ljava/util/List;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onClickListItem(I)V
    .locals 6

    .line 136
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->recordModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/model/PhoneBookModel;

    .line 137
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object p1

    .line 138
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 139
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/info/BTCallManager;->call(Ljava/lang/String;)V

    goto :goto_1

    .line 141
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 143
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f0b0054

    .line 145
    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(I)V

    const v2, 0x7f080159

    .line 146
    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 147
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 148
    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 149
    new-instance v3, Lcom/autochips/bluetooth/fragment/FragmentCallog$2;

    invoke-direct {v3, p0, v0}, Lcom/autochips/bluetooth/fragment/FragmentCallog$2;-><init>(Lcom/autochips/bluetooth/fragment/FragmentCallog;Landroid/app/AlertDialog;)V

    .line 156
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v4, 0x7f0b0060

    const/4 v5, 0x0

    .line 158
    invoke-virtual {v2, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 159
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 162
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public MailBox(Lcom/carlos/eventlibrary/EventMail;)V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getFlag()I

    move-result v0

    const/16 v1, 0x7d6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7d7

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p1, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/autochips/bluetooth/fragment/FragmentCallog$1;

    invoke-direct {v0, p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallog$1;-><init>(Lcom/autochips/bluetooth/fragment/FragmentCallog;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 123
    :cond_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->initHintView()V

    :goto_0
    return-void
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 0

    .line 368
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->isAdded()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 p2, 0x7d1

    if-eq p1, p2, :cond_2

    const/16 p2, 0xbba

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 372
    :pswitch_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->initHintView()V

    goto :goto_0

    .line 381
    :cond_1
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getCallLogs()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->notifyData(Ljava/util/List;)V

    goto :goto_0

    .line 378
    :cond_2
    :pswitch_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->initHintView()V

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

    .line 63
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f0b0026

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
    const p3, 0x7f0b0025

    goto :goto_1

    :cond_2
    :goto_0
    const p3, 0x7f0b0027

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->rootView:Landroid/view/View;

    .line 64
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->rootView:Landroid/view/View;

    const p2, 0x7f0800a6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mTipEmptyTextView:Landroid/widget/TextView;

    .line 65
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->rootView:Landroid/view/View;

    const p2, 0x7f08012a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mHistoryListView:Landroid/widget/ListView;

    const/16 p2, 0x8

    .line 66
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    new-instance p1, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mActivity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->recordModels:Ljava/util/List;

    invoke-direct {p1, p2, p3}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    .line 69
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->initMMIkey()V

    .line 71
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerMainThreadObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 72
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->initHintView()V

    .line 73
    new-instance p1, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;-><init>(Lcom/autochips/bluetooth/fragment/FragmentCallog;Lcom/autochips/bluetooth/fragment/FragmentCallog$1;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mT9Filter:Lcom/autochips/bluetooth/fragment/FragmentCallog$T9Filter;

    return-void
.end method

.method public initMMIkey()V
    .locals 4

    .line 77
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->checkMMIKeyHelper()V

    .line 78
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->removeFromSector(I)V

    .line 79
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->insertSector(I)V

    .line 80
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mHistoryListView:Landroid/widget/ListView;

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 81
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectSector(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 91
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onDestroyView()V

    return-void
.end method

.method public onEnter(Landroid/view/View;)V
    .locals 2

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08012a

    if-ne v0, v1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->getSelectIndex()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->onClickListItem(I)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->onClick(Landroid/view/View;)V

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

    .line 130
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectSector(I)V

    .line 131
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    invoke-virtual {p1, p3}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->setSelectIndex(I)V

    .line 132
    invoke-direct {p0, p3}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->onClickListItem(I)V

    return-void
.end method

.method public onMenuUpEnd()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 86
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onResume()V

    return-void
.end method

.method public onSelectChanged(Landroid/view/View;Z)V
    .locals 2

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08012a

    if-ne p1, v0, :cond_2

    .line 171
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p1}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p1, v0}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectSector(I)V

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p2}, Lcom/carocean/navicar/MMIKeyHelper;->getSelectedSector()I

    move-result p2

    if-ne p2, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->setListSelected(Z)V

    .line 177
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public onTurnning(Landroid/view/View;Z)V
    .locals 3

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08012a

    if-ne p1, v0, :cond_6

    .line 206
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->getSelectIndex()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 210
    :goto_0
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p2, v0}, Lcom/carocean/navicar/MMIKeyHelper;->isSelectLoop(I)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-gez p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->getCount()I

    move-result p1

    :goto_1
    sub-int/2addr p1, v0

    goto :goto_3

    .line 212
    :cond_1
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->getCount()I

    move-result p2

    if-lt p1, p2, :cond_4

    goto :goto_2

    :cond_2
    if-gez p1, :cond_3

    :goto_2
    move p1, v1

    goto :goto_3

    .line 218
    :cond_3
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->getCount()I

    move-result p2

    if-lt p1, p2, :cond_4

    .line 219
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->getCount()I

    move-result p1

    goto :goto_1

    .line 223
    :cond_4
    :goto_3
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->setSelectIndex(I)V

    .line 224
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->notifyDataSetChanged()V

    .line 226
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p2

    .line 227
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " first:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " last:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallHistoryFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gt p1, p2, :cond_5

    .line 230
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mHistoryListView:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_4

    :cond_5
    if-lt p1, v0, :cond_6

    .line 233
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mHistoryListView:Landroid/widget/ListView;

    add-int/lit8 p1, p1, -0x5

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_6
    :goto_4
    return-void
.end method

.method public updateID8Theme(I)V
    .locals 2

    .line 388
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallog;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const v1, 0x7f0700dd

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const v1, 0x7f0700a1

    goto :goto_0

    :cond_2
    const v1, 0x7f0700f0

    .line 404
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->mHistoryListView:Landroid/widget/ListView;

    if-eqz p1, :cond_4

    .line 405
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 408
    :cond_4
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallog;->callRecordAdapter:Lcom/autochips/bluetooth/adapter/CallRecordAdapter;

    if-eqz p1, :cond_5

    .line 409
    invoke-virtual {p1}, Lcom/autochips/bluetooth/adapter/CallRecordAdapter;->notifyDataSetInvalidated()V

    :cond_5
    return-void
.end method
