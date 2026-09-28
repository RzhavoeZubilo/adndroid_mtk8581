.class public final Lcom/can/activity/databinding/Dz6InfoBinding;
.super Ljava/lang/Object;
.source "Dz6InfoBinding.java"

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

.field public final tvBatteryVoltage:Landroid/widget/TextView;

.field public final tvCleaningFluid:Landroid/widget/TextView;

.field public final tvDoorOpenWarning:Landroid/widget/TextView;

.field public final tvDrivenDistance:Landroid/widget/TextView;

.field public final tvEngineSpeed:Landroid/widget/TextView;

.field public final tvHandbrake:Landroid/widget/TextView;

.field public final tvOilLeft:Landroid/widget/TextView;

.field public final tvOutdoorTemp:Landroid/widget/TextView;

.field public final tvRearDoorOpen:Landroid/widget/TextView;

.field public final tvSeatBelts:Landroid/widget/TextView;

.field public final tvTravelingSpeed:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 89
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 90
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->ivFrontCoverOpen:Landroid/widget/ImageView;

    move-object v1, p3

    .line 91
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->ivFueling:Landroid/widget/ImageView;

    move-object v1, p4

    .line 92
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->ivLeftBackDoor:Landroid/widget/ImageView;

    move-object v1, p5

    .line 93
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->ivLeftFrontDoor:Landroid/widget/ImageView;

    move-object v1, p6

    .line 94
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->ivRearDoorOpen:Landroid/widget/ImageView;

    move-object v1, p7

    .line 95
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->ivRightBackDoor:Landroid/widget/ImageView;

    move-object v1, p8

    .line 96
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->ivRightFrontDoor:Landroid/widget/ImageView;

    move-object v1, p9

    .line 97
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->layoutCarInfo:Landroid/widget/LinearLayout;

    move-object v1, p10

    .line 98
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->tvBatteryVoltage:Landroid/widget/TextView;

    move-object v1, p11

    .line 99
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->tvCleaningFluid:Landroid/widget/TextView;

    move-object v1, p12

    .line 100
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->tvDoorOpenWarning:Landroid/widget/TextView;

    move-object v1, p13

    .line 101
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->tvDrivenDistance:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 102
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->tvEngineSpeed:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 103
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->tvHandbrake:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 104
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->tvOilLeft:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 105
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->tvOutdoorTemp:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 106
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->tvRearDoorOpen:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 107
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->tvSeatBelts:Landroid/widget/TextView;

    move-object/from16 v1, p20

    .line 108
    iput-object v1, v0, Lcom/can/activity/databinding/Dz6InfoBinding;->tvTravelingSpeed:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/Dz6InfoBinding;
    .locals 24

    move-object/from16 v0, p0

    const v1, 0x7f0804d1

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v1, 0x7f0804d3

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0804d8

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f0804d9

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f0804dd

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f0804e0

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0804e1

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f080573

    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0807d5

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0807dc

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0807e5

    .line 199
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0807e6

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0807e9

    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0807f0

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f080822

    .line 223
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f080823

    .line 229
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    const v1, 0x7f080834

    .line 235
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    const v1, 0x7f080838

    .line 241
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    const v1, 0x7f08083c

    .line 247
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/widget/TextView;

    if-eqz v23, :cond_0

    .line 252
    new-instance v1, Lcom/can/activity/databinding/Dz6InfoBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v23}, Lcom/can/activity/databinding/Dz6InfoBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 258
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/Dz6InfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/Dz6InfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/Dz6InfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/Dz6InfoBinding;
    .locals 2

    const v0, 0x7f0b004d

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 127
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/Dz6InfoBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/Dz6InfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/Dz6InfoBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/can/activity/databinding/Dz6InfoBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
