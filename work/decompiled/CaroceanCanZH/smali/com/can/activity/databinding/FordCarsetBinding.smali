.class public final Lcom/can/activity/databinding/FordCarsetBinding;
.super Ljava/lang/Object;
.source "FordCarsetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnFordCarsetAmbientBright:Landroid/widget/RelativeLayout;

.field public final btnFordCarsetAmbientColor:Landroid/widget/RelativeLayout;

.field public final btnFordCarsetAutobright:Landroid/widget/RelativeLayout;

.field public final btnFordCarsetEnginehotper:Landroid/widget/RelativeLayout;

.field public final btnFordCarsetMileunit:Landroid/widget/RelativeLayout;

.field public final btnFordCarsetShowenginehot:Landroid/widget/RelativeLayout;

.field public final btnFordCarsetTonetype:Landroid/widget/RelativeLayout;

.field public final btnFordCarsetTravelplan:Landroid/widget/RelativeLayout;

.field public final btnFordCarsetTravelspeed:Landroid/widget/RelativeLayout;

.field public final btnFordCarsetTrunLightonce:Landroid/widget/RelativeLayout;

.field public final checkboxFordCarsetInteriorlightOnoff:Landroid/widget/CheckBox;

.field public final checkboxFordCarsetMsgtoneonOnoff:Landroid/widget/CheckBox;

.field public final checkboxFordCarsetParklockctrlOnoff:Landroid/widget/CheckBox;

.field public final checkboxFordCarsetRainsensorOnoff:Landroid/widget/CheckBox;

.field public final checkboxFordCarsetTractionctrlOnoff:Landroid/widget/CheckBox;

.field public final checkboxFordCarsetWarntoneonOnoff:Landroid/widget/CheckBox;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 2

    move-object v0, p0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 87
    iput-object v1, v0, Lcom/can/activity/databinding/FordCarsetBinding;->rootView:Landroid/widget/ScrollView;

    move-object v1, p2

    .line 88
    iput-object v1, v0, Lcom/can/activity/databinding/FordCarsetBinding;->btnFordCarsetAmbientBright:Landroid/widget/RelativeLayout;

    move-object v1, p3

    .line 89
    iput-object v1, v0, Lcom/can/activity/databinding/FordCarsetBinding;->btnFordCarsetAmbientColor:Landroid/widget/RelativeLayout;

    move-object v1, p4

    .line 90
    iput-object v1, v0, Lcom/can/activity/databinding/FordCarsetBinding;->btnFordCarsetAutobright:Landroid/widget/RelativeLayout;

    move-object v1, p5

    .line 91
    iput-object v1, v0, Lcom/can/activity/databinding/FordCarsetBinding;->btnFordCarsetEnginehotper:Landroid/widget/RelativeLayout;

    move-object v1, p6

    .line 92
    iput-object v1, v0, Lcom/can/activity/databinding/FordCarsetBinding;->btnFordCarsetMileunit:Landroid/widget/RelativeLayout;

    move-object v1, p7

    .line 93
    iput-object v1, v0, Lcom/can/activity/databinding/FordCarsetBinding;->btnFordCarsetShowenginehot:Landroid/widget/RelativeLayout;

    move-object v1, p8

    .line 94
    iput-object v1, v0, Lcom/can/activity/databinding/FordCarsetBinding;->btnFordCarsetTonetype:Landroid/widget/RelativeLayout;

    move-object v1, p9

    .line 95
    iput-object v1, v0, Lcom/can/activity/databinding/FordCarsetBinding;->btnFordCarsetTravelplan:Landroid/widget/RelativeLayout;

    move-object v1, p10

    .line 96
    iput-object v1, v0, Lcom/can/activity/databinding/FordCarsetBinding;->btnFordCarsetTravelspeed:Landroid/widget/RelativeLayout;

    move-object v1, p11

    .line 97
    iput-object v1, v0, Lcom/can/activity/databinding/FordCarsetBinding;->btnFordCarsetTrunLightonce:Landroid/widget/RelativeLayout;

    move-object v1, p12

    .line 98
    iput-object v1, v0, Lcom/can/activity/databinding/FordCarsetBinding;->checkboxFordCarsetInteriorlightOnoff:Landroid/widget/CheckBox;

    move-object v1, p13

    .line 99
    iput-object v1, v0, Lcom/can/activity/databinding/FordCarsetBinding;->checkboxFordCarsetMsgtoneonOnoff:Landroid/widget/CheckBox;

    move-object/from16 v1, p14

    .line 100
    iput-object v1, v0, Lcom/can/activity/databinding/FordCarsetBinding;->checkboxFordCarsetParklockctrlOnoff:Landroid/widget/CheckBox;

    move-object/from16 v1, p15

    .line 101
    iput-object v1, v0, Lcom/can/activity/databinding/FordCarsetBinding;->checkboxFordCarsetRainsensorOnoff:Landroid/widget/CheckBox;

    move-object/from16 v1, p16

    .line 102
    iput-object v1, v0, Lcom/can/activity/databinding/FordCarsetBinding;->checkboxFordCarsetTractionctrlOnoff:Landroid/widget/CheckBox;

    move-object/from16 v1, p17

    .line 103
    iput-object v1, v0, Lcom/can/activity/databinding/FordCarsetBinding;->checkboxFordCarsetWarntoneonOnoff:Landroid/widget/CheckBox;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/FordCarsetBinding;
    .locals 21

    move-object/from16 v0, p0

    const v1, 0x7f0800d4

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0800d5

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0800d6

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    const v1, 0x7f0800d7

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    const v1, 0x7f0800d8

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f0800d9

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_0

    const v1, 0x7f0800da

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0800db

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0800dc

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0800dd

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/RelativeLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0801f8

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/CheckBox;

    if-eqz v15, :cond_0

    const v1, 0x7f0801f9

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/CheckBox;

    if-eqz v16, :cond_0

    const v1, 0x7f0801fa

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/CheckBox;

    if-eqz v17, :cond_0

    const v1, 0x7f0801fb

    .line 212
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/CheckBox;

    if-eqz v18, :cond_0

    const v1, 0x7f0801fc

    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/CheckBox;

    if-eqz v19, :cond_0

    const v1, 0x7f0801fd

    .line 224
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/CheckBox;

    if-eqz v20, :cond_0

    .line 229
    new-instance v1, Lcom/can/activity/databinding/FordCarsetBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    invoke-direct/range {v3 .. v20}, Lcom/can/activity/databinding/FordCarsetBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    return-object v1

    .line 237
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/FordCarsetBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/FordCarsetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/FordCarsetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/FordCarsetBinding;
    .locals 2

    const v0, 0x7f0b0057

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 122
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/FordCarsetBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/FordCarsetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/FordCarsetBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/can/activity/databinding/FordCarsetBinding;->rootView:Landroid/widget/ScrollView;

    return-object p0
.end method
