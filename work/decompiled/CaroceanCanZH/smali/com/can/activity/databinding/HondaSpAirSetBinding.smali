.class public final Lcom/can/activity/databinding/HondaSpAirSetBinding;
.super Ljava/lang/Object;
.source "HondaSpAirSetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final hondaAcMode:Landroid/widget/TextView;

.field public final hondaAirWinMode:Landroid/widget/TextView;

.field public final hondaBtnAcOff:Landroid/widget/ImageView;

.field public final hondaBtnAcOn:Landroid/widget/ImageView;

.field public final hondaBtnAirRearSwicth:Landroid/widget/Button;

.field public final hondaBtnWinDn:Landroid/widget/ImageView;

.field public final hondaBtnWinPara:Landroid/widget/ImageView;

.field public final hondaBtnWinParaDn:Landroid/widget/ImageView;

.field public final hondaBtnWinUpDn:Landroid/widget/ImageView;

.field public final hondaLeftTemp:Landroid/widget/TextView;

.field public final hondaRightTemp:Landroid/widget/TextView;

.field public final hondaSeekbarAirWin:Lcom/can/ui/draw/FuelSeekBar;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/can/ui/draw/FuelSeekBar;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/can/activity/databinding/HondaSpAirSetBinding;->rootView:Landroid/widget/LinearLayout;

    .line 68
    iput-object p2, p0, Lcom/can/activity/databinding/HondaSpAirSetBinding;->hondaAcMode:Landroid/widget/TextView;

    .line 69
    iput-object p3, p0, Lcom/can/activity/databinding/HondaSpAirSetBinding;->hondaAirWinMode:Landroid/widget/TextView;

    .line 70
    iput-object p4, p0, Lcom/can/activity/databinding/HondaSpAirSetBinding;->hondaBtnAcOff:Landroid/widget/ImageView;

    .line 71
    iput-object p5, p0, Lcom/can/activity/databinding/HondaSpAirSetBinding;->hondaBtnAcOn:Landroid/widget/ImageView;

    .line 72
    iput-object p6, p0, Lcom/can/activity/databinding/HondaSpAirSetBinding;->hondaBtnAirRearSwicth:Landroid/widget/Button;

    .line 73
    iput-object p7, p0, Lcom/can/activity/databinding/HondaSpAirSetBinding;->hondaBtnWinDn:Landroid/widget/ImageView;

    .line 74
    iput-object p8, p0, Lcom/can/activity/databinding/HondaSpAirSetBinding;->hondaBtnWinPara:Landroid/widget/ImageView;

    .line 75
    iput-object p9, p0, Lcom/can/activity/databinding/HondaSpAirSetBinding;->hondaBtnWinParaDn:Landroid/widget/ImageView;

    .line 76
    iput-object p10, p0, Lcom/can/activity/databinding/HondaSpAirSetBinding;->hondaBtnWinUpDn:Landroid/widget/ImageView;

    .line 77
    iput-object p11, p0, Lcom/can/activity/databinding/HondaSpAirSetBinding;->hondaLeftTemp:Landroid/widget/TextView;

    .line 78
    iput-object p12, p0, Lcom/can/activity/databinding/HondaSpAirSetBinding;->hondaRightTemp:Landroid/widget/TextView;

    .line 79
    iput-object p13, p0, Lcom/can/activity/databinding/HondaSpAirSetBinding;->hondaSeekbarAirWin:Lcom/can/ui/draw/FuelSeekBar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/HondaSpAirSetBinding;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f080481

    .line 110
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v1, 0x7f080482

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const v1, 0x7f080483

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f080484

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f080485

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_0

    const v1, 0x7f080486

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f080487

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f080488

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f080489

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    const v1, 0x7f08048a

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f080490

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f080491

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/can/ui/draw/FuelSeekBar;

    if-eqz v16, :cond_0

    .line 181
    new-instance v1, Lcom/can/activity/databinding/HondaSpAirSetBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/can/activity/databinding/HondaSpAirSetBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/can/ui/draw/FuelSeekBar;)V

    return-object v1

    .line 185
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/HondaSpAirSetBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/HondaSpAirSetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/HondaSpAirSetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/HondaSpAirSetBinding;
    .locals 2

    const v0, 0x7f0b0076

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/HondaSpAirSetBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/HondaSpAirSetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/can/activity/databinding/HondaSpAirSetBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/can/activity/databinding/HondaSpAirSetBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
