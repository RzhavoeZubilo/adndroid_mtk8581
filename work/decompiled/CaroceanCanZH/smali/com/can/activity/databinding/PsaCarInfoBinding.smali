.class public final Lcom/can/activity/databinding/PsaCarInfoBinding;
.super Ljava/lang/Object;
.source "PsaCarInfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final psaRelativeAirSet:Landroid/widget/RelativeLayout;

.field public final psaRelativeCarSet:Landroid/widget/RelativeLayout;

.field public final psaRelativeCruSpeed:Landroid/widget/RelativeLayout;

.field public final psaRelativeDiogInfo:Landroid/widget/RelativeLayout;

.field public final psaRelativeFuncInfo:Landroid/widget/RelativeLayout;

.field public final psaRelativeMemSpeed:Landroid/widget/RelativeLayout;

.field public final psaRelativeSetInfo:Landroid/widget/RelativeLayout;

.field public final psaRelativeTripCom:Landroid/widget/RelativeLayout;

.field public final psaRelativeWarnInfo:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/ScrollView;

.field public final tvPsaAirSet:Landroid/widget/TextView;

.field public final tvPsaCarSet:Landroid/widget/TextView;

.field public final tvPsaCruSpeed:Landroid/widget/TextView;

.field public final tvPsaDiogInfo:Landroid/widget/TextView;

.field public final tvPsaFuncInfo:Landroid/widget/TextView;

.field public final tvPsaMemSpeed:Landroid/widget/TextView;

.field public final tvPsaSetInfo:Landroid/widget/TextView;

.field public final tvPsaTripCom:Landroid/widget/TextView;

.field public final tvPsaWarnInfo:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 85
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->rootView:Landroid/widget/ScrollView;

    move-object v1, p2

    .line 86
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->psaRelativeAirSet:Landroid/widget/RelativeLayout;

    move-object v1, p3

    .line 87
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->psaRelativeCarSet:Landroid/widget/RelativeLayout;

    move-object v1, p4

    .line 88
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->psaRelativeCruSpeed:Landroid/widget/RelativeLayout;

    move-object v1, p5

    .line 89
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->psaRelativeDiogInfo:Landroid/widget/RelativeLayout;

    move-object v1, p6

    .line 90
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->psaRelativeFuncInfo:Landroid/widget/RelativeLayout;

    move-object v1, p7

    .line 91
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->psaRelativeMemSpeed:Landroid/widget/RelativeLayout;

    move-object v1, p8

    .line 92
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->psaRelativeSetInfo:Landroid/widget/RelativeLayout;

    move-object v1, p9

    .line 93
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->psaRelativeTripCom:Landroid/widget/RelativeLayout;

    move-object v1, p10

    .line 94
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->psaRelativeWarnInfo:Landroid/widget/RelativeLayout;

    move-object v1, p11

    .line 95
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->tvPsaAirSet:Landroid/widget/TextView;

    move-object v1, p12

    .line 96
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->tvPsaCarSet:Landroid/widget/TextView;

    move-object v1, p13

    .line 97
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->tvPsaCruSpeed:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 98
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->tvPsaDiogInfo:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 99
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->tvPsaFuncInfo:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 100
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->tvPsaMemSpeed:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 101
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->tvPsaSetInfo:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 102
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->tvPsaTripCom:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 103
    iput-object v1, v0, Lcom/can/activity/databinding/PsaCarInfoBinding;->tvPsaWarnInfo:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/PsaCarInfoBinding;
    .locals 23

    move-object/from16 v0, p0

    const v1, 0x7f0806a5

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f0806a6

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0806a7

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_0

    const v1, 0x7f0806a8

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    const v1, 0x7f0806a9

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_0

    const v1, 0x7f0806aa

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_0

    const v1, 0x7f0806ab

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0806ac

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0806ad

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f080824

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f080825

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f080826

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f080827

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f080828

    .line 212
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f080829

    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f08082a

    .line 224
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    const v1, 0x7f08082b

    .line 230
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    const v1, 0x7f08082c

    .line 236
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    .line 241
    new-instance v1, Lcom/can/activity/databinding/PsaCarInfoBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    invoke-direct/range {v3 .. v22}, Lcom/can/activity/databinding/PsaCarInfoBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 247
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/PsaCarInfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/PsaCarInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/PsaCarInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/PsaCarInfoBinding;
    .locals 2

    const v0, 0x7f0b00b2

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 122
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/PsaCarInfoBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/PsaCarInfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/PsaCarInfoBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/can/activity/databinding/PsaCarInfoBinding;->rootView:Landroid/widget/ScrollView;

    return-object p0
.end method
