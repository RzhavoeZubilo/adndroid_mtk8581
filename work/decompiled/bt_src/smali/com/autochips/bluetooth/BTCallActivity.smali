.class public Lcom/autochips/bluetooth/BTCallActivity;
.super Landroid/app/Activity;
.source "BTCallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/autochips/bluetooth/view/DialpadCallingLayout$Callback;
.implements Lcom/carlos/eventlibrary/IEventReceiver;
.implements Lcom/autochips/bluetooth/event/IBTObserver;
.implements Lcom/carocean/navicar/BmwID8ThemeChanged;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/BTCallActivity$UIHandler;
    }
.end annotation


# static fields
.field private static final MSG_ID_UPDATE_AUDIO_CHANNEL_VIEW:I = 0x2711

.field private static final MSG_START:I = 0x2710

.field private static final MSG_THEME_CHANGE:I = 0x2712

.field private static final TAG:Ljava/lang/String; = "BTCallActivity"

.field private static final URI_THEME:Ljava/lang/String; = "content://com.carocean.status.provider/sys/SYS_THEME"


# instance fields
.field private audioChanelflashing:Z

.field private audioChannelImg:Landroid/widget/ImageView;

.field private bt_call_rootview:Landroid/view/View;

.field private btn_answer_select:Landroid/view/View;

.field private btn_hangup_select:Landroid/view/View;

.field private btn_softkeypad_select:Landroid/view/View;

.field private btn_volume_select:Landroid/view/View;

.field private cb_switchvoice_select:Landroid/view/View;

.field private final contentObserver:Landroid/database/ContentObserver;

.field private isMute:Z

.field private keypad:Landroid/view/View;

.field private mInputTextView:Landroid/widget/TextView;

.field private mMMIKeyCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

.field private mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

