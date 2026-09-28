.class public final Lcom/can/activity/databinding/PsaListviewBinding;
.super Ljava/lang/Object;
.source "PsaListviewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final psaTxListInfo:Lcom/can/ui/draw/AutoText;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/can/ui/draw/AutoText;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/can/activity/databinding/PsaListviewBinding;->rootView:Landroid/widget/LinearLayout;

    .line 26
    iput-object p2, p0, Lcom/can/activity/databinding/PsaListviewBinding;->psaTxListInfo:Lcom/can/ui/draw/AutoText;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/PsaListviewBinding;
    .locals 2

    const v0, 0x7f0806f0

    .line 57
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/can/ui/draw/AutoText;

    if-eqz v1, :cond_0

    .line 62
    new-instance v0, Lcom/can/activity/databinding/PsaListviewBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1}, Lcom/can/activity/databinding/PsaListviewBinding;-><init>(Landroid/widget/LinearLayout;Lcom/can/ui/draw/AutoText;)V

    return-object v0

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/PsaListviewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/PsaListviewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/PsaListviewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/PsaListviewBinding;
    .locals 2

    const v0, 0x7f0b00b8

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/PsaListviewBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/PsaListviewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/can/activity/databinding/PsaListviewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/can/activity/databinding/PsaListviewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
