.class public final Lcom/can/activity/databinding/JeepCompassBinding;
.super Ljava/lang/Object;
.source "JeepCompassBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final compassTvState:Lcom/can/ui/draw/AutoText;

.field public final jeepCompassClock:Lcom/can/ui/draw/Compass;

.field public final jeepCompassSkbarArea:Landroid/widget/SeekBar;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final tvCompassCalibration:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/can/ui/draw/AutoText;Lcom/can/ui/draw/Compass;Landroid/widget/SeekBar;Landroid/widget/TextView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/can/activity/databinding/JeepCompassBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 40
    iput-object p2, p0, Lcom/can/activity/databinding/JeepCompassBinding;->compassTvState:Lcom/can/ui/draw/AutoText;

    .line 41
    iput-object p3, p0, Lcom/can/activity/databinding/JeepCompassBinding;->jeepCompassClock:Lcom/can/ui/draw/Compass;

    .line 42
    iput-object p4, p0, Lcom/can/activity/databinding/JeepCompassBinding;->jeepCompassSkbarArea:Landroid/widget/SeekBar;

    .line 43
    iput-object p5, p0, Lcom/can/activity/databinding/JeepCompassBinding;->tvCompassCalibration:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/JeepCompassBinding;
    .locals 8

    const v0, 0x7f080293

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/can/ui/draw/AutoText;

    if-eqz v4, :cond_0

    const v0, 0x7f080501

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/can/ui/draw/Compass;

    if-eqz v5, :cond_0

    const v0, 0x7f080502

    .line 86
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/SeekBar;

    if-eqz v6, :cond_0

    const v0, 0x7f0807dd

    .line 92
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 97
    new-instance v0, Lcom/can/activity/databinding/JeepCompassBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/can/activity/databinding/JeepCompassBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/can/ui/draw/AutoText;Lcom/can/ui/draw/Compass;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/JeepCompassBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/JeepCompassBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/JeepCompassBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/JeepCompassBinding;
    .locals 2

    const v0, 0x7f0b0088

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/JeepCompassBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/JeepCompassBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/can/activity/databinding/JeepCompassBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/can/activity/databinding/JeepCompassBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
