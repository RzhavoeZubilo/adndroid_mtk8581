.class public final Lcom/can/activity/databinding/ToyotaTripBinding;
.super Ljava/lang/Object;
.source "ToyotaTripBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivFrontCoverOpen:Landroid/widget/ImageView;

.field public final ivFueling:Landroid/widget/ImageView;

.field public final ivLeftBackDoor:Landroid/widget/ImageView;

.field public final ivLeftFrontDoor:Landroid/widget/ImageView;

.field public final ivRearDoorOpen:Landroid/widget/ImageView;

.field public final ivRightBackDoor:Landroid/widget/ImageView;

.field public final ivRightFrontDoor:Landroid/widget/ImageView;

.field public final layoutCarInfo:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final toyatoAvgSpeed:Landroid/widget/TextView;

.field public final toyatoDrivenDisa:Landroid/widget/TextView;

.field public final toyatoDrivenDisb:Landroid/widget/TextView;

.field public final toyatoDrivenTdistance:Landroid/widget/TextView;

.field public final toyatoDrivenXdistance:Landroid/widget/TextView;

.field public final toyatoEngineSpeed:Landroid/widget/TextView;

.field public final toyatoHandbrake:Landroid/widget/TextView;

.field public final toyatoOutdoorTemp:Landroid/widget/TextView;

.field public final toyatoTravelingSpeed:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 82
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 83
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->ivFrontCoverOpen:Landroid/widget/ImageView;

    move-object v1, p3

    .line 84
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->ivFueling:Landroid/widget/ImageView;

    move-object v1, p4

    .line 85
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->ivLeftBackDoor:Landroid/widget/ImageView;

    move-object v1, p5

    .line 86
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->ivLeftFrontDoor:Landroid/widget/ImageView;

    move-object v1, p6

    .line 87
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->ivRearDoorOpen:Landroid/widget/ImageView;

    move-object v1, p7

    .line 88
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->ivRightBackDoor:Landroid/widget/ImageView;

    move-object v1, p8

    .line 89
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->ivRightFrontDoor:Landroid/widget/ImageView;

    move-object v1, p9

    .line 90
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->layoutCarInfo:Landroid/widget/LinearLayout;

    move-object v1, p10

    .line 91
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->toyatoAvgSpeed:Landroid/widget/TextView;

    move-object v1, p11

    .line 92
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->toyatoDrivenDisa:Landroid/widget/TextView;

    move-object v1, p12

    .line 93
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->toyatoDrivenDisb:Landroid/widget/TextView;

    move-object v1, p13

    .line 94
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->toyatoDrivenTdistance:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 95
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->toyatoDrivenXdistance:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 96
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->toyatoEngineSpeed:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 97
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->toyatoHandbrake:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 98
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->toyatoOutdoorTemp:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 99
    iput-object v1, v0, Lcom/can/activity/databinding/ToyotaTripBinding;->toyatoTravelingSpeed:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/ToyotaTripBinding;
    .locals 22

    move-object/from16 v0, p0

    const v1, 0x7f0804d1

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v1, 0x7f0804d3

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0804d8

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f0804d9

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f0804dd

    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f0804e0

    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0804e1

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f080573

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0807a9

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0807aa

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0807ab

    .line 190
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0807ac

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0807ad

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0807ae

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0807af

    .line 214
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0807b0

    .line 220
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    const v1, 0x7f0807b1

    .line 226
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    .line 231
    new-instance v1, Lcom/can/activity/databinding/ToyotaTripBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v21}, Lcom/can/activity/databinding/ToyotaTripBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 237
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/ToyotaTripBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/ToyotaTripBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/ToyotaTripBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/ToyotaTripBinding;
    .locals 2

    const v0, 0x7f0b00dd

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 118
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 120
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/ToyotaTripBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/ToyotaTripBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/ToyotaTripBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/can/activity/databinding/ToyotaTripBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
