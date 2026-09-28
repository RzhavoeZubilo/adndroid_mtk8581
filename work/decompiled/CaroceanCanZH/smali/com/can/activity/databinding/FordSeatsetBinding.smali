.class public final Lcom/can/activity/databinding/FordSeatsetBinding;
.super Ljava/lang/Object;
.source "FordSeatsetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final copBackSet:Lcom/can/ui/draw/HeaderLayout;

.field public final copHipBothSet:Lcom/can/ui/draw/HeaderLayout;

.field public final copHipMsg:Lcom/can/ui/draw/HeaderLayout;

.field public final copHipSet:Lcom/can/ui/draw/HeaderLayout;

.field public final copWaistBothSet:Lcom/can/ui/draw/HeaderLayout;

.field public final copWaistMsg:Lcom/can/ui/draw/HeaderLayout;

.field public final copWaistSet:Lcom/can/ui/draw/HeaderLayout;

.field public final mainBackSet:Lcom/can/ui/draw/HeaderLayout;

.field public final mainHipBothSet:Lcom/can/ui/draw/HeaderLayout;

.field public final mainHipMsg:Lcom/can/ui/draw/HeaderLayout;

.field public final mainHipSet:Lcom/can/ui/draw/HeaderLayout;

.field public final mainWaistBothSet:Lcom/can/ui/draw/HeaderLayout;

.field public final mainWaistMsg:Lcom/can/ui/draw/HeaderLayout;

.field public final mainWaistSet:Lcom/can/ui/draw/HeaderLayout;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/can/activity/databinding/FordSeatsetBinding;->rootView:Landroid/widget/ScrollView;

    .line 72
    iput-object p2, p0, Lcom/can/activity/databinding/FordSeatsetBinding;->copBackSet:Lcom/can/ui/draw/HeaderLayout;

    .line 73
    iput-object p3, p0, Lcom/can/activity/databinding/FordSeatsetBinding;->copHipBothSet:Lcom/can/ui/draw/HeaderLayout;

    .line 74
    iput-object p4, p0, Lcom/can/activity/databinding/FordSeatsetBinding;->copHipMsg:Lcom/can/ui/draw/HeaderLayout;

    .line 75
    iput-object p5, p0, Lcom/can/activity/databinding/FordSeatsetBinding;->copHipSet:Lcom/can/ui/draw/HeaderLayout;

    .line 76
    iput-object p6, p0, Lcom/can/activity/databinding/FordSeatsetBinding;->copWaistBothSet:Lcom/can/ui/draw/HeaderLayout;

    .line 77
    iput-object p7, p0, Lcom/can/activity/databinding/FordSeatsetBinding;->copWaistMsg:Lcom/can/ui/draw/HeaderLayout;

    .line 78
    iput-object p8, p0, Lcom/can/activity/databinding/FordSeatsetBinding;->copWaistSet:Lcom/can/ui/draw/HeaderLayout;

    .line 79
    iput-object p9, p0, Lcom/can/activity/databinding/FordSeatsetBinding;->mainBackSet:Lcom/can/ui/draw/HeaderLayout;

    .line 80
    iput-object p10, p0, Lcom/can/activity/databinding/FordSeatsetBinding;->mainHipBothSet:Lcom/can/ui/draw/HeaderLayout;

    .line 81
    iput-object p11, p0, Lcom/can/activity/databinding/FordSeatsetBinding;->mainHipMsg:Lcom/can/ui/draw/HeaderLayout;

    .line 82
    iput-object p12, p0, Lcom/can/activity/databinding/FordSeatsetBinding;->mainHipSet:Lcom/can/ui/draw/HeaderLayout;

    .line 83
    iput-object p13, p0, Lcom/can/activity/databinding/FordSeatsetBinding;->mainWaistBothSet:Lcom/can/ui/draw/HeaderLayout;

    .line 84
    iput-object p14, p0, Lcom/can/activity/databinding/FordSeatsetBinding;->mainWaistMsg:Lcom/can/ui/draw/HeaderLayout;

    .line 85
    iput-object p15, p0, Lcom/can/activity/databinding/FordSeatsetBinding;->mainWaistSet:Lcom/can/ui/draw/HeaderLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/FordSeatsetBinding;
    .locals 19

    move-object/from16 v0, p0

    const v1, 0x7f080297

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/can/ui/draw/HeaderLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f080298

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/can/ui/draw/HeaderLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f080299

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/can/ui/draw/HeaderLayout;

    if-eqz v7, :cond_0

    const v1, 0x7f08029a

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/can/ui/draw/HeaderLayout;

    if-eqz v8, :cond_0

    const v1, 0x7f08029b

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/can/ui/draw/HeaderLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f08029c

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/can/ui/draw/HeaderLayout;

    if-eqz v10, :cond_0

    const v1, 0x7f08029d

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/can/ui/draw/HeaderLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0805b7

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/can/ui/draw/HeaderLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0805b9

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/can/ui/draw/HeaderLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0805ba

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/can/ui/draw/HeaderLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0805bb

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/can/ui/draw/HeaderLayout;

    if-eqz v15, :cond_0

    const v1, 0x7f0805bc

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/can/ui/draw/HeaderLayout;

    if-eqz v16, :cond_0

    const v1, 0x7f0805bd

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/can/ui/draw/HeaderLayout;

    if-eqz v17, :cond_0

    const v1, 0x7f0805be

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/can/ui/draw/HeaderLayout;

    if-eqz v18, :cond_0

    .line 199
    new-instance v1, Lcom/can/activity/databinding/FordSeatsetBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/can/activity/databinding/FordSeatsetBinding;-><init>(Landroid/widget/ScrollView;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;Lcom/can/ui/draw/HeaderLayout;)V

    return-object v1

    .line 203
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/FordSeatsetBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/FordSeatsetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/FordSeatsetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/FordSeatsetBinding;
    .locals 2

    const v0, 0x7f0b0059

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 104
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/FordSeatsetBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/FordSeatsetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/can/activity/databinding/FordSeatsetBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/can/activity/databinding/FordSeatsetBinding;->rootView:Landroid/widget/ScrollView;

    return-object p0
.end method
