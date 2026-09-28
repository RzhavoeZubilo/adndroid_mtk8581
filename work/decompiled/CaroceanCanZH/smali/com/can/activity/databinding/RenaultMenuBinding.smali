.class public final Lcom/can/activity/databinding/RenaultMenuBinding;
.super Ljava/lang/Object;
.source "RenaultMenuBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnRenaultCarset:Landroid/widget/Button;

.field public final btnRenaultSos:Landroid/widget/Button;

.field public final btnRenaultTrip:Landroid/widget/Button;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/can/activity/databinding/RenaultMenuBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 33
    iput-object p2, p0, Lcom/can/activity/databinding/RenaultMenuBinding;->btnRenaultCarset:Landroid/widget/Button;

    .line 34
    iput-object p3, p0, Lcom/can/activity/databinding/RenaultMenuBinding;->btnRenaultSos:Landroid/widget/Button;

    .line 35
    iput-object p4, p0, Lcom/can/activity/databinding/RenaultMenuBinding;->btnRenaultTrip:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/RenaultMenuBinding;
    .locals 4

    const v0, 0x7f080180

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    const v0, 0x7f080189

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-eqz v2, :cond_0

    const v0, 0x7f08018a

    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 83
    new-instance v0, Lcom/can/activity/databinding/RenaultMenuBinding;

    check-cast p0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/can/activity/databinding/RenaultMenuBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    return-object v0

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/RenaultMenuBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/RenaultMenuBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/RenaultMenuBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/RenaultMenuBinding;
    .locals 2

    const v0, 0x7f0b00bd

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/RenaultMenuBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/RenaultMenuBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/can/activity/databinding/RenaultMenuBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/can/activity/databinding/RenaultMenuBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
