.class public final Lcom/can/activity/databinding/Ec180CarinfoBinding;
.super Ljava/lang/Object;
.source "Ec180CarinfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivElectricLv:Lcom/can/ui/draw/Windlv;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final txCarstate:Landroid/widget/TextView;

.field public final txCurenergyuse:Landroid/widget/TextView;

.field public final txElectric:Landroid/widget/TextView;

.field public final txName:Landroid/widget/TextView;

.field public final txPlant:Landroid/widget/TextView;

.field public final txTotalMileage:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/can/ui/draw/Windlv;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/can/activity/databinding/Ec180CarinfoBinding;->rootView:Landroid/widget/LinearLayout;

    .line 47
    iput-object p2, p0, Lcom/can/activity/databinding/Ec180CarinfoBinding;->ivElectricLv:Lcom/can/ui/draw/Windlv;

    .line 48
    iput-object p3, p0, Lcom/can/activity/databinding/Ec180CarinfoBinding;->txCarstate:Landroid/widget/TextView;

    .line 49
    iput-object p4, p0, Lcom/can/activity/databinding/Ec180CarinfoBinding;->txCurenergyuse:Landroid/widget/TextView;

    .line 50
    iput-object p5, p0, Lcom/can/activity/databinding/Ec180CarinfoBinding;->txElectric:Landroid/widget/TextView;

    .line 51
    iput-object p6, p0, Lcom/can/activity/databinding/Ec180CarinfoBinding;->txName:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lcom/can/activity/databinding/Ec180CarinfoBinding;->txPlant:Landroid/widget/TextView;

    .line 53
    iput-object p8, p0, Lcom/can/activity/databinding/Ec180CarinfoBinding;->txTotalMileage:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/Ec180CarinfoBinding;
    .locals 11

    const v0, 0x7f0804d0

    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/can/ui/draw/Windlv;

    if-eqz v4, :cond_0

    const v0, 0x7f08084e

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v0, 0x7f080850

    .line 96
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const v0, 0x7f080899

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0808c2

    .line 108
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0808c3

    .line 114
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f08083e

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 125
    new-instance v0, Lcom/can/activity/databinding/Ec180CarinfoBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/can/activity/databinding/Ec180CarinfoBinding;-><init>(Landroid/widget/LinearLayout;Lcom/can/ui/draw/Windlv;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/Ec180CarinfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/Ec180CarinfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/Ec180CarinfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/Ec180CarinfoBinding;
    .locals 2

    const v0, 0x7f0b0055

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/Ec180CarinfoBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/Ec180CarinfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/Ec180CarinfoBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/can/activity/databinding/Ec180CarinfoBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
