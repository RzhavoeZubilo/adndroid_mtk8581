.class public Lcom/autochips/bluetooth/fragment/RecordFragment;
.super Lcom/autochips/bluetooth/fragment/BaseMailFragment;
.source "RecordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/autochips/bluetooth/event/IBTObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/fragment/RecordFragment$T9Filter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordFragment"


# instance fields
.field private handler:Landroid/os/Handler;

.field private hintText:Landroid/widget/TextView;

.field private mT9Filter:Lcom/autochips/bluetooth/fragment/RecordFragment$T9Filter;

.field private progressHint:Landroid/widget/TextView;

.field private progressView:Landroid/view/View;

.field private recordAdapter:Lcom/autochips/bluetooth/adapter/RecordAdapter;

.field private recordModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/fragment/RecordFragment;)Lcom/autochips/bluetooth/fragment/RecordFragment$T9Filter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->mT9Filter:Lcom/autochips/bluetooth/fragment/RecordFragment$T9Filter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/fragment/RecordFragment;)Ljava/util/List;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recordModels:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/fragment/RecordFragment;)Lcom/autochips/bluetooth/adapter/RecordAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recordAdapter:Lcom/autochips/bluetooth/adapter/RecordAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/fragment/RecordFragment;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private clearAndHideList()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recordModels:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 173
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recordAdapter:Lcom/autochips/bluetooth/adapter/RecordAdapter;

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recordModels:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/adapter/RecordAdapter;->setData(Ljava/util/List;)V

    .line 174
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recordAdapter:Lcom/autochips/bluetooth/adapter/RecordAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/adapter/RecordAdapter;->notifyDataSetChanged()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method

.method private initHintView()V
    .locals 5

    .line 92
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getCurrentConnectDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "RecordFragment"

    const/16 v3, 0x8

    if-eqz v0, :cond_7

    .line 93
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getSyncContactState()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_6

    const-string v0, "initHintView getSyncContactState==on"

    .line 94
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getPhoneBookDownload()Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "initHintView phoneBookDownload null"

    .line 98
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->clearAndHideList()V

    .line 100
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->progressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->hintText:Landroid/widget/TextView;

    const v1, 0x7f0f0056

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 104
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

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "initHintView STATE_DOWNLOAD_HANDLE"

    .line 140
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->clearAndHideList()V

    .line 142
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->progressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->progressHint:Landroid/widget/TextView;

    const v1, 0x7f0f00ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 123
    :cond_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->clearAndHideList()V

    const-string v0, "initHintView STATE_DOWNLOAD_ERROR"

    .line 124
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->progressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->hintText:Landroid/widget/TextView;

    const v1, 0x7f0f0054

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "initHintView STATE_DOWNLOAD_FINISHED"

    .line 132
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->progressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 136
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getCallLogs()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->notifyData(Ljava/util/List;)V

    goto/16 :goto_0

    .line 115
    :cond_4
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->clearAndHideList()V

    const-string v0, "initHintView STATE_DOWNLOADING"

    .line 116
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->progressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->progressHint:Landroid/widget/TextView;

    const v2, 0x7f0f0047

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/fragment/RecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getPhoneBookDownload()Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->getCallLogIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 107
    :cond_5
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->clearAndHideList()V

    const-string v0, "initHintView STATE_NOT_START"

    .line 108
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->progressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->hintText:Landroid/widget/TextView;

    const v2, 0x7f0f00a4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    const-string v0, "initHintView getSyncContactState!=on"

    .line 149
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->clearAndHideList()V

    .line 151
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->progressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->hintText:Landroid/widget/TextView;

    const v1, 0x7f0f0055

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_7
    const-string v0, "initHintView not connected"

    .line 158
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->clearAndHideList()V

    .line 160
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->progressView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->hintText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->hintText:Landroid/widget/TextView;

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

    .line 188
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->hintText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 191
    new-instance v0, Lcom/autochips/bluetooth/fragment/RecordFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/autochips/bluetooth/fragment/RecordFragment$2;-><init>(Lcom/autochips/bluetooth/fragment/RecordFragment;Ljava/util/List;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public MailBox(Lcom/carlos/eventlibrary/EventMail;)V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getFlag()I

    move-result v0

    const/16 v1, 0x7d6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7d7

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/autochips/bluetooth/fragment/RecordFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/autochips/bluetooth/fragment/RecordFragment$1;-><init>(Lcom/autochips/bluetooth/fragment/RecordFragment;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->initHintView()V

    :goto_0
    return-void
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 0

    .line 225
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->isAdded()Z

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

    .line 229
    :pswitch_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->initHintView()V

    goto :goto_0

    .line 238
    :cond_1
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getCallLogs()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/RecordFragment;->notifyData(Ljava/util/List;)V

    goto :goto_0

    .line 235
    :cond_2
    :pswitch_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->initHintView()V

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

    const p3, 0x7f0b0058

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->rootView:Landroid/view/View;

    const p1, 0x7f0801db

    .line 77
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/RecordFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->progressView:Landroid/view/View;

    const p1, 0x7f0801e1

    .line 78
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/RecordFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f0801da

    .line 79
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/RecordFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->progressHint:Landroid/widget/TextView;

    const p1, 0x7f080129

    .line 80
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/RecordFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->hintText:Landroid/widget/TextView;

    .line 81
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recordModels:Ljava/util/List;

    .line 84
    new-instance p1, Lcom/autochips/bluetooth/adapter/RecordAdapter;

    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->mActivity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recordModels:Ljava/util/List;

    invoke-direct {p1, p2, p3}, Lcom/autochips/bluetooth/adapter/RecordAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recordAdapter:Lcom/autochips/bluetooth/adapter/RecordAdapter;

    .line 85
    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 86
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerMainThreadObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 87
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/RecordFragment;->initHintView()V

    .line 88
    new-instance p1, Lcom/autochips/bluetooth/fragment/RecordFragment$T9Filter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/autochips/bluetooth/fragment/RecordFragment$T9Filter;-><init>(Lcom/autochips/bluetooth/fragment/RecordFragment;Lcom/autochips/bluetooth/fragment/RecordFragment$1;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/RecordFragment;->mT9Filter:Lcom/autochips/bluetooth/fragment/RecordFragment$T9Filter;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method
