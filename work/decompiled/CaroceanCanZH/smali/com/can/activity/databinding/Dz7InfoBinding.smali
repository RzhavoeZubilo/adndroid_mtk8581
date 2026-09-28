.class public final Lcom/can/activity/databinding/Dz7InfoBinding;
.super Ljava/lang/Object;
.source "Dz7InfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnDz7MenuAirset:Landroid/widget/Button;

.field public final btnDz7MenuCarset:Landroid/widget/Button;

.field public final btnDz7MenuConvs:Landroid/widget/Button;

.field public final btnDz7MenuSerivces:Landroid/widget/Button;

.field public final btnDz7MenuStartstop:Landroid/widget/Button;

.field public final imgDz7MenuNotify:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final txDz7MenuNotifyNum:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/can/activity/databinding/Dz7InfoBinding;->rootView:Landroid/widget/LinearLayout;

    .line 49
    iput-object p2, p0, Lcom/can/activity/databinding/Dz7InfoBinding;->btnDz7MenuAirset:Landroid/widget/Button;

    .line 50
    iput-object p3, p0, Lcom/can/activity/databinding/Dz7InfoBinding;->btnDz7MenuCarset:Landroid/widget/Button;

    .line 51
    iput-object p4, p0, Lcom/can/activity/databinding/Dz7InfoBinding;->btnDz7MenuConvs:Landroid/widget/Button;

    .line 52
    iput-object p5, p0, Lcom/can/activity/databinding/Dz7InfoBinding;->btnDz7MenuSerivces:Landroid/widget/Button;

    .line 53
    iput-object p6, p0, Lcom/can/activity/databinding/Dz7InfoBinding;->btnDz7MenuStartstop:Landroid/widget/Button;

    .line 54
    iput-object p7, p0, Lcom/can/activity/databinding/Dz7InfoBinding;->imgDz7MenuNotify:Landroid/widget/ImageView;

    .line 55
    iput-object p8, p0, Lcom/can/activity/databinding/Dz7InfoBinding;->txDz7MenuNotifyNum:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/Dz7InfoBinding;
    .locals 11

    const v0, 0x7f0800cd

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    const v0, 0x7f0800ce

    .line 92
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    const v0, 0x7f0800cf

    .line 98
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    const v0, 0x7f0800d0

    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    const v0, 0x7f0800d1

    .line 110
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    const v0, 0x7f0804a7

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f08088f

    .line 122
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 127
    new-instance v0, Lcom/can/activity/databinding/Dz7InfoBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/can/activity/databinding/Dz7InfoBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/Dz7InfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/Dz7InfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/Dz7InfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/Dz7InfoBinding;
    .locals 2

    const v0, 0x7f0b0052

    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/Dz7InfoBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/Dz7InfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/can/activity/databinding/Dz7InfoBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/can/activity/databinding/Dz7InfoBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
