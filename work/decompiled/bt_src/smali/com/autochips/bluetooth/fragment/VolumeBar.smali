.class public Lcom/autochips/bluetooth/fragment/VolumeBar;
.super Landroid/app/DialogFragment;
.source "VolumeBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/carocean/navicar/MMIKeyHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/fragment/VolumeBar$OnCancelListener;,
        Lcom/autochips/bluetooth/fragment/VolumeBar$OnConfirmListener;,
        Lcom/autochips/bluetooth/fragment/VolumeBar$UIHandler;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "VolumeBar"

.field private static final URI_SYS_PARAM_INFO:Ljava/lang/String; = "content://com.carocean.status.provider/status/ST_SYSTEM_PARAM_INFO"


# instance fields
.field private btVolume:I

.field private mBtnText:[Ljava/lang/String;

.field private mCancelListener:Lcom/autochips/bluetooth/fragment/VolumeBar$OnCancelListener;

.field private mConfirmListener:Lcom/autochips/bluetooth/fragment/VolumeBar$OnConfirmListener;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

.field mSeekBar:Landroid/widget/SeekBar;

.field mTitle:Landroid/widget/TextView;

.field private mX:I

.field private mY:I

.field private uiHandler:Lcom/autochips/bluetooth/fragment/VolumeBar$UIHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->btVolume:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mBtnText:[Ljava/lang/String;

    .line 330
    new-instance v0, Lcom/autochips/bluetooth/fragment/VolumeBar$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autochips/bluetooth/fragment/VolumeBar$3;-><init>(Lcom/autochips/bluetooth/fragment/VolumeBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/fragment/VolumeBar;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->dismissLater()V

    return-void
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/fragment/VolumeBar;)Lcom/autochips/bluetooth/fragment/VolumeBar$UIHandler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->uiHandler:Lcom/autochips/bluetooth/fragment/VolumeBar$UIHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/fragment/VolumeBar;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->btVolume:I

    return p0
.end method

.method static synthetic access$202(Lcom/autochips/bluetooth/fragment/VolumeBar;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->btVolume:I

    return p1
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/fragment/VolumeBar;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/VolumeBar;->setCallStreamVolume(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/fragment/VolumeBar;)Lcom/carocean/navicar/MMIKeyHelper;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/fragment/VolumeBar;)Landroid/content/Context;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private dismissLater()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->uiHandler:Lcom/autochips/bluetooth/fragment/VolumeBar$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/fragment/VolumeBar$UIHandler;->removeMessages(I)V

    .line 69
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->uiHandler:Lcom/autochips/bluetooth/fragment/VolumeBar$UIHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/autochips/bluetooth/fragment/VolumeBar$UIHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private doClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private initData()V
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/autochips/bluetooth/fragment/VolumeBar$UIHandler;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/fragment/VolumeBar$UIHandler;-><init>(Lcom/autochips/bluetooth/fragment/VolumeBar;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->uiHandler:Lcom/autochips/bluetooth/fragment/VolumeBar$UIHandler;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3

    .line 154
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->getBtVolumeNav()I

    move-result v0

    iput v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->btVolume:I

    const v0, 0x7f080147

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f080146

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 160
    new-instance v0, Lcom/autochips/bluetooth/fragment/VolumeBar$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/fragment/VolumeBar$1;-><init>(Lcom/autochips/bluetooth/fragment/VolumeBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 185
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->btVolume:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 186
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mTitle:Landroid/widget/TextView;

    iget v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->btVolume:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    new-instance p1, Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/carocean/navicar/MMIKeyHelper;-><init>(I)V

    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    .line 194
    invoke-virtual {p1, p0}, Lcom/carocean/navicar/MMIKeyHelper;->setCustomCallback(Lcom/carocean/navicar/MMIKeyHelper$Callback;)V

    .line 196
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/carocean/navicar/MMIKeyHelper;->addView(Landroid/view/View;II)V

    .line 197
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    .line 198
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    new-instance v0, Lcom/autochips/bluetooth/fragment/VolumeBar$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/fragment/VolumeBar$2;-><init>(Lcom/autochips/bluetooth/fragment/VolumeBar;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private isMute()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/carocean/navicar/NaviUtil;->getMuteMask(Landroid/content/Context;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setCallStreamVolume(I)V
    .locals 2

    .line 221
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->isMute()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/carocean/navicar/NaviUtil;->setVolumeMuteMask(Landroid/content/Context;ZZ)V

    .line 222
    :cond_0
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/fragment/VolumeBar;->setBtVolume(I)V

    return-void
.end method

.method private unregisterSettingsContentObserver()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public getBtVolumeNav()I
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mContext:Landroid/content/Context;

    .line 312
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/status"

    const-string v2, "ST_SYSTEM_PARAM_INFO"

    .line 311
    invoke-static {v1, v0, v2}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;

    if-eqz v0, :cond_0

    .line 315
    iget v0, v0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->bt_volume:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x23

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0, p1}, Lcom/carocean/navicar/MMIKeyHelper;->setSelected(Landroid/view/View;)V

    .line 234
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/VolumeBar;->doClick(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x2

    const v1, 0x7f1000f7

    .line 120
    invoke-virtual {p0, v0, v1}, Lcom/autochips/bluetooth/fragment/VolumeBar;->setStyle(II)V

    .line 121
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->initData()V

    .line 122
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b00ab

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 133
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/VolumeBar;->initView(Landroid/view/View;)V

    .line 134
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->dismissLater()V

    .line 135
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->registerSettingsContentObserver()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 150
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->uiHandler:Lcom/autochips/bluetooth/fragment/VolumeBar$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/fragment/VolumeBar$UIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    invoke-virtual {v0}, Lcom/carocean/navicar/MMIKeyHelper;->clear()V

    .line 143
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 144
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->unregisterSettingsContentObserver()V

    return-void
.end method

.method public onEnter(Landroid/view/View;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->dismiss()V

    goto :goto_0

    .line 270
    :cond_0
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/VolumeBar;->doClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onFocused(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onMenuUpEnd()V
    .locals 0

    .line 277
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->dismiss()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 127
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    return-void
.end method

.method public onSelectChanged(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 104
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 105
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07020c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 107
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    .line 109
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 110
    iget v1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mX:I

    if-nez v1, :cond_0

    iget v2, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mY:I

    if-eqz v2, :cond_1

    .line 111
    :cond_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 112
    iget v1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mY:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_1
    const/4 v1, 0x0

    .line 114
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 115
    invoke-virtual {p0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onTurnning(Landroid/view/View;Z)V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->dismissLater()V

    .line 291
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    add-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/fragment/VolumeBar;->setCallStreamVolume(I)V

    :cond_1
    return-void
.end method

.method public registerSettingsContentObserver()V
    .locals 4

    .line 321
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/status/ST_SYSTEM_PARAM_INFO"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setBtVolume(I)V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/status"

    const-string v2, "ST_SYSTEM_PARAM_INFO"

    .line 296
    invoke-static {v1, v0, v2}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;

    if-nez v0, :cond_0

    const-string p1, "VolumeBar"

    const-string v0, "ST_SYSTEM_PARAM_INFO not initialized."

    .line 300
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    :cond_0
    iput p1, v0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->bt_volume:I

    .line 303
    iget-object v3, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v1, v3, v2, v0}, Lcom/carocean/navicar/NaviStatus;->putObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    sget-object v0, Lcom/carocean/navicar/PerSysDef;->PERSYS_VOLUME:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setBtnText(ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mBtnText:[Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 97
    iget-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mBtnText:[Ljava/lang/String;

    aput-object p2, p1, v0

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnCancelListener(Lcom/autochips/bluetooth/fragment/VolumeBar$OnCancelListener;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mCancelListener:Lcom/autochips/bluetooth/fragment/VolumeBar$OnCancelListener;

    return-void
.end method

.method public setOnConfirmListener(Lcom/autochips/bluetooth/fragment/VolumeBar$OnConfirmListener;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mConfirmListener:Lcom/autochips/bluetooth/fragment/VolumeBar$OnConfirmListener;

    return-void
.end method

.method public setPositionOffset(II)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mX:I

    iput p2, p0, Lcom/autochips/bluetooth/fragment/VolumeBar;->mY:I

    return-void
.end method
