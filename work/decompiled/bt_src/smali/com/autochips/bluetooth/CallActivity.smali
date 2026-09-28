.class public Lcom/autochips/bluetooth/CallActivity;
.super Landroid/app/Activity;
.source "CallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/carlos/eventlibrary/IEventReceiver;
.implements Lcom/autochips/bluetooth/event/IBTObserver;


# static fields
.field public static final MAIL_CALL_TERMINATED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "BTCallActivity"


# instance fields
.field audioButton:Landroid/widget/CheckBox;

.field callAdapter:Lcom/autochips/bluetooth/adapter/CallAdapter;

.field callingTextView:Landroid/widget/TextView;

.field dialView:Landroid/view/View;

.field handler:Landroid/os/Handler;

.field hangupButton:Landroid/view/View;

.field incoming:Landroid/view/View;

.field micButton:Landroid/widget/CheckBox;

.field normalView:Landroid/view/View;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field singleCallLayout:Landroid/widget/LinearLayout;

.field timeTextView:Landroid/widget/TextView;

.field updateTimeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->handler:Landroid/os/Handler;

    .line 379
    new-instance v0, Lcom/autochips/bluetooth/CallActivity$4;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/CallActivity$4;-><init>(Lcom/autochips/bluetooth/CallActivity;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->updateTimeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private endCallView()V
    .locals 2

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endCallView callList.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTCallActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CallActivity;->finish()V

    goto :goto_0

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->initCallView()V

    .line 340
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->initButtonView()V

    :goto_0
    return-void
.end method

.method private initAudioState()V
    .locals 2

    .line 369
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

    const-string v1, "BTCallActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getSCOConnectState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->audioButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->audioButton:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private initButtonView()V
    .locals 4

    .line 171
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initButtonView callState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTCallActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "price ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->audioButton:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->micButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->incoming:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->hangupButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/autochips/bluetooth/CallActivity$3;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/CallActivity$3;-><init>(Lcom/autochips/bluetooth/CallActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->incoming:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->hangupButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->timeTextView:Landroid/widget/TextView;

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->audioButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->micButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->timeTextView:Landroid/widget/TextView;

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->incoming:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->hangupButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->audioButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->micButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private initCallView()V
    .locals 4

    .line 133
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTCallActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 137
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->singleCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 141
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->singleCallLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 144
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->callAdapter:Lcom/autochips/bluetooth/adapter/CallAdapter;

    if-nez v0, :cond_1

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    new-instance v1, Lcom/autochips/bluetooth/adapter/CallAdapter;

    invoke-direct {v1, p0, v0}, Lcom/autochips/bluetooth/adapter/CallAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/autochips/bluetooth/CallActivity;->callAdapter:Lcom/autochips/bluetooth/adapter/CallAdapter;

    .line 148
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {v0}, Lcom/autochips/bluetooth/adapter/CallAdapter;->getMyCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 151
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->callAdapter:Lcom/autochips/bluetooth/adapter/CallAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/adapter/CallAdapter;->getMyCalls()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->callAdapter:Lcom/autochips/bluetooth/adapter/CallAdapter;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/adapter/CallAdapter;->notifyDataSetChanged()V

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/autochips/bluetooth/CallActivity$2;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/CallActivity$2;-><init>(Lcom/autochips/bluetooth/CallActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CallActivity;->finish()V

    :goto_1
    return-void
.end method

.method private initMicButton()V
    .locals 2

    .line 412
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getMicMuteState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 415
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->micButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->micButton:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private isBackCar()Z
    .locals 4

    .line 233
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CallActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys"

    const-string v2, "SYS_REAR_CAMERA"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v3, v1

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBackCar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTCallActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private setUserName()V
    .locals 4

    .line 399
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    const-string v1, "BTCallActivity"

    const-string v2, "setUserName"

    .line 400
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const v1, 0x7f080069

    .line 402
    invoke-virtual {p0, v1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080068

    .line 403
    invoke-virtual {p0, v1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080066

    .line 404
    invoke-virtual {p0, v1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public MailBox(Lcom/carlos/eventlibrary/EventMail;)V
    .locals 2

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " MailBox flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getFlag()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTCallActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getFlag()I

    move-result p1

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 360
    :pswitch_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->initCallView()V

    goto :goto_0

    .line 356
    :pswitch_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->initCallView()V

    .line 357
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->initButtonView()V

    goto :goto_0

    .line 350
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MailBox callList.size="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->endCallView()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7d9
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 0

    const/16 p2, 0xbb9

    if-eq p1, p2, :cond_3

    const/16 p2, 0x1389

    if-eq p1, p2, :cond_2

    const/16 p2, 0xbbb

    if-eq p1, p2, :cond_1

    const/16 p2, 0xbbc

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->initAudioState()V

    goto :goto_0

    .line 431
    :cond_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->initCallView()V

    .line 432
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->initButtonView()V

    .line 433
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->setUserName()V

    goto :goto_0

    .line 428
    :cond_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->setUserName()V

    goto :goto_0

    .line 425
    :cond_3
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->initMicButton()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v3, "BTCallActivity"

    sparse-switch v0, :sswitch_data_0

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity;->callingTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autochips/bluetooth/CallActivity;->callingTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/info/BTCallManager;->sendDTMF(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :sswitch_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getMicMuteState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 317
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->unMuteMic()V

    goto :goto_0

    .line 319
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->muteMic()V

    goto :goto_0

    .line 312
    :sswitch_1
    iget-object p1, p0, Lcom/autochips/bluetooth/CallActivity;->dialView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object p1, p0, Lcom/autochips/bluetooth/CallActivity;->normalView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 307
    :sswitch_2
    iget-object p1, p0, Lcom/autochips/bluetooth/CallActivity;->dialView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object p1, p0, Lcom/autochips/bluetooth/CallActivity;->normalView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :sswitch_3
    const-string p1, "onClick btn_incomming_hangup"

    .line 298
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->rejectCall()V

    goto :goto_0

    .line 303
    :sswitch_4
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->acceptCall()V

    goto :goto_0

    :sswitch_5
    const-string p1, "onClick hangup"

    .line 293
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->endCall()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080096 -> :sswitch_5
        0x7f080099 -> :sswitch_4
        0x7f08009a -> :sswitch_3
        0x7f08009f -> :sswitch_2
        0x7f0800aa -> :sswitch_1
        0x7f0800ae -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CallActivity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 70
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->requestWindowFeature(I)Z

    .line 71
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CallActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CallActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 75
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CallActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 76
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CallActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 77
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CallActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 79
    :goto_0
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/carlos/eventlibrary/EventMailer;->register(Lcom/carlos/eventlibrary/IEventReceiver;)V

    const p1, 0x7f0b0022

    .line 80
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->setContentView(I)V

    const p1, 0x7f08008b

    .line 81
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08008c

    .line 82
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08008d

    .line 83
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08008e

    .line 84
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08008f

    .line 85
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080090

    .line 86
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080091

    .line 87
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080092

    .line 88
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080093

    .line 89
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080094

    .line 90
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080071

    .line 91
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080070

    .line 92
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0801e1

    .line 93
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/autochips/bluetooth/CallActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f08022b

    .line 94
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/autochips/bluetooth/CallActivity;->singleCallLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f080099

    .line 95
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08009a

    .line 96
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08009f

    .line 97
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800aa

    .line 98
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800ad

    .line 99
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/autochips/bluetooth/CallActivity;->audioButton:Landroid/widget/CheckBox;

    .line 100
    new-instance v0, Lcom/autochips/bluetooth/CallActivity$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/CallActivity$1;-><init>(Lcom/autochips/bluetooth/CallActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800ae

    .line 112
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/autochips/bluetooth/CallActivity;->micButton:Landroid/widget/CheckBox;

    .line 113
    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0800a9

    .line 114
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/CallActivity;->dialView:Landroid/view/View;

    const p1, 0x7f0800a8

    .line 115
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/CallActivity;->callingTextView:Landroid/widget/TextView;

    const p1, 0x7f080063

    .line 116
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/CallActivity;->normalView:Landroid/view/View;

    const p1, 0x7f08006b

    .line 117
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/CallActivity;->timeTextView:Landroid/widget/TextView;

    const p1, 0x7f0800a3

    .line 118
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/CallActivity;->incoming:Landroid/view/View;

    const p1, 0x7f080096

    .line 119
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/CallActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/CallActivity;->hangupButton:Landroid/view/View;

    .line 120
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerMainThreadObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 122
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->initCallView()V

    .line 123
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->initButtonView()V

    .line 124
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->initAudioState()V

    .line 125
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->initMicButton()V

    const-string p1, "BTCallActivity"

    const-string v0, "onCreate"

    .line 126
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 283
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "BTCallActivity"

    const-string v1, "onDestroy"

    .line 284
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/carlos/eventlibrary/EventMailer;->unregisterReceiver(Lcom/carlos/eventlibrary/IEventReceiver;)V

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

    .line 261
    const-class v0, Lcom/autochips/bluetooth/CallActivity;

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v1, "BTCallActivity"

    const-string v2, "onPause"

    .line 262
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
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

    .line 264
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/autochips/bluetooth/util/StaticUtil;->isForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 266
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 268
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

    .line 269
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {}, Lcom/autochips/bluetooth/GlobalApplication;->getInstance()Lcom/autochips/bluetooth/GlobalApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/GlobalApplication;->extendUtil:Lcom/autochips/bluetooth/ExtendUtil;

    iget-object v0, v0, Lcom/autochips/bluetooth/ExtendUtil;->naviCallDialog:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->showView()V

    const-string v0, "onStop3"

    .line 271
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "BTCallActivity"

    const-string v1, "onResume"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->setUserName()V

    .line 217
    sget-boolean v1, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->isShowing:Z

    if-eqz v1, :cond_0

    const-string v1, "onResume2"

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v1

    const-class v2, Lcom/autochips/bluetooth/fragment/CallDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    .line 221
    :cond_0
    const-class v1, Lcom/autochips/bluetooth/CallActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/autochips/bluetooth/util/StaticUtil;->isForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->isBackCar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    invoke-static {}, Lcom/autochips/bluetooth/GlobalApplication;->getInstance()Lcom/autochips/bluetooth/GlobalApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/autochips/bluetooth/GlobalApplication;->extendUtil:Lcom/autochips/bluetooth/ExtendUtil;

    iget-object v1, v1, Lcom/autochips/bluetooth/ExtendUtil;->naviCallDialog:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->showView()V

    :cond_1
    const-string v1, "onResume3"

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "onResume4"

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Lcom/autochips/bluetooth/GlobalApplication;->getInstance()Lcom/autochips/bluetooth/GlobalApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/GlobalApplication;->startCallActivity()V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "BTCallActivity"

    const-string v1, "onStop"

    .line 278
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 240
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged hasFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTCallActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged isForeground="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v2, Lcom/autochips/bluetooth/CallActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/autochips/bluetooth/util/StaticUtil;->isForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 244
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 245
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result p1

    if-eqz p1, :cond_2

    .line 246
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 247
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/model/MyCall;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result p1

    const/16 v2, 0xa

    if-eq p1, v2, :cond_2

    :cond_0
    const-string p1, "onWindowFocusChanged showView"

    .line 248
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/autochips/bluetooth/CallActivity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/autochips/bluetooth/CallActivity;->isBackCar()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 250
    :cond_1
    invoke-static {}, Lcom/autochips/bluetooth/GlobalApplication;->getInstance()Lcom/autochips/bluetooth/GlobalApplication;

    move-result-object p1

    iget-object p1, p1, Lcom/autochips/bluetooth/GlobalApplication;->extendUtil:Lcom/autochips/bluetooth/ExtendUtil;

    iget-object p1, p1, Lcom/autochips/bluetooth/ExtendUtil;->naviCallDialog:Lcom/autochips/bluetooth/fragment/NaviCallDialog;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/fragment/NaviCallDialog;->showView()V

    goto :goto_0

    .line 253
    :cond_2
    sget-boolean p1, Lcom/autochips/bluetooth/fragment/CallDialogFragment;->isShowing:Z

    if-eqz p1, :cond_3

    .line 254
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class v1, Lcom/autochips/bluetooth/fragment/CallDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method
