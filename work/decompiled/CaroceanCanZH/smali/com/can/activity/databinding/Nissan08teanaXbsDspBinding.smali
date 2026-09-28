.class public final Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;
.super Ljava/lang/Object;
.source "Nissan08teanaXbsDspBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dspCheckBeep:Landroid/widget/CheckBox;

.field public final layoutVolume:Landroid/widget/LinearLayout;

.field public final nissan08BeepOnoff:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final seekbarEqBalance:Landroid/widget/SeekBar;

.field public final seekbarEqBass:Landroid/widget/SeekBar;

.field public final seekbarEqFade:Landroid/widget/SeekBar;

.field public final seekbarEqTreble:Landroid/widget/SeekBar;

.field public final seekbarEqVolume:Landroid/widget/SeekBar;

.field public final tvEqBalance:Landroid/widget/TextView;

.field public final tvEqBass:Landroid/widget/TextView;

.field public final tvEqFade:Landroid/widget/TextView;

.field public final tvEqTreble:Landroid/widget/TextView;

.field public final tvEqVolume:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->rootView:Landroid/widget/LinearLayout;

    .line 69
    iput-object p2, p0, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->dspCheckBeep:Landroid/widget/CheckBox;

    .line 70
    iput-object p3, p0, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->layoutVolume:Landroid/widget/LinearLayout;

    .line 71
    iput-object p4, p0, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->nissan08BeepOnoff:Landroid/widget/TextView;

    .line 72
    iput-object p5, p0, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->seekbarEqBalance:Landroid/widget/SeekBar;

    .line 73
    iput-object p6, p0, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->seekbarEqBass:Landroid/widget/SeekBar;

    .line 74
    iput-object p7, p0, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->seekbarEqFade:Landroid/widget/SeekBar;

    .line 75
    iput-object p8, p0, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->seekbarEqTreble:Landroid/widget/SeekBar;

    .line 76
    iput-object p9, p0, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->seekbarEqVolume:Landroid/widget/SeekBar;

    .line 77
    iput-object p10, p0, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->tvEqBalance:Landroid/widget/TextView;

    .line 78
    iput-object p11, p0, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->tvEqBass:Landroid/widget/TextView;

    .line 79
    iput-object p12, p0, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->tvEqFade:Landroid/widget/TextView;

    .line 80
    iput-object p13, p0, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->tvEqTreble:Landroid/widget/TextView;

    .line 81
    iput-object p14, p0, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->tvEqVolume:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x7f0802e3

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    const v1, 0x7f08058e

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v1, 0x7f0805fd

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v1, 0x7f080717

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/SeekBar;

    if-eqz v8, :cond_0

    const v1, 0x7f080718

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/SeekBar;

    if-eqz v9, :cond_0

    const v1, 0x7f080719

    .line 142
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/SeekBar;

    if-eqz v10, :cond_0

    const v1, 0x7f08071a

    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/SeekBar;

    if-eqz v11, :cond_0

    const v1, 0x7f08071b

    .line 154
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/SeekBar;

    if-eqz v12, :cond_0

    const v1, 0x7f0807ea

    .line 160
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0807eb

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0807ec

    .line 172
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0807ed

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0807ee

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    .line 189
    new-instance v1, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-direct/range {v3 .. v17}, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 193
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;
    .locals 2

    const v0, 0x7f0b00a2

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/can/activity/databinding/Nissan08teanaXbsDspBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
