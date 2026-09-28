.class public final Lcom/can/activity/databinding/HondaAirSetBinding;
.super Ljava/lang/Object;
.source "HondaAirSetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final hondaAcMode:Landroid/widget/TextView;

.field public final hondaAirWinMode:Landroid/widget/TextView;

.field public final hondaBtnAcOff:Landroid/widget/ImageView;

.field public final hondaBtnAcOn:Landroid/widget/ImageView;

.field public final hondaBtnWinDn:Landroid/widget/ImageView;

.field public final hondaBtnWinPara:Landroid/widget/ImageView;

.field public final hondaBtnWinParaDn:Landroid/widget/ImageView;

.field public final hondaBtnWinUpDn:Landroid/widget/ImageView;

.field public final hondaLeftTemp:Landroid/widget/TextView;

.field public final hondaRightTemp:Landroid/widget/TextView;

.field public final hondaSeekbarAirWin:Lcom/can/ui/draw/FuelSeekBar;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/can/ui/draw/FuelSeekBar;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/can/activity/databinding/HondaAirSetBinding;->rootView:Landroid/widget/LinearLayout;

    .line 63
    iput-object p2, p0, Lcom/can/activity/databinding/HondaAirSetBinding;->hondaAcMode:Landroid/widget/TextView;

    .line 64
    iput-object p3, p0, Lcom/can/activity/databinding/HondaAirSetBinding;->hondaAirWinMode:Landroid/widget/TextView;

    .line 65
    iput-object p4, p0, Lcom/can/activity/databinding/HondaAirSetBinding;->hondaBtnAcOff:Landroid/widget/ImageView;

    .line 66
    iput-object p5, p0, Lcom/can/activity/databinding/HondaAirSetBinding;->hondaBtnAcOn:Landroid/widget/ImageView;

    .line 67
    iput-object p6, p0, Lcom/can/activity/databinding/HondaAirSetBinding;->hondaBtnWinDn:Landroid/widget/ImageView;

    .line 68
    iput-object p7, p0, Lcom/can/activity/databinding/HondaAirSetBinding;->hondaBtnWinPara:Landroid/widget/ImageView;

    .line 69
    iput-object p8, p0, Lcom/can/activity/databinding/HondaAirSetBinding;->hondaBtnWinParaDn:Landroid/widget/ImageView;

    .line 70
    iput-object p9, p0, Lcom/can/activity/databinding/HondaAirSetBinding;->hondaBtnWinUpDn:Landroid/widget/ImageView;

    .line 71
    iput-object p10, p0, Lcom/can/activity/databinding/HondaAirSetBinding;->hondaLeftTemp:Landroid/widget/TextView;

    .line 72
    iput-object p11, p0, Lcom/can/activity/databinding/HondaAirSetBinding;->hondaRightTemp:Landroid/widget/TextView;

    .line 73
    iput-object p12, p0, Lcom/can/activity/databinding/HondaAirSetBinding;->hondaSeekbarAirWin:Lcom/can/ui/draw/FuelSeekBar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/HondaAirSetBinding;
    .locals 15

    const v0, 0x7f080481

    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const v0, 0x7f080482

    .line 110
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v0, 0x7f080483

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f080484

    .line 122
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f080486

    .line 128
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f080487

    .line 134
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f080488

    .line 140
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v0, 0x7f080489

    .line 146
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v0, 0x7f08048a

    .line 152
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v0, 0x7f080490

    .line 158
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v0, 0x7f080491

    .line 164
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/can/ui/draw/FuelSeekBar;

    if-eqz v14, :cond_0

    .line 169
    new-instance v0, Lcom/can/activity/databinding/HondaAirSetBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/can/activity/databinding/HondaAirSetBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/can/ui/draw/FuelSeekBar;)V

    return-object v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/HondaAirSetBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/HondaAirSetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/HondaAirSetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/HondaAirSetBinding;
    .locals 2

    const v0, 0x7f0b0070

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/HondaAirSetBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/HondaAirSetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/can/activity/databinding/HondaAirSetBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/can/activity/databinding/HondaAirSetBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
