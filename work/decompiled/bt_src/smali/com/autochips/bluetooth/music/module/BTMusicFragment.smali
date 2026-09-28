.class public Lcom/autochips/bluetooth/music/module/BTMusicFragment;
.super Lcom/autochips/bluetooth/fragment/BaseMailFragment;
.source "BTMusicFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BTMusicFragment"


# instance fields
.field private albumName:Landroid/widget/TextView;

.field private isPlaying:Z

.field private musicTitle:Landroid/widget/TextView;

.field private nextButton:Landroid/widget/ImageView;

.field private pauseButton:Landroid/widget/ImageView;

.field private playButton:Landroid/widget/ImageView;

.field private prevButton:Landroid/widget/ImageView;

.field private progressBar:Landroid/widget/SeekBar;

.field private singerName:Landroid/widget/TextView;

.field private tv_seekbar_progress:Landroid/widget/TextView;

.field private tv_seekbar_total:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->isPlaying:Z

    return-void
.end method

.method private monitor()V
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 182
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/music/module/BTMusicFragment$1;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/music/module/BTMusicFragment$1;-><init>(Lcom/autochips/bluetooth/music/module/BTMusicFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public MailBox(Lcom/carlos/eventlibrary/EventMail;)V
    .locals 7

    .line 90
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->isAdded()Z

    move-result v0

    const-string v1, "BTMusicFragment"

    if-nez v0, :cond_0

    const-string p1, "MailBox isAdded false!"

    .line 91
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MailBox flag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getFlag()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getFlag()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v4, 0x3

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eq v0, v4, :cond_6

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    const/16 v2, 0xd

    if-eq v0, v2, :cond_4

    const/16 v2, 0xe

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 119
    :cond_1
    invoke-virtual {p1, v2}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "music position:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, p1, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    aget v0, p1, v6

    if-lez v0, :cond_2

    aget v0, p1, v3

    if-gtz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->isPlaying:Z

    if-nez v0, :cond_9

    aget v0, p1, v6

    if-gtz v0, :cond_9

    aget v0, p1, v3

    if-gtz v0, :cond_9

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->progressBar:Landroid/widget/SeekBar;

    aget v1, p1, v6

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 124
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->progressBar:Landroid/widget/SeekBar;

    aget v1, p1, v3

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 125
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->tv_seekbar_progress:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->tv_seekbar_total:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->tv_seekbar_progress:Landroid/widget/TextView;

    aget v1, p1, v3

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->getGapTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->tv_seekbar_total:Landroid/widget/TextView;

    aget p1, p1, v6

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->getGapTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_4
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->tv_seekbar_progress:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->tv_seekbar_total:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iput-boolean v6, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->isPlaying:Z

    .line 136
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 102
    :cond_5
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    iput-boolean v6, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->isPlaying:Z

    goto :goto_0

    .line 97
    :cond_6
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iput-boolean v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->isPlaying:Z

    goto :goto_0

    .line 114
    :cond_7
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->singerName:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->albumName:Landroid/widget/TextView;

    const/16 v1, 0xf

    invoke-virtual {p1, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :cond_8
    invoke-virtual {p1, v2}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "music title:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->musicTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public getGapTime(J)Ljava/lang/String;
    .locals 5

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v1, 0xea60

    div-long v3, p1, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    rem-long/2addr p1, v1

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge p2, v2, :cond_0

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p2, v2, :cond_1

    .line 149
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 3

    .line 34
    iget-object p3, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->mActivity:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p3, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 35
    sget p3, Lcom/autochips/bluetooth/music/module/R$layout;->bt_music_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->rootView:Landroid/view/View;

    .line 36
    sget p1, Lcom/autochips/bluetooth/music/module/R$id;->musicTitle:I

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->musicTitle:Landroid/widget/TextView;

    .line 37
    sget p1, Lcom/autochips/bluetooth/music/module/R$id;->singerName:I

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->singerName:Landroid/widget/TextView;

    .line 38
    sget p1, Lcom/autochips/bluetooth/music/module/R$id;->albumName:I

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->albumName:Landroid/widget/TextView;

    .line 39
    sget p1, Lcom/autochips/bluetooth/music/module/R$id;->playButton:I

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->playButton:Landroid/widget/ImageView;

    .line 40
    sget p1, Lcom/autochips/bluetooth/music/module/R$id;->pauseButton:I

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->pauseButton:Landroid/widget/ImageView;

    .line 41
    sget p1, Lcom/autochips/bluetooth/music/module/R$id;->nextButton:I

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->nextButton:Landroid/widget/ImageView;

    .line 42
    sget p1, Lcom/autochips/bluetooth/music/module/R$id;->prevButton:I

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->prevButton:Landroid/widget/ImageView;

    .line 43
    sget p1, Lcom/autochips/bluetooth/music/module/R$id;->progressBar:I

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->progressBar:Landroid/widget/SeekBar;

    .line 44
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 45
    sget p1, Lcom/autochips/bluetooth/music/module/R$id;->stopButton:I

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->rootView:Landroid/view/View;

    sget p2, Lcom/autochips/bluetooth/music/module/R$id;->tv_seekbar_progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->tv_seekbar_progress:Landroid/widget/TextView;

    .line 47
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->rootView:Landroid/view/View;

    sget p2, Lcom/autochips/bluetooth/music/module/R$id;->tv_seekbar_total:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->tv_seekbar_total:Landroid/widget/TextView;

    .line 48
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->pauseButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->nextButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->prevButton:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "BTMusicFragment"

    const-string p2, "BTMusicFragment init"

    .line 52
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xc

    invoke-virtual {p1, p2, p3}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onAttach(Landroid/content/Context;)V

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAttach "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BTMusicFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/autochips/bluetooth/music/module/R$id;->playButton:I

    const-string v2, "BTMusicFragment"

    if-ne v0, v1, :cond_0

    const-string p1, "onClick playButton"

    .line 158
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class v0, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/autochips/bluetooth/music/module/R$id;->pauseButton:I

    if-ne v0, v1, :cond_1

    const-string p1, "onClick pauseButton"

    .line 162
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class v0, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/autochips/bluetooth/music/module/R$id;->nextButton:I

    if-ne v0, v1, :cond_2

    .line 167
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class v0, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/autochips/bluetooth/music/module/R$id;->prevButton:I

    if-ne v0, v1, :cond_3

    .line 170
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class v0, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/autochips/bluetooth/music/module/R$id;->stopButton:I

    if-ne p1, v0, :cond_4

    .line 173
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class v0, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    .line 174
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onDestroy()V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 64
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onDetach()V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDetach "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 70
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onResume()V

    .line 71
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->monitor()V

    .line 72
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys"

    const-string v2, "SYS_SOURCE_ID"

    const/4 v3, -0x1

    invoke-static {v1, v0, v2, v3}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "BTMusicFragment"

    const-string v2, "onResume performClick"

    .line 74
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v0

    const-class v2, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    .line 76
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->playButton:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 78
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicFragment;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    :cond_0
    return-void
.end method
