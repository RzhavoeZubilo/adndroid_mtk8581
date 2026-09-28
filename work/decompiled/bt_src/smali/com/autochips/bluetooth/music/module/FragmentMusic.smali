.class public Lcom/autochips/bluetooth/music/module/FragmentMusic;
.super Lcom/autochips/bluetooth/fragment/BaseMailFragment;
.source "FragmentMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/carocean/navicar/MMIKeyHelper$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentMusic"


# instance fields
.field private albumBg:Landroid/widget/ImageView;

.field private isPlaying:Z

.field private iv_pause:Landroid/widget/ImageView;

.field private sb_progress:Landroid/widget/SeekBar;

.field private tv_currenttime:Landroid/widget/TextView;

.field private tv_music_album:Landroid/widget/TextView;

.field private tv_music_artist:Landroid/widget/TextView;

.field private tv_music_name:Landroid/widget/TextView;

.field private tv_totaltime:Landroid/widget/TextView;

.field private vNext:Landroid/view/View;

.field private vPrev:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->isPlaying:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkMMIKeyHelper()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/autochips/bluetooth/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/autochips/bluetooth/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/BaseFragmentActivity;->getMMIKeyHelper()Lcom/carocean/navicar/MMIKeyHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    :cond_0
    return-void
.end method

.method private monitor()V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 152
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/music/module/FragmentMusic$1;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/music/module/FragmentMusic$1;-><init>(Lcom/autochips/bluetooth/music/module/FragmentMusic;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method private setIvPauseImgSrc(Z)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->iv_pause:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 287
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isKDLK()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 289
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->iv_pause:Landroid/widget/ImageView;

    sget v0, Lcom/autochips/bluetooth/music/module/R$drawable;->kdlk_btmusic_src_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->iv_pause:Landroid/widget/ImageView;

    sget v0, Lcom/autochips/bluetooth/music/module/R$drawable;->kdlk_btmusic_src_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 293
    :cond_1
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 295
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->iv_pause:Landroid/widget/ImageView;

    sget v0, Lcom/autochips/bluetooth/music/module/R$drawable;->bmw_id8_music_pause:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 297
    :cond_2
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->iv_pause:Landroid/widget/ImageView;

    sget v0, Lcom/autochips/bluetooth/music/module/R$drawable;->bmw_id8_music_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateID8AlbumBg(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 372
    :cond_0
    sget p1, Lcom/autochips/bluetooth/music/module/R$drawable;->bmw_id8_blue_album_bg:I

    goto :goto_0

    .line 369
    :cond_1
    sget p1, Lcom/autochips/bluetooth/music/module/R$drawable;->bmw_id8_red_album_bg:I

    goto :goto_0

    .line 366
    :cond_2
    sget p1, Lcom/autochips/bluetooth/music/module/R$drawable;->bmw_id8_orange_album_bg:I

    .line 375
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->albumBg:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 376
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    return-void
.end method

.method private updateID8BtnBackground(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 323
    :cond_0
    sget p1, Lcom/autochips/bluetooth/music/module/R$drawable;->bmw_id8_blue_music_btn_bg:I

    goto :goto_0

    .line 320
    :cond_1
    sget p1, Lcom/autochips/bluetooth/music/module/R$drawable;->bmw_id8_red_music_btn_bg:I

    goto :goto_0

    .line 317
    :cond_2
    sget p1, Lcom/autochips/bluetooth/music/module/R$drawable;->bmw_id8_orange_music_btn_bg:I

    :goto_0
    if-eqz p1, :cond_5

    .line 327
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->vPrev:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 328
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->vNext:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 331
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 333
    :cond_4
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->iv_pause:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 334
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_5
    return-void
.end method

.method private updateID8TextColor(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 349
    :cond_0
    sget p1, Lcom/autochips/bluetooth/music/module/R$color;->bmw_id8_blue_desk_icon_title_color:I

    goto :goto_0

    .line 346
    :cond_1
    sget p1, Lcom/autochips/bluetooth/music/module/R$color;->bmw_id8_red_desk_icon_title_color:I

    goto :goto_0

    .line 343
    :cond_2
    sget p1, Lcom/autochips/bluetooth/music/module/R$color;->bmw_id8_orange_desk_icon_title_color:I

    :goto_0
    if-eqz p1, :cond_4

    .line 353
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->tv_music_name:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 354
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->tv_music_artist:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 357
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public MailBox(Lcom/carlos/eventlibrary/EventMail;)V
    .locals 4

    .line 213
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    sget-object p1, Lcom/autochips/bluetooth/music/module/FragmentMusic;->TAG:Ljava/lang/String;

    const-string v0, "MailBox isAdded false!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 217
    :cond_0
    sget-object v0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MailBox flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getFlag()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getFlag()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8

    const/4 v1, 0x4

    const/4 v3, 0x0

    if-eq v0, v1, :cond_7

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 247
    :cond_1
    invoke-virtual {p1, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    .line 248
    aget v0, p1, v3

    if-lez v0, :cond_2

    aget v0, p1, v2

    if-gtz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->isPlaying:Z

    if-nez v0, :cond_c

    aget v0, p1, v3

    if-gtz v0, :cond_c

    aget v0, p1, v2

    if-gtz v0, :cond_c

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->sb_progress:Landroid/widget/SeekBar;

    if-eqz v0, :cond_4

    .line 250
    aget v1, p1, v3

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 252
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->sb_progress:Landroid/widget/SeekBar;

    aget v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 254
    :cond_4
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->tv_currenttime:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 255
    aget v1, p1, v2

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->getGapTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_5
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->tv_totaltime:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 258
    aget p1, p1, v3

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->getGapTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 264
    :cond_6
    iput-boolean v3, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->isPlaying:Z

    .line 265
    invoke-direct {p0, v3}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->setIvPauseImgSrc(Z)V

    .line 266
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 224
    :cond_7
    iput-boolean v3, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->isPlaying:Z

    .line 225
    invoke-direct {p0, v3}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->setIvPauseImgSrc(Z)V

    goto :goto_0

    .line 220
    :cond_8
    iput-boolean v1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->isPlaying:Z

    .line 221
    invoke-direct {p0, v1}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->setIvPauseImgSrc(Z)V

    goto :goto_0

    .line 236
    :cond_9
    invoke-virtual {p1, v2}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->tv_music_artist:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 238
    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->tv_music_artist:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    const/16 v0, 0xf

    .line 240
    invoke-virtual {p1, v0}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->tv_music_album:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 242
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->tv_music_album:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 229
    :cond_b
    invoke-virtual {p1, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->tv_music_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 231
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->tv_music_name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_0
    return-void
.end method

.method public getGapTime(J)Ljava/lang/String;
    .locals 5

    .line 273
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

    .line 274
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

    .line 275
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge p2, v2, :cond_0

    .line 276
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ge p2, v2, :cond_1

    .line 279
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 281
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

    .line 43
    iget-object p3, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mActivity:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p3, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 44
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isKDLK()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 45
    sget p3, Lcom/autochips/bluetooth/music/module/R$layout;->bt_music_kdlk:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    goto/16 :goto_1

    .line 46
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isAudi()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 47
    sget p3, Lcom/autochips/bluetooth/music/module/R$layout;->bt_music_audi:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    goto/16 :goto_1

    .line 48
    :cond_1
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isBenz()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 49
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1920x720And240dpi()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1280x480And160dpi()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x600And240dpi()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x720And240dpi()Z

    move-result p3

    if-nez p3, :cond_3

    .line 50
    :cond_2
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isZLHCustomer()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1920x720And240dpi()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1280x480And160dpi()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 51
    :cond_3
    sget p3, Lcom/autochips/bluetooth/music/module/R$layout;->bt_music_yzg_benz:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    goto :goto_1

    .line 53
    :cond_4
    sget p3, Lcom/autochips/bluetooth/music/module/R$layout;->bt_music_benz:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    goto :goto_1

    .line 55
    :cond_5
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isVolvo()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 56
    sget p3, Lcom/autochips/bluetooth/music/module/R$layout;->bt_music_kld_benz:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    goto :goto_1

    .line 57
    :cond_6
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result p3

    if-nez p3, :cond_9

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_0

    .line 60
    :cond_7
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 61
    sget p3, Lcom/autochips/bluetooth/music/module/R$layout;->bt_music_id8:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    goto :goto_1

    .line 63
    :cond_8
    sget p3, Lcom/autochips/bluetooth/music/module/R$layout;->bt_music:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    goto :goto_1

    .line 58
    :cond_9
    :goto_0
    sget p3, Lcom/autochips/bluetooth/music/module/R$layout;->bt_music_lexus:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    .line 67
    :goto_1
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    sget p2, Lcom/autochips/bluetooth/music/module/R$id;->btn_music_pause:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->iv_pause:Landroid/widget/ImageView;

    .line 69
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    sget p2, Lcom/autochips/bluetooth/music/module/R$id;->btn_music_prev:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->vPrev:Landroid/view/View;

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    sget p2, Lcom/autochips/bluetooth/music/module/R$id;->btn_music_next:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->vNext:Landroid/view/View;

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    sget p2, Lcom/autochips/bluetooth/music/module/R$id;->tv_music_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->tv_music_name:Landroid/widget/TextView;

    .line 75
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    sget p2, Lcom/autochips/bluetooth/music/module/R$id;->tv_music_icon_artist:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->tv_music_artist:Landroid/widget/TextView;

    .line 76
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    sget p2, Lcom/autochips/bluetooth/music/module/R$id;->tv_music_icon_album:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->tv_music_album:Landroid/widget/TextView;

    .line 77
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    sget p2, Lcom/autochips/bluetooth/music/module/R$id;->tv_music_total_time:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->tv_totaltime:Landroid/widget/TextView;

    .line 78
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    sget p2, Lcom/autochips/bluetooth/music/module/R$id;->tv_music_playing_progress:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->sb_progress:Landroid/widget/SeekBar;

    if-eqz p1, :cond_a

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 82
    :cond_a
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    sget p2, Lcom/autochips/bluetooth/music/module/R$id;->tv_music_play_time:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->tv_currenttime:Landroid/widget/TextView;

    .line 84
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->iv_pause:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->rootView:Landroid/view/View;

    sget p2, Lcom/autochips/bluetooth/music/module/R$id;->albumbg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->albumBg:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->initMMIkey()V

    .line 90
    sget-object p1, Lcom/autochips/bluetooth/music/module/FragmentMusic;->TAG:Ljava/lang/String;

    const-string p2, "FragmentMusic init"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xc

    invoke-virtual {p1, p2, p3}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    return-void
.end method

.method public initMMIkey()V
    .locals 4

    .line 95
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isKDLK()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->checkMMIKeyHelper()V

    .line 99
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->removeFromSector(I)V

    .line 100
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->insertSector(I)V

    .line 101
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->vPrev:Landroid/view/View;

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 102
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->iv_pause:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v3, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 103
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v2, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->vNext:Landroid/view/View;

    invoke-virtual {v0, v2, v3, v1}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 104
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelectSector(I)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 115
    invoke-super {p0, p1}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onAttach(Landroid/content/Context;)V

    .line 116
    sget-object p1, Lcom/autochips/bluetooth/music/module/FragmentMusic;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttach "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;Z)V

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/autochips/bluetooth/music/module/R$id;->btn_music_pause:I

    if-ne v0, v1, :cond_1

    .line 173
    sget-object p1, Lcom/autochips/bluetooth/music/module/FragmentMusic;->TAG:Ljava/lang/String;

    const-string v0, "onClick pauseButton"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class v0, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/autochips/bluetooth/music/module/R$id;->btn_music_next:I

    if-ne v0, v1, :cond_2

    .line 180
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class v0, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/autochips/bluetooth/music/module/R$id;->btn_music_prev:I

    if-ne p1, v0, :cond_3

    .line 183
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class v0, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 145
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 3

    .line 121
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onDetach()V

    .line 122
    sget-object v0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetach "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEnter(Landroid/view/View;)V
    .locals 0

    .line 194
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->onClick(Landroid/view/View;)V

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

.method public onResume()V
    .locals 4

    .line 127
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onResume()V

    .line 128
    invoke-direct {p0}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->monitor()V

    .line 129
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys"

    const-string v2, "SYS_BT_CALL_STATUS"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v0

    const-class v1, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/media"

    const-string v2, "BLUETOOTH_MUSIC_INFO"

    invoke-static {v1, v0, v2}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;

    if-eqz v0, :cond_1

    .line 136
    iget v0, v0, Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;->playState:I

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->iv_pause:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->iv_pause:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    .line 139
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/FragmentMusic;->iv_pause:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onSelectChanged(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onTurnning(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public updateID8Theme(I)V
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->updateID8AlbumBg(I)V

    .line 309
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->updateID8TextColor(I)V

    .line 310
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/music/module/FragmentMusic;->updateID8BtnBackground(I)V

    return-void
.end method
