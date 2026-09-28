.class public final Lcom/can/activity/databinding/KoreaDspBinding;
.super Ljava/lang/Object;
.source "KoreaDspBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final koreaDspAseq:Landroid/widget/LinearLayout;

.field public final koreaDspBalance:Lcom/can/ui/draw/DspBalance;

.field public final koreaDspBass:Landroid/widget/SeekBar;

.field public final koreaDspBassVal:Landroid/widget/TextView;

.field public final koreaDspMainVal:Landroid/widget/TextView;

.field public final koreaDspMainVol:Landroid/widget/SeekBar;

.field public final koreaDspMid:Landroid/widget/SeekBar;

.field public final koreaDspMidVal:Landroid/widget/TextView;

.field public final koreaDspTre:Landroid/widget/SeekBar;

.field public final koreaDspTreVal:Landroid/widget/TextView;

.field public final koreaImAddFront:Landroid/widget/ImageView;

.field public final koreaImAddLeft:Landroid/widget/ImageView;

.field public final koreaImAddRear:Landroid/widget/ImageView;

.field public final koreaImAddRight:Landroid/widget/ImageView;

.field public final koreaLlMainVol:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/can/ui/draw/DspBalance;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V
    .locals 2

    move-object v0, p0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 77
    iput-object v1, v0, Lcom/can/activity/databinding/KoreaDspBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 78
    iput-object v1, v0, Lcom/can/activity/databinding/KoreaDspBinding;->koreaDspAseq:Landroid/widget/LinearLayout;

    move-object v1, p3

    .line 79
    iput-object v1, v0, Lcom/can/activity/databinding/KoreaDspBinding;->koreaDspBalance:Lcom/can/ui/draw/DspBalance;

    move-object v1, p4

    .line 80
    iput-object v1, v0, Lcom/can/activity/databinding/KoreaDspBinding;->koreaDspBass:Landroid/widget/SeekBar;

    move-object v1, p5

    .line 81
    iput-object v1, v0, Lcom/can/activity/databinding/KoreaDspBinding;->koreaDspBassVal:Landroid/widget/TextView;

    move-object v1, p6

    .line 82
    iput-object v1, v0, Lcom/can/activity/databinding/KoreaDspBinding;->koreaDspMainVal:Landroid/widget/TextView;

    move-object v1, p7

    .line 83
    iput-object v1, v0, Lcom/can/activity/databinding/KoreaDspBinding;->koreaDspMainVol:Landroid/widget/SeekBar;

    move-object v1, p8

    .line 84
    iput-object v1, v0, Lcom/can/activity/databinding/KoreaDspBinding;->koreaDspMid:Landroid/widget/SeekBar;

    move-object v1, p9

    .line 85
    iput-object v1, v0, Lcom/can/activity/databinding/KoreaDspBinding;->koreaDspMidVal:Landroid/widget/TextView;

    move-object v1, p10

    .line 86
    iput-object v1, v0, Lcom/can/activity/databinding/KoreaDspBinding;->koreaDspTre:Landroid/widget/SeekBar;

    move-object v1, p11

    .line 87
    iput-object v1, v0, Lcom/can/activity/databinding/KoreaDspBinding;->koreaDspTreVal:Landroid/widget/TextView;

    move-object v1, p12

    .line 88
    iput-object v1, v0, Lcom/can/activity/databinding/KoreaDspBinding;->koreaImAddFront:Landroid/widget/ImageView;

    move-object v1, p13

    .line 89
    iput-object v1, v0, Lcom/can/activity/databinding/KoreaDspBinding;->koreaImAddLeft:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 90
    iput-object v1, v0, Lcom/can/activity/databinding/KoreaDspBinding;->koreaImAddRear:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    .line 91
    iput-object v1, v0, Lcom/can/activity/databinding/KoreaDspBinding;->koreaImAddRight:Landroid/widget/ImageView;

    move-object/from16 v1, p16

    .line 92
    iput-object v1, v0, Lcom/can/activity/databinding/KoreaDspBinding;->koreaLlMainVol:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/KoreaDspBinding;
    .locals 20

    move-object/from16 v0, p0

    const v1, 0x7f08053a

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    const v1, 0x7f08053b

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/can/ui/draw/DspBalance;

    if-eqz v6, :cond_0

    const v1, 0x7f08053c

    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/SeekBar;

    if-eqz v7, :cond_0

    const v1, 0x7f08053d

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v1, 0x7f08053e

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v1, 0x7f08053f

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/SeekBar;

    if-eqz v10, :cond_0

    const v1, 0x7f080540

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/SeekBar;

    if-eqz v11, :cond_0

    const v1, 0x7f080541

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v1, 0x7f080542

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/SeekBar;

    if-eqz v13, :cond_0

    const v1, 0x7f080543

    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f080544

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    const v1, 0x7f080545

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_0

    const v1, 0x7f080546

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_0

    const v1, 0x7f080547

    .line 201
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/ImageView;

    if-eqz v18, :cond_0

    const v1, 0x7f080548

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/LinearLayout;

    if-eqz v19, :cond_0

    .line 212
    new-instance v1, Lcom/can/activity/databinding/KoreaDspBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct/range {v3 .. v19}, Lcom/can/activity/databinding/KoreaDspBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/can/ui/draw/DspBalance;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;)V

    return-object v1

    .line 217
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/KoreaDspBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/KoreaDspBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/KoreaDspBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/KoreaDspBinding;
    .locals 2

    const v0, 0x7f0b008f

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/KoreaDspBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/KoreaDspBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/can/activity/databinding/KoreaDspBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/can/activity/databinding/KoreaDspBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
