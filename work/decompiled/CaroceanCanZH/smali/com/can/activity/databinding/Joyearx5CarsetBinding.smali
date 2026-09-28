.class public final Lcom/can/activity/databinding/Joyearx5CarsetBinding;
.super Ljava/lang/Object;
.source "Joyearx5CarsetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnJoyearCarsetDomedelay:Landroid/widget/RelativeLayout;

.field public final btnJoyearCarsetSavingtime:Landroid/widget/RelativeLayout;

.field public final checkboxJoyearCarsetAutolockOnoff:Landroid/widget/CheckBox;

.field public final checkboxJoyearCarsetSpeedlockOnoff:Landroid/widget/CheckBox;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/can/activity/databinding/Joyearx5CarsetBinding;->rootView:Landroid/widget/ScrollView;

    .line 40
    iput-object p2, p0, Lcom/can/activity/databinding/Joyearx5CarsetBinding;->btnJoyearCarsetDomedelay:Landroid/widget/RelativeLayout;

    .line 41
    iput-object p3, p0, Lcom/can/activity/databinding/Joyearx5CarsetBinding;->btnJoyearCarsetSavingtime:Landroid/widget/RelativeLayout;

    .line 42
    iput-object p4, p0, Lcom/can/activity/databinding/Joyearx5CarsetBinding;->checkboxJoyearCarsetAutolockOnoff:Landroid/widget/CheckBox;

    .line 43
    iput-object p5, p0, Lcom/can/activity/databinding/Joyearx5CarsetBinding;->checkboxJoyearCarsetSpeedlockOnoff:Landroid/widget/CheckBox;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/Joyearx5CarsetBinding;
    .locals 8

    const v0, 0x7f080155

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f080156

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f08024c

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/CheckBox;

    if-eqz v6, :cond_0

    const v0, 0x7f08024d

    .line 92
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_0

    .line 97
    new-instance v0, Lcom/can/activity/databinding/Joyearx5CarsetBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/can/activity/databinding/Joyearx5CarsetBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/Joyearx5CarsetBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/Joyearx5CarsetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/Joyearx5CarsetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/Joyearx5CarsetBinding;
    .locals 2

    const v0, 0x7f0b008c

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/Joyearx5CarsetBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/Joyearx5CarsetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/Joyearx5CarsetBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/can/activity/databinding/Joyearx5CarsetBinding;->rootView:Landroid/widget/ScrollView;

    return-object p0
.end method
