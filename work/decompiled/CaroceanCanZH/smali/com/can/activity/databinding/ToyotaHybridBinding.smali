.class public final Lcom/can/activity/databinding/ToyotaHybridBinding;
.super Ljava/lang/Object;
.source "ToyotaHybridBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final layoutHybridDev:Landroid/widget/RelativeLayout;

.field public final layoutHybridInfo:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final toyotaHybridBattery:Landroid/widget/ImageView;

.field public final toyotaHybridGrendLeft:Landroid/widget/ImageView;

.field public final toyotaHybridGrendRight:Landroid/widget/ImageView;

.field public final toyotaHybridGrendVer:Landroid/widget/ImageView;

.field public final toyotaHybridRedRight:Landroid/widget/ImageView;

.field public final toyotaHybridRedV:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/can/activity/databinding/ToyotaHybridBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 52
    iput-object p2, p0, Lcom/can/activity/databinding/ToyotaHybridBinding;->layoutHybridDev:Landroid/widget/RelativeLayout;

    .line 53
    iput-object p3, p0, Lcom/can/activity/databinding/ToyotaHybridBinding;->layoutHybridInfo:Landroid/widget/LinearLayout;

    .line 54
    iput-object p4, p0, Lcom/can/activity/databinding/ToyotaHybridBinding;->toyotaHybridBattery:Landroid/widget/ImageView;

    .line 55
    iput-object p5, p0, Lcom/can/activity/databinding/ToyotaHybridBinding;->toyotaHybridGrendLeft:Landroid/widget/ImageView;

    .line 56
    iput-object p6, p0, Lcom/can/activity/databinding/ToyotaHybridBinding;->toyotaHybridGrendRight:Landroid/widget/ImageView;

    .line 57
    iput-object p7, p0, Lcom/can/activity/databinding/ToyotaHybridBinding;->toyotaHybridGrendVer:Landroid/widget/ImageView;

    .line 58
    iput-object p8, p0, Lcom/can/activity/databinding/ToyotaHybridBinding;->toyotaHybridRedRight:Landroid/widget/ImageView;

    .line 59
    iput-object p9, p0, Lcom/can/activity/databinding/ToyotaHybridBinding;->toyotaHybridRedV:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/ToyotaHybridBinding;
    .locals 12

    const v0, 0x7f08057b

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f08057c

    .line 96
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0807c1

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0807c2

    .line 108
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0807c3

    .line 114
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0807c4

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0807c5

    .line 126
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v0, 0x7f0807c6

    .line 132
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    .line 137
    new-instance v0, Lcom/can/activity/databinding/ToyotaHybridBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/can/activity/databinding/ToyotaHybridBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/ToyotaHybridBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/ToyotaHybridBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/ToyotaHybridBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/ToyotaHybridBinding;
    .locals 2

    const v0, 0x7f0b00da

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/ToyotaHybridBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/ToyotaHybridBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/ToyotaHybridBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/can/activity/databinding/ToyotaHybridBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
