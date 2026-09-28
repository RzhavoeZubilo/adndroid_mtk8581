.class public final Lcom/can/activity/databinding/SpJeepDspBinding;
.super Ljava/lang/Object;
.source "SpJeepDspBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final spJeepDspAseq:Landroid/widget/LinearLayout;

.field public final spJeepDspBalance:Lcom/can/ui/draw/DspBalance;

.field public final spJeepDspBass:Landroid/widget/SeekBar;

.field public final spJeepDspBassVal:Landroid/widget/TextView;

.field public final spJeepDspMainVal:Landroid/widget/TextView;

.field public final spJeepDspMainVol:Landroid/widget/SeekBar;

.field public final spJeepDspMid:Landroid/widget/SeekBar;

.field public final spJeepDspMidVal:Landroid/widget/TextView;

.field public final spJeepDspTre:Landroid/widget/SeekBar;

.field public final spJeepDspTreVal:Landroid/widget/TextView;

.field public final spJeepImAddFront:Landroid/widget/ImageView;

.field public final spJeepImAddLeft:Landroid/widget/ImageView;

.field public final spJeepImAddRear:Landroid/widget/ImageView;

.field public final spJeepImAddRight:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/can/ui/draw/DspBalance;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/can/activity/databinding/SpJeepDspBinding;->rootView:Landroid/widget/LinearLayout;

    .line 75
    iput-object p2, p0, Lcom/can/activity/databinding/SpJeepDspBinding;->spJeepDspAseq:Landroid/widget/LinearLayout;

    .line 76
    iput-object p3, p0, Lcom/can/activity/databinding/SpJeepDspBinding;->spJeepDspBalance:Lcom/can/ui/draw/DspBalance;

    .line 77
    iput-object p4, p0, Lcom/can/activity/databinding/SpJeepDspBinding;->spJeepDspBass:Landroid/widget/SeekBar;

    .line 78
    iput-object p5, p0, Lcom/can/activity/databinding/SpJeepDspBinding;->spJeepDspBassVal:Landroid/widget/TextView;

    .line 79
    iput-object p6, p0, Lcom/can/activity/databinding/SpJeepDspBinding;->spJeepDspMainVal:Landroid/widget/TextView;

    .line 80
    iput-object p7, p0, Lcom/can/activity/databinding/SpJeepDspBinding;->spJeepDspMainVol:Landroid/widget/SeekBar;

    .line 81
    iput-object p8, p0, Lcom/can/activity/databinding/SpJeepDspBinding;->spJeepDspMid:Landroid/widget/SeekBar;

    .line 82
    iput-object p9, p0, Lcom/can/activity/databinding/SpJeepDspBinding;->spJeepDspMidVal:Landroid/widget/TextView;

    .line 83
    iput-object p10, p0, Lcom/can/activity/databinding/SpJeepDspBinding;->spJeepDspTre:Landroid/widget/SeekBar;

    .line 84
    iput-object p11, p0, Lcom/can/activity/databinding/SpJeepDspBinding;->spJeepDspTreVal:Landroid/widget/TextView;

    .line 85
    iput-object p12, p0, Lcom/can/activity/databinding/SpJeepDspBinding;->spJeepImAddFront:Landroid/widget/ImageView;

    .line 86
    iput-object p13, p0, Lcom/can/activity/databinding/SpJeepDspBinding;->spJeepImAddLeft:Landroid/widget/ImageView;

    .line 87
    iput-object p14, p0, Lcom/can/activity/databinding/SpJeepDspBinding;->spJeepImAddRear:Landroid/widget/ImageView;

    .line 88
    iput-object p15, p0, Lcom/can/activity/databinding/SpJeepDspBinding;->spJeepImAddRight:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/SpJeepDspBinding;
    .locals 19

    move-object/from16 v0, p0

    const v1, 0x7f080730

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f080731

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/can/ui/draw/DspBalance;

    if-eqz v6, :cond_0

    const v1, 0x7f080732

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/SeekBar;

    if-eqz v7, :cond_0

    const v1, 0x7f080733

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v1, 0x7f080734

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v1, 0x7f080735

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/SeekBar;

    if-eqz v10, :cond_0

    const v1, 0x7f080736

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/SeekBar;

    if-eqz v11, :cond_0

    const v1, 0x7f080737

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v1, 0x7f080738

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/SeekBar;

    if-eqz v13, :cond_0

    const v1, 0x7f080739

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f08073a

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    const v1, 0x7f08073b

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    const v1, 0x7f08073c

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_0

    const v1, 0x7f08073d

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/ImageView;

    if-eqz v18, :cond_0

    .line 202
    new-instance v1, Lcom/can/activity/databinding/SpJeepDspBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v18}, Lcom/can/activity/databinding/SpJeepDspBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/can/ui/draw/DspBalance;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v1

    .line 207
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/SpJeepDspBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/SpJeepDspBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/SpJeepDspBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/SpJeepDspBinding;
    .locals 2

    const v0, 0x7f0b00cc

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/SpJeepDspBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/SpJeepDspBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/can/activity/databinding/SpJeepDspBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/can/activity/databinding/SpJeepDspBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
