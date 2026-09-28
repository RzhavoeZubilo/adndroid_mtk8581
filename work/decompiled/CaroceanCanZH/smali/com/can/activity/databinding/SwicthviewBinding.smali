.class public final Lcom/can/activity/databinding/SwicthviewBinding;
.super Ljava/lang/Object;
.source "SwicthviewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnViewDepresangle:Landroid/widget/Button;

.field public final btnViewStandardview:Landroid/widget/Button;

.field public final btnViewWideangle:Landroid/widget/Button;

.field public final layoutSwicthview0:Landroid/widget/RelativeLayout;

.field public final layoutSwicthview1:Landroid/widget/LinearLayout;

.field public final layoutSwicthview2:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/can/activity/databinding/SwicthviewBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 45
    iput-object p2, p0, Lcom/can/activity/databinding/SwicthviewBinding;->btnViewDepresangle:Landroid/widget/Button;

    .line 46
    iput-object p3, p0, Lcom/can/activity/databinding/SwicthviewBinding;->btnViewStandardview:Landroid/widget/Button;

    .line 47
    iput-object p4, p0, Lcom/can/activity/databinding/SwicthviewBinding;->btnViewWideangle:Landroid/widget/Button;

    .line 48
    iput-object p5, p0, Lcom/can/activity/databinding/SwicthviewBinding;->layoutSwicthview0:Landroid/widget/RelativeLayout;

    .line 49
    iput-object p6, p0, Lcom/can/activity/databinding/SwicthviewBinding;->layoutSwicthview1:Landroid/widget/LinearLayout;

    .line 50
    iput-object p7, p0, Lcom/can/activity/databinding/SwicthviewBinding;->layoutSwicthview2:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/SwicthviewBinding;
    .locals 10

    const v0, 0x7f0801a7

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    const v0, 0x7f0801a8

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    const v0, 0x7f0801a9

    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 98
    move-object v7, p0

    check-cast v7, Landroid/widget/RelativeLayout;

    const v0, 0x7f080581

    .line 101
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    const v0, 0x7f080582

    .line 107
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_0

    .line 112
    new-instance p0, Lcom/can/activity/databinding/SwicthviewBinding;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v9}, Lcom/can/activity/databinding/SwicthviewBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    return-object p0

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/SwicthviewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/SwicthviewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/SwicthviewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/SwicthviewBinding;
    .locals 2

    const v0, 0x7f0b00ce

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/SwicthviewBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/SwicthviewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/SwicthviewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/can/activity/databinding/SwicthviewBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
