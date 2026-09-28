.class public final Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;
.super Ljava/lang/Object;
.source "ToyotaHdCarInfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/ScrollView;

.field public final toyataRelativeHisFule:Landroid/widget/RelativeLayout;

.field public final toyotaRelativeCarSet:Landroid/widget/RelativeLayout;

.field public final toyotaRelativeDsp:Landroid/widget/RelativeLayout;

.field public final toyotaRelativeHybrid:Landroid/widget/RelativeLayout;

.field public final tpyotaRelativeCurFule:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;->rootView:Landroid/widget/ScrollView;

    .line 41
    iput-object p2, p0, Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;->toyataRelativeHisFule:Landroid/widget/RelativeLayout;

    .line 42
    iput-object p3, p0, Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;->toyotaRelativeCarSet:Landroid/widget/RelativeLayout;

    .line 43
    iput-object p4, p0, Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;->toyotaRelativeDsp:Landroid/widget/RelativeLayout;

    .line 44
    iput-object p5, p0, Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;->toyotaRelativeHybrid:Landroid/widget/RelativeLayout;

    .line 45
    iput-object p6, p0, Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;->tpyotaRelativeCurFule:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;
    .locals 9

    const v0, 0x7f0807a8

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0807c7

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0807c8

    .line 88
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0807c9

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    const v0, 0x7f0807ca

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    .line 105
    new-instance v0, Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 109
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;
    .locals 2

    const v0, 0x7f0b00d6

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/can/activity/databinding/ToyotaHdCarInfoBinding;->rootView:Landroid/widget/ScrollView;

    return-object p0
.end method
