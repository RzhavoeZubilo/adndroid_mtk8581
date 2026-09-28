.class public final Lcom/can/activity/databinding/LexusDoorBinding;
.super Ljava/lang/Object;
.source "LexusDoorBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final doorLayout:Landroid/widget/FrameLayout;

.field public final ivFrontCoverOpen:Landroid/widget/ImageView;

.field public final ivFueling:Landroid/widget/ImageView;

.field public final ivLeftBackDoor:Landroid/widget/ImageView;

.field public final ivLeftFrontDoor:Landroid/widget/ImageView;

.field public final ivRearDoorOpen:Landroid/widget/ImageView;

.field public final ivRightBackDoor:Landroid/widget/ImageView;

.field public final ivRightFrontDoor:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/can/activity/databinding/LexusDoorBinding;->rootView:Landroid/widget/FrameLayout;

    .line 51
    iput-object p2, p0, Lcom/can/activity/databinding/LexusDoorBinding;->doorLayout:Landroid/widget/FrameLayout;

    .line 52
    iput-object p3, p0, Lcom/can/activity/databinding/LexusDoorBinding;->ivFrontCoverOpen:Landroid/widget/ImageView;

    .line 53
    iput-object p4, p0, Lcom/can/activity/databinding/LexusDoorBinding;->ivFueling:Landroid/widget/ImageView;

    .line 54
    iput-object p5, p0, Lcom/can/activity/databinding/LexusDoorBinding;->ivLeftBackDoor:Landroid/widget/ImageView;

    .line 55
    iput-object p6, p0, Lcom/can/activity/databinding/LexusDoorBinding;->ivLeftFrontDoor:Landroid/widget/ImageView;

    .line 56
    iput-object p7, p0, Lcom/can/activity/databinding/LexusDoorBinding;->ivRearDoorOpen:Landroid/widget/ImageView;

    .line 57
    iput-object p8, p0, Lcom/can/activity/databinding/LexusDoorBinding;->ivRightBackDoor:Landroid/widget/ImageView;

    .line 58
    iput-object p9, p0, Lcom/can/activity/databinding/LexusDoorBinding;->ivRightFrontDoor:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/LexusDoorBinding;
    .locals 10

    .line 88
    move-object v2, p0

    check-cast v2, Landroid/widget/FrameLayout;

    const v0, 0x7f0804d1

    .line 91
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    const v0, 0x7f0804d3

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0804d8

    .line 103
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0804d9

    .line 109
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0804dd

    .line 115
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0804e0

    .line 121
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0804e1

    .line 127
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    .line 132
    new-instance p0, Lcom/can/activity/databinding/LexusDoorBinding;

    move-object v0, p0

    move-object v1, v2

    invoke-direct/range {v0 .. v9}, Lcom/can/activity/databinding/LexusDoorBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object p0

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/LexusDoorBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/LexusDoorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/LexusDoorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/LexusDoorBinding;
    .locals 2

    const v0, 0x7f0b0096

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 77
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/LexusDoorBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/LexusDoorBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/can/activity/databinding/LexusDoorBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/can/activity/databinding/LexusDoorBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