.field private mNumberView:[Landroid/view/View;

.field private mVolumeBar:Lcom/autochips/bluetooth/fragment/VolumeBar;

.field private m_Callinimg:Landroid/widget/ProgressBar;

.field private m_Calloutimg:Landroid/widget/ProgressBar;

.field private m_answer_Btn:Landroid/view/View;

.field private m_answer_wait_Btn:Landroid/view/View;

.field private m_bIsSoftkeyPadVisible:Z

.field private m_callstatus_TV:Landroid/widget/TextView;

.field private m_hungup_Btn:Landroid/view/View;

.field private m_hungup_wait_Btn:Landroid/view/View;

.field private m_micmute_cb:Landroid/widget/CheckBox;

.field private m_phoneCallStateAnimation:Landroid/view/View;

.field private m_phoneName_Tv:Landroid/widget/TextView;

.field private m_phoneNumberArea_Tv:Landroid/widget/TextView;

.field private m_phoneNumber_Tv:Landroid/widget/TextView;

.field private m_phoneNumber_wait_Tv:Landroid/widget/TextView;

.field private m_phonetimer:Landroid/widget/Chronometer;

.field private m_showpad_Btn:Landroid/view/View;

.field private m_subcallNumber_Et:Landroid/widget/EditText;

.field private m_subcallNumstr_Edt:Landroid/text/Editable;

.field private m_switch_cb:Landroid/widget/CheckBox;

.field private m_voluume_Btn:Landroid/view/View;

.field private phonetimerInited:Z

.field private softkeyPadLayout:Lcom/autochips/bluetooth/view/DialpadCallingLayout;

.field private uiHandler:Lcom/autochips/bluetooth/BTCallActivity$UIHandler;

.field private volume_flag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->phonetimerInited:Z

    const/16 v1, 0xf

    new-array v1, v1, [Landroid/view/View;

    .line 84
    iput-object v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    .line 87
    iput-boolean v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->audioChanelflashing:Z

    .line 89
    iput-boolean v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_bIsSoftkeyPadVisible:Z

    .line 512
    new-instance v1, Lcom/autochips/bluetooth/BTCallActivity$1;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/BTCallActivity$1;-><init>(Lcom/autochips/bluetooth/BTCallActivity;)V

    iput-object v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    .line 748
    iput-boolean v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->isMute:Z

    .line 761
    iput-boolean v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->volume_flag:Z

    .line 929
    new-instance v0, Lcom/autochips/bluetooth/BTCallActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/autochips/bluetooth/BTCallActivity$2;-><init>(Lcom/autochips/bluetooth/BTCallActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->contentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/BTCallActivity;)Lcom/autochips/bluetooth/view/DialpadCallingLayout;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/autochips/bluetooth/BTCallActivity;->softkeyPadLayout:Lcom/autochips/bluetooth/view/DialpadCallingLayout;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/autochips/bluetooth/BTCallActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/BTCallActivity;C)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->intputChar(C)V

    return-void
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/BTCallActivity;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->phoneDTMFCode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/BTCallActivity;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_bIsSoftkeyPadVisible:Z

    return p0
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/BTCallActivity;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->phoneCallShowSoftkeyPad(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/BTCallActivity;)Lcom/carocean/navicar/MMIKeyHelper;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    return-object p0
.end method

.method static synthetic access$700(Lcom/autochips/bluetooth/BTCallActivity;)Lcom/autochips/bluetooth/BTCallActivity$UIHandler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/autochips/bluetooth/BTCallActivity;->uiHandler:Lcom/autochips/bluetooth/BTCallActivity$UIHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/autochips/bluetooth/BTCallActivity;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/autochips/bluetooth/BTCallActivity;->updateAudioChannelVisible()V

    return-void
.end method

.method private delelteOneCallingPadString()Z
    .locals 4

    .line 335
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_subcallNumber_Et:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 337
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 338
    iget-object v2, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_subcallNumber_Et:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const/4 v3, 0x1

    if-lt v0, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 341
    invoke-interface {v2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 345
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_subcallNumber_Et:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_subcallNumber_Et:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return v3

    :cond_1
    return v1
.end method

.method private endCallView()V
    .locals 3

    .line 643
    sget-object v0, Lcom/autochips/bluetooth/BTCallActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endCallView callList.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 645
    iput-boolean v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->phonetimerInited:Z

    .line 646
    invoke-virtual {p0}, Lcom/autochips/bluetooth/BTCallActivity;->finish()V

    goto :goto_0

    .line 648
    :cond_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/BTCallActivity;->updateuiforcallstate()V

    :goto_0
    return-void
.end method

.method private initMMIKeyHandler()V
    .locals 5

    .line 486
    new-instance v0, Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;-><init>(I)V

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    .line 488
    iget-object v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setCustomCallback(Lcom/carocean/navicar/MMIKeyHelper$Callback;)V

    .line 490
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->cb_switchvoice_select:Landroid/view/View;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 492
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->btn_softkeypad_select:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 493
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->btn_answer_select:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 494
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->btn_hangup_select:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 495
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->btn_volume_select:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 496
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 497
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 498
    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 499
    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v4, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v1, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectLoop(IZ)V

    goto :goto_1

    .line 505
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->softkeyPadLayout:Lcom/autochips/bluetooth/view/DialpadCallingLayout;

    if-eqz v0, :cond_3

    .line 506
    iget-object v3, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v3, v0, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 509
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const v1, 0x7f0800a0

    invoke-virtual {p0, v1}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 112
    new-instance v0, Lcom/autochips/bluetooth/BTCallActivity$UIHandler;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/BTCallActivity$UIHandler;-><init>(Lcom/autochips/bluetooth/BTCallActivity;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->uiHandler:Lcom/autochips/bluetooth/BTCallActivity$UIHandler;

    const v0, 0x7f080064

    .line 113
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->bt_call_rootview:Landroid/view/View;

    const v0, 0x7f08006e

    .line 114
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phoneCallStateAnimation:Landroid/view/View;

    const v0, 0x7f08009f

    .line 116
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_showpad_Btn:Landroid/view/View;

    const v0, 0x7f08006b

    .line 117
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phonetimer:Landroid/widget/Chronometer;

    const v0, 0x7f08006d

    .line 118
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_Calloutimg:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_0
    const v0, 0x7f080065

    .line 122
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_Callinimg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_1
    const v0, 0x7f08007a

    .line 127
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_answer_Btn:Landroid/view/View;

    const v0, 0x7f080096

    .line 128
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_hungup_Btn:Landroid/view/View;

    const v0, 0x7f0800a1

    .line 129
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_voluume_Btn:Landroid/view/View;

    const v0, 0x7f080067

    .line 132
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phoneNumberArea_Tv:Landroid/widget/TextView;

    const v0, 0x7f08006a

    .line 133
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phoneNumber_Tv:Landroid/widget/TextView;

    const v0, 0x7f080068

    .line 134
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phoneName_Tv:Landroid/widget/TextView;

    const v0, 0x7f0800a8

    .line 135
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_subcallNumber_Et:Landroid/widget/EditText;

    const v0, 0x7f08006c

    .line 136
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_callstatus_TV:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_subcallNumber_Et:Landroid/widget/EditText;

    const-string v2, ""

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 140
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_subcallNumber_Et:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v0, 0x7f0800ae

    .line 142
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_micmute_cb:Landroid/widget/CheckBox;

    const v0, 0x7f0800b0

    .line 143
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_switch_cb:Landroid/widget/CheckBox;

    .line 144
    invoke-virtual {p0}, Lcom/autochips/bluetooth/BTCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 145
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    const/high16 v3, 0xc000000

    .line 146
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 148
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x500

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v3, -0x80000000

    .line 150
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 151
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_4

    const/high16 v3, 0x4000000

    .line 152
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    const/high16 v3, 0x8000000

    .line 153
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 155
    :cond_4
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    const/16 v3, 0x7d2

    .line 156
    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    .line 157
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_micmute_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_switch_cb:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_answer_Btn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_hungup_Btn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_showpad_Btn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_voluume_Btn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080098

    .line 163
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_hungup_wait_Btn:Landroid/view/View;

    const v0, 0x7f08007c

    .line 164
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_answer_wait_Btn:Landroid/view/View;

    const v0, 0x7f080075

    .line 165
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phoneNumber_wait_Tv:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_hungup_wait_Btn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_answer_wait_Btn:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080269

    .line 169
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mInputTextView:Landroid/widget/TextView;

    .line 170
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800a9

    .line 171
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/view/DialpadCallingLayout;

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->softkeyPadLayout:Lcom/autochips/bluetooth/view/DialpadCallingLayout;

    if-eqz v0, :cond_5

    .line 173
    invoke-virtual {v0, p0}, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->setCallback(Lcom/autochips/bluetooth/view/DialpadCallingLayout$Callback;)V

    :cond_5
    const v0, 0x7f08014f

    .line 175
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->keypad:Landroid/view/View;

    .line 176
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 177
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    const v2, 0x7f080084

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 178
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    const/4 v1, 0x1

    const v2, 0x7f080089

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 179
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    const/4 v1, 0x2

    const v2, 0x7f080088

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 180
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    const/4 v1, 0x3

    const v2, 0x7f080095

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 181
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    const/4 v1, 0x4

    const v2, 0x7f080081

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 182
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    const/4 v1, 0x5

    const v2, 0x7f080080

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 183
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    const/4 v1, 0x6

    const v2, 0x7f080087

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 184
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    const/4 v1, 0x7

    const v2, 0x7f080086

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 185
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    const/16 v1, 0x8

    const v2, 0x7f08007f

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 186
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    const/16 v1, 0x9

    const v2, 0x7f080083

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 187
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    const/16 v1, 0xa

    const v2, 0x7f08007e

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 188
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    const/16 v1, 0xb

    const v2, 0x7f08008a

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 189
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    const/16 v1, 0xc

    const v2, 0x7f080085

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 190
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    const/16 v1, 0xd

    const v2, 0x7f08007d

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    .line 191
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mNumberView:[Landroid/view/View;

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_6
    const v0, 0x7f080051

    .line 193
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->audioChannelImg:Landroid/widget/ImageView;

    .line 194
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->uiHandler:Lcom/autochips/bluetooth/BTCallActivity$UIHandler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/BTCallActivity$UIHandler;->sendEmptyMessage(I)Z

    const v0, 0x7f0800b1

    .line 195
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->cb_switchvoice_select:Landroid/view/View;

    const v0, 0x7f0800a0

    .line 196
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->btn_softkeypad_select:Landroid/view/View;

    const v0, 0x7f08007b

    .line 197
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->btn_answer_select:Landroid/view/View;

    const v0, 0x7f080097

    .line 198
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->btn_hangup_select:Landroid/view/View;

    const v0, 0x7f0800a2

    .line 199
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->btn_volume_select:Landroid/view/View;

    .line 201
    invoke-direct {p0}, Lcom/autochips/bluetooth/BTCallActivity;->initMMIKeyHandler()V

    .line 203
    invoke-direct {p0}, Lcom/autochips/bluetooth/BTCallActivity;->updateuiforcallstate()V

    return-void
.end method

.method private intputChar(C)V
    .locals 4

    .line 636
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mInputTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "%s%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private isBTConnected()Z
    .locals 2

    .line 741
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

.method private isBackCar()Z
    .locals 4

    .line 678
    invoke-virtual {p0}, Lcom/autochips/bluetooth/BTCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys"

    const-string v2, "SYS_REAR_CAMERA"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v3, v1

    .line 679
    :cond_0
    sget-object v0, Lcom/autochips/bluetooth/BTCallActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBackCar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private phoneCallShowSoftkeyPad(Z)V
    .locals 3

    const v0, 0x7f0800a7

    .line 310
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 312
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity;->softkeyPadLayout:Lcom/autochips/bluetooth/view/DialpadCallingLayout;

    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p1, v2}, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->setVisibility(I)V

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity;->keypad:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 316
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 p1, 0x1

    .line 319
    iput-boolean p1, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_bIsSoftkeyPadVisible:Z

    .line 320
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectSector(I)V

    goto :goto_0

    .line 322
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity;->softkeyPadLayout:Lcom/autochips/bluetooth/view/DialpadCallingLayout;

    if-eqz p1, :cond_3

    .line 323
    invoke-virtual {p1, v1}, Lcom/autochips/bluetooth/view/DialpadCallingLayout;->setVisibility(I)V

    .line 325
    :cond_3
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity;->keypad:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 326
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 329
    iput-boolean v2, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_bIsSoftkeyPadVisible:Z

    .line 330
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {p1, v2}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectSector(I)V

    :goto_0
    return-void
.end method

.method private phoneDTMFCode(Ljava/lang/String;)V
    .locals 1

    .line 745
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/info/BTCallManager;->sendDTMF(Ljava/lang/String;)V

    return-void
.end method

.method private switchCarAndphone()V
    .locals 3

    .line 765
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getSCOConnectState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 766
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->disConnectSCOAudio()V

    const/4 v0, 0x0

    .line 768
    iput-boolean v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->volume_flag:Z

    goto :goto_0

    .line 769
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getSCOConnectState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 770
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->connectSCOAudio()V

    .line 772
    iput-boolean v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->volume_flag:Z

    .line 774
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_switch_cb:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/autochips/bluetooth/BTCallActivity;->volume_flag:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private switchMute()V
    .locals 2

    .line 751
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getMicMuteState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 752
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->unMuteMic()V

    const/4 v0, 0x0

    .line 753
    iput-boolean v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->isMute:Z

    goto :goto_0

    .line 755
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->muteMic()V

    .line 756
    iput-boolean v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->isMute:Z

    .line 758
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_micmute_cb:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->isMute:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private updateAudioChannelVisible()V
    .locals 3

    .line 809
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->audioChannelImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 810
    iget-boolean v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->audioChanelflashing:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 811
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->audioChannelImg:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->audioChannelImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 817
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
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
    const p1, 0x7f070095

    goto :goto_0

    :cond_1
    const p1, 0x7f0700e4

    goto :goto_0

    :cond_2
    const p1, 0x7f0700d0

    .line 846
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->bt_call_rootview:Landroid/view/View;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 847
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    return-void
.end method

.method private updateID8LeftBtn(I)V
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
    const p1, 0x7f070096

    goto :goto_0

    :cond_1
    const p1, 0x7f0700e5

    goto :goto_0

    :cond_2
    const p1, 0x7f0700d1

    :goto_0
    if-eqz p1, :cond_b

    .line 867
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->cb_switchvoice_select:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 868
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 871
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_showpad_Btn:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 872
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 875
    :cond_4
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->btn_softkeypad_select:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 876
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 879
    :cond_5
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->btn_answer_select:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 880
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 883
    :cond_6
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_answer_Btn:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 884
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 887
    :cond_7
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->btn_hangup_select:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 888
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 891
    :cond_8
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_hungup_Btn:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 892
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 895
    :cond_9
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->btn_volume_select:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 896
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 899
    :cond_a
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_voluume_Btn:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 900
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_b
    return-void
.end method

.method private updateID8TextColor(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x7f050021

    goto :goto_0

    :cond_1
    const p1, 0x7f050025

    goto :goto_0

    :cond_2
    const p1, 0x7f050023

    .line 919
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_callstatus_TV:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 920
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 923
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phonetimer:Landroid/widget/Chronometer;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 924
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Chronometer;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    return-void
.end method

.method private updatePhoneNumberDisplay()V
    .locals 5

    .line 278
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 282
    :cond_0
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 285
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 288
    :cond_2
    invoke-static {v1}, Lcom/autochips/bluetooth/util/FormatTelNumber;->ui_format_tel_number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getName()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 294
    :cond_3
    iget-object v3, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phoneName_Tv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 291
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phoneName_Tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/autochips/bluetooth/BTCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :goto_1
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phoneNumber_Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/info/BTBaseManager;->GetTelZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phoneNumberArea_Tv:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 300
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 301
    iget-object v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phoneNumberArea_Tv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 303
    :cond_5
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phoneNumberArea_Tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/autochips/bluetooth/BTCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private updateuiforcallstate()V
    .locals 6

    .line 207
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/autochips/bluetooth/BTCallActivity;->finish()V

    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_switch_cb:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/autochips/bluetooth/BTCallActivity;->volume_flag:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 214
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTCallManager;->getSCOConnectState()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    xor-int/lit8 v4, v1, 0x1

    .line 215
    iput-boolean v4, p0, Lcom/autochips/bluetooth/BTCallActivity;->audioChanelflashing:Z

    .line 216
    iget-object v4, p0, Lcom/autochips/bluetooth/BTCallActivity;->audioChannelImg:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    const v1, 0x7f070091

    goto :goto_1

    :cond_2
    const v1, 0x7f070092

    .line 217
    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    :cond_3
    iget-object v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_micmute_cb:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/autochips/bluetooth/BTCallActivity;->isMute:Z

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 221
    sget-object v1, Lcom/autochips/bluetooth/BTCallActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initButtonView callState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v1

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-ne v1, v4, :cond_7

    .line 225
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_showpad_Btn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 226
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_answer_Btn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_callstatus_TV:Landroid/widget/TextView;

    const v1, 0x7f0f0036

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phonetimer:Landroid/widget/Chronometer;

    invoke-virtual {v0, v2}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_Calloutimg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    .line 230
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_Callinimg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    .line 233
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 235
    :cond_5
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phoneCallStateAnimation:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 236
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :cond_6
    iget-boolean v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->phonetimerInited:Z

    if-nez v0, :cond_d

    .line 239
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phonetimer:Landroid/widget/Chronometer;

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phonetimer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 241
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phonetimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 242
    iput-boolean v3, p0, Lcom/autochips/bluetooth/BTCallActivity;->phonetimerInited:Z

    goto :goto_2

    .line 244
    :cond_7
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_a

    .line 245
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_answer_Btn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_showpad_Btn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_callstatus_TV:Landroid/widget/TextView;

    const v1, 0x7f0f0039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phonetimer:Landroid/widget/Chronometer;

    invoke-virtual {v0, v5}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_Calloutimg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_8

    .line 250
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 252
    :cond_8
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_Callinimg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_9

    .line 253
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 255
    :cond_9
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phoneCallStateAnimation:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 256
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 258
    :cond_a
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 259
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_answer_Btn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 260
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_showpad_Btn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 261
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_callstatus_TV:Landroid/widget/TextView;

    const v1, 0x7f0f003d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phonetimer:Landroid/widget/Chronometer;

    invoke-virtual {v0, v5}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_Calloutimg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 264
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 266
    :cond_b
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_Callinimg:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_c

    .line 267
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 269
    :cond_c
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_phoneCallStateAnimation:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 270
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :cond_d
    :goto_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/BTCallActivity;->updatePhoneNumberDisplay()V

    return-void
.end method


# virtual methods
.method public MailBox(Lcom/carlos/eventlibrary/EventMail;)V
    .locals 3

    .line 793
    sget-object v0, Lcom/autochips/bluetooth/BTCallActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MailBox flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getFlag()I

    move-result p1

    const/16 v1, 0x7d1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 803
    :pswitch_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/BTCallActivity;->updateuiforcallstate()V

    goto :goto_0

    .line 797
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MailBox callList.size="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-direct {p0}, Lcom/autochips/bluetooth/BTCallActivity;->endCallView()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7d9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 477
    sget-object v0, Lcom/autochips/bluetooth/BTCallActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchKeyEvent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->handlerMMIKeys(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 481
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 0

    const/16 p2, 0xbb9

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1389

    if-eq p1, p2, :cond_0

    const/16 p2, 0xbbb

    if-eq p1, p2, :cond_1

    const/16 p2, 0xbbc

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 781
    :cond_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/BTCallActivity;->updatePhoneNumberDisplay()V

    goto :goto_0

    .line 786
    :cond_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/BTCallActivity;->updateuiforcallstate()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 373
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, p1, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    goto :goto_0

    .line 358
    :sswitch_0
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/autochips/bluetooth/BTCallActivity;->cb_switchvoice_select:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    goto :goto_0

    .line 355
    :sswitch_1
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const v2, 0x7f0800af

    invoke-virtual {p0, v2}, Lcom/autochips/bluetooth/BTCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    goto :goto_0

    .line 370
    :sswitch_2
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/autochips/bluetooth/BTCallActivity;->btn_volume_select:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    goto :goto_0

    .line 367
    :sswitch_3
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/autochips/bluetooth/BTCallActivity;->btn_hangup_select:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    goto :goto_0

    .line 361
    :sswitch_4
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/autochips/bluetooth/BTCallActivity;->btn_softkeypad_select:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    goto :goto_0

    .line 364
    :sswitch_5
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/autochips/bluetooth/BTCallActivity;->btn_answer_select:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    .line 378
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_0
    const/16 v1, 0x30

    goto :goto_1

    :pswitch_1
    const/16 v1, 0x32

    goto :goto_1

    :pswitch_2
    const/16 v1, 0x33

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x36

    goto :goto_1

    :pswitch_4
    const/16 v1, 0x37

    goto :goto_1

    :pswitch_5
    const/16 v1, 0x23

    goto :goto_1

    :pswitch_6
    const/16 v1, 0x31

    goto :goto_1

    :pswitch_7
    const/16 v1, 0x39

    goto :goto_1

    :pswitch_8
    const/16 v1, 0x34

    goto :goto_1

    :pswitch_9
    const/16 v1, 0x35

    goto :goto_1

    :pswitch_a
    const/16 v1, 0x38

    goto :goto_1

    :pswitch_b
    const/16 v1, 0x2a

    :goto_1
    move p1, v1

    move v1, v0

    goto :goto_3

    .line 383
    :sswitch_6
    invoke-direct {p0}, Lcom/autochips/bluetooth/BTCallActivity;->switchCarAndphone()V

    goto :goto_2

    .line 380
    :sswitch_7
    invoke-direct {p0}, Lcom/autochips/bluetooth/BTCallActivity;->switchMute()V

    goto :goto_2

    .line 400
    :sswitch_8
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity;->mVolumeBar:Lcom/autochips/bluetooth/fragment/VolumeBar;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/autochips/bluetooth/fragment/VolumeBar;->isAdded()Z

    move-result p1

    if-nez p1, :cond_1

    .line 401
    :cond_0
    new-instance p1, Lcom/autochips/bluetooth/fragment/VolumeBar;

    invoke-direct {p1}, Lcom/autochips/bluetooth/fragment/VolumeBar;-><init>()V

    iput-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity;->mVolumeBar:Lcom/autochips/bluetooth/fragment/VolumeBar;

    const/16 v0, 0xf0

    .line 402
    invoke-virtual {p1, v1, v0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->setPositionOffset(II)V

    .line 403
    iget-object p1, p0, Lcom/autochips/bluetooth/BTCallActivity;->mVolumeBar:Lcom/autochips/bluetooth/fragment/VolumeBar;

    invoke-virtual {p0}, Lcom/autochips/bluetooth/BTCallActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/autochips/bluetooth/fragment/VolumeBar;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    .line 397
    :sswitch_9
    iget-boolean p1, p0, Lcom/autochips/bluetooth/BTCallActivity;->m_bIsSoftkeyPadVisible:Z

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->phoneCallShowSoftkeyPad(Z)V

    goto :goto_2

    .line 386
    :sswitch_a
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->endCall()V

    .line 387
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    if-nez p1, :cond_1

    .line 388
    invoke-virtual {p0}, Lcom/autochips/bluetooth/BTCallActivity;->finish()V

    goto :goto_2

    .line 393
    :sswitch_b
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->acceptCall()V

    :cond_1
    :goto_2
    move p1, v1

    :goto_3
    if-eqz v1, :cond_2

    .line 467
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->intputChar(C)V

    .line 468
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->phoneDTMFCode(Ljava/lang/String;)V

    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f08007a -> :sswitch_5
        0x7f080096 -> :sswitch_4
        0x7f08009f -> :sswitch_3
        0x7f0800a1 -> :sswitch_2
        0x7f0800ae -> :sswitch_1
        0x7f0800b0 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7f08007a -> :sswitch_b
        0x7f080096 -> :sswitch_a
        0x7f08009f -> :sswitch_9
        0x7f0800a1 -> :sswitch_8
        0x7f0800ae -> :sswitch_7
        0x7f0800b0 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f08007e
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/carlos/eventlibrary/EventMailer;->register(Lcom/carlos/eventlibrary/IEventReceiver;)V

    .line 95
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0b0029

    .line 96
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->setContentView(I)V

    goto :goto_1

    .line 97
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f0b0028

    .line 100
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->setContentView(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const p1, 0x7f0b002a

    .line 98
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->setContentView(I)V

    .line 102
    :goto_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/BTCallActivity;->initView()V

    .line 103
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerMainThreadObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 104
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/autochips/bluetooth/BTCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.carocean.status.provider/sys"

    const-string v1, "SYS_THEME"

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 106
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->updateID8Theme(I)V

    .line 107
    invoke-virtual {p0}, Lcom/autochips/bluetooth/BTCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.carocean.status.provider/sys/SYS_THEME"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 729
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 730
    sget-object v0, Lcom/autochips/bluetooth/BTCallActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/carlos/eventlibrary/EventMailer;->unregisterReceiver(Lcom/carlos/eventlibrary/IEventReceiver;)V

    .line 732
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/autochips/bluetooth/BTCallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/BTCallActivity;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 734
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->uiHandler:Lcom/autochips/bluetooth/BTCallActivity$UIHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0x2711

    .line 735
    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/BTCallActivity$UIHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onEnter(C)V
    .locals 2

    .line 628
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0}, Lcom/carocean/navicar/MMIKeyHelper;->getSelectedSector()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 629
    iget-object v0, p0, Lcom/autochips/bluetooth/BTCallActivity;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectSector(I)V

    .line 631
    :cond_0
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->intputChar(C)V

    .line 632
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->phoneDTMFCode(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onPause()V
    .locals 4

    .line 707
    const-class v0, Lcom/autochips/bluetooth/BTCallActivity;

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 708
    sget-object v1, Lcom/autochips/bluetooth/BTCallActivity;->TAG:Ljava/lang/String;

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop1 isForeground="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/autochips/bluetooth/util/StaticUtil;->isForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/autochips/bluetooth/util/StaticUtil;->isForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 711
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 712
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 714
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/model/MyCall;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    :cond_0
    const-string v0, "onStop2"

    .line 715
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-static {}, Lcom/autochips/bluetooth/GlobalApplication;->getInstance()Lcom/autochips/bluetooth/GlobalApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/GlobalApplication;->extendUtil:Lcom/autochips/bluetooth/ExtendUtil;

    iget-object v0, v0, Lcom/autochips/bluetooth/ExtendUtil;->naviCallDialog:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->showView()V

    const-string v0, "onStop3"

    .line 717
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 659
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 660
    sget-object v0, Lcom/autochips/bluetooth/BTCallActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-direct {p0}, Lcom/autochips/bluetooth/BTCallActivity;->updateuiforcallstate()V

    .line 662
    sget-boolean v1, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->isShowing:Z

    if-eqz v1, :cond_0

    const-string v1, "onResume2"

    .line 663
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v1

    const-class v2, Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    .line 666
    :cond_0
    const-class v1, Lcom/autochips/bluetooth/BTCallActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/autochips/bluetooth/util/StaticUtil;->isForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "onResume3"

    .line 670
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "onResume4"

    .line 672
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-static {}, Lcom/autochips/bluetooth/GlobalApplication;->getInstance()Lcom/autochips/bluetooth/GlobalApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/GlobalApplication;->startCallActivity()V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 723
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 724
    sget-object v0, Lcom/autochips/bluetooth/BTCallActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 685
    const-class v0, Lcom/autochips/bluetooth/BTCallActivity;

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 686
    sget-object v1, Lcom/autochips/bluetooth/BTCallActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowFocusChanged hasFocus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowFocusChanged isForeground="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/autochips/bluetooth/util/StaticUtil;->isForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 689
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/autochips/bluetooth/util/StaticUtil;->isForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 690
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 691
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result p1

    if-eqz p1, :cond_2

    .line 692
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 693
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/model/MyCall;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    :cond_0
    const-string p1, "onWindowFocusChanged showView"

    .line 694
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {p0}, Lcom/autochips/bluetooth/BTCallActivity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/autochips/bluetooth/BTCallActivity;->isBackCar()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 696
    :cond_1
    invoke-static {}, Lcom/autochips/bluetooth/GlobalApplication;->getInstance()Lcom/autochips/bluetooth/GlobalApplication;

    move-result-object p1

    iget-object p1, p1, Lcom/autochips/bluetooth/GlobalApplication;->extendUtil:Lcom/autochips/bluetooth/ExtendUtil;

    iget-object p1, p1, Lcom/autochips/bluetooth/ExtendUtil;->naviCallDialog:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->showView()V

    goto :goto_0

    .line 699
    :cond_2
    sget-boolean p1, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->isShowing:Z

    if-eqz p1, :cond_3

    .line 700
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class v0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateID8Theme(I)V
    .locals 3

    .line 824
    sget-object v0, Lcom/autochips/bluetooth/BTCallActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateID8Theme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 828
    :cond_0
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->updateID8Background(I)V

    .line 829
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->updateID8LeftBtn(I)V

    .line 830
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/BTCallActivity;->updateID8TextColor(I)V

    return-void
.end method
