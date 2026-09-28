.class public Lcom/autochips/bluetooth/fragment/NaviCallDialog;
.super Ljava/lang/Object;
.source "NaviCallDialog.java"

# interfaces
.implements Lcom/carlos/eventlibrary/IEventReceiver;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/autochips/bluetooth/event/IBTObserver;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/fragment/NaviCallDialog$autoAnswerTimeoutThread;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CLOSE_DIALOG:I = 0x1

.field private static TAG:Ljava/lang/String; = "NaviCallDialog"

.field public static isShowing:Z = false


# instance fields
.field private dialogView:Lcom/autochips/bluetooth/view/CustomFrameLayout;

.field private isMute:Z

.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMMIKeyCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

.field private mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

.field private mNumberView:[Landroid/widget/Button;

.field private m_Callinimg:Landroid/widget/ProgressBar;

.field private m_Calloutimg:Landroid/widget/ProgressBar;

.field private m_answer_Btn:Landroid/view/View;

.field private m_answer_wait_Btn:Landroid/view/View;

.field private m_bIsSoftkeyPadVisible:Z

.field private m_callstatus_TV:Landroid/widget/TextView;

.field private m_hungup_Btn:Landroid/view/View;

.field private m_hungup_wait_Btn:Landroid/view/View;

.field private m_micmute_cb:Landroid/widget/CheckBox;

.field private m_phoneName_Tv:Landroid/widget/TextView;

.field private m_phoneNumberArea_Tv:Landroid/widget/TextView;

.field private m_phoneNumber_Tv:Landroid/widget/TextView;

.field private m_phoneNumber_wait_Tv:Landroid/widget/TextView;

.field private m_phonetimer:Landroid/widget/Chronometer;

.field private m_showpad_Btn:Landroid/view/View;

.field private m_subcallNumber_Et:Landroid/widget/EditText;

.field private m_subcallNumstr_Edt:Landroid/text/Editable;

.field private m_switch_cb:Landroid/widget/CheckBox;

.field private m_thrdAutoAnswerTimeout:Lcom/autochips/bluetooth/fragment/NaviCallDialog$autoAnswerTimeoutThread;

.field private phonetimerInited:Z

.field private volume_flag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mContext:Landroid/content/Context;

    .line 69
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_bIsSoftkeyPadVisible:Z

    .line 72
    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_thrdAutoAnswerTimeout:Lcom/autochips/bluetooth/fragment/NaviCallDialog$autoAnswerTimeoutThread;

    const/16 v0, 0xc

    new-array v0, v0, [Landroid/widget/Button;

    .line 73
    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    .line 76
    iput-boolean v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->phonetimerInited:Z

    .line 469
    iput-boolean v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->volume_flag:Z

    .line 484
    iput-boolean v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->isMute:Z

    .line 656
    new-instance v0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog$3;-><init>(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    .line 79
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mContext:Landroid/content/Context;

    .line 80
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)Lcom/carocean/navicar/MMIKeyHelper;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)Lcom/autochips/bluetooth/view/CustomFrameLayout;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->dialogView:Lcom/autochips/bluetooth/view/CustomFrameLayout;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/fragment/NaviCallDialog;I)Landroid/view/View;
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_bIsSoftkeyPadVisible:Z

    return p0
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/fragment/NaviCallDialog;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->phoneCallShowSoftkeyPad(Z)V

    return-void
.end method

