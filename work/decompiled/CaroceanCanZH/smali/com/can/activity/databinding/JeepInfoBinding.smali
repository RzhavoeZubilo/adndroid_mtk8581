.class public final Lcom/can/activity/databinding/JeepInfoBinding;
.super Ljava/lang/Object;
.source "JeepInfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnJeepMenuAirset:Landroid/widget/Button;

.field public final btnJeepMenuCarset:Landroid/widget/Button;

.field public final btnJeepMenuCdinfo:Landroid/widget/Button;

.field public final btnJeepMenuCompass:Landroid/widget/Button;

.field public final btnMenuDsp:Landroid/widget/Button;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/can/activity/databinding/JeepInfoBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 40
    iput-object p2, p0, Lcom/can/activity/databinding/JeepInfoBinding;->btnJeepMenuAirset:Landroid/widget/Button;

    .line 41
    iput-object p3, p0, Lcom/can/activity/databinding/JeepInfoBinding;->btnJeepMenuCarset:Landroid/widget/Button;

    .line 42
    iput-object p4, p0, Lcom/can/activity/databinding/JeepInfoBinding;->btnJeepMenuCdinfo:Landroid/widget/Button;

    .line 43
    iput-object p5, p0, Lcom/can/activity/databinding/JeepInfoBinding;->btnJeepMenuCompass:Landroid/widget/Button;

    .line 44
    iput-object p6, p0, Lcom/can/activity/databinding/JeepInfoBinding;->btnMenuDsp:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/JeepInfoBinding;
    .locals 9

    const v0, 0x7f080151

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    const v0, 0x7f080152

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    const v0, 0x7f080153

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    const v0, 0x7f080154

    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    const v0, 0x7f080170

    .line 99
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    .line 104
    new-instance v0, Lcom/can/activity/databinding/JeepInfoBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/can/activity/databinding/JeepInfoBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    return-object v0

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/JeepInfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/JeepInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/JeepInfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/JeepInfoBinding;
    .locals 2

    const v0, 0x7f0b008a

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/JeepInfoBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/JeepInfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/can/activity/databinding/JeepInfoBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/can/activity/databinding/JeepInfoBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
