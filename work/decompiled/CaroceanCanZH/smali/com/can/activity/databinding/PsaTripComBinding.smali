.class public final Lcom/can/activity/databinding/PsaTripComBinding;
.super Ljava/lang/Object;
.source "PsaTripComBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final psaLlPage0:Landroid/widget/LinearLayout;

.field public final psaLlPage1:Landroid/widget/LinearLayout;

.field public final psaTvAccumulatedMiles:Landroid/widget/TextView;

.field public final psaTvDestinationMiles:Landroid/widget/TextView;

.field public final psaTvFuelAverage:Landroid/widget/TextView;

.field public final psaTvFuelConsumption:Landroid/widget/TextView;

.field public final psaTvOther:Landroid/widget/TextView;

.field public final psaTvPage0:Landroid/widget/TextView;

.field public final psaTvPage1:Landroid/widget/TextView;

.field public final psaTvPage2:Landroid/widget/TextView;

.field public final psaTvPageClear:Landroid/widget/TextView;

.field public final psaTvRechargeMileage:Landroid/widget/TextView;

.field public final psaTvSpeedAverage:Landroid/widget/TextView;

.field public final psaTvStartStopTiming:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/can/activity/databinding/PsaTripComBinding;->rootView:Landroid/widget/FrameLayout;

    .line 72
    iput-object p2, p0, Lcom/can/activity/databinding/PsaTripComBinding;->psaLlPage0:Landroid/widget/LinearLayout;

    .line 73
    iput-object p3, p0, Lcom/can/activity/databinding/PsaTripComBinding;->psaLlPage1:Landroid/widget/LinearLayout;

    .line 74
    iput-object p4, p0, Lcom/can/activity/databinding/PsaTripComBinding;->psaTvAccumulatedMiles:Landroid/widget/TextView;

    .line 75
    iput-object p5, p0, Lcom/can/activity/databinding/PsaTripComBinding;->psaTvDestinationMiles:Landroid/widget/TextView;

    .line 76
    iput-object p6, p0, Lcom/can/activity/databinding/PsaTripComBinding;->psaTvFuelAverage:Landroid/widget/TextView;

    .line 77
    iput-object p7, p0, Lcom/can/activity/databinding/PsaTripComBinding;->psaTvFuelConsumption:Landroid/widget/TextView;

    .line 78
    iput-object p8, p0, Lcom/can/activity/databinding/PsaTripComBinding;->psaTvOther:Landroid/widget/TextView;

    .line 79
    iput-object p9, p0, Lcom/can/activity/databinding/PsaTripComBinding;->psaTvPage0:Landroid/widget/TextView;

    .line 80
    iput-object p10, p0, Lcom/can/activity/databinding/PsaTripComBinding;->psaTvPage1:Landroid/widget/TextView;

    .line 81
    iput-object p11, p0, Lcom/can/activity/databinding/PsaTripComBinding;->psaTvPage2:Landroid/widget/TextView;

    .line 82
    iput-object p12, p0, Lcom/can/activity/databinding/PsaTripComBinding;->psaTvPageClear:Landroid/widget/TextView;

    .line 83
    iput-object p13, p0, Lcom/can/activity/databinding/PsaTripComBinding;->psaTvRechargeMileage:Landroid/widget/TextView;

    .line 84
    iput-object p14, p0, Lcom/can/activity/databinding/PsaTripComBinding;->psaTvSpeedAverage:Landroid/widget/TextView;

    .line 85
    iput-object p15, p0, Lcom/can/activity/databinding/PsaTripComBinding;->psaTvStartStopTiming:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/PsaTripComBinding;
    .locals 19

    move-object/from16 v0, p0

    const v1, 0x7f0806a2

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0806a3

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0806d3

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v1, 0x7f0806da

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v1, 0x7f0806db

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v1, 0x7f0806dc

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v1, 0x7f0806e4

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v1, 0x7f0806e5

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v1, 0x7f0806e6

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0806e7

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0806e8

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0806e9

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0806eb

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0806ec

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    .line 199
    new-instance v1, Lcom/can/activity/databinding/PsaTripComBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/can/activity/databinding/PsaTripComBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 204
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/PsaTripComBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/PsaTripComBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/PsaTripComBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/PsaTripComBinding;
    .locals 2

    const v0, 0x7f0b00bb

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/PsaTripComBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/PsaTripComBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/PsaTripComBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/can/activity/databinding/PsaTripComBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
