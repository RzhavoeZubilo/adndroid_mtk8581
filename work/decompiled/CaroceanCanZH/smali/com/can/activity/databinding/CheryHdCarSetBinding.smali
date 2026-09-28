.class public final Lcom/can/activity/databinding/CheryHdCarSetBinding;
.super Ljava/lang/Object;
.source "CheryHdCarSetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cheryCheckboxAutoLock:Landroid/widget/CheckBox;

.field public final cheryCheckboxDaytimeLights:Landroid/widget/CheckBox;

.field public final cheryCheckboxEgenBrakeAlram:Landroid/widget/CheckBox;

.field public final cheryCheckboxHeadlampDelay:Landroid/widget/CheckBox;

.field public final cheryCheckboxSteeringAnim:Landroid/widget/CheckBox;

.field public final cheryCheckboxSteeringAvm:Landroid/widget/CheckBox;

.field public final cheryEgenBrakingAlram:Landroid/widget/RelativeLayout;

.field public final cheryRlDashBklight:Landroid/widget/RelativeLayout;

.field public final cheryRlSpeedingAlram:Landroid/widget/RelativeLayout;

.field public final cheryRlVehicleLine:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/can/activity/databinding/CheryHdCarSetBinding;->rootView:Landroid/widget/ScrollView;

    .line 59
    iput-object p2, p0, Lcom/can/activity/databinding/CheryHdCarSetBinding;->cheryCheckboxAutoLock:Landroid/widget/CheckBox;

    .line 60
    iput-object p3, p0, Lcom/can/activity/databinding/CheryHdCarSetBinding;->cheryCheckboxDaytimeLights:Landroid/widget/CheckBox;

    .line 61
    iput-object p4, p0, Lcom/can/activity/databinding/CheryHdCarSetBinding;->cheryCheckboxEgenBrakeAlram:Landroid/widget/CheckBox;

    .line 62
    iput-object p5, p0, Lcom/can/activity/databinding/CheryHdCarSetBinding;->cheryCheckboxHeadlampDelay:Landroid/widget/CheckBox;

    .line 63
    iput-object p6, p0, Lcom/can/activity/databinding/CheryHdCarSetBinding;->cheryCheckboxSteeringAnim:Landroid/widget/CheckBox;

    .line 64
    iput-object p7, p0, Lcom/can/activity/databinding/CheryHdCarSetBinding;->cheryCheckboxSteeringAvm:Landroid/widget/CheckBox;

    .line 65
    iput-object p8, p0, Lcom/can/activity/databinding/CheryHdCarSetBinding;->cheryEgenBrakingAlram:Landroid/widget/RelativeLayout;

    .line 66
    iput-object p9, p0, Lcom/can/activity/databinding/CheryHdCarSetBinding;->cheryRlDashBklight:Landroid/widget/RelativeLayout;

    .line 67
    iput-object p10, p0, Lcom/can/activity/databinding/CheryHdCarSetBinding;->cheryRlSpeedingAlram:Landroid/widget/RelativeLayout;

    .line 68
    iput-object p11, p0, Lcom/can/activity/databinding/CheryHdCarSetBinding;->cheryRlVehicleLine:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/CheryHdCarSetBinding;
    .locals 14

    const v0, 0x7f08027a

    .line 99
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_0

    const v0, 0x7f08027c

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    const v0, 0x7f08027d

    .line 111
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/CheckBox;

    if-eqz v6, :cond_0

    const v0, 0x7f08027e

    .line 117
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_0

    const v0, 0x7f080282

    .line 123
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/CheckBox;

    if-eqz v8, :cond_0

    const v0, 0x7f080283

    .line 129
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/CheckBox;

    if-eqz v9, :cond_0

    const v0, 0x7f080284

    .line 135
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f080285

    .line 141
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_0

    const v0, 0x7f080286

    .line 147
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/RelativeLayout;

    if-eqz v12, :cond_0

    const v0, 0x7f080287

    .line 153
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_0

    .line 158
    new-instance v0, Lcom/can/activity/databinding/CheryHdCarSetBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/ScrollView;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/can/activity/databinding/CheryHdCarSetBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V

    return-object v0

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 164
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/CheryHdCarSetBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/CheryHdCarSetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/CheryHdCarSetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/CheryHdCarSetBinding;
    .locals 2

    const v0, 0x7f0b0045

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/CheryHdCarSetBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/CheryHdCarSetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/CheryHdCarSetBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/can/activity/databinding/CheryHdCarSetBinding;->rootView:Landroid/widget/ScrollView;

    return-object p0
.end method
