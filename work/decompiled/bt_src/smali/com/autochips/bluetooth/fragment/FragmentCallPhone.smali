.class public Lcom/autochips/bluetooth/fragment/FragmentCallPhone;
.super Lcom/autochips/bluetooth/fragment/BaseMailFragment;
.source "FragmentCallPhone.java"

# interfaces
.implements Lcom/carocean/navicar/MMIKeyHelper$Callback;
.implements Lcom/autochips/bluetooth/view/DialpadLayout$Callback;
.implements Lcom/autochips/bluetooth/event/IBTObserver;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentCallPhone"

.field public static minputstr:Ljava/lang/String; = ""


# instance fields
.field private final MAXPHONENUM:I

.field private mDialpadLayout:Lcom/autochips/bluetooth/view/DialpadLayout;

.field private mNumberView:[Landroid/view/View;

.field private m_callnumber_et:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;-><init>()V

    const/16 v0, 0x14

    .line 33
    iput v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->MAXPHONENUM:I

    const/16 v0, 0xf

    new-array v0, v0, [Landroid/view/View;

    .line 39
    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/fragment/FragmentCallPhone;Ljava/lang/CharSequence;)Z
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->addDialPadInputString(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private addDialPadInputString(Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 160
    :cond_0
    sget-object v1, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->minputstr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v1, 0x7f0f0037

    invoke-static {p1, v1}, Lcom/autochips/bluetooth/util/CmnUtil;->showToast(Landroid/app/Activity;I)V

    return v0

    .line 164
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->minputstr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->minputstr:Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->formatshownum()V

    const/4 p1, 0x1

    return p1
.end method

.method private checkBTState()V
    .locals 1

    .line 289
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->isBTConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->deleteAllDialPadString()Z

    :cond_0
    return-void
.end method

.method private checkMMIKeyHelper()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/autochips/bluetooth/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/autochips/bluetooth/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/BaseFragmentActivity;->getMMIKeyHelper()Lcom/carocean/navicar/MMIKeyHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    :cond_0
    return-void
.end method

.method private deleteAllDialPadString()Z
    .locals 2

    const-string v0, ""

    .line 170
    sput-object v0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->minputstr:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->m_callnumber_et:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0
.end method

.method private deleteOneDialPadString()Z
    .locals 4

    .line 176
    sget-object v0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->minputstr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 179
    :cond_0
    sget-object v0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->minputstr:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->minputstr:Ljava/lang/String;

    .line 180
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->formatshownum()V

    return v1
.end method

.method private doClick(Landroid/view/View;)V
    .locals 1

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f080095

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const-string p1, "0"

    .line 314
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->addDialPadInputString(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :pswitch_1
    const-string p1, "2"

    .line 320
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->addDialPadInputString(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :pswitch_2
    const-string p1, "3"

    .line 323
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->addDialPadInputString(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :pswitch_3
    const-string p1, "6"

    .line 332
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->addDialPadInputString(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :pswitch_4
    const-string p1, "7"

    .line 335
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->addDialPadInputString(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :pswitch_5
    const-string p1, "#"

    .line 347
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->addDialPadInputString(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :pswitch_6
    const-string p1, "1"

    .line 317
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->addDialPadInputString(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :pswitch_7
    const-string p1, "9"

    .line 341
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->addDialPadInputString(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :pswitch_8
    const-string p1, "4"

    .line 326
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->addDialPadInputString(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :pswitch_9
    const-string p1, "5"

    .line 329
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->addDialPadInputString(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :pswitch_a
    const-string p1, "8"

    .line 338
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->addDialPadInputString(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :pswitch_b
    const-string p1, "*"

    .line 344
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->addDialPadInputString(Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 311
    :pswitch_c
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->onCall()V

    goto :goto_0

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->deleteOneDialPadString()Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f08007d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f080083
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

.method private formatshownum()V
    .locals 2

    .line 185
    sget-object v0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->minputstr:Ljava/lang/String;

    invoke-static {v0}, Lcom/autochips/bluetooth/util/FormatTelNumber;->ui_format_tel_number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->m_callnumber_et:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->afterTextChanged()V

    return-void
.end method

.method private isBTConnected()Z
    .locals 2

    .line 285
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getConnectState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateID8DialBtnBg(I)V
    .locals 4

    const/4 v0, 0x1

    const v1, 0x7f0700d9

    const v2, 0x7f0700d6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f07009a

    const v1, 0x7f07009d

    goto :goto_0

    :cond_1
    const v2, 0x7f0700e9

    const v1, 0x7f0700ec

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 383
    :goto_1
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    array-length v3, v0

    if-ge p1, v3, :cond_5

    .line 384
    aget-object v3, v0, p1

    if-eqz v3, :cond_4

    .line 385
    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f08007d

    if-ne v0, v3, :cond_3

    .line 386
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public MailBox(Lcom/carlos/eventlibrary/EventMail;)V
    .locals 0

    return-void
.end method

.method public afterTextChanged()V
    .locals 3

    .line 295
    new-instance v0, Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {v0}, Lcom/carlos/eventlibrary/EventMail;-><init>()V

    .line 296
    const-class v1, Lcom/autochips/bluetooth/fragment/RecordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/carlos/eventlibrary/EventMail;->setAddress_className(Ljava/lang/String;)V

    const/16 v1, 0x7d7

    .line 297
    invoke-virtual {v0, v1}, Lcom/carlos/eventlibrary/EventMail;->setFlag(I)V

    .line 298
    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->m_callnumber_et:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 299
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Lcom/carlos/eventlibrary/EventMail;)Z

    return-void
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 0

    .line 262
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->isAdded()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "FragmentCallPhone"

    const-string p2, "FragmentCallPhone is not add\uff01\uff01\uff01"

    .line 263
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 p2, 0xbba

    if-eq p1, p2, :cond_2

    const/16 p2, 0xbc2

    if-eq p1, p2, :cond_2

    const/16 p2, 0xbc9

    if-eq p1, p2, :cond_2

    const/16 p2, 0xbd9

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->deleteAllDialPadString()Z

    goto :goto_0

    .line 271
    :cond_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->checkBTState()V

    :goto_0
    return-void
.end method

.method public init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const p3, 0x7f0b0023

    .line 54
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    goto :goto_2

    .line 56
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const p3, 0x7f0b0021

    goto :goto_1

    :cond_2
    :goto_0
    const p3, 0x7f0b0024

    :goto_1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    .line 59
    :goto_2
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    const p2, 0x7f080269

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->m_callnumber_et:Landroid/widget/TextView;

    .line 61
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 62
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    iget-object p2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    const p3, 0x7f080084

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    aput-object p2, p1, v0

    .line 63
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    const/4 p2, 0x1

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    const v0, 0x7f080089

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p1, p2

    .line 64
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    const/4 p2, 0x2

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    const v0, 0x7f080088

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p1, p2

    .line 65
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    const/4 p2, 0x3

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    const v0, 0x7f080095

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p1, p2

    .line 66
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    const/4 p2, 0x4

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    const v0, 0x7f080081

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p1, p2

    .line 67
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    const/4 p2, 0x5

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    const v0, 0x7f080080

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p1, p2

    .line 68
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    const/4 p2, 0x6

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    const v0, 0x7f080087

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p1, p2

    .line 69
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    const/4 p2, 0x7

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    const v0, 0x7f080086

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p1, p2

    .line 70
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    const/16 p2, 0x8

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    const v0, 0x7f08007f

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p1, p2

    .line 71
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    const/16 p2, 0x9

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    const v0, 0x7f080083

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p1, p2

    .line 72
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    const/16 p2, 0xa

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    const v0, 0x7f08007e

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p1, p2

    .line 73
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    const/16 p2, 0xb

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    const v0, 0x7f08008a

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p1, p2

    .line 74
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    const/16 p2, 0xc

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    const v0, 0x7f080085

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p1, p2

    .line 75
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    const/16 p2, 0xd

    iget-object p3, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    const v0, 0x7f08007d

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    aput-object p3, p1, p2

    .line 76
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    const/16 p2, 0xe

    const/4 p3, 0x0

    aput-object p3, p1, p2

    goto :goto_3

    .line 78
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->rootView:Landroid/view/View;

    const p2, 0x7f0800f0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/view/DialpadLayout;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mDialpadLayout:Lcom/autochips/bluetooth/view/DialpadLayout;

    if-eqz p1, :cond_4

    .line 80
    invoke-virtual {p1, p0}, Lcom/autochips/bluetooth/view/DialpadLayout;->setCallback(Lcom/autochips/bluetooth/view/DialpadLayout$Callback;)V

    .line 84
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->initMMIkey()V

    .line 85
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->checkBTState()V

    return-void
.end method

.method public initMMIkey()V
    .locals 7

    .line 89
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->checkMMIKeyHelper()V

    .line 90
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->removeFromSector(I)V

    .line 91
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->insertSector(I)V

    .line 92
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mNumberView:[Landroid/view/View;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 95
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f08008a

    if-ne v5, v6, :cond_0

    .line 97
    new-instance v5, Lcom/autochips/bluetooth/fragment/FragmentCallPhone$1;

    invoke-direct {v5, p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone$1;-><init>(Lcom/autochips/bluetooth/fragment/FragmentCallPhone;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 105
    :cond_0
    iget-object v5, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v6, 0x7

    invoke-virtual {v5, v4, v6, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mDialpadLayout:Lcom/autochips/bluetooth/view/DialpadLayout;

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mDialpadLayout:Lcom/autochips/bluetooth/view/DialpadLayout;

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectSector(I)V

    return-void
.end method

.method public onCall()V
    .locals 2

    .line 135
    sget-object v0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->minputstr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getConnectState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 137
    sget-object v0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->minputstr:Ljava/lang/String;

    .line 138
    new-instance v1, Lcom/autochips/bluetooth/fragment/FragmentCallPhone$2;

    invoke-direct {v1, p0, v0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone$2;-><init>(Lcom/autochips/bluetooth/fragment/FragmentCallPhone;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 145
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getCallLogs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 146
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getCallLogs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/model/PhoneBookModel;

    .line 148
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 151
    :goto_0
    sput-object v0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->minputstr:Ljava/lang/String;

    .line 152
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->formatshownum()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 304
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->doClick(Landroid/view/View;)V

    .line 305
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 47
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerMainThreadObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 124
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 119
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onDestroyView()V

    return-void
.end method

.method public onEnter(C)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0}, Lcom/carocean/navicar/MMIKeyHelper;->getSelectedSector()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectSector(I)V

    :cond_0
    const/16 v0, 0x63

    if-ne v0, p1, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->onCall()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    if-ne v0, p1, :cond_2

    .line 254
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->deleteOneDialPadString()Z

    goto :goto_0

    .line 256
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->addDialPadInputString(Ljava/lang/CharSequence;)Z

    :goto_0
    return-void
.end method

.method public onEnter(Landroid/view/View;)V
    .locals 1

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0800f0

    if-ne p1, v0, :cond_2

    .line 206
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mDialpadLayout:Lcom/autochips/bluetooth/view/DialpadLayout;

    if-eqz p1, :cond_2

    .line 207
    invoke-virtual {p1}, Lcom/autochips/bluetooth/view/DialpadLayout;->getCurChar()C

    move-result p1

    const/16 v0, 0x63

    if-ne v0, p1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->onCall()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-ne v0, p1, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->deleteOneDialPadString()Z

    goto :goto_0

    .line 213
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->addDialPadInputString(Ljava/lang/CharSequence;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onFocused(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onMenuUpEnd()V
    .locals 0

    return-void
.end method

.method public onSelectChanged(Landroid/view/View;Z)V
    .locals 0

    .line 193
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mDialpadLayout:Lcom/autochips/bluetooth/view/DialpadLayout;

    if-eqz p1, :cond_1

    .line 194
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p1}, Lcom/carocean/navicar/MMIKeyHelper;->getSelectedSector()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 195
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mDialpadLayout:Lcom/autochips/bluetooth/view/DialpadLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/view/DialpadLayout;->showPoint(Z)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mDialpadLayout:Lcom/autochips/bluetooth/view/DialpadLayout;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/view/DialpadLayout;->showPoint(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTurnning(Landroid/view/View;Z)V
    .locals 1

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0800f0

    if-ne p1, v0, :cond_1

    .line 235
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->mDialpadLayout:Lcom/autochips/bluetooth/view/DialpadLayout;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 237
    invoke-virtual {p1}, Lcom/autochips/bluetooth/view/DialpadLayout;->pointForward()V

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p1}, Lcom/autochips/bluetooth/view/DialpadLayout;->pointBackward()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateID8Theme(I)V
    .locals 1

    .line 359
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 362
    :cond_0
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/FragmentCallPhone;->updateID8DialBtnBg(I)V

    return-void
.end method
