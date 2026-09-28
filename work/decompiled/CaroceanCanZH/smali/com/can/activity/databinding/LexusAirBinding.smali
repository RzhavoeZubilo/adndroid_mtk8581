.class public final Lcom/can/activity/databinding/LexusAirBinding;
.super Ljava/lang/Object;
.source "LexusAirBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final acPoweroffLayout:Landroid/widget/LinearLayout;

.field public final acPoweronLayout:Landroid/widget/LinearLayout;

.field public final airAc:Landroid/widget/ImageView;

.field public final airAuto:Landroid/widget/ImageView;

.field public final airFrontWin:Landroid/widget/ImageView;

.field public final airLoop:Landroid/widget/ImageView;

.field public final airPowerOff:Landroid/widget/TextView;

.field public final airRearWin:Landroid/widget/ImageView;

.field public final airTempLeft:Landroid/widget/TextView;

.field public final airTempRight:Landroid/widget/TextView;

.field public final airWind:Landroid/widget/ImageView;

.field public final airWindDirect:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/can/activity/databinding/LexusAirBinding;->rootView:Landroid/widget/FrameLayout;

    .line 65
    iput-object p2, p0, Lcom/can/activity/databinding/LexusAirBinding;->acPoweroffLayout:Landroid/widget/LinearLayout;

    .line 66
    iput-object p3, p0, Lcom/can/activity/databinding/LexusAirBinding;->acPoweronLayout:Landroid/widget/LinearLayout;

    .line 67
    iput-object p4, p0, Lcom/can/activity/databinding/LexusAirBinding;->airAc:Landroid/widget/ImageView;

    .line 68
    iput-object p5, p0, Lcom/can/activity/databinding/LexusAirBinding;->airAuto:Landroid/widget/ImageView;

    .line 69
    iput-object p6, p0, Lcom/can/activity/databinding/LexusAirBinding;->airFrontWin:Landroid/widget/ImageView;

    .line 70
    iput-object p7, p0, Lcom/can/activity/databinding/LexusAirBinding;->airLoop:Landroid/widget/ImageView;

    .line 71
    iput-object p8, p0, Lcom/can/activity/databinding/LexusAirBinding;->airPowerOff:Landroid/widget/TextView;

    .line 72
    iput-object p9, p0, Lcom/can/activity/databinding/LexusAirBinding;->airRearWin:Landroid/widget/ImageView;

    .line 73
    iput-object p10, p0, Lcom/can/activity/databinding/LexusAirBinding;->airTempLeft:Landroid/widget/TextView;

    .line 74
    iput-object p11, p0, Lcom/can/activity/databinding/LexusAirBinding;->airTempRight:Landroid/widget/TextView;

    .line 75
    iput-object p12, p0, Lcom/can/activity/databinding/LexusAirBinding;->airWind:Landroid/widget/ImageView;

    .line 76
    iput-object p13, p0, Lcom/can/activity/databinding/LexusAirBinding;->airWindDirect:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/LexusAirBinding;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f08000d

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f08000e

    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f080046

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f080047

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f080048

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f080049

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f08004a

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v1, 0x7f08004b

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f08004c

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f08004d

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f08004e

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    const v1, 0x7f08004f

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    .line 178
    new-instance v1, Lcom/can/activity/databinding/LexusAirBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/can/activity/databinding/LexusAirBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v1

    .line 182
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/LexusAirBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/LexusAirBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/LexusAirBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/LexusAirBinding;
    .locals 2

    const v0, 0x7f0b0093

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/LexusAirBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/LexusAirBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/can/activity/databinding/LexusAirBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/can/activity/databinding/LexusAirBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
