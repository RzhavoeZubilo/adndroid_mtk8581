.class public final Lcom/can/activity/databinding/JacTpmsBinding;
.super Ljava/lang/Object;
.source "JacTpmsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dz7TpmsImageView1:Landroid/widget/ImageView;

.field public final dz7TpmsImageViewLF:Landroid/widget/ImageView;

.field public final dz7TpmsImageViewLR:Landroid/widget/ImageView;

.field public final dz7TpmsImageViewRF:Landroid/widget/ImageView;

.field public final dz7TpmsImageViewRR:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final txDz7TpmsLfVal:Landroid/widget/TextView;

.field public final txDz7TpmsLrVal:Landroid/widget/TextView;

.field public final txDz7TpmsRfVal:Landroid/widget/TextView;

.field public final txDz7TpmsRrVal:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/can/activity/databinding/JacTpmsBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 55
    iput-object p2, p0, Lcom/can/activity/databinding/JacTpmsBinding;->dz7TpmsImageView1:Landroid/widget/ImageView;

    .line 56
    iput-object p3, p0, Lcom/can/activity/databinding/JacTpmsBinding;->dz7TpmsImageViewLF:Landroid/widget/ImageView;

    .line 57
    iput-object p4, p0, Lcom/can/activity/databinding/JacTpmsBinding;->dz7TpmsImageViewLR:Landroid/widget/ImageView;

    .line 58
    iput-object p5, p0, Lcom/can/activity/databinding/JacTpmsBinding;->dz7TpmsImageViewRF:Landroid/widget/ImageView;

    .line 59
    iput-object p6, p0, Lcom/can/activity/databinding/JacTpmsBinding;->dz7TpmsImageViewRR:Landroid/widget/ImageView;

    .line 60
    iput-object p7, p0, Lcom/can/activity/databinding/JacTpmsBinding;->txDz7TpmsLfVal:Landroid/widget/TextView;

    .line 61
    iput-object p8, p0, Lcom/can/activity/databinding/JacTpmsBinding;->txDz7TpmsLrVal:Landroid/widget/TextView;

    .line 62
    iput-object p9, p0, Lcom/can/activity/databinding/JacTpmsBinding;->txDz7TpmsRfVal:Landroid/widget/TextView;

    .line 63
    iput-object p10, p0, Lcom/can/activity/databinding/JacTpmsBinding;->txDz7TpmsRrVal:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/JacTpmsBinding;
    .locals 13

    const v0, 0x7f080318

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f080319

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f080315

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f080316

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f080317

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f080895

    .line 124
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f080896

    .line 130
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f080897

    .line 136
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f080898

    .line 142
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 147
    new-instance v0, Lcom/can/activity/databinding/JacTpmsBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/can/activity/databinding/JacTpmsBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/JacTpmsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/JacTpmsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/JacTpmsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/JacTpmsBinding;
    .locals 2

    const v0, 0x7f0b0083

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/JacTpmsBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/JacTpmsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/JacTpmsBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/can/activity/databinding/JacTpmsBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
