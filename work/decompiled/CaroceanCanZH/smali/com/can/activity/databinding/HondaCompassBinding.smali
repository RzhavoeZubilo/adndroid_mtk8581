.class public final Lcom/can/activity/databinding/HondaCompassBinding;
.super Ljava/lang/Object;
.source "HondaCompassBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final compassClock:Lcom/can/ui/draw/Compass;

.field public final compassLayout:Landroid/widget/RelativeLayout;

.field public final compassSkbarArea:Landroid/widget/SeekBar;

.field public final compassTvState:Lcom/can/ui/draw/AutoText;

.field public final compassValid:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvCompassCalibration:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/can/ui/draw/Compass;Landroid/widget/RelativeLayout;Landroid/widget/SeekBar;Lcom/can/ui/draw/AutoText;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/can/activity/databinding/HondaCompassBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 47
    iput-object p2, p0, Lcom/can/activity/databinding/HondaCompassBinding;->compassClock:Lcom/can/ui/draw/Compass;

    .line 48
    iput-object p3, p0, Lcom/can/activity/databinding/HondaCompassBinding;->compassLayout:Landroid/widget/RelativeLayout;

    .line 49
    iput-object p4, p0, Lcom/can/activity/databinding/HondaCompassBinding;->compassSkbarArea:Landroid/widget/SeekBar;

    .line 50
    iput-object p5, p0, Lcom/can/activity/databinding/HondaCompassBinding;->compassTvState:Lcom/can/ui/draw/AutoText;

    .line 51
    iput-object p6, p0, Lcom/can/activity/databinding/HondaCompassBinding;->compassValid:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lcom/can/activity/databinding/HondaCompassBinding;->tvCompassCalibration:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/HondaCompassBinding;
    .locals 10

    const v0, 0x7f080290

    .line 83
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/can/ui/draw/Compass;

    if-eqz v4, :cond_0

    const v0, 0x7f080291

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f080292

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/SeekBar;

    if-eqz v6, :cond_0

    const v0, 0x7f080293

    .line 101
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/can/ui/draw/AutoText;

    if-eqz v7, :cond_0

    const v0, 0x7f080294

    .line 107
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v0, 0x7f0807dd

    .line 113
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 118
    new-instance v0, Lcom/can/activity/databinding/HondaCompassBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/can/activity/databinding/HondaCompassBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/can/ui/draw/Compass;Landroid/widget/RelativeLayout;Landroid/widget/SeekBar;Lcom/can/ui/draw/AutoText;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 122
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/HondaCompassBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/HondaCompassBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/HondaCompassBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/HondaCompassBinding;
    .locals 2

    const v0, 0x7f0b0072

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/HondaCompassBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/HondaCompassBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/can/activity/databinding/HondaCompassBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/can/activity/databinding/HondaCompassBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
