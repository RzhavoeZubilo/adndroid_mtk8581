.class public final Lcom/can/activity/databinding/AvmSetBinding;
.super Ljava/lang/Object;
.source "AvmSetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final avmCheckbox1:Landroid/widget/CheckBox;

.field public final avmCheckbox2:Landroid/widget/CheckBox;

.field public final avmCheckbox3:Landroid/widget/CheckBox;

.field public final avmCheckbox4:Landroid/widget/CheckBox;

.field public final avmCheckbox5:Landroid/widget/CheckBox;

.field public final avmCheckbox6:Landroid/widget/CheckBox;

.field public final avmCheckbox7:Landroid/widget/CheckBox;

.field public final layoutAvm:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/can/activity/databinding/AvmSetBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 52
    iput-object p2, p0, Lcom/can/activity/databinding/AvmSetBinding;->avmCheckbox1:Landroid/widget/CheckBox;

    .line 53
    iput-object p3, p0, Lcom/can/activity/databinding/AvmSetBinding;->avmCheckbox2:Landroid/widget/CheckBox;

    .line 54
    iput-object p4, p0, Lcom/can/activity/databinding/AvmSetBinding;->avmCheckbox3:Landroid/widget/CheckBox;

    .line 55
    iput-object p5, p0, Lcom/can/activity/databinding/AvmSetBinding;->avmCheckbox4:Landroid/widget/CheckBox;

    .line 56
    iput-object p6, p0, Lcom/can/activity/databinding/AvmSetBinding;->avmCheckbox5:Landroid/widget/CheckBox;

    .line 57
    iput-object p7, p0, Lcom/can/activity/databinding/AvmSetBinding;->avmCheckbox6:Landroid/widget/CheckBox;

    .line 58
    iput-object p8, p0, Lcom/can/activity/databinding/AvmSetBinding;->avmCheckbox7:Landroid/widget/CheckBox;

    .line 59
    iput-object p9, p0, Lcom/can/activity/databinding/AvmSetBinding;->layoutAvm:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/AvmSetBinding;
    .locals 12

    const v0, 0x7f08005a

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_0

    const v0, 0x7f08005b

    .line 96
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    const v0, 0x7f08005c

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/CheckBox;

    if-eqz v6, :cond_0

    const v0, 0x7f08005d

    .line 108
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_0

    const v0, 0x7f08005e

    .line 114
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/CheckBox;

    if-eqz v8, :cond_0

    const v0, 0x7f08005f

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/CheckBox;

    if-eqz v9, :cond_0

    const v0, 0x7f080060

    .line 126
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/CheckBox;

    if-eqz v10, :cond_0

    const v0, 0x7f080572

    .line 132
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 137
    new-instance v0, Lcom/can/activity/databinding/AvmSetBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/can/activity/databinding/AvmSetBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;)V

    return-object v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/AvmSetBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/AvmSetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/AvmSetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/AvmSetBinding;
    .locals 2

    const v0, 0x7f0b0026

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/AvmSetBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/AvmSetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/AvmSetBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/can/activity/databinding/AvmSetBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
