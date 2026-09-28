.class public final Lcom/can/activity/databinding/BigRadarBinding;
.super Ljava/lang/Object;
.source "BigRadarBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bigRadarMute:Landroid/widget/ImageButton;

.field public final bigRadarSurfaceview:Lcom/can/ui/draw/RadarSurface;

.field public final btnRadarVideo:Landroid/widget/ImageButton;

.field public final imageViewWarn:Landroid/widget/ImageView;

.field public final radarBottomLayout:Landroid/widget/RelativeLayout;

.field public final radarBottonGroup:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final txRadarWarn:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Lcom/can/ui/draw/RadarSurface;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/can/activity/databinding/BigRadarBinding;->rootView:Landroid/widget/LinearLayout;

    .line 51
    iput-object p2, p0, Lcom/can/activity/databinding/BigRadarBinding;->bigRadarMute:Landroid/widget/ImageButton;

    .line 52
    iput-object p3, p0, Lcom/can/activity/databinding/BigRadarBinding;->bigRadarSurfaceview:Lcom/can/ui/draw/RadarSurface;

    .line 53
    iput-object p4, p0, Lcom/can/activity/databinding/BigRadarBinding;->btnRadarVideo:Landroid/widget/ImageButton;

    .line 54
    iput-object p5, p0, Lcom/can/activity/databinding/BigRadarBinding;->imageViewWarn:Landroid/widget/ImageView;

    .line 55
    iput-object p6, p0, Lcom/can/activity/databinding/BigRadarBinding;->radarBottomLayout:Landroid/widget/RelativeLayout;

    .line 56
    iput-object p7, p0, Lcom/can/activity/databinding/BigRadarBinding;->radarBottonGroup:Landroid/widget/RelativeLayout;

    .line 57
    iput-object p8, p0, Lcom/can/activity/databinding/BigRadarBinding;->txRadarWarn:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/BigRadarBinding;
    .locals 11

    const v0, 0x7f080067

    .line 88
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    const v0, 0x7f080068

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/can/ui/draw/RadarSurface;

    if-eqz v5, :cond_0

    const v0, 0x7f08017d

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageButton;

    if-eqz v6, :cond_0

    const v0, 0x7f08049f

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0806f1

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f0806f2

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_0

    const v0, 0x7f0808c4

    .line 124
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 129
    new-instance v0, Lcom/can/activity/databinding/BigRadarBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/can/activity/databinding/BigRadarBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageButton;Lcom/can/ui/draw/RadarSurface;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V

    return-object v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/BigRadarBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/BigRadarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/BigRadarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/BigRadarBinding;
    .locals 2

    const v0, 0x7f0b0027

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/BigRadarBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/BigRadarBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/can/activity/databinding/BigRadarBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/can/activity/databinding/BigRadarBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
