.class public final Lcom/can/activity/databinding/JeepDspinfoBinding;
.super Ljava/lang/Object;
.source "JeepDspinfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dspBalance:Lcom/can/ui/draw/DspBalance;

.field public final dspCheckAsl:Landroid/widget/SeekBar;

.field public final dspCheckSurround:Landroid/widget/CheckBox;

.field public final imAddFront:Landroid/widget/ImageView;

.field public final imAddLeft:Landroid/widget/ImageView;

.field public final imAddRear:Landroid/widget/ImageView;

.field public final imAddRight:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final toyotaBtnAsl:Landroid/widget/TextView;

.field public final toyotaBtnSurround:Landroid/widget/TextView;

.field public final toyotaDspAseq:Landroid/widget/LinearLayout;

.field public final toyotaDspBass:Landroid/widget/SeekBar;

.field public final toyotaDspBassVal:Landroid/widget/TextView;

.field public final toyotaDspMid:Landroid/widget/SeekBar;

.field public final toyotaDspMidVal:Landroid/widget/TextView;

.field public final toyotaDspTre:Landroid/widget/SeekBar;

.field public final toyotaDspTreVal:Landroid/widget/TextView;

.field public final txDspAsl:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/can/ui/draw/DspBalance;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 85
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 86
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->dspBalance:Lcom/can/ui/draw/DspBalance;

    move-object v1, p3

    .line 87
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->dspCheckAsl:Landroid/widget/SeekBar;

    move-object v1, p4

    .line 88
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->dspCheckSurround:Landroid/widget/CheckBox;

    move-object v1, p5

    .line 89
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->imAddFront:Landroid/widget/ImageView;

    move-object v1, p6

    .line 90
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->imAddLeft:Landroid/widget/ImageView;

    move-object v1, p7

    .line 91
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->imAddRear:Landroid/widget/ImageView;

    move-object v1, p8

    .line 92
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->imAddRight:Landroid/widget/ImageView;

    move-object v1, p9

    .line 93
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->toyotaBtnAsl:Landroid/widget/TextView;

    move-object v1, p10

    .line 94
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->toyotaBtnSurround:Landroid/widget/TextView;

    move-object v1, p11

    .line 95
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->toyotaDspAseq:Landroid/widget/LinearLayout;

    move-object v1, p12

    .line 96
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->toyotaDspBass:Landroid/widget/SeekBar;

    move-object v1, p13

    .line 97
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->toyotaDspBassVal:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 98
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->toyotaDspMid:Landroid/widget/SeekBar;

    move-object/from16 v1, p15

    .line 99
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->toyotaDspMidVal:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 100
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->toyotaDspTre:Landroid/widget/SeekBar;

    move-object/from16 v1, p17

    .line 101
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->toyotaDspTreVal:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 102
    iput-object v1, v0, Lcom/can/activity/databinding/JeepDspinfoBinding;->txDspAsl:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/JeepDspinfoBinding;
    .locals 22

    move-object/from16 v0, p0

    const v1, 0x7f0802dd

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/can/ui/draw/DspBalance;

    if-eqz v5, :cond_0

    const v1, 0x7f0802e2

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/SeekBar;

    if-eqz v6, :cond_0

    const v1, 0x7f0802e4

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_0

    const v1, 0x7f080498

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f080499

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f08049a

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f08049b

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0807b2

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v1, 0x7f0807b3

    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0807b4

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0807b5

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/SeekBar;

    if-eqz v15, :cond_0

    const v1, 0x7f0807b6

    .line 199
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0807ba

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/SeekBar;

    if-eqz v17, :cond_0

    const v1, 0x7f0807bb

    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0807bc

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/SeekBar;

    if-eqz v19, :cond_0

    const v1, 0x7f0807bd

    .line 223
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    const v1, 0x7f08085e

    .line 229
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 234
    new-instance v1, Lcom/can/activity/databinding/JeepDspinfoBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v21}, Lcom/can/activity/databinding/JeepDspinfoBinding;-><init>(Landroid/widget/LinearLayout;Lcom/can/ui/draw/DspBalance;Landroid/widget/SeekBar;Landroid/widget/CheckBox;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 239
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/JeepDspinfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/JeepDspinfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/JeepDspinfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/JeepDspinfoBinding;
    .locals 2

    const v0, 0x7f0b0089

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/JeepDspinfoBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/JeepDspinfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/can/activity/databinding/JeepDspinfoBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/can/activity/databinding/JeepDspinfoBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
