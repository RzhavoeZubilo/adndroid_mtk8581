.class public final Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;
.super Ljava/lang/Object;
.source "CarinfoUi1RedYzgBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final carinfoBigled:Landroid/widget/ImageView;

.field public final carinfoFootbrake:Landroid/widget/ImageView;

.field public final carinfoGear:Landroid/widget/ImageView;

.field public final carinfoGps:Landroid/widget/TextView;

.field public final carinfoHandbrake:Landroid/widget/ImageView;

.field public final carinfoLeftl:Landroid/widget/ImageView;

.field public final carinfoMileage:Landroid/widget/TextView;

.field public final carinfoOuttemp:Landroid/widget/TextView;

.field public final carinfoRate:Lcom/can/ui/view/Speedometer;

.field public final carinfoRateText:Landroid/widget/TextView;

.field public final carinfoRateUnit:Landroid/widget/TextView;

.field public final carinfoRightl:Landroid/widget/ImageView;

.field public final carinfoRpm:Lcom/can/ui/view/Speedometer;

.field public final carinfoRpmText:Landroid/widget/TextView;

.field public final carinfoSafeb:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/can/ui/view/Speedometer;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/can/ui/view/Speedometer;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 2

    move-object v0, p0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 76
    iput-object v1, v0, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->rootView:Landroid/widget/FrameLayout;

    move-object v1, p2

    .line 77
    iput-object v1, v0, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->carinfoBigled:Landroid/widget/ImageView;

    move-object v1, p3

    .line 78
    iput-object v1, v0, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->carinfoFootbrake:Landroid/widget/ImageView;

    move-object v1, p4

    .line 79
    iput-object v1, v0, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->carinfoGear:Landroid/widget/ImageView;

    move-object v1, p5

    .line 80
    iput-object v1, v0, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->carinfoGps:Landroid/widget/TextView;

    move-object v1, p6

    .line 81
    iput-object v1, v0, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->carinfoHandbrake:Landroid/widget/ImageView;

    move-object v1, p7

    .line 82
    iput-object v1, v0, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->carinfoLeftl:Landroid/widget/ImageView;

    move-object v1, p8

    .line 83
    iput-object v1, v0, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->carinfoMileage:Landroid/widget/TextView;

    move-object v1, p9

    .line 84
    iput-object v1, v0, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->carinfoOuttemp:Landroid/widget/TextView;

    move-object v1, p10

    .line 85
    iput-object v1, v0, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->carinfoRate:Lcom/can/ui/view/Speedometer;

    move-object v1, p11

    .line 86
    iput-object v1, v0, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->carinfoRateText:Landroid/widget/TextView;

    move-object v1, p12

    .line 87
    iput-object v1, v0, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->carinfoRateUnit:Landroid/widget/TextView;

    move-object v1, p13

    .line 88
    iput-object v1, v0, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->carinfoRightl:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 89
    iput-object v1, v0, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->carinfoRpm:Lcom/can/ui/view/Speedometer;

    move-object/from16 v1, p15

    .line 90
    iput-object v1, v0, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->carinfoRpmText:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 91
    iput-object v1, v0, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->carinfoSafeb:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;
    .locals 20

    move-object/from16 v0, p0

    const v1, 0x7f0801b2

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v1, 0x7f0801b3

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0801b4

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f0801b6

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v1, 0x7f0801b7

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f0801b8

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0801b9

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v1, 0x7f0801ba

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v1, 0x7f0801bb

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/can/ui/view/Speedometer;

    if-eqz v13, :cond_0

    const v1, 0x7f0801bc

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0801bd

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0801bf

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    const v1, 0x7f0801c0

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/can/ui/view/Speedometer;

    if-eqz v17, :cond_0

    const v1, 0x7f0801c1

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0801c3

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/ImageView;

    if-eqz v19, :cond_0

    .line 211
    new-instance v1, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-direct/range {v3 .. v19}, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/can/ui/view/Speedometer;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/can/ui/view/Speedometer;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-object v1

    .line 216
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;
    .locals 2

    const v0, 0x7f0b003e

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/can/activity/databinding/CarinfoUi1RedYzgBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
