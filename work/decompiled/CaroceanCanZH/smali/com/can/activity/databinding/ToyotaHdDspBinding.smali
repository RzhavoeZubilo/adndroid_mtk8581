.class public final Lcom/can/activity/databinding/ToyotaHdDspBinding;
.super Ljava/lang/Object;
.source "ToyotaHdDspBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dspBalance:Lcom/can/ui/draw/DspBalance;

.field public final dspCheckAsl:Landroid/widget/CheckBox;

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

.field public final toyotaDspMainVol:Landroid/widget/TextView;

.field public final toyotaDspMainVolAdd:Landroid/widget/TextView;

.field public final toyotaDspMainVolDel:Landroid/widget/TextView;

.field public final toyotaDspMid:Landroid/widget/SeekBar;

.field public final toyotaDspMidVal:Landroid/widget/TextView;

.field public final toyotaDspTre:Landroid/widget/SeekBar;

.field public final toyotaDspTreVal:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/can/ui/draw/DspBalance;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 92
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 93
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->dspBalance:Lcom/can/ui/draw/DspBalance;

    move-object v1, p3

    .line 94
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->dspCheckAsl:Landroid/widget/CheckBox;

    move-object v1, p4

    .line 95
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->dspCheckSurround:Landroid/widget/CheckBox;

    move-object v1, p5

    .line 96
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->imAddFront:Landroid/widget/ImageView;

    move-object v1, p6

    .line 97
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->imAddLeft:Landroid/widget/ImageView;

    move-object v1, p7

    .line 98
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->imAddRear:Landroid/widget/ImageView;

    move-object v1, p8

    .line 99
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->imAddRight:Landroid/widget/ImageView;

    move-object v1, p9

    .line 100
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->toyotaBtnAsl:Landroid/widget/TextView;

    move-object v1, p10

    .line 101
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->toyotaBtnSurround:Landroid/widget/TextView;

    move-object v1, p11

    .line 102
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->toyotaDspAseq:Landroid/widget/LinearLayout;

    move-object v1, p12

    .line 103
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->toyotaDspBass:Landroid/widget/SeekBar;

    move-object v1, p13

    .line 104
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->toyotaDspBassVal:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 105
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->toyotaDspMainVol:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 106
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->toyotaDspMainVolAdd:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 107
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->toyotaDspMainVolDel:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 108
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->toyotaDspMid:Landroid/widget/SeekBar;

    move-object/from16 v1, p18

    .line 109
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->toyotaDspMidVal:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 110
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->toyotaDspTre:Landroid/widget/SeekBar;

    move-object/from16 v1, p20

    .line 111
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->toyotaDspTreVal:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/ToyotaHdDspBinding;
    .locals 24

    move-object/from16 v0, p0

    const v1, 0x7f0802dd

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/can/ui/draw/DspBalance;

    if-eqz v5, :cond_0

    const v1, 0x7f0802e2

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/CheckBox;

    if-eqz v6, :cond_0

    const v1, 0x7f0802e4

    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_0

    const v1, 0x7f080498

    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f080499

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f08049a

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f08049b

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0807b2

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v1, 0x7f0807b3

    .line 190
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0807b4

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0807b5

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/SeekBar;

    if-eqz v15, :cond_0

    const v1, 0x7f0807b6

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0807b7

    .line 214
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0807b8

    .line 220
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0807b9

    .line 226
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0807ba

    .line 232
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/SeekBar;

    if-eqz v20, :cond_0

    const v1, 0x7f0807bb

    .line 238
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    const v1, 0x7f0807bc

    .line 244
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/SeekBar;

    if-eqz v22, :cond_0

    const v1, 0x7f0807bd

    .line 250
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_0

    .line 255
    new-instance v1, Lcom/can/activity/databinding/ToyotaHdDspBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v23}, Lcom/can/activity/databinding/ToyotaHdDspBinding;-><init>(Landroid/widget/LinearLayout;Lcom/can/ui/draw/DspBalance;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    return-object v1

    .line 261
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/ToyotaHdDspBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 122
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/ToyotaHdDspBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/ToyotaHdDspBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/ToyotaHdDspBinding;
    .locals 2

    const v0, 0x7f0b00d8

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 132
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/ToyotaHdDspBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/ToyotaHdDspBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/can/activity/databinding/ToyotaHdDspBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/can/activity/databinding/ToyotaHdDspBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
