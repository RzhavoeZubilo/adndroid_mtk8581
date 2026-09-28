.class public final Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;
.super Ljava/lang/Object;
.source "CarinfoUi1WhiteBinding.java"

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

.field public final carinfoRate:Lcom/can/ui/view/Speedometer;

.field public final carinfoRateUnit:Landroid/widget/TextView;

.field public final carinfoRightl:Landroid/widget/ImageView;

.field public final carinfoRpm:Lcom/can/ui/view/Speedometer;

.field public final carinfoSafeb:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/can/ui/view/Speedometer;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/can/ui/view/Speedometer;Landroid/widget/ImageView;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;->rootView:Landroid/widget/FrameLayout;

    .line 67
    iput-object p2, p0, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;->carinfoBigled:Landroid/widget/ImageView;

    .line 68
    iput-object p3, p0, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;->carinfoFootbrake:Landroid/widget/ImageView;

    .line 69
    iput-object p4, p0, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;->carinfoGear:Landroid/widget/ImageView;

    .line 70
    iput-object p5, p0, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;->carinfoGps:Landroid/widget/TextView;

    .line 71
    iput-object p6, p0, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;->carinfoHandbrake:Landroid/widget/ImageView;

    .line 72
    iput-object p7, p0, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;->carinfoLeftl:Landroid/widget/ImageView;

    .line 73
    iput-object p8, p0, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;->carinfoMileage:Landroid/widget/TextView;

    .line 74
    iput-object p9, p0, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;->carinfoRate:Lcom/can/ui/view/Speedometer;

    .line 75
    iput-object p10, p0, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;->carinfoRateUnit:Landroid/widget/TextView;

    .line 76
    iput-object p11, p0, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;->carinfoRightl:Landroid/widget/ImageView;

    .line 77
    iput-object p12, p0, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;->carinfoRpm:Lcom/can/ui/view/Speedometer;

    .line 78
    iput-object p13, p0, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;->carinfoSafeb:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f0801b2

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v1, 0x7f0801b3

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0801b4

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f0801b6

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v1, 0x7f0801b7

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f0801b8

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0801b9

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v1, 0x7f0801bb

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/can/ui/view/Speedometer;

    if-eqz v12, :cond_0

    const v1, 0x7f0801bd

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0801bf

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    const v1, 0x7f0801c0

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/can/ui/view/Speedometer;

    if-eqz v15, :cond_0

    const v1, 0x7f0801c3

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    .line 180
    new-instance v1, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/can/ui/view/Speedometer;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/can/ui/view/Speedometer;Landroid/widget/ImageView;)V

    return-object v1

    .line 184
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;
    .locals 2

    const v0, 0x7f0b003f

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 97
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/can/activity/databinding/CarinfoUi1WhiteBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
