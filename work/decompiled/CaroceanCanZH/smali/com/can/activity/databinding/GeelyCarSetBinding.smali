.class public final Lcom/can/activity/databinding/GeelyCarSetBinding;
.super Ljava/lang/Object;
.source "GeelyCarSetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final geelyCheckboxAllOpen:Landroid/widget/CheckBox;

.field public final geelyCheckboxAuxiliaryFollow:Landroid/widget/CheckBox;

.field public final geelyCheckboxCloseLights:Landroid/widget/CheckBox;

.field public final geelyCheckboxCloseWind:Landroid/widget/CheckBox;

.field public final geelyCheckboxCorrection:Landroid/widget/CheckBox;

.field public final geelyCheckboxDynamicTra:Landroid/widget/CheckBox;

.field public final geelyCheckboxQuitRDelay:Landroid/widget/CheckBox;

.field public final geelyCheckboxSingleVideo:Landroid/widget/CheckBox;

.field public final geelyCheckboxStaticTra:Landroid/widget/CheckBox;

.field public final geelyCheckboxUnlockByOff:Landroid/widget/CheckBox;

.field public final geelyRlHelpMode:Landroid/widget/RelativeLayout;

.field public final geelyRlLanSet:Landroid/widget/RelativeLayout;

.field public final geelyRlRemoteLock:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/can/activity/databinding/GeelyCarSetBinding;->rootView:Landroid/widget/ScrollView;

    .line 69
    iput-object p2, p0, Lcom/can/activity/databinding/GeelyCarSetBinding;->geelyCheckboxAllOpen:Landroid/widget/CheckBox;

    .line 70
    iput-object p3, p0, Lcom/can/activity/databinding/GeelyCarSetBinding;->geelyCheckboxAuxiliaryFollow:Landroid/widget/CheckBox;

    .line 71
    iput-object p4, p0, Lcom/can/activity/databinding/GeelyCarSetBinding;->geelyCheckboxCloseLights:Landroid/widget/CheckBox;

    .line 72
    iput-object p5, p0, Lcom/can/activity/databinding/GeelyCarSetBinding;->geelyCheckboxCloseWind:Landroid/widget/CheckBox;

    .line 73
    iput-object p6, p0, Lcom/can/activity/databinding/GeelyCarSetBinding;->geelyCheckboxCorrection:Landroid/widget/CheckBox;

    .line 74
    iput-object p7, p0, Lcom/can/activity/databinding/GeelyCarSetBinding;->geelyCheckboxDynamicTra:Landroid/widget/CheckBox;

    .line 75
    iput-object p8, p0, Lcom/can/activity/databinding/GeelyCarSetBinding;->geelyCheckboxQuitRDelay:Landroid/widget/CheckBox;

    .line 76
    iput-object p9, p0, Lcom/can/activity/databinding/GeelyCarSetBinding;->geelyCheckboxSingleVideo:Landroid/widget/CheckBox;

    .line 77
    iput-object p10, p0, Lcom/can/activity/databinding/GeelyCarSetBinding;->geelyCheckboxStaticTra:Landroid/widget/CheckBox;

    .line 78
    iput-object p11, p0, Lcom/can/activity/databinding/GeelyCarSetBinding;->geelyCheckboxUnlockByOff:Landroid/widget/CheckBox;

    .line 79
    iput-object p12, p0, Lcom/can/activity/databinding/GeelyCarSetBinding;->geelyRlHelpMode:Landroid/widget/RelativeLayout;

    .line 80
    iput-object p13, p0, Lcom/can/activity/databinding/GeelyCarSetBinding;->geelyRlLanSet:Landroid/widget/RelativeLayout;

    .line 81
    iput-object p14, p0, Lcom/can/activity/databinding/GeelyCarSetBinding;->geelyRlRemoteLock:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/GeelyCarSetBinding;
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x7f080374

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    const v1, 0x7f080375

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/CheckBox;

    if-eqz v6, :cond_0

    const v1, 0x7f080376

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_0

    const v1, 0x7f080377

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/CheckBox;

    if-eqz v8, :cond_0

    const v1, 0x7f080378

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/CheckBox;

    if-eqz v9, :cond_0

    const v1, 0x7f080379

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/CheckBox;

    if-eqz v10, :cond_0

    const v1, 0x7f08037a

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/CheckBox;

    if-eqz v11, :cond_0

    const v1, 0x7f08037b

    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/CheckBox;

    if-eqz v12, :cond_0

    const v1, 0x7f08037c

    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/CheckBox;

    if-eqz v13, :cond_0

    const v1, 0x7f08037d

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/CheckBox;

    if-eqz v14, :cond_0

    const v1, 0x7f08037e

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/RelativeLayout;

    if-eqz v15, :cond_0

    const v1, 0x7f08037f

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/RelativeLayout;

    if-eqz v16, :cond_0

    const v1, 0x7f080380

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/RelativeLayout;

    if-eqz v17, :cond_0

    .line 189
    new-instance v1, Lcom/can/activity/databinding/GeelyCarSetBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/can/activity/databinding/GeelyCarSetBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    return-object v1

    .line 195
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/GeelyCarSetBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/GeelyCarSetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/GeelyCarSetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/GeelyCarSetBinding;
    .locals 2

    const v0, 0x7f0b005f

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/GeelyCarSetBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/GeelyCarSetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/GeelyCarSetBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/can/activity/databinding/GeelyCarSetBinding;->rootView:Landroid/widget/ScrollView;

    return-object p0
.end method
