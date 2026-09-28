.class public final Lcom/can/activity/databinding/ItemTwoButtonBinding;
.super Ljava/lang/Object;
.source "ItemTwoButtonBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final itemButton1:Landroid/widget/RadioButton;

.field public final itemButton2:Landroid/widget/RadioButton;

.field public final itemTwoRadioButton:Landroid/widget/RadioGroup;

.field private final rootView:Landroid/widget/RadioGroup;


# direct methods
.method private constructor <init>(Landroid/widget/RadioGroup;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/can/activity/databinding/ItemTwoButtonBinding;->rootView:Landroid/widget/RadioGroup;

    .line 33
    iput-object p2, p0, Lcom/can/activity/databinding/ItemTwoButtonBinding;->itemButton1:Landroid/widget/RadioButton;

    .line 34
    iput-object p3, p0, Lcom/can/activity/databinding/ItemTwoButtonBinding;->itemButton2:Landroid/widget/RadioButton;

    .line 35
    iput-object p4, p0, Lcom/can/activity/databinding/ItemTwoButtonBinding;->itemTwoRadioButton:Landroid/widget/RadioGroup;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/ItemTwoButtonBinding;
    .locals 3

    const v0, 0x7f0804ba

    .line 66
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    const v0, 0x7f0804bb

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    if-eqz v2, :cond_0

    .line 77
    check-cast p0, Landroid/widget/RadioGroup;

    .line 79
    new-instance v0, Lcom/can/activity/databinding/ItemTwoButtonBinding;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/can/activity/databinding/ItemTwoButtonBinding;-><init>(Landroid/widget/RadioGroup;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;)V

    return-object v0

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/ItemTwoButtonBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/ItemTwoButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/ItemTwoButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/ItemTwoButtonBinding;
    .locals 2

    const v0, 0x7f0b0080

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/ItemTwoButtonBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/ItemTwoButtonBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/can/activity/databinding/ItemTwoButtonBinding;->getRoot()Landroid/widget/RadioGroup;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RadioGroup;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/can/activity/databinding/ItemTwoButtonBinding;->rootView:Landroid/widget/RadioGroup;

    return-object p0
.end method
