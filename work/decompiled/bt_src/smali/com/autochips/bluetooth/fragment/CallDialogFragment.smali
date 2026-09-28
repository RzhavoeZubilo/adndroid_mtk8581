.class public Lcom/autochips/bluetooth/fragment/CallDialogFragment;
.super Ljava/lang/Object;
.source "CallDialogFragment.java"

# interfaces
.implements Lcom/carlos/eventlibrary/IEventReceiver;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/autochips/bluetooth/event/IBTObserver;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CLOSE_DIALOG:I = 0x1

.field public static final MAIL_CALL_TERMINATED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "CallDialogFragment"

.field public static isShowing:Z = false


# instance fields
.field private answerButton:Landroid/view/View;

.field private audioButton:Landroid/widget/CheckBox;

.field private final context:Landroid/content/Context;

.field private dialogView:Landroid/view/View;

.field private endButton:Landroid/view/View;

.field private hangupButton:Landroid/view/View;

.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mHandler:Landroid/os/Handler;

.field private micButton:Landroid/widget/CheckBox;

.field private nameTextView:Landroid/widget/TextView;

.field private phoneNumberTextView:Landroid/widget/TextView;

.field private stateTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->context:Landroid/content/Context;

    .line 54
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/fragment/CallDialogFragment;)Landroid/view/View;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dialogView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/fragment/CallDialogFragment;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/fragment/CallDialogFragment;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method private declared-synchronized dismiss()V
    .locals 3

    monitor-enter p0

    const-wide/16 v0, 0xc8

    .line 210
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

    .line 212
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v0, "CallDialogFragment"

    .line 214
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dialogView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const-string v1, "CallDialogFragment"

    const-string v2, "phoneCallDialog dismiss removeView"

    .line 217
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dialogView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->nameTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->phoneNumberTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 222
    sput-boolean v0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->isShowing:Z

    const-string v0, "CallDialogFragment"

    const-string v1, "phoneCallDialog dismiss removeView success"

    .line 223
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/carlos/eventlibrary/EventMailer;->unregisterReceiver(Lcom/carlos/eventlibrary/IEventReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private initAudioState()V
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAudioState scoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTCallManager;->getSCOConnectState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallDialogFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->audioButton:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTCallManager;->getSCOConnectState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private initButtonView()V
    .locals 6

    .line 232
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->isBluetoothCall()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->audioButton:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->audioButton:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 240
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentCall.getState="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "CallDialogFragment"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/16 v5, 0x8

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "receive MyCall.STATE_ACTIVE"

    .line 243
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->answerButton:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->hangupButton:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->endButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->micButton:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->audioButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->answerButton:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->endButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->hangupButton:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 256
    :cond_4
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->answerButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->endButton:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->hangupButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private initMicButton()V
    .locals 2

    .line 303
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getMicMuteState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->micButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->micButton:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dialogView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b003b

    const/4 v1, 0x0

    .line 102
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dialogView:Landroid/view/View;

    .line 103
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7da

    .line 104
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 105
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x28

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 106
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x30

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 107
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dialogView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->unDisplayViewSize(Landroid/view/View;)[I

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    aget v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 109
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    aget p1, p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 110
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 111
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dialogView:Landroid/view/View;

    const v0, 0x7f08004d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->answerButton:Landroid/view/View;

    .line 112
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dialogView:Landroid/view/View;

    const v0, 0x7f080107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->endButton:Landroid/view/View;

    .line 113
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dialogView:Landroid/view/View;

    const v0, 0x7f080126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->hangupButton:Landroid/view/View;

    .line 114
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->endButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->answerButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dialogView:Landroid/view/View;

    const v0, 0x7f080078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dialogView:Landroid/view/View;

    const v0, 0x7f080194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->nameTextView:Landroid/widget/TextView;

    .line 119
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dialogView:Landroid/view/View;

    const v0, 0x7f0801d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->phoneNumberTextView:Landroid/widget/TextView;

    .line 120
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dialogView:Landroid/view/View;

    const v0, 0x7f080241

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->stateTextView:Landroid/widget/TextView;

    .line 121
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dialogView:Landroid/view/View;

    const v0, 0x7f0800ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->audioButton:Landroid/widget/CheckBox;

    .line 122
    new-instance v0, Lcom/autochips/bluetooth/fragment/CallDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment$1;-><init>(Lcom/autochips/bluetooth/fragment/CallDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dialogView:Landroid/view/View;

    const v0, 0x7f0800ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->micButton:Landroid/widget/CheckBox;

    .line 133
    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setUserName()V
    .locals 2

    .line 293
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setView()V
    .locals 2

    .line 140
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->setUserName()V

    .line 141
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->phoneNumberTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private unDisplayViewSize(Landroid/view/View;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 78
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 80
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 82
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    aput v2, v0, v1

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object v0
.end method


# virtual methods
.method public MailBox(Lcom/carlos/eventlibrary/EventMail;)V
    .locals 1

    .line 60
    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getFlag()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dismiss()V

    goto :goto_0

    :cond_1
    const-string p1, "CallDialogFragment"

    const-string v0, "receive Mail MAIL_CALL_TERMINATED or CLOSE_CALL_DIALOG"

    .line 65
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_2

    .line 67
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dismiss()V

    goto :goto_0

    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->setView()V

    .line 70
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->initButtonView()V

    :goto_0
    return-void
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 0

    const/16 p2, 0xbbb

    if-eq p1, p2, :cond_2

    const/16 p2, 0xbbc

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1389

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->setUserName()V

    goto :goto_0

    .line 322
    :cond_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->initAudioState()V

    goto :goto_0

    .line 319
    :cond_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->initButtonView()V

    :goto_0
    return-void
.end method

.method public moveWindowToTop()V
    .locals 2

    const-string v0, "CallDialogFragment"

    const-string v1, "refreshWindow"

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/autochips/bluetooth/fragment/CallDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment$2;-><init>(Lcom/autochips/bluetooth/fragment/CallDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyRadioRadioMoveTop()V
    .locals 3

    .line 202
    invoke-static {}, Lcom/autochips/bluetooth/GlobalApplication;->getInstance()Lcom/autochips/bluetooth/GlobalApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "navi.intent.action.ACTION_RADIO_WINDOW_MOVE_TOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/GlobalApplication;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 270
    :sswitch_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->rejectCall()V

    goto :goto_0

    .line 273
    :sswitch_1
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->endCall()V

    goto :goto_0

    .line 283
    :sswitch_2
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getMicMuteState()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 284
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->unMuteMic()V

    goto :goto_0

    .line 286
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->muteMic()V

    goto :goto_0

    .line 276
    :sswitch_3
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "content://com.carocean.status.provider/sys"

    const-string v3, "SYS_REAR_CAMERA"

    invoke-static {v2, p1, v3, v1}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick  bt_tipbox_bg status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CallDialogFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v0, :cond_1

    .line 279
    invoke-static {}, Lcom/autochips/bluetooth/GlobalApplication;->getInstance()Lcom/autochips/bluetooth/GlobalApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/GlobalApplication;->startCallActivity()V

    goto :goto_0

    .line 267
    :sswitch_4
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->acceptCall()V

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f08004d -> :sswitch_4
        0x7f080078 -> :sswitch_3
        0x7f0800ae -> :sswitch_2
        0x7f080107 -> :sswitch_1
        0x7f080126 -> :sswitch_0
    .end sparse-switch
.end method

.method public declared-synchronized showView()V
    .locals 3

    monitor-enter p0

    .line 148
    :try_start_0
    sget-boolean v0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->isShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 149
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "CallDialogFragment"

    .line 151
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->setView()V

    .line 153
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->audioButton:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->micButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 159
    :cond_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->initAudioState()V

    .line 160
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->initButtonView()V

    .line 161
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->initMicButton()V

    .line 162
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerMainThreadObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 163
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dialogView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const-string v1, "CallDialogFragment"

    const-string v2, "CallDialogFragment show addView"

    .line 165
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->dialogView:Landroid/view/View;

    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 168
    sput-boolean v0, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->isShowing:Z

    .line 169
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/carlos/eventlibrary/EventMailer;->register(Lcom/carlos/eventlibrary/IEventReceiver;)V

    const-string v0, "CallDialogFragment"

    const-string v1, "CallDialogFragment show addView success"

    .line 170
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->notifyRadioRadioMoveTop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
