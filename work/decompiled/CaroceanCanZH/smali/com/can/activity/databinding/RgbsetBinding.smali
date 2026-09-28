.class public final Lcom/can/activity/databinding/RgbsetBinding;
.super Ljava/lang/Object;
.source "RgbsetBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final rgbResetAll:Landroid/widget/Button;

.field public final rgbResetClose:Landroid/widget/Button;

.field private final rootView:Lcom/can/ui/draw/Rgb;

.field public final seekBarBrightness:Landroid/widget/SeekBar;

.field public final seekBarContrast:Landroid/widget/SeekBar;

.field public final seekBarHue:Landroid/widget/SeekBar;

.field public final seekBarSaturation:Landroid/widget/SeekBar;

.field public final textBrightValue:Landroid/widget/TextView;

.field public final textContrastValue:Landroid/widget/TextView;

.field public final textHueValue:Landroid/widget/TextView;

.field public final textSaturationValue:Landroid/widget/TextView;

.field public final textTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/can/ui/draw/Rgb;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/can/activity/databinding/RgbsetBinding;->rootView:Lcom/can/ui/draw/Rgb;

    .line 63
    iput-object p2, p0, Lcom/can/activity/databinding/RgbsetBinding;->rgbResetAll:Landroid/widget/Button;

    .line 64
    iput-object p3, p0, Lcom/can/activity/databinding/RgbsetBinding;->rgbResetClose:Landroid/widget/Button;

    .line 65
    iput-object p4, p0, Lcom/can/activity/databinding/RgbsetBinding;->seekBarBrightness:Landroid/widget/SeekBar;

    .line 66
    iput-object p5, p0, Lcom/can/activity/databinding/RgbsetBinding;->seekBarContrast:Landroid/widget/SeekBar;

    .line 67
    iput-object p6, p0, Lcom/can/activity/databinding/RgbsetBinding;->seekBarHue:Landroid/widget/SeekBar;

    .line 68
    iput-object p7, p0, Lcom/can/activity/databinding/RgbsetBinding;->seekBarSaturation:Landroid/widget/SeekBar;

    .line 69
    iput-object p8, p0, Lcom/can/activity/databinding/RgbsetBinding;->textBrightValue:Landroid/widget/TextView;

    .line 70
    iput-object p9, p0, Lcom/can/activity/databinding/RgbsetBinding;->textContrastValue:Landroid/widget/TextView;

    .line 71
    iput-object p10, p0, Lcom/can/activity/databinding/RgbsetBinding;->textHueValue:Landroid/widget/TextView;

    .line 72
    iput-object p11, p0, Lcom/can/activity/databinding/RgbsetBinding;->textSaturationValue:Landroid/widget/TextView;

    .line 73
    iput-object p12, p0, Lcom/can/activity/databinding/RgbsetBinding;->textTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/RgbsetBinding;
    .locals 15

    const v0, 0x7f0806fe

    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    const v0, 0x7f0806ff

    .line 110
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_0

    const v0, 0x7f080713

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/SeekBar;

    if-eqz v6, :cond_0

    const v0, 0x7f080714

    .line 122
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/SeekBar;

    if-eqz v7, :cond_0

    const v0, 0x7f080715

    .line 128
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/SeekBar;

    if-eqz v8, :cond_0

    const v0, 0x7f080716

    .line 134
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/SeekBar;

    if-eqz v9, :cond_0

    const v0, 0x7f080793

    .line 140
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f080795

    .line 146
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f080796

    .line 152
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v0, 0x7f08079a

    .line 158
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v0, 0x7f08079b

    .line 164
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    .line 169
    new-instance v0, Lcom/can/activity/databinding/RgbsetBinding;

    move-object v3, p0

    check-cast v3, Lcom/can/ui/draw/Rgb;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/can/activity/databinding/RgbsetBinding;-><init>(Lcom/can/ui/draw/Rgb;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/RgbsetBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/RgbsetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/RgbsetBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/RgbsetBinding;
    .locals 2

    const v0, 0x7f0b00c0

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/RgbsetBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/RgbsetBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/can/activity/databinding/RgbsetBinding;->getRoot()Lcom/can/ui/draw/Rgb;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/can/ui/draw/Rgb;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/can/activity/databinding/RgbsetBinding;->rootView:Lcom/can/ui/draw/Rgb;

    return-object p0
.end method
