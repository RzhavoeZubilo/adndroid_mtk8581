.class public final Lcom/can/activity/databinding/MazdaOpelkeyBinding;
.super Ljava/lang/Object;
.source "MazdaOpelkeyBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnMazdaKb1:Landroid/widget/Button;

.field public final btnMazdaKb2:Landroid/widget/Button;

.field public final btnMazdaKb3:Landroid/widget/Button;

.field public final btnMazdaKb4:Landroid/widget/Button;

.field public final btnMazdaKb5:Landroid/widget/Button;

.field public final btnMazdaKb6:Landroid/widget/Button;

.field public final btnMazdaKb7:Landroid/widget/Button;

.field public final btnMazdaKb8:Landroid/widget/Button;

.field public final btnMazdaKb9:Landroid/widget/Button;

.field public final btnMazdaKbBc:Landroid/widget/Button;

.field public final btnMazdaKbCdmp3:Landroid/widget/Button;

.field public final btnMazdaKbFmam:Landroid/widget/Button;

.field public final btnMazdaKbLeft:Landroid/widget/Button;

.field public final btnMazdaKbOk:Landroid/widget/Button;

.field public final btnMazdaKbRight:Landroid/widget/Button;

.field public final btnMazdaKbSet:Landroid/widget/Button;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 2

    move-object v0, p0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 76
    iput-object v1, v0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->rootView:Landroid/widget/RelativeLayout;

    move-object v1, p2

    .line 77
    iput-object v1, v0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->btnMazdaKb1:Landroid/widget/Button;

    move-object v1, p3

    .line 78
    iput-object v1, v0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->btnMazdaKb2:Landroid/widget/Button;

    move-object v1, p4

    .line 79
    iput-object v1, v0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->btnMazdaKb3:Landroid/widget/Button;

    move-object v1, p5

    .line 80
    iput-object v1, v0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->btnMazdaKb4:Landroid/widget/Button;

    move-object v1, p6

    .line 81
    iput-object v1, v0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->btnMazdaKb5:Landroid/widget/Button;

    move-object v1, p7

    .line 82
    iput-object v1, v0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->btnMazdaKb6:Landroid/widget/Button;

    move-object v1, p8

    .line 83
    iput-object v1, v0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->btnMazdaKb7:Landroid/widget/Button;

    move-object v1, p9

    .line 84
    iput-object v1, v0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->btnMazdaKb8:Landroid/widget/Button;

    move-object v1, p10

    .line 85
    iput-object v1, v0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->btnMazdaKb9:Landroid/widget/Button;

    move-object v1, p11

    .line 86
    iput-object v1, v0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->btnMazdaKbBc:Landroid/widget/Button;

    move-object v1, p12

    .line 87
    iput-object v1, v0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->btnMazdaKbCdmp3:Landroid/widget/Button;

    move-object v1, p13

    .line 88
    iput-object v1, v0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->btnMazdaKbFmam:Landroid/widget/Button;

    move-object/from16 v1, p14

    .line 89
    iput-object v1, v0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->btnMazdaKbLeft:Landroid/widget/Button;

    move-object/from16 v1, p15

    .line 90
    iput-object v1, v0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->btnMazdaKbOk:Landroid/widget/Button;

    move-object/from16 v1, p16

    .line 91
    iput-object v1, v0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->btnMazdaKbRight:Landroid/widget/Button;

    move-object/from16 v1, p17

    .line 92
    iput-object v1, v0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->btnMazdaKbSet:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/MazdaOpelkeyBinding;
    .locals 21

    move-object/from16 v0, p0

    const v1, 0x7f08015a

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    const v1, 0x7f08015b

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    const v1, 0x7f08015c

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_0

    const v1, 0x7f08015d

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    const v1, 0x7f08015e

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_0

    const v1, 0x7f08015f

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_0

    const v1, 0x7f080160

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/Button;

    if-eqz v11, :cond_0

    const v1, 0x7f080161

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/Button;

    if-eqz v12, :cond_0

    const v1, 0x7f080162

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/Button;

    if-eqz v13, :cond_0

    const v1, 0x7f080163

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/Button;

    if-eqz v14, :cond_0

    const v1, 0x7f080164

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/Button;

    if-eqz v15, :cond_0

    const v1, 0x7f080165

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/Button;

    if-eqz v16, :cond_0

    const v1, 0x7f080166

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/Button;

    if-eqz v17, :cond_0

    const v1, 0x7f080167

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/Button;

    if-eqz v18, :cond_0

    const v1, 0x7f080168

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/Button;

    if-eqz v19, :cond_0

    const v1, 0x7f080169

    .line 213
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/Button;

    if-eqz v20, :cond_0

    .line 218
    new-instance v1, Lcom/can/activity/databinding/MazdaOpelkeyBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v20}, Lcom/can/activity/databinding/MazdaOpelkeyBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    return-object v1

    .line 223
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/MazdaOpelkeyBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/MazdaOpelkeyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/MazdaOpelkeyBinding;
    .locals 2

    const v0, 0x7f0b0099

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/MazdaOpelkeyBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 17
    invoke-virtual {p0}, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/can/activity/databinding/MazdaOpelkeyBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
