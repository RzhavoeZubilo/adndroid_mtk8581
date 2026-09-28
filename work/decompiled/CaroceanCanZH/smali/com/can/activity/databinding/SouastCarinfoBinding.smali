.class public final Lcom/can/activity/databinding/SouastCarinfoBinding;
.super Ljava/lang/Object;
.source "SouastCarinfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnMenuCarset:Landroid/widget/Button;

.field public final btnMenuCurfuel:Landroid/widget/Button;

.field public final btnMenuDsp:Landroid/widget/Button;

.field public final btnMenuHisfuel:Landroid/widget/Button;

.field public final btnMenuHybrid:Landroid/widget/Button;

.field public final btnMenuTpms:Landroid/widget/Button;

.field public final btnMenuTrip:Landroid/widget/Button;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/can/activity/databinding/SouastCarinfoBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 46
    iput-object p2, p0, Lcom/can/activity/databinding/SouastCarinfoBinding;->btnMenuCarset:Landroid/widget/Button;

    .line 47
    iput-object p3, p0, Lcom/can/activity/databinding/SouastCarinfoBinding;->btnMenuCurfuel:Landroid/widget/Button;

    .line 48
    iput-object p4, p0, Lcom/can/activity/databinding/SouastCarinfoBinding;->btnMenuDsp:Landroid/widget/Button;

    .line 49
    iput-object p5, p0, Lcom/can/activity/databinding/SouastCarinfoBinding;->btnMenuHisfuel:Landroid/widget/Button;

    .line 50
    iput-object p6, p0, Lcom/can/activity/databinding/SouastCarinfoBinding;->btnMenuHybrid:Landroid/widget/Button;

    .line 51
    iput-object p7, p0, Lcom/can/activity/databinding/SouastCarinfoBinding;->btnMenuTpms:Landroid/widget/Button;

    .line 52
    iput-object p8, p0, Lcom/can/activity/databinding/SouastCarinfoBinding;->btnMenuTrip:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/SouastCarinfoBinding;
    .locals 11

    const v0, 0x7f08016e

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    const v0, 0x7f08016f

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    const v0, 0x7f080170

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    const v0, 0x7f080171

    .line 101
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    const v0, 0x7f080172

    .line 107
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    const v0, 0x7f080174

    .line 113
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_0

    const v0, 0x7f080175

    .line 119
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_0

    .line 124
    new-instance v0, Lcom/can/activity/databinding/SouastCarinfoBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/can/activity/databinding/SouastCarinfoBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    return-object v0

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/SouastCarinfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/SouastCarinfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/SouastCarinfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/SouastCarinfoBinding;
    .locals 2

    const v0, 0x7f0b00c8

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/SouastCarinfoBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/SouastCarinfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/can/activity/databinding/SouastCarinfoBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/can/activity/databinding/SouastCarinfoBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
