.class public final Lcom/can/activity/databinding/ToyotaDspBinding;
.super Ljava/lang/Object;
.source "ToyotaDspBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dspBalance:Lcom/can/ui/draw/DspBalance;

.field public final dspCheckAsl:Landroid/widget/CheckBox;

.field public final dspCheckSurround:Landroid/widget/CheckBox;

.field public final dspLayoutDev:Landroid/widget/RelativeLayout;

.field public final dspLayoutInfo:Landroid/widget/LinearLayout;

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


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/can/ui/draw/DspBalance;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 89
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 90
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->dspBalance:Lcom/can/ui/draw/DspBalance;

    move-object v1, p3

    .line 91
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->dspCheckAsl:Landroid/widget/CheckBox;

    move-object v1, p4

    .line 92
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->dspCheckSurround:Landroid/widget/CheckBox;

    move-object v1, p5

    .line 93
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->dspLayoutDev:Landroid/widget/RelativeLayout;

    move-object v1, p6

    .line 94
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->dspLayoutInfo:Landroid/widget/LinearLayout;

    move-object v1, p7

    .line 95
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->imAddFront:Landroid/widget/ImageView;

    move-object v1, p8

    .line 96
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->imAddLeft:Landroid/widget/ImageView;

    move-object v1, p9

    .line 97
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->imAddRear:Landroid/widget/ImageView;

    move-object v1, p10

    .line 98
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->imAddRight:Landroid/widget/ImageView;

    move-object v1, p11

    .line 99
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->toyotaBtnAsl:Landroid/widget/TextView;

    move-object v1, p12

    .line 100
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->toyotaBtnSurround:Landroid/widget/TextView;

    move-object v1, p13

    .line 101
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->toyotaDspAseq:Landroid/widget/LinearLayout;

    move-object/from16 v1, p14

    .line 102
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->toyotaDspBass:Landroid/widget/SeekBar;

    move-object/from16 v1, p15

    .line 103
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->toyotaDspBassVal:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 104
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->toyotaDspMid:Landroid/widget/SeekBar;

    move-object/from16 v1, p17

    .line 105
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->toyotaDspMidVal:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 106
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->toyotaDspTre:Landroid/widget/SeekBar;

    move-object/from16 v1, p19

    .line 107
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaDspBinding;->toyotaDspTreVal:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/ToyotaDspBinding;
    .locals 23

    move-object/from16 v0, p0

    const v1, 0x7f0802dd

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/can/ui/draw/DspBalance;

    if-eqz v5, :cond_0

    const v1, 0x7f0802e2

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/CheckBox;

    if-eqz v6, :cond_0

    const v1, 0x7f0802e4

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_0

    const v1, 0x7f0802e9

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    const v1, 0x7f0802ea

    .line 162
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f080498

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f080499

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f08049a

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f08049b

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    const v1, 0x7f0807b2

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0807b3

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0807b4

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/LinearLayout;

    if-eqz v16, :cond_0

    const v1, 0x7f0807b5

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/SeekBar;

    if-eqz v17, :cond_0

    const v1, 0x7f0807b6

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0807ba

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/SeekBar;

    if-eqz v19, :cond_0

    const v1, 0x7f0807bb

    .line 228
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    const v1, 0x7f0807bc

    .line 234
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/SeekBar;

    if-eqz v21, :cond_0

    const v1, 0x7f0807bd

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    .line 245
    new-instance v1, Lcom/can/activity/databinding/ToyotaDspBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v22}, Lcom/can/activity/databinding/ToyotaDspBinding;-><init>(Landroid/widget/LinearLayout;Lcom/can/ui/draw/DspBalance;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    return-object v1

    .line 250
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/ToyotaDspBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/ToyotaDspBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/ToyotaDspBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/ToyotaDspBinding;
    .locals 2

    const v0, 0x7f0b00d5

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/ToyotaDspBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/ToyotaDspBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/can/activity/databinding/ToyotaDspBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/can/activity/databinding/ToyotaDspBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
