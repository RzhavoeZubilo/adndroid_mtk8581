.class public final Lcom/can/activity/databinding/Dz7TpmsBinding;
.super Ljava/lang/Object;
.source "Dz7TpmsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final imageKodiaqTpmsLb:Landroid/widget/ImageView;

.field public final imageKodiaqTpmsLf:Landroid/widget/ImageView;

.field public final imageKodiaqTpmsRb:Landroid/widget/ImageView;

.field public final imageKodiaqTpmsRf:Landroid/widget/ImageView;

.field public final kodiaqTpmsImageView1:Landroid/widget/ImageView;

.field public final kodiaqTpmsWarnInfo:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final txKodiaqTpmsValLb:Landroid/widget/TextView;

.field public final txKodiaqTpmsValLf:Landroid/widget/TextView;

.field public final txKodiaqTpmsValRb:Landroid/widget/TextView;

.field public final txKodiaqTpmsValRf:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/can/activity/databinding/Dz7TpmsBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 59
    iput-object p2, p0, Lcom/can/activity/databinding/Dz7TpmsBinding;->imageKodiaqTpmsLb:Landroid/widget/ImageView;

    .line 60
    iput-object p3, p0, Lcom/can/activity/databinding/Dz7TpmsBinding;->imageKodiaqTpmsLf:Landroid/widget/ImageView;

    .line 61
    iput-object p4, p0, Lcom/can/activity/databinding/Dz7TpmsBinding;->imageKodiaqTpmsRb:Landroid/widget/ImageView;

    .line 62
    iput-object p5, p0, Lcom/can/activity/databinding/Dz7TpmsBinding;->imageKodiaqTpmsRf:Landroid/widget/ImageView;

    .line 63
    iput-object p6, p0, Lcom/can/activity/databinding/Dz7TpmsBinding;->kodiaqTpmsImageView1:Landroid/widget/ImageView;

    .line 64
    iput-object p7, p0, Lcom/can/activity/databinding/Dz7TpmsBinding;->kodiaqTpmsWarnInfo:Landroid/widget/TextView;

    .line 65
    iput-object p8, p0, Lcom/can/activity/databinding/Dz7TpmsBinding;->txKodiaqTpmsValLb:Landroid/widget/TextView;

    .line 66
    iput-object p9, p0, Lcom/can/activity/databinding/Dz7TpmsBinding;->txKodiaqTpmsValLf:Landroid/widget/TextView;

    .line 67
    iput-object p10, p0, Lcom/can/activity/databinding/Dz7TpmsBinding;->txKodiaqTpmsValRb:Landroid/widget/TextView;

    .line 68
    iput-object p11, p0, Lcom/can/activity/databinding/Dz7TpmsBinding;->txKodiaqTpmsValRf:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/Dz7TpmsBinding;
    .locals 14

    const v0, 0x7f0804a0

    .line 99
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0804a1

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0804a2

    .line 111
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0804a3

    .line 117
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f08052a

    .line 123
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f08052b

    .line 129
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0808bc

    .line 135
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0808bd

    .line 141
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0808be

    .line 147
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v0, 0x7f0808bf

    .line 153
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 158
    new-instance v0, Lcom/can/activity/databinding/Dz7TpmsBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/can/activity/databinding/Dz7TpmsBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 163
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/Dz7TpmsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/Dz7TpmsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/Dz7TpmsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/Dz7TpmsBinding;
    .locals 2

    const v0, 0x7f0b0054

    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/Dz7TpmsBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/Dz7TpmsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/can/activity/databinding/Dz7TpmsBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/can/activity/databinding/Dz7TpmsBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