.method private delelteOneCallingPadString()Z
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_subcallNumber_Et:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 452
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_subcallNumber_Et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    add-int/lit8 v3, v0, -0x1

    .line 455
    invoke-interface {v1, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 459
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_subcallNumber_Et:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_subcallNumber_Et:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized dismiss()V
    .locals 4

    monitor-enter p0

    const-wide/16 v0, 0xc8

    .line 236
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 238
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->phonetimerInited:Z

    .line 242
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->dialogView:Lcom/autochips/bluetooth/view/CustomFrameLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/autochips/bluetooth/view/CustomFrameLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 244
    sget-object v2, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->TAG:Ljava/lang/String;

    const-string v3, "phoneCallDialog dismiss removeView"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->dialogView:Lcom/autochips/bluetooth/view/CustomFrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 247
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->updatePhoneNumberDisplay()V

    .line 248
    sput-boolean v0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->isShowing:Z

    .line 249
    sget-object v1, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->TAG:Ljava/lang/String;

    const-string v2, "phoneCallDialog dismiss removeView success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {v1}, Lcom/carocean/navicar/MMIKeyHelper;->clear()V

    .line 255
    :cond_1
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->phoneCallShowSoftkeyPad(Z)V

    .line 257
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/carlos/eventlibrary/EventMailer;->unregisterReceiver(Lcom/carlos/eventlibrary/IEventReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->dialogView:Lcom/autochips/bluetooth/view/CustomFrameLayout;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 397
    :cond_0
    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/view/CustomFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private initMMIKeyHandler(Landroid/os/Bundle;)V
    .locals 6

    .line 642
    new-instance p1, Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/carocean/navicar/MMIKeyHelper;-><init>(I)V

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v0, 0x1

    .line 643
    invoke-virtual {p1, v0}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectMode(I)V

    .line 644
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyCallback:Lcom/carocean/navicar/MMIKeyHelper$Callback;

    invoke-virtual {p1, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setCustomCallback(Lcom/carocean/navicar/MMIKeyHelper$Callback;)V

    .line 646
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const v1, 0x7f0800b1

    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 648
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const v1, 0x7f0800a0

    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v3}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 649
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const v1, 0x7f08007b

    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v3}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 650
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const v1, 0x7f080097

    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v3}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 651
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    array-length v1, p1

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 652
    iget-object v5, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v5, v4, v2, v0}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->dialogView:Lcom/autochips/bluetooth/view/CustomFrameLayout;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b002b

    const/4 v1, 0x0

    .line 87
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/view/CustomFrameLayout;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->dialogView:Lcom/autochips/bluetooth/view/CustomFrameLayout;

    .line 88
    new-instance v0, Lcom/autochips/bluetooth/fragment/NaviCallDialog$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog$1;-><init>(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)V

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/view/CustomFrameLayout;->setDispatchKeyEventListener(Lcom/autochips/bluetooth/view/CustomFrameLayout$dispatchKeyEventListener;)V

    .line 98
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7da

    .line 99
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 100
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x20

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 101
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x30

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 102
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 103
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mContext:Landroid/content/Context;

    const-string v2, "window"

    .line 104
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 105
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 107
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 108
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 109
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const p1, 0x7f0801aa

    .line 111
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_showpad_Btn:Landroid/view/View;

    const v2, 0x7f080199

    .line 112
    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Chronometer;

    iput-object v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_phonetimer:Landroid/widget/Chronometer;

    const v2, 0x7f08019b

    .line 113
    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_Calloutimg:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    .line 114
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const v2, 0x7f080195

    .line 115
    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_Callinimg:Landroid/widget/ProgressBar;

    .line 116
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const v2, 0x7f08019c

    .line 117
    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_answer_Btn:Landroid/view/View;

    const v2, 0x7f0801a9

    .line 118
    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_hungup_Btn:Landroid/view/View;

    const v4, 0x7f080196

    .line 119
    invoke-direct {p0, v4}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_phoneNumberArea_Tv:Landroid/widget/TextView;

    const v4, 0x7f080198

    .line 120
    invoke-direct {p0, v4}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_phoneNumber_Tv:Landroid/widget/TextView;

    const v4, 0x7f080197

    .line 121
    invoke-direct {p0, v4}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_phoneName_Tv:Landroid/widget/TextView;

    const v4, 0x7f0801ab

    .line 122
    invoke-direct {p0, v4}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_subcallNumber_Et:Landroid/widget/EditText;

    const v4, 0x7f08019a

    .line 123
    invoke-direct {p0, v4}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_callstatus_TV:Landroid/widget/TextView;

    .line 124
    iget-object v4, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_subcallNumber_Et:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 125
    iget-object v4, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_subcallNumber_Et:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0801ae

    .line 127
    invoke-direct {p0, v4}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_switch_cb:Landroid/widget/CheckBox;

    const v4, 0x7f0801ad

    .line 128
    invoke-direct {p0, v4}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_micmute_cb:Landroid/widget/CheckBox;

    .line 129
    iget-object v4, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_switch_cb:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v4, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_micmute_cb:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v4, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_answer_Btn:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801a8

    .line 135
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    const v4, 0x7f0801a2

    invoke-direct {p0, v4}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    aput-object v4, v2, v3

    .line 137
    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    aget-object v2, v2, v3

    const-string v4, "1"

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    const v4, 0x7f0801a7

    invoke-direct {p0, v4}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    aput-object v4, v2, v0

    .line 139
    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    aget-object v0, v2, v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    const v2, 0x7f0801a6

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 141
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    aget-object v0, v0, v4

    const-string v2, "3"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    const v2, 0x7f08019d

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/4 v4, 0x3

    aput-object v2, v0, v4

    .line 143
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    aget-object v0, v0, v4

    const-string v2, "*"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    const v2, 0x7f0801a0

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/4 v4, 0x4

    aput-object v2, v0, v4

    .line 145
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    aget-object v0, v0, v4

    const-string v2, "4"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    const v2, 0x7f08019f

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/4 v4, 0x5

    aput-object v2, v0, v4

    .line 147
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    aget-object v0, v0, v4

    const-string v2, "5"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    const v2, 0x7f0801a5

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const/4 v4, 0x6

    aput-object v2, v0, v4

    .line 149
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    aget-object v0, v0, v4

    const-string v2, "6"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/4 v2, 0x7

    aput-object p1, v0, v2

    .line 151
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    aget-object p1, p1, v2

    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    const v0, 0x7f0801a4

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v2, 0x8

    aput-object v0, p1, v2

    .line 153
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    aget-object p1, p1, v2

    const-string v0, "7"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    const v0, 0x7f08019e

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v2, 0x9

    aput-object v0, p1, v2

    .line 155
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    aget-object p1, p1, v2

    const-string v0, "8"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    const v0, 0x7f0801a1

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v2, 0xa

    aput-object v0, p1, v2

    .line 157
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    aget-object p1, p1, v2

    const-string v0, "9"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    const v0, 0x7f0801a3

    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v2, 0xb

    aput-object v0, p1, v2

    .line 159
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    aget-object p1, p1, v2

    const-string v0, "#"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mNumberView:[Landroid/widget/Button;

    array-length v0, p1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v2, p1, v3

    .line 161
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const p1, 0x7f080098

    .line 164
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_hungup_wait_Btn:Landroid/view/View;

    const p1, 0x7f08007c

    .line 165
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_answer_wait_Btn:Landroid/view/View;

    const p1, 0x7f080075

    .line 166
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_phoneNumber_wait_Tv:Landroid/widget/TextView;

    .line 167
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_hungup_wait_Btn:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_answer_wait_Btn:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->updateuiforcallstate()V

    .line 171
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->initMMIKeyHandler(Landroid/os/Bundle;)V

    return-void
.end method

.method private phoneCallShowSoftkeyPad(Z)V
    .locals 2

    const v0, 0x7f0801ac

    .line 413
    invoke-direct {p0, v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x1

    .line 417
    iput-boolean p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_bIsSoftkeyPadVisible:Z

    .line 418
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    if-eqz v0, :cond_3

    .line 419
    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectSector(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/16 p1, 0x8

    .line 422
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 423
    :cond_2
    iput-boolean v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_bIsSoftkeyPadVisible:Z

    .line 424
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    if-eqz p1, :cond_3

    .line 425
    invoke-virtual {p1, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectSector(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private phoneDTMFCode(Ljava/lang/String;)V
    .locals 1

    .line 636
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/info/BTCallManager;->sendDTMF(Ljava/lang/String;)V

    return-void
.end method

.method private stopAutoAnswerTimeoutThread()V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_thrdAutoAnswerTimeout:Lcom/autochips/bluetooth/fragment/NaviCallDialog$autoAnswerTimeoutThread;

    if-eqz v0, :cond_0

    .line 404
    :try_start_0
    invoke-virtual {v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog$autoAnswerTimeoutThread;->shutdown()V

    .line 405
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_thrdAutoAnswerTimeout:Lcom/autochips/bluetooth/fragment/NaviCallDialog$autoAnswerTimeoutThread;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog$autoAnswerTimeoutThread;->join()V

    const/4 v0, 0x0

    .line 406
    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_thrdAutoAnswerTimeout:Lcom/autochips/bluetooth/fragment/NaviCallDialog$autoAnswerTimeoutThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private switchCarAndphone()V
    .locals 4

    .line 472
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getSCOConnectState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 473
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->disConnectSCOAudio()V

    .line 474
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mContext:Landroid/content/Context;

    const-string v3, "\u624b\u673a\u7aef"

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 475
    iput-boolean v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->volume_flag:Z

    goto :goto_0

    .line 476
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getSCOConnectState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 477
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->connectSCOAudio()V

    .line 478
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mContext:Landroid/content/Context;

    const-string v3, "\u8f66\u673a\u7aef"

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 479
    iput-boolean v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->volume_flag:Z

    .line 481
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_switch_cb:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->volume_flag:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private switchMute()V
    .locals 2

    .line 486
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getMicMuteState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 487
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->unMuteMic()V

    const/4 v0, 0x0

    .line 488
    iput-boolean v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->isMute:Z

    goto :goto_0

    .line 490
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->muteMic()V

    .line 491
    iput-boolean v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->isMute:Z

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_micmute_cb:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->isMute:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private unDisplayViewSize(Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 176
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 178
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 180
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    aput v2, v0, v1

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object v0
.end method

.method private updatePhoneNumberDisplay()V
    .locals 6

    .line 363
    sget-object v0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->TAG:Ljava/lang/String;

    const-string v1, "updatePhoneNumberDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 372
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 375
    :cond_2
    invoke-static {v1}, Lcom/autochips/bluetooth/util/FormatTelNumber;->ui_format_tel_number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getName()Ljava/lang/String;

    move-result-object v0

    .line 377
    sget-object v3, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePhoneNumberDisplay name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",strPhoneNumber:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 381
    :cond_3
    iget-object v3, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_phoneName_Tv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 379
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_phoneName_Tv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    :goto_1
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_phoneNumber_Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/info/BTBaseManager;->GetTelZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 387
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_phoneNumberArea_Tv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 389
    :cond_5
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_phoneNumberArea_Tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private updateuiforcallstate()V
    .locals 6

    .line 323
    sget-object v0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->TAG:Ljava/lang/String;

    const-string v1, "updateuiforcallstate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-nez v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->dismiss()V

    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_switch_cb:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->volume_flag:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 331
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_micmute_cb:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->isMute:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 333
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v1

    const/4 v2, 0x4

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    .line 334
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_showpad_Btn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 335
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_answer_Btn:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 336
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_callstatus_TV:Landroid/widget/TextView;

    const v1, 0x7f0f0036

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 337
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_phonetimer:Landroid/widget/Chronometer;

    invoke-virtual {v0, v4}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 338
    iget-boolean v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->phonetimerInited:Z

    if-nez v0, :cond_3

    .line 339
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_phonetimer:Landroid/widget/Chronometer;

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_phonetimer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 341
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_phonetimer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 342
    iput-boolean v3, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->phonetimerInited:Z

    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v1

    const/4 v2, 0x2

    const/16 v5, 0x8

    if-ne v1, v2, :cond_2

    .line 346
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_answer_Btn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 347
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_answer_Btn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 348
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_showpad_Btn:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 349
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_callstatus_TV:Landroid/widget/TextView;

    const v1, 0x7f0f0039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 350
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_phonetimer:Landroid/widget/Chronometer;

    invoke-virtual {v0, v5}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 354
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_answer_Btn:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 355
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_showpad_Btn:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 356
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_callstatus_TV:Landroid/widget/TextView;

    const v1, 0x7f0f003d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 357
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_phonetimer:Landroid/widget/Chronometer;

    invoke-virtual {v0, v5}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 359
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->updatePhoneNumberDisplay()V

    return-void
.end method


# virtual methods
.method public MailBox(Lcom/carlos/eventlibrary/EventMail;)V
    .locals 2

    .line 274
    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getFlag()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/16 v1, 0x7d1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    sget-object p1, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->TAG:Ljava/lang/String;

    const-string v1, "receive Mail MAIL_CALL_TERMINATED or CLOSE_CALL_DIALOG"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-ge p1, v0, :cond_1

    .line 281
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->dismiss()V

    goto :goto_0

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->updateuiforcallstate()V

    goto :goto_0

    .line 276
    :cond_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public addSubPhoneCallInputString(Ljava/lang/CharSequence;)Z
    .locals 3

    .line 430
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_subcallNumber_Et:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 433
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 434
    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_subcallNumber_Et:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    iput-object v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_subcallNumstr_Edt:Landroid/text/Editable;

    if-nez v2, :cond_1

    return v1

    :cond_1
    if-ltz v0, :cond_3

    .line 439
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    goto :goto_0

    .line 442
    :cond_2
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_subcallNumstr_Edt:Landroid/text/Editable;

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 440
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_subcallNumstr_Edt:Landroid/text/Editable;

    invoke-interface {v1, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 444
    :goto_1
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_subcallNumber_Et:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_subcallNumstr_Edt:Landroid/text/Editable;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_subcallNumber_Et:Landroid/widget/EditText;

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return v1
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 0

    const/16 p2, 0xbbb

    if-eq p1, p2, :cond_0

    const/16 p2, 0xbbc

    if-eq p1, p2, :cond_0

    const/16 p2, 0x1389

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->updateuiforcallstate()V

    :goto_0
    return-void
.end method

.method public moveWindowToTop()V
    .locals 2

    .line 213
    sget-object v0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->TAG:Ljava/lang/String;

    const-string v1, "refreshWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/autochips/bluetooth/fragment/NaviCallDialog$2;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog$2;-><init>(Lcom/autochips/bluetooth/fragment/NaviCallDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 501
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 518
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, p1, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    goto :goto_0

    .line 506
    :sswitch_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const v2, 0x7f0800b1

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    goto :goto_0

    .line 503
    :sswitch_1
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const v2, 0x7f0800af

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    goto :goto_0

    .line 515
    :sswitch_2
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const v2, 0x7f0800a0

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    goto :goto_0

    .line 509
    :sswitch_3
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const v2, 0x7f080097

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    goto :goto_0

    .line 512
    :sswitch_4
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const v2, 0x7f08007b

    invoke-direct {p0, v2}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    .line 523
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 626
    :pswitch_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->delelteOneCallingPadString()Z

    goto/16 :goto_2

    .line 535
    :pswitch_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->switchCarAndphone()V

    goto/16 :goto_2

    .line 532
    :pswitch_3
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->switchMute()V

    goto/16 :goto_2

    .line 550
    :pswitch_4
    iget-boolean p1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->m_bIsSoftkeyPadVisible:Z

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->phoneCallShowSoftkeyPad(Z)V

    goto/16 :goto_2

    .line 538
    :pswitch_5
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->endCall()V

    .line 539
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    if-nez p1, :cond_0

    .line 540
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->dismiss()V

    goto/16 :goto_2

    :pswitch_6
    const-string p1, "0"

    .line 555
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->addSubPhoneCallInputString(Ljava/lang/CharSequence;)Z

    const/16 v1, 0x30

    goto :goto_1

    :pswitch_7
    const-string p1, "2"

    .line 567
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->addSubPhoneCallInputString(Ljava/lang/CharSequence;)Z

    const/16 v1, 0x32

    goto :goto_1

    :pswitch_8
    const-string p1, "3"

    .line 573
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->addSubPhoneCallInputString(Ljava/lang/CharSequence;)Z

    const/16 v1, 0x33

    goto :goto_1

    :pswitch_9
    const-string p1, "6"

    .line 591
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->addSubPhoneCallInputString(Ljava/lang/CharSequence;)Z

    const/16 v1, 0x36

    goto :goto_1

    :pswitch_a
    const-string p1, "7"

    .line 597
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->addSubPhoneCallInputString(Ljava/lang/CharSequence;)Z

    const/16 v1, 0x37

    goto :goto_1

    :pswitch_b
    const-string p1, "#"

    .line 621
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->addSubPhoneCallInputString(Ljava/lang/CharSequence;)Z

    const/16 v1, 0x23

    goto :goto_1

    :pswitch_c
    const-string p1, "1"

    .line 561
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->addSubPhoneCallInputString(Ljava/lang/CharSequence;)Z

    const/16 v1, 0x31

    goto :goto_1

    :pswitch_d
    const-string p1, "9"

    .line 609
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->addSubPhoneCallInputString(Ljava/lang/CharSequence;)Z

    const/16 v1, 0x39

    goto :goto_1

    :pswitch_e
    const-string p1, "4"

    .line 579
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->addSubPhoneCallInputString(Ljava/lang/CharSequence;)Z

    const/16 v1, 0x34

    goto :goto_1

    :pswitch_f
    const-string p1, "5"

    .line 585
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->addSubPhoneCallInputString(Ljava/lang/CharSequence;)Z

    const/16 v1, 0x35

    goto :goto_1

    :pswitch_10
    const-string p1, "8"

    .line 603
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->addSubPhoneCallInputString(Ljava/lang/CharSequence;)Z

    const/16 v1, 0x38

    goto :goto_1

    :pswitch_11
    const-string p1, "*"

    .line 615
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->addSubPhoneCallInputString(Ljava/lang/CharSequence;)Z

    const/16 v1, 0x2a

    :goto_1
    move p1, v1

    move v1, v0

    goto :goto_3

    .line 545
    :pswitch_12
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->acceptCall()V

    .line 546
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->stopAutoAnswerTimeoutThread()V

    :cond_0
    :goto_2
    move p1, v1

    :goto_3
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 631
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->phoneDTMFCode(Ljava/lang/String;)V

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f08019c -> :sswitch_4
        0x7f0801a9 -> :sswitch_3
        0x7f0801aa -> :sswitch_2
        0x7f0801ad -> :sswitch_1
        0x7f0801ae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f08019c
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized showView()V
    .locals 3

    monitor-enter p0

    .line 191
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->isShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 192
    monitor-exit p0

    return-void

    .line 195
    :cond_0
    :try_start_1
    sget-object v0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->updateuiforcallstate()V

    .line 197
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerMainThreadObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 198
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->dialogView:Lcom/autochips/bluetooth/view/CustomFrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/autochips/bluetooth/view/CustomFrameLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 200
    sget-object v1, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->TAG:Ljava/lang/String;

    const-string v2, "NaviCallDialog show addView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->dialogView:Lcom/autochips/bluetooth/view/CustomFrameLayout;

    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 203
    sput-boolean v0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->isShowing:Z

    .line 204
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/carlos/eventlibrary/EventMailer;->register(Lcom/carlos/eventlibrary/IEventReceiver;)V

    .line 205
    sget-object v0, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->TAG:Ljava/lang/String;

    const-string v1, "NaviCallDialog show addView success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
