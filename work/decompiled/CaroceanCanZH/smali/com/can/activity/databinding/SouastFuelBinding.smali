.class public final Lcom/can/activity/databinding/SouastFuelBinding;
.super Ljava/lang/Object;
.source "SouastFuelBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final psaLlPage0:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final souastLangset:Landroid/widget/TextView;

.field public final souastLlSwitch:Landroid/widget/LinearLayout;

.field public final souastTpms:Landroid/widget/TextView;

.field public final souastTvDestinationMiles:Landroid/widget/TextView;

.field public final souastTvFuelConsumption:Landroid/widget/TextView;

.field public final souastTvRechargeMileage:Landroid/widget/TextView;

.field public final souastTvStartStopTiming:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/can/activity/databinding/SouastFuelBinding;->rootView:Landroid/widget/FrameLayout;

    .line 52
    iput-object p2, p0, Lcom/can/activity/databinding/SouastFuelBinding;->psaLlPage0:Landroid/widget/LinearLayout;

    .line 53
    iput-object p3, p0, Lcom/can/activity/databinding/SouastFuelBinding;->souastLangset:Landroid/widget/TextView;

    .line 54
    iput-object p4, p0, Lcom/can/activity/databinding/SouastFuelBinding;->souastLlSwitch:Landroid/widget/LinearLayout;

    .line 55
    iput-object p5, p0, Lcom/can/activity/databinding/SouastFuelBinding;->souastTpms:Landroid/widget/TextView;

    .line 56
    iput-object p6, p0, Lcom/can/activity/databinding/SouastFuelBinding;->souastTvDestinationMiles:Landroid/widget/TextView;

    .line 57
    iput-object p7, p0, Lcom/can/activity/databinding/SouastFuelBinding;->souastTvFuelConsumption:Landroid/widget/TextView;

    .line 58
    iput-object p8, p0, Lcom/can/activity/databinding/SouastFuelBinding;->souastTvRechargeMileage:Landroid/widget/TextView;

    .line 59
    iput-object p9, p0, Lcom/can/activity/databinding/SouastFuelBinding;->souastTvStartStopTiming:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/SouastFuelBinding;
    .locals 12

    const v0, 0x7f0806a2

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f080729

    .line 96
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v0, 0x7f08072a

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f08072b

    .line 108
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f08072c

    .line 114
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f08072d

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f08072e

    .line 126
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f08072f

    .line 132
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 137
    new-instance v0, Lcom/can/activity/databinding/SouastFuelBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/can/activity/databinding/SouastFuelBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 141
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 142
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/SouastFuelBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/SouastFuelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/SouastFuelBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/SouastFuelBinding;
    .locals 2

    const v0, 0x7f0b00c9

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/SouastFuelBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/SouastFuelBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/SouastFuelBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/can/activity/databinding/SouastFuelBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
