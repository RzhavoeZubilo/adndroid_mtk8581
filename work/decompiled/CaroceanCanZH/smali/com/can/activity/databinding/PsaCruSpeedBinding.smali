.class public final Lcom/can/activity/databinding/PsaCruSpeedBinding;
.super Ljava/lang/Object;
.source "PsaCruSpeedBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final psaBtnCruSpeed:Landroid/widget/TextView;

.field public final psaBtnLimitSpeed:Landroid/widget/TextView;

.field public final psaBtnReset:Landroid/widget/TextView;

.field public final psaBtnUserSet:Landroid/widget/TextView;

.field public final psaSkbarCruSpeed1:Landroid/widget/SeekBar;

.field public final psaSkbarCruSpeed2:Landroid/widget/SeekBar;

.field public final psaSkbarCruSpeed3:Landroid/widget/SeekBar;

.field public final psaSkbarCruSpeed4:Landroid/widget/SeekBar;

.field public final psaSkbarCruSpeed5:Landroid/widget/SeekBar;

.field public final psaSkbarCruSpeed6:Landroid/widget/SeekBar;

.field public final psaTvCruSpeedValue1:Landroid/widget/TextView;

.field public final psaTvCruSpeedValue2:Landroid/widget/TextView;

.field public final psaTvCruSpeedValue3:Landroid/widget/TextView;

.field public final psaTvCruSpeedValue4:Landroid/widget/TextView;

.field public final psaTvCruSpeedValue5:Landroid/widget/TextView;

.field public final psaTvCruSpeedValue6:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 79
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 80
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->psaBtnCruSpeed:Landroid/widget/TextView;

    move-object v1, p3

    .line 81
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->psaBtnLimitSpeed:Landroid/widget/TextView;

    move-object v1, p4

    .line 82
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->psaBtnReset:Landroid/widget/TextView;

    move-object v1, p5

    .line 83
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->psaBtnUserSet:Landroid/widget/TextView;

    move-object v1, p6

    .line 84
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->psaSkbarCruSpeed1:Landroid/widget/SeekBar;

    move-object v1, p7

    .line 85
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->psaSkbarCruSpeed2:Landroid/widget/SeekBar;

    move-object v1, p8

    .line 86
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->psaSkbarCruSpeed3:Landroid/widget/SeekBar;

    move-object v1, p9

    .line 87
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->psaSkbarCruSpeed4:Landroid/widget/SeekBar;

    move-object v1, p10

    .line 88
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->psaSkbarCruSpeed5:Landroid/widget/SeekBar;

    move-object v1, p11

    .line 89
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->psaSkbarCruSpeed6:Landroid/widget/SeekBar;

    move-object v1, p12

    .line 90
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->psaTvCruSpeedValue1:Landroid/widget/TextView;

    move-object v1, p13

    .line 91
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->psaTvCruSpeedValue2:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 92
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->psaTvCruSpeedValue3:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 93
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->psaTvCruSpeedValue4:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 94
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->psaTvCruSpeedValue5:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 95
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->psaTvCruSpeedValue6:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/PsaCruSpeedBinding;
    .locals 21

    move-object/from16 v0, p0

    const v1, 0x7f080669

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v1, 0x7f08066a

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const v1, 0x7f08066c

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v1, 0x7f08066e

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v1, 0x7f0806c7

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/SeekBar;

    if-eqz v9, :cond_0

    const v1, 0x7f0806c8

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/SeekBar;

    if-eqz v10, :cond_0

    const v1, 0x7f0806c9

    .line 162
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/SeekBar;

    if-eqz v11, :cond_0

    const v1, 0x7f0806ca

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/SeekBar;

    if-eqz v12, :cond_0

    const v1, 0x7f0806cb

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/SeekBar;

    if-eqz v13, :cond_0

    const v1, 0x7f0806cc

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/SeekBar;

    if-eqz v14, :cond_0

    const v1, 0x7f0806d4

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0806d5

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0806d6

    .line 198
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0806d7

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0806d8

    .line 210
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0806d9

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    .line 221
    new-instance v1, Lcom/can/activity/databinding/PsaCruSpeedBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v20}, Lcom/can/activity/databinding/PsaCruSpeedBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 227
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/PsaCruSpeedBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/PsaCruSpeedBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/PsaCruSpeedBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/PsaCruSpeedBinding;
    .locals 2

    const v0, 0x7f0b00b4

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 114
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/PsaCruSpeedBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/PsaCruSpeedBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/PsaCruSpeedBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/can/activity/databinding/PsaCruSpeedBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
