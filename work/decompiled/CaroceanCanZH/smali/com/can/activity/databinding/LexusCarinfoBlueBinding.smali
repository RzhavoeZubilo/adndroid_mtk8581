.class public final Lcom/can/activity/databinding/LexusCarinfoBlueBinding;
.super Ljava/lang/Object;
.source "LexusCarinfoBlueBinding.java"

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

.field public final carinfoRightl:Landroid/widget/ImageView;

.field public final carinfoRpm:Lcom/can/ui/view/Speedometer;

.field public final carinfoSafeb:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/can/ui/view/Speedometer;Landroid/widget/ImageView;Lcom/can/ui/view/Speedometer;Landroid/widget/ImageView;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;->rootView:Landroid/widget/FrameLayout;

    .line 63
    iput-object p2, p0, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;->carinfoBigled:Landroid/widget/ImageView;

    .line 64
    iput-object p3, p0, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;->carinfoFootbrake:Landroid/widget/ImageView;

    .line 65
    iput-object p4, p0, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;->carinfoGear:Landroid/widget/ImageView;

    .line 66
    iput-object p5, p0, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;->carinfoGps:Landroid/widget/TextView;

    .line 67
    iput-object p6, p0, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;->carinfoHandbrake:Landroid/widget/ImageView;

    .line 68
    iput-object p7, p0, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;->carinfoLeftl:Landroid/widget/ImageView;

    .line 69
    iput-object p8, p0, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;->carinfoMileage:Landroid/widget/TextView;

    .line 70
    iput-object p9, p0, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;->carinfoRate:Lcom/can/ui/view/Speedometer;

    .line 71
    iput-object p10, p0, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;->carinfoRightl:Landroid/widget/ImageView;

    .line 72
    iput-object p11, p0, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;->carinfoRpm:Lcom/can/ui/view/Speedometer;

    .line 73
    iput-object p12, p0, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;->carinfoSafeb:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/LexusCarinfoBlueBinding;
    .locals 15

    const v0, 0x7f0801b2

    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0801b3

    .line 110
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0801b4

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0801b6

    .line 122
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0801b7

    .line 128
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0801b8

    .line 134
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0801b9

    .line 140
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0801bb

    .line 146
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/can/ui/view/Speedometer;

    if-eqz v11, :cond_0

    const v0, 0x7f0801bf

    .line 152
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v0, 0x7f0801c0

    .line 158
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/can/ui/view/Speedometer;

    if-eqz v13, :cond_0

    const v0, 0x7f0801c3

    .line 164
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    .line 169
    new-instance v0, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/can/ui/view/Speedometer;Landroid/widget/ImageView;Lcom/can/ui/view/Speedometer;Landroid/widget/ImageView;)V

    return-object v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/LexusCarinfoBlueBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/LexusCarinfoBlueBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/LexusCarinfoBlueBinding;
    .locals 2

    const v0, 0x7f0b0094

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/LexusCarinfoBlueBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/can/activity/databinding/LexusCarinfoBlueBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
