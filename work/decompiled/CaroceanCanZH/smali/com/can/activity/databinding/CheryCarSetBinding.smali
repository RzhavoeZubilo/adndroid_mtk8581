.class public final Lcom/can/activity/databinding/CheryCarSetBinding;
.super Ljava/lang/Object;
.source "CheryCarSetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cheryArz7Layout:Landroid/widget/LinearLayout;

.field public final cheryCheckboxAutoLock:Landroid/widget/CheckBox;

.field public final cheryCheckboxAutounlock:Landroid/widget/CheckBox;

.field public final cheryCheckboxDaytimeLights:Landroid/widget/CheckBox;

.field public final cheryCheckboxEgenBrakeAlram:Landroid/widget/CheckBox;

.field public final cheryCheckboxHeadlampDelay:Landroid/widget/CheckBox;

.field public final cheryCheckboxOpenTrunk:Landroid/widget/CheckBox;

.field public final cheryCheckboxPowerShowFlow:Landroid/widget/CheckBox;

.field public final cheryCheckboxSteerLight:Landroid/widget/CheckBox;

.field public final cheryCheckboxSteeringAnim:Landroid/widget/CheckBox;

.field public final cheryCheckboxSteeringAvm:Landroid/widget/CheckBox;

.field public final cheryRlDashBklight:Landroid/widget/RelativeLayout;

.field public final cheryRlSpeedingAlram:Landroid/widget/RelativeLayout;

.field public final cheryRlVehicleLine:Landroid/widget/RelativeLayout;

.field public final cherySetLang:Landroid/widget/RelativeLayout;

.field public final cherySetPrompt:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
    .locals 2

    move-object v0, p0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 80
    iput-object v1, v0, Lcom/can/activity/databinding/CheryCarSetBinding;->rootView:Landroid/widget/ScrollView;

    move-object v1, p2

    .line 81
    iput-object v1, v0, Lcom/can/activity/databinding/CheryCarSetBinding;->cheryArz7Layout:Landroid/widget/LinearLayout;

    move-object v1, p3

    .line 82
    iput-object v1, v0, Lcom/can/activity/databinding/CheryCarSetBinding;->cheryCheckboxAutoLock:Landroid/widget/CheckBox;

    move-object v1, p4

    .line 83
    iput-object v1, v0, Lcom/can/activity/databinding/CheryCarSetBinding;->cheryCheckboxAutounlock:Landroid/widget/CheckBox;

    move-object v1, p5

    .line 84
    iput-object v1, v0, Lcom/can/activity/databinding/CheryCarSetBinding;->cheryCheckboxDaytimeLights:Landroid/widget/CheckBox;

    move-object v1, p6

    .line 85
    iput-object v1, v0, Lcom/can/activity/databinding/CheryCarSetBinding;->cheryCheckboxEgenBrakeAlram:Landroid/widget/CheckBox;

    move-object v1, p7

    .line 86
    iput-object v1, v0, Lcom/can/activity/databinding/CheryCarSetBinding;->cheryCheckboxHeadlampDelay:Landroid/widget/CheckBox;

    move-object v1, p8

    .line 87
    iput-object v1, v0, Lcom/can/activity/databinding/CheryCarSetBinding;->cheryCheckboxOpenTrunk:Landroid/widget/CheckBox;

    move-object v1, p9

    .line 88
    iput-object v1, v0, Lcom/can/activity/databinding/CheryCarSetBinding;->cheryCheckboxPowerShowFlow:Landroid/widget/CheckBox;

    move-object v1, p10

    .line 89
    iput-object v1, v0, Lcom/can/activity/databinding/CheryCarSetBinding;->cheryCheckboxSteerLight:Landroid/widget/CheckBox;

    move-object v1, p11

    .line 90
    iput-object v1, v0, Lcom/can/activity/databinding/CheryCarSetBinding;->cheryCheckboxSteeringAnim:Landroid/widget/CheckBox;

    move-object v1, p12

    .line 91
    iput-object v1, v0, Lcom/can/activity/databinding/CheryCarSetBinding;->cheryCheckboxSteeringAvm:Landroid/widget/CheckBox;

    move-object v1, p13

    .line 92
    iput-object v1, v0, Lcom/can/activity/databinding/CheryCarSetBinding;->cheryRlDashBklight:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p14

    .line 93
    iput-object v1, v0, Lcom/can/activity/databinding/CheryCarSetBinding;->cheryRlSpeedingAlram:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p15

    .line 94
    iput-object v1, v0, Lcom/can/activity/databinding/CheryCarSetBinding;->cheryRlVehicleLine:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p16

    .line 95
    iput-object v1, v0, Lcom/can/activity/databinding/CheryCarSetBinding;->cherySetLang:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p17

    .line 96
    iput-object v1, v0, Lcom/can/activity/databinding/CheryCarSetBinding;->cherySetPrompt:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/CheryCarSetBinding;
    .locals 21

    move-object/from16 v0, p0

    const v1, 0x7f08026c

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f08027a

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/CheckBox;

    if-eqz v6, :cond_0

    const v1, 0x7f08027b

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_0

    const v1, 0x7f08027c

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/CheckBox;

    if-eqz v8, :cond_0

    const v1, 0x7f08027d

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/CheckBox;

    if-eqz v9, :cond_0

    const v1, 0x7f08027e

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/CheckBox;

    if-eqz v10, :cond_0

    const v1, 0x7f08027f

    .line 163
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/CheckBox;

    if-eqz v11, :cond_0

    const v1, 0x7f080280

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/CheckBox;

    if-eqz v12, :cond_0

    const v1, 0x7f080281

    .line 175
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/CheckBox;

    if-eqz v13, :cond_0

    const v1, 0x7f080282

    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/CheckBox;

    if-eqz v14, :cond_0

    const v1, 0x7f080283

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/CheckBox;

    if-eqz v15, :cond_0

    const v1, 0x7f080285

    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/RelativeLayout;

    if-eqz v16, :cond_0

    const v1, 0x7f080286

    .line 199
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/RelativeLayout;

    if-eqz v17, :cond_0

    const v1, 0x7f080287

    .line 205
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/RelativeLayout;

    if-eqz v18, :cond_0

    const v1, 0x7f08028a

    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/RelativeLayout;

    if-eqz v19, :cond_0

    const v1, 0x7f08028b

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/RelativeLayout;

    if-eqz v20, :cond_0

    .line 222
    new-instance v1, Lcom/can/activity/databinding/CheryCarSetBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    invoke-direct/range {v3 .. v20}, Lcom/can/activity/databinding/CheryCarSetBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    return-object v1

    .line 229
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/CheryCarSetBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/CheryCarSetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/CheryCarSetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/CheryCarSetBinding;
    .locals 2

    const v0, 0x7f0b0043

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 115
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/CheryCarSetBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/CheryCarSetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/can/activity/databinding/CheryCarSetBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/can/activity/databinding/CheryCarSetBinding;->rootView:Landroid/widget/ScrollView;

    return-object p0
.end method
