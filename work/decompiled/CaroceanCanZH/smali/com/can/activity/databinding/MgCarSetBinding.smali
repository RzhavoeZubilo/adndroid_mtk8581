.class public final Lcom/can/activity/databinding/MgCarSetBinding;
.super Ljava/lang/Object;
.source "MgCarSetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final mgCheckboxComehomeWithme:Landroid/widget/CheckBox;

.field public final mgCheckboxDrivingLatch:Landroid/widget/CheckBox;

.field public final mgCheckboxFFogLights:Landroid/widget/CheckBox;

.field public final mgCheckboxFNearLights:Landroid/widget/CheckBox;

.field public final mgCheckboxFReversLights:Landroid/widget/CheckBox;

.field public final mgCheckboxFogLights:Landroid/widget/CheckBox;

.field public final mgCheckboxNearLights:Landroid/widget/CheckBox;

.field public final mgCheckboxReversLights:Landroid/widget/CheckBox;

.field public final mgCheckboxUnlock:Landroid/widget/CheckBox;

.field public final mgRlFGohomeTime:Landroid/widget/RelativeLayout;

.field public final mgRlFRoutingIndicator:Landroid/widget/RelativeLayout;

.field public final mgRlFSteeringHandle:Landroid/widget/RelativeLayout;

.field public final mgRlGohomeTime:Landroid/widget/RelativeLayout;

.field public final mgRlNearUnlock:Landroid/widget/RelativeLayout;

.field public final mgRlUnlockMode:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
    .locals 2

    move-object v0, p0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 75
    iput-object v1, v0, Lcom/can/activity/databinding/MgCarSetBinding;->rootView:Landroid/widget/ScrollView;

    move-object v1, p2

    .line 76
    iput-object v1, v0, Lcom/can/activity/databinding/MgCarSetBinding;->mgCheckboxComehomeWithme:Landroid/widget/CheckBox;

    move-object v1, p3

    .line 77
    iput-object v1, v0, Lcom/can/activity/databinding/MgCarSetBinding;->mgCheckboxDrivingLatch:Landroid/widget/CheckBox;

    move-object v1, p4

    .line 78
    iput-object v1, v0, Lcom/can/activity/databinding/MgCarSetBinding;->mgCheckboxFFogLights:Landroid/widget/CheckBox;

    move-object v1, p5

    .line 79
    iput-object v1, v0, Lcom/can/activity/databinding/MgCarSetBinding;->mgCheckboxFNearLights:Landroid/widget/CheckBox;

    move-object v1, p6

    .line 80
    iput-object v1, v0, Lcom/can/activity/databinding/MgCarSetBinding;->mgCheckboxFReversLights:Landroid/widget/CheckBox;

    move-object v1, p7

    .line 81
    iput-object v1, v0, Lcom/can/activity/databinding/MgCarSetBinding;->mgCheckboxFogLights:Landroid/widget/CheckBox;

    move-object v1, p8

    .line 82
    iput-object v1, v0, Lcom/can/activity/databinding/MgCarSetBinding;->mgCheckboxNearLights:Landroid/widget/CheckBox;

    move-object v1, p9

    .line 83
    iput-object v1, v0, Lcom/can/activity/databinding/MgCarSetBinding;->mgCheckboxReversLights:Landroid/widget/CheckBox;

    move-object v1, p10

    .line 84
    iput-object v1, v0, Lcom/can/activity/databinding/MgCarSetBinding;->mgCheckboxUnlock:Landroid/widget/CheckBox;

    move-object v1, p11

    .line 85
    iput-object v1, v0, Lcom/can/activity/databinding/MgCarSetBinding;->mgRlFGohomeTime:Landroid/widget/RelativeLayout;

    move-object v1, p12

    .line 86
    iput-object v1, v0, Lcom/can/activity/databinding/MgCarSetBinding;->mgRlFRoutingIndicator:Landroid/widget/RelativeLayout;

    move-object v1, p13

    .line 87
    iput-object v1, v0, Lcom/can/activity/databinding/MgCarSetBinding;->mgRlFSteeringHandle:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p14

    .line 88
    iput-object v1, v0, Lcom/can/activity/databinding/MgCarSetBinding;->mgRlGohomeTime:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p15

    .line 89
    iput-object v1, v0, Lcom/can/activity/databinding/MgCarSetBinding;->mgRlNearUnlock:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p16

    .line 90
    iput-object v1, v0, Lcom/can/activity/databinding/MgCarSetBinding;->mgRlUnlockMode:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/MgCarSetBinding;
    .locals 20

    move-object/from16 v0, p0

    const v1, 0x7f0805d0

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    const v1, 0x7f0805d1

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/CheckBox;

    if-eqz v6, :cond_0

    const v1, 0x7f0805d2

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_0

    const v1, 0x7f0805d3

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/CheckBox;

    if-eqz v8, :cond_0

    const v1, 0x7f0805d4

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/CheckBox;

    if-eqz v9, :cond_0

    const v1, 0x7f0805d5

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/CheckBox;

    if-eqz v10, :cond_0

    const v1, 0x7f0805d6

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/CheckBox;

    if-eqz v11, :cond_0

    const v1, 0x7f0805d7

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/CheckBox;

    if-eqz v12, :cond_0

    const v1, 0x7f0805d8

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/CheckBox;

    if-eqz v13, :cond_0

    const v1, 0x7f0805db

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/RelativeLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0805dc

    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/RelativeLayout;

    if-eqz v15, :cond_0

    const v1, 0x7f0805dd

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/RelativeLayout;

    if-eqz v16, :cond_0

    const v1, 0x7f0805de

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/RelativeLayout;

    if-eqz v17, :cond_0

    const v1, 0x7f0805df

    .line 199
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/RelativeLayout;

    if-eqz v18, :cond_0

    const v1, 0x7f0805e0

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/RelativeLayout;

    if-eqz v19, :cond_0

    .line 210
    new-instance v1, Lcom/can/activity/databinding/MgCarSetBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    invoke-direct/range {v3 .. v19}, Lcom/can/activity/databinding/MgCarSetBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    return-object v1

    .line 216
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/MgCarSetBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/MgCarSetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/MgCarSetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/MgCarSetBinding;
    .locals 2

    const v0, 0x7f0b009c

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/MgCarSetBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/MgCarSetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/MgCarSetBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/can/activity/databinding/MgCarSetBinding;->rootView:Landroid/widget/ScrollView;

    return-object p0
.end method
