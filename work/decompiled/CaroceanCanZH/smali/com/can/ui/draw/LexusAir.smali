.class public Lcom/can/ui/draw/LexusAir;
.super Ljava/lang/Object;
.source "LexusAir.java"


# static fields
.field public static final PERSYS_HIDE_AIR_TEMP:Ljava/lang/String; = "persist.sys.hide_air_temp"

.field private static final TAG:Ljava/lang/String; = "LexusAir"


# instance fields
.field AirAutoClose:Ljava/lang/Runnable;

.field private mAC:Landroid/widget/ImageView;

.field private mAirView:Landroid/view/View;

.field private mAuto:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mFrontWin:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mLoop:Landroid/widget/ImageView;

.field private mPopWind:Lcom/can/ui/draw/PopWind;

.field private mRearWin:Landroid/widget/ImageView;

.field private mShowTime:J

.field private mTempLeft:Landroid/widget/TextView;

.field private mTempRight:Landroid/widget/TextView;

.field private mTempUnitC:Ljava/lang/String;

.field private mTempUnitF:Ljava/lang/String;

.field private mWindDirect:Landroid/widget/ImageView;

.field private final mWindDirectResId:[I

.field private mWindRate:Landroid/widget/ImageView;

.field private final mWindResId:[I

.field private mbAirAutoCloseFlag:Z

.field private showTempUnitF:Z


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/can/ui/draw/LexusAir;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/can/ui/draw/LexusAir;->mHandler:Landroid/os/Handler;

    .line 24
    iput-object v0, p0, Lcom/can/ui/draw/LexusAir;->mPopWind:Lcom/can/ui/draw/PopWind;

    const-wide/16 v1, 0x0

    .line 25
    iput-wide v1, p0, Lcom/can/ui/draw/LexusAir;->mShowTime:J

    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lcom/can/ui/draw/LexusAir;->mbAirAutoCloseFlag:Z

    const/16 v2, 0x8

    new-array v3, v2, [I

    .line 34
    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/can/ui/draw/LexusAir;->mWindDirectResId:[I

    new-array v2, v2, [I

    .line 45
    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/can/ui/draw/LexusAir;->mWindResId:[I

    .line 104
    new-instance v2, Lcom/can/ui/draw/LexusAir$2;

    invoke-direct {v2, p0}, Lcom/can/ui/draw/LexusAir$2;-><init>(Lcom/can/ui/draw/LexusAir;)V

    iput-object v2, p0, Lcom/can/ui/draw/LexusAir;->AirAutoClose:Ljava/lang/Runnable;

    .line 58
    iput-object p2, p0, Lcom/can/ui/draw/LexusAir;->mContext:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcom/can/ui/draw/LexusAir;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance p2, Lcom/can/ui/draw/PopWind;

    invoke-direct {p2, v1, v1}, Lcom/can/ui/draw/PopWind;-><init>(II)V

    iput-object p2, p0, Lcom/can/ui/draw/LexusAir;->mPopWind:Lcom/can/ui/draw/PopWind;

    const p2, 0x7f0b0093

    .line 62
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/draw/LexusAir;->mAirView:Landroid/view/View;

    const-string p1, "persist.sys.temp_unit_f"

    .line 63
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v1, p2

    :cond_0
    iput-boolean v1, p0, Lcom/can/ui/draw/LexusAir;->showTempUnitF:Z

    .line 64
    iget-object p1, p0, Lcom/can/ui/draw/LexusAir;->mContext:Landroid/content/Context;

    const p2, 0x7f0d0028

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/draw/LexusAir;->mTempUnitF:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/can/ui/draw/LexusAir;->mContext:Landroid/content/Context;

    const p2, 0x7f0d0027

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/draw/LexusAir;->mTempUnitC:Ljava/lang/String;

    .line 66
    iget-object p1, p0, Lcom/can/ui/draw/LexusAir;->mAirView:Landroid/view/View;

    const p2, 0x7f08004c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/can/ui/draw/LexusAir;->mTempLeft:Landroid/widget/TextView;

    .line 67
    iget-object p1, p0, Lcom/can/ui/draw/LexusAir;->mAirView:Landroid/view/View;

    const p2, 0x7f08004d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/can/ui/draw/LexusAir;->mTempRight:Landroid/widget/TextView;

    .line 68
    invoke-virtual {p0}, Lcom/can/ui/draw/LexusAir;->setTempTvVisibility()V

    .line 69
    iget-object p1, p0, Lcom/can/ui/draw/LexusAir;->mAirView:Landroid/view/View;

    const p2, 0x7f08004e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/LexusAir;->mWindRate:Landroid/widget/ImageView;

    .line 70
    iget-object p1, p0, Lcom/can/ui/draw/LexusAir;->mAirView:Landroid/view/View;

    const p2, 0x7f080046

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/LexusAir;->mAC:Landroid/widget/ImageView;

    .line 71
    iget-object p1, p0, Lcom/can/ui/draw/LexusAir;->mAirView:Landroid/view/View;

    const p2, 0x7f080047

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/LexusAir;->mAuto:Landroid/widget/ImageView;

    .line 72
    iget-object p1, p0, Lcom/can/ui/draw/LexusAir;->mAirView:Landroid/view/View;

    const p2, 0x7f080049

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/LexusAir;->mLoop:Landroid/widget/ImageView;

    .line 73
    iget-object p1, p0, Lcom/can/ui/draw/LexusAir;->mAirView:Landroid/view/View;

    const p2, 0x7f080048

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/LexusAir;->mFrontWin:Landroid/widget/ImageView;

    .line 74
    iget-object p1, p0, Lcom/can/ui/draw/LexusAir;->mAirView:Landroid/view/View;

    const p2, 0x7f08004b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/LexusAir;->mRearWin:Landroid/widget/ImageView;

    .line 75
    iget-object p1, p0, Lcom/can/ui/draw/LexusAir;->mAirView:Landroid/view/View;

    const p2, 0x7f08004f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/LexusAir;->mWindDirect:Landroid/widget/ImageView;

    .line 77
    iget-object p1, p0, Lcom/can/ui/draw/LexusAir;->mAirView:Landroid/view/View;

    new-instance p2, Lcom/can/ui/draw/LexusAir$1;

    invoke-direct {p2, p0}, Lcom/can/ui/draw/LexusAir$1;-><init>(Lcom/can/ui/draw/LexusAir;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0703f2
        0x7f0703ef
        0x7f0703f4
        0x7f0703ee
        0x7f0703f3
        0x7f0703f0
        0x7f0703ec
        0x7f0703ed
    .end array-data

    :array_1
    .array-data 4
        0x7f0703e4
        0x7f0703e5
        0x7f0703e6
        0x7f0703e7
        0x7f0703e8
        0x7f0703e9
        0x7f0703ea
        0x7f0703eb
    .end array-data
.end method

.method static synthetic access$000(Lcom/can/ui/draw/LexusAir;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/can/ui/draw/LexusAir;->mShowTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/can/ui/draw/LexusAir;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/can/ui/draw/LexusAir;->mbAirAutoCloseFlag:Z

    return p0
.end method

.method static synthetic access$102(Lcom/can/ui/draw/LexusAir;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/can/ui/draw/LexusAir;->mbAirAutoCloseFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/can/ui/draw/LexusAir;)Landroid/os/Handler;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/can/ui/draw/LexusAir;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private updateAirPowerStatus(Z)V
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7f08000d

    const/16 v2, 0x8

    const v3, 0x7f08000e

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/can/ui/draw/LexusAir;->mAirView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object p0, p0, Lcom/can/ui/draw/LexusAir;->mAirView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p1, p0, Lcom/can/ui/draw/LexusAir;->mAirView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object p0, p0, Lcom/can/ui/draw/LexusAir;->mAirView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public Hide()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/can/ui/draw/LexusAir;->mPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/can/ui/draw/LexusAir;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/can/ui/draw/LexusAir;->AirAutoClose:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 236
    iget-object v0, p0, Lcom/can/ui/draw/LexusAir;->mPopWind:Lcom/can/ui/draw/PopWind;

    iget-object p0, p0, Lcom/can/ui/draw/LexusAir;->mAirView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/can/ui/draw/PopWind;->hide(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public IsShow()Z
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/can/ui/draw/LexusAir;->mPopWind:Lcom/can/ui/draw/PopWind;

    invoke-virtual {p0}, Lcom/can/ui/draw/PopWind;->IsVisable()Z

    move-result p0

    return p0
.end method

.method public setTempTvVisibility()V
    .locals 3

    const-string v0, "persist.sys.hide_air_temp"

    const/4 v1, 0x0

    .line 91
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/can/ui/draw/LexusAir;->mTempLeft:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object p0, p0, Lcom/can/ui/draw/LexusAir;->mTempRight:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/can/ui/draw/LexusAir;->mTempLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object p0, p0, Lcom/can/ui/draw/LexusAir;->mTempRight:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public show([BZ)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 134
    aget-byte v2, p1, v1

    if-eqz v2, :cond_18

    if-nez p2, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v2, 0x1

    .line 140
    aget-byte v3, p1, v2

    const/4 v4, -0x2

    const/4 v5, 0x2

    if-ne v3, v4, :cond_1

    aget-byte v3, p1, v5

    if-ne v3, v4, :cond_1

    .line 141
    invoke-direct {v0, v1}, Lcom/can/ui/draw/LexusAir;->updateAirPowerStatus(Z)V

    goto/16 :goto_b

    .line 143
    :cond_1
    invoke-direct {v0, v2}, Lcom/can/ui/draw/LexusAir;->updateAirPowerStatus(Z)V

    const/4 v3, 0x5

    .line 144
    aget-byte v6, p1, v3

    and-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_17

    .line 145
    iget-object v6, v0, Lcom/can/ui/draw/LexusAir;->mFrontWin:Landroid/widget/ImageView;

    const v7, 0x7f0703de

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    aget-byte v6, p1, v3

    and-int/2addr v6, v5

    shr-int/2addr v6, v2

    if-ne v6, v2, :cond_2

    move v6, v2

    goto :goto_0

    :cond_2
    move v6, v1

    :goto_0
    iput-boolean v6, v0, Lcom/can/ui/draw/LexusAir;->showTempUnitF:Z

    .line 153
    aget-byte v7, p1, v2

    const-string v8, "%.1f%s"

    const-string v9, "OFF"

    const/high16 v10, 0x40000000    # 2.0f

    const-string v11, "HI"

    const-string v12, "LO"

    const/4 v13, -0x1

    if-nez v7, :cond_3

    .line 154
    iget-object v6, v0, Lcom/can/ui/draw/LexusAir;->mTempLeft:Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 155
    :cond_3
    aget-byte v7, p1, v2

    if-ne v7, v13, :cond_4

    .line 156
    iget-object v6, v0, Lcom/can/ui/draw/LexusAir;->mTempLeft:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 157
    :cond_4
    aget-byte v7, p1, v2

    if-ne v7, v4, :cond_5

    .line 158
    iget-object v6, v0, Lcom/can/ui/draw/LexusAir;->mTempLeft:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 160
    :cond_5
    aget-byte v7, p1, v2

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    div-float/2addr v7, v10

    if-eqz v6, :cond_6

    .line 162
    aget-byte v6, p1, v2

    and-int/lit16 v6, v6, 0xff

    int-to-float v7, v6

    .line 164
    :cond_6
    iget-object v6, v0, Lcom/can/ui/draw/LexusAir;->mTempLeft:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    new-array v15, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v15, v1

    iget-boolean v7, v0, Lcom/can/ui/draw/LexusAir;->showTempUnitF:Z

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/can/ui/draw/LexusAir;->mTempUnitF:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v7, v0, Lcom/can/ui/draw/LexusAir;->mTempUnitC:Ljava/lang/String;

    :goto_1
    aput-object v7, v15, v2

    invoke-static {v14, v8, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :goto_2
    aget-byte v6, p1, v5

    if-nez v6, :cond_8

    .line 167
    iget-object v4, v0, Lcom/can/ui/draw/LexusAir;->mTempRight:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 168
    :cond_8
    aget-byte v6, p1, v5

    if-ne v6, v13, :cond_9

    .line 169
    iget-object v4, v0, Lcom/can/ui/draw/LexusAir;->mTempRight:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 170
    :cond_9
    aget-byte v6, p1, v5

    if-ne v6, v4, :cond_a

    .line 171
    iget-object v4, v0, Lcom/can/ui/draw/LexusAir;->mTempRight:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 173
    :cond_a
    aget-byte v4, p1, v5

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    div-float/2addr v4, v10

    .line 174
    iget-boolean v6, v0, Lcom/can/ui/draw/LexusAir;->showTempUnitF:Z

    if-eqz v6, :cond_b

    .line 175
    aget-byte v4, p1, v5

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    .line 177
    :cond_b
    iget-object v6, v0, Lcom/can/ui/draw/LexusAir;->mTempRight:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v5, v1

    iget-boolean v4, v0, Lcom/can/ui/draw/LexusAir;->showTempUnitF:Z

    if-eqz v4, :cond_c

    iget-object v4, v0, Lcom/can/ui/draw/LexusAir;->mTempUnitF:Ljava/lang/String;

    goto :goto_3

    :cond_c
    iget-object v4, v0, Lcom/can/ui/draw/LexusAir;->mTempUnitC:Ljava/lang/String;

    :goto_3
    aput-object v4, v5, v2

    invoke-static {v7, v8, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    const/4 v4, 0x3

    .line 180
    aget-byte v4, p1, v4

    const/4 v5, 0x4

    shr-int/2addr v4, v5

    const/16 v6, 0xf

    and-int/2addr v4, v6

    if-nez v4, :cond_d

    .line 182
    iget-object v1, v0, Lcom/can/ui/draw/LexusAir;->mWindDirect:Landroid/widget/ImageView;

    const v4, 0x7f0703f1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_d
    add-int/2addr v4, v13

    if-gez v4, :cond_e

    goto :goto_5

    .line 187
    :cond_e
    iget-object v1, v0, Lcom/can/ui/draw/LexusAir;->mWindDirectResId:[I

    array-length v7, v1

    if-lt v4, v7, :cond_f

    .line 188
    array-length v1, v1

    sub-int/2addr v1, v2

    goto :goto_5

    :cond_f
    move v1, v4

    .line 190
    :goto_5
    iget-object v4, v0, Lcom/can/ui/draw/LexusAir;->mWindDirect:Landroid/widget/ImageView;

    iget-object v7, v0, Lcom/can/ui/draw/LexusAir;->mWindDirectResId:[I

    aget v1, v7, v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    :goto_6
    aget-byte v1, p1, v5

    shr-int/2addr v1, v5

    and-int/2addr v1, v6

    if-ne v6, v1, :cond_10

    goto :goto_7

    .line 196
    :cond_10
    iget-object v4, v0, Lcom/can/ui/draw/LexusAir;->mWindResId:[I

    array-length v5, v4

    sub-int/2addr v5, v2

    if-le v1, v5, :cond_11

    .line 197
    array-length v1, v4

    sub-int/2addr v1, v2

    .line 198
    :cond_11
    iget-object v5, v0, Lcom/can/ui/draw/LexusAir;->mWindRate:Landroid/widget/ImageView;

    aget v1, v4, v1

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    :goto_7
    aget-byte v1, p1, v3

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_12

    .line 202
    iget-object v1, v0, Lcom/can/ui/draw/LexusAir;->mRearWin:Landroid/widget/ImageView;

    const v4, 0x7f0703e2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 204
    :cond_12
    iget-object v1, v0, Lcom/can/ui/draw/LexusAir;->mRearWin:Landroid/widget/ImageView;

    const v4, 0x7f0703e3

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    :goto_8
    aget-byte v1, p1, v3

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_13

    .line 207
    iget-object v1, v0, Lcom/can/ui/draw/LexusAir;->mAC:Landroid/widget/ImageView;

    const v4, 0x7f0703bb

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 209
    :cond_13
    iget-object v1, v0, Lcom/can/ui/draw/LexusAir;->mAC:Landroid/widget/ImageView;

    const v4, 0x7f0703bc

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    :goto_9
    aget-byte v1, p1, v3

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_14

    .line 212
    iget-object v1, v0, Lcom/can/ui/draw/LexusAir;->mAuto:Landroid/widget/ImageView;

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_a

    .line 214
    :cond_14
    iget-object v1, v0, Lcom/can/ui/draw/LexusAir;->mAuto:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 216
    :goto_a
    aget-byte v1, p1, v3

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_15

    .line 217
    iget-object v1, v0, Lcom/can/ui/draw/LexusAir;->mLoop:Landroid/widget/ImageView;

    const v3, 0x7f0703e1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_b

    .line 219
    :cond_15
    iget-object v1, v0, Lcom/can/ui/draw/LexusAir;->mLoop:Landroid/widget/ImageView;

    const v3, 0x7f0703e0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_b
    if-eqz p2, :cond_16

    .line 224
    iget-object v1, v0, Lcom/can/ui/draw/LexusAir;->mPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz v1, :cond_16

    .line 225
    iget-object v3, v0, Lcom/can/ui/draw/LexusAir;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/can/ui/draw/LexusAir;->mAirView:Landroid/view/View;

    const/16 v5, 0x50

    invoke-virtual {v1, v3, v4, v5}, Lcom/can/ui/draw/PopWind;->show(Landroid/content/Context;Landroid/view/View;I)J

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/can/ui/draw/LexusAir;->mShowTime:J

    .line 227
    iget-object v1, v0, Lcom/can/ui/draw/LexusAir;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/can/ui/draw/LexusAir;->AirAutoClose:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    iput-boolean v2, v0, Lcom/can/ui/draw/LexusAir;->mbAirAutoCloseFlag:Z

    :cond_16
    return-void

    .line 147
    :cond_17
    iget-object v0, v0, Lcom/can/ui/draw/LexusAir;->mFrontWin:Landroid/widget/ImageView;

    const v1, 0x7f0703df

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 135
    :cond_18
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/can/ui/draw/LexusAir;->Hide()V

    return-void
.end method

.method public updateTempTvUnit()V
    .locals 3

    const-string v0, "persist.sys.temp_unit_f"

    const/4 v1, 0x0

    .line 101
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/can/ui/draw/LexusAir;->showTempUnitF:Z

    return-void
.end method
