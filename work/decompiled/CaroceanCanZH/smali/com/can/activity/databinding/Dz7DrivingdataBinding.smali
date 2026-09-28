.class public final Lcom/can/activity/databinding/Dz7DrivingdataBinding;
.super Ljava/lang/Object;
.source "Dz7DrivingdataBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnDz7DrivingLeft:Landroid/widget/Button;

.field public final btnDz7DrivingRight:Landroid/widget/Button;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final txDz7DrivingAvgFuel:Landroid/widget/TextView;

.field public final txDz7DrivingAvgSpeed:Landroid/widget/TextView;

.field public final txDz7DrivingConvs:Landroid/widget/TextView;

.field public final txDz7DrivingCurfuel:Landroid/widget/TextView;

.field public final txDz7DrivingRange:Landroid/widget/TextView;

.field public final txDz7DrivingRundis:Landroid/widget/TextView;

.field public final txDz7DrivingRuntime:Landroid/widget/TextView;

.field public final txDz7DrivingTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/can/activity/databinding/Dz7DrivingdataBinding;->rootView:Landroid/widget/LinearLayout;

    .line 59
    iput-object p2, p0, Lcom/can/activity/databinding/Dz7DrivingdataBinding;->btnDz7DrivingLeft:Landroid/widget/Button;

    .line 60
    iput-object p3, p0, Lcom/can/activity/databinding/Dz7DrivingdataBinding;->btnDz7DrivingRight:Landroid/widget/Button;

    .line 61
    iput-object p4, p0, Lcom/can/activity/databinding/Dz7DrivingdataBinding;->txDz7DrivingAvgFuel:Landroid/widget/TextView;

    .line 62
    iput-object p5, p0, Lcom/can/activity/databinding/Dz7DrivingdataBinding;->txDz7DrivingAvgSpeed:Landroid/widget/TextView;

    .line 63
    iput-object p6, p0, Lcom/can/activity/databinding/Dz7DrivingdataBinding;->txDz7DrivingConvs:Landroid/widget/TextView;

    .line 64
    iput-object p7, p0, Lcom/can/activity/databinding/Dz7DrivingdataBinding;->txDz7DrivingCurfuel:Landroid/widget/TextView;

    .line 65
    iput-object p8, p0, Lcom/can/activity/databinding/Dz7DrivingdataBinding;->txDz7DrivingRange:Landroid/widget/TextView;

    .line 66
    iput-object p9, p0, Lcom/can/activity/databinding/Dz7DrivingdataBinding;->txDz7DrivingRundis:Landroid/widget/TextView;

    .line 67
    iput-object p10, p0, Lcom/can/activity/databinding/Dz7DrivingdataBinding;->txDz7DrivingRuntime:Landroid/widget/TextView;

    .line 68
    iput-object p11, p0, Lcom/can/activity/databinding/Dz7DrivingdataBinding;->txDz7DrivingTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/Dz7DrivingdataBinding;
    .locals 14

    const v0, 0x7f0800cb

    .line 99
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    const v0, 0x7f0800cc

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    const v0, 0x7f080887

    .line 111
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const v0, 0x7f080888

    .line 117
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f080889

    .line 123
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f08088a

    .line 129
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f08088b

    .line 135
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f08088c

    .line 141
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f08088d

    .line 147
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v0, 0x7f08088e

    .line 153
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 158
    new-instance v0, Lcom/can/activity/databinding/Dz7DrivingdataBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/can/activity/databinding/Dz7DrivingdataBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/Dz7DrivingdataBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/Dz7DrivingdataBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/Dz7DrivingdataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/Dz7DrivingdataBinding;
    .locals 2

    const v0, 0x7f0b0051

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/Dz7DrivingdataBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/Dz7DrivingdataBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/Dz7DrivingdataBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/can/activity/databinding/Dz7DrivingdataBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
