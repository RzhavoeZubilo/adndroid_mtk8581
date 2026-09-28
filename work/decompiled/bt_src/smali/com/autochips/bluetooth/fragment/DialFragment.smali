.class public Lcom/autochips/bluetooth/fragment/DialFragment;
.super Lcom/autochips/bluetooth/fragment/BaseMailFragment;
.source "DialFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/autochips/bluetooth/event/IBTObserver;


# instance fields
.field mGridLy:Landroid/widget/GridLayout;

.field private mHandler:Landroid/os/Handler;

.field private mLastConnectedState:Ljava/lang/Boolean;

.field mNotLinkLy:Landroid/widget/LinearLayout;

.field mPNumLy:Landroid/widget/LinearLayout;

.field private mcuCmdListener:Lcom/autochips/bluetooth/ExtendUtil$OnMcuCmdListener;

.field onClickListener:Landroid/view/View$OnClickListener;

.field phoneNumberTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Lcom/autochips/bluetooth/fragment/DialFragment$3;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/fragment/DialFragment$3;-><init>(Lcom/autochips/bluetooth/fragment/DialFragment;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->onClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->mLastConnectedState:Ljava/lang/Boolean;

    .line 251
    new-instance v0, Lcom/autochips/bluetooth/fragment/DialFragment$4;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/fragment/DialFragment$4;-><init>(Lcom/autochips/bluetooth/fragment/DialFragment;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->mcuCmdListener:Lcom/autochips/bluetooth/ExtendUtil$OnMcuCmdListener;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/fragment/DialFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/DialFragment;->jumpBTSettingFragment()V

    return-void
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/fragment/DialFragment;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->performClick(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/fragment/DialFragment;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private checkBTState()V
    .locals 2

    .line 172
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getConnectState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 173
    :goto_0
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/fragment/DialFragment;->showBTLayout(Z)V

    return-void
.end method

.method private jumpBTSettingFragment()V
    .locals 2

    .line 145
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/DialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    instance-of v1, v0, Lcom/autochips/bluetooth/MainActivity;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Lcom/autochips/bluetooth/MainActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/MainActivity;->goToFragment(I)V

    :cond_0
    return-void
.end method

.method private performClick(I)V
    .locals 3

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const p1, 0x7f0800e6

    .line 310
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto/16 :goto_0

    :pswitch_1
    const p1, 0x7f0800e9

    .line 307
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto/16 :goto_0

    :pswitch_2
    const p1, 0x7f0800e4

    .line 304
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto/16 :goto_0

    :pswitch_3
    const p1, 0x7f0800e1

    .line 301
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto/16 :goto_0

    :pswitch_4
    const p1, 0x7f0800e7

    .line 298
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :pswitch_5
    const p1, 0x7f0800e8

    .line 295
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :pswitch_6
    const p1, 0x7f0800e2

    .line 292
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :pswitch_7
    const p1, 0x7f0800e3

    .line 289
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :pswitch_8
    const p1, 0x7f0800ea

    .line 286
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :pswitch_9
    const p1, 0x7f0800eb

    .line 283
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :pswitch_a
    const-string p1, "performClick========: "

    .line 278
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0800e5

    .line 279
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    move-result v0

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_b
    const p1, 0x7f0800ec

    .line 275
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showBTLayout(Z)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->mLastConnectedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->mLastConnectedState:Ljava/lang/Boolean;

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 184
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->mGridLy:Landroid/widget/GridLayout;

    invoke-virtual {p1, v0}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 185
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->mPNumLy:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->mNotLinkLy:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->mGridLy:Landroid/widget/GridLayout;

    invoke-virtual {p1, v1}, Landroid/widget/GridLayout;->setVisibility(I)V

    .line 189
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->mPNumLy:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->mNotLinkLy:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public MailBox(Lcom/carlos/eventlibrary/EventMail;)V
    .locals 0

    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 163
    new-instance p1, Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {p1}, Lcom/carlos/eventlibrary/EventMail;-><init>()V

    .line 164
    const-class v0, Lcom/autochips/bluetooth/fragment/RecordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/carlos/eventlibrary/EventMail;->setAddress_className(Ljava/lang/String;)V

    const/16 v0, 0x7d7

    .line 165
    invoke-virtual {p1, v0}, Lcom/carlos/eventlibrary/EventMail;->setFlag(I)V

    .line 166
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->phoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 167
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Lcom/carlos/eventlibrary/EventMail;)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 0

    .line 196
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/DialFragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "BaseFragment"

    const-string p2, "DialFragment is not add\uff01\uff01\uff01"

    .line 197
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 p2, 0xbba

    if-eq p1, p2, :cond_1

    const/16 p2, 0xbc2

    if-eq p1, p2, :cond_1

    const/16 p2, 0xbc9

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/DialFragment;->checkBTState()V

    :goto_0
    return-void
.end method

.method public init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    const p3, 0x7f0b0057

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->rootView:Landroid/view/View;

    const p1, 0x7f0800e5

    .line 60
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800eb

    .line 61
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800ea

    .line 62
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800e3

    .line 63
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800e2

    .line 64
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800e8

    .line 65
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800e7

    .line 66
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800e1

    .line 67
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800e4

    .line 68
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800ec

    .line 69
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/autochips/bluetooth/fragment/DialFragment$1;

    invoke-direct {p2, p0}, Lcom/autochips/bluetooth/fragment/DialFragment$1;-><init>(Lcom/autochips/bluetooth/fragment/DialFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f0800e9

    .line 77
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800e6

    .line 78
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800d7

    .line 79
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0800e0

    .line 80
    invoke-virtual {p0, p2}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f08011d

    .line 81
    invoke-virtual {p0, p2}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/autochips/bluetooth/fragment/DialFragment$2;

    invoke-direct {p2, p0}, Lcom/autochips/bluetooth/fragment/DialFragment$2;-><init>(Lcom/autochips/bluetooth/fragment/DialFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f0801d0

    .line 89
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->phoneNumberTextView:Landroid/widget/TextView;

    .line 90
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f080121

    .line 91
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridLayout;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->mGridLy:Landroid/widget/GridLayout;

    const p1, 0x7f0801d1

    .line 92
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->mPNumLy:Landroid/widget/LinearLayout;

    const p1, 0x7f0801ba

    .line 93
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/DialFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->mNotLinkLy:Landroid/widget/LinearLayout;

    .line 94
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/DialFragment;->checkBTState()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->phoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->phoneNumberTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->phoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 53
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerMainThreadObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 211
    invoke-super {p0, p1}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/DialFragment;->onInVisible()V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/DialFragment;->onVisible()V

    :goto_0
    return-void
.end method

.method public onInVisible()V
    .locals 2

    .line 246
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onInVisible()V

    const-string v0, "BaseFragment"

    const-string v1, "onInVisible"

    .line 247
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Lcom/autochips/bluetooth/GlobalApplication;->getInstance()Lcom/autochips/bluetooth/GlobalApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/GlobalApplication;->extendUtil:Lcom/autochips/bluetooth/ExtendUtil;

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->mcuCmdListener:Lcom/autochips/bluetooth/ExtendUtil$OnMcuCmdListener;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/ExtendUtil;->removeMcuCmdListener(Lcom/autochips/bluetooth/ExtendUtil$OnMcuCmdListener;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 233
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onPause()V

    .line 234
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/DialFragment;->onInVisible()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 221
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onResume()V

    .line 222
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/DialFragment;->onVisible()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 227
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onStop()V

    .line 228
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/DialFragment;->onInVisible()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onVisible()V
    .locals 2

    .line 239
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onVisible()V

    const-string v0, "BaseFragment"

    const-string v1, "onVisible"

    .line 240
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-static {}, Lcom/autochips/bluetooth/GlobalApplication;->getInstance()Lcom/autochips/bluetooth/GlobalApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/GlobalApplication;->extendUtil:Lcom/autochips/bluetooth/ExtendUtil;

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/DialFragment;->mcuCmdListener:Lcom/autochips/bluetooth/ExtendUtil$OnMcuCmdListener;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/ExtendUtil;->addMcuCmdListener(Lcom/autochips/bluetooth/ExtendUtil$OnMcuCmdListener;)V

    return-void
.end method
