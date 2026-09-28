.class public final Lcom/can/activity/databinding/HondaUsbIpodBinding;
.super Ljava/lang/Object;
.source "HondaUsbIpodBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final usbIpodBtnFNext:Landroid/widget/TextView;

.field public final usbIpodBtnFPre:Landroid/widget/TextView;

.field public final usbIpodBtnNext:Landroid/widget/TextView;

.field public final usbIpodBtnPause:Landroid/widget/TextView;

.field public final usbIpodBtnPlay:Landroid/widget/TextView;

.field public final usbIpodBtnPre:Landroid/widget/TextView;

.field public final usbIpodCurTime:Landroid/widget/TextView;

.field public final usbIpodFolderIndex:Landroid/widget/TextView;

.field public final usbIpodLlBtm:Landroid/widget/LinearLayout;

.field public final usbIpodLlProgress:Landroid/widget/LinearLayout;

.field public final usbIpodProcess:Lcom/can/ui/draw/FuelSeekBar;

.field public final usbIpodState:Landroid/widget/TextView;

.field public final usbIpodTrack:Landroid/widget/TextView;

.field public final usbIpodTvIpod:Landroid/widget/TextView;

.field public final usbIpodTvUsb:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/can/ui/draw/FuelSeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 76
    iput-object v1, v0, Lcom/can/activity/databinding/HondaUsbIpodBinding;->rootView:Landroid/widget/RelativeLayout;

    move-object v1, p2

    .line 77
    iput-object v1, v0, Lcom/can/activity/databinding/HondaUsbIpodBinding;->usbIpodBtnFNext:Landroid/widget/TextView;

    move-object v1, p3

    .line 78
    iput-object v1, v0, Lcom/can/activity/databinding/HondaUsbIpodBinding;->usbIpodBtnFPre:Landroid/widget/TextView;

    move-object v1, p4

    .line 79
    iput-object v1, v0, Lcom/can/activity/databinding/HondaUsbIpodBinding;->usbIpodBtnNext:Landroid/widget/TextView;

    move-object v1, p5

    .line 80
    iput-object v1, v0, Lcom/can/activity/databinding/HondaUsbIpodBinding;->usbIpodBtnPause:Landroid/widget/TextView;

    move-object v1, p6

    .line 81
    iput-object v1, v0, Lcom/can/activity/databinding/HondaUsbIpodBinding;->usbIpodBtnPlay:Landroid/widget/TextView;

    move-object v1, p7

    .line 82
    iput-object v1, v0, Lcom/can/activity/databinding/HondaUsbIpodBinding;->usbIpodBtnPre:Landroid/widget/TextView;

    move-object v1, p8

    .line 83
    iput-object v1, v0, Lcom/can/activity/databinding/HondaUsbIpodBinding;->usbIpodCurTime:Landroid/widget/TextView;

    move-object v1, p9

    .line 84
    iput-object v1, v0, Lcom/can/activity/databinding/HondaUsbIpodBinding;->usbIpodFolderIndex:Landroid/widget/TextView;

    move-object v1, p10

    .line 85
    iput-object v1, v0, Lcom/can/activity/databinding/HondaUsbIpodBinding;->usbIpodLlBtm:Landroid/widget/LinearLayout;

    move-object v1, p11

    .line 86
    iput-object v1, v0, Lcom/can/activity/databinding/HondaUsbIpodBinding;->usbIpodLlProgress:Landroid/widget/LinearLayout;

    move-object v1, p12

    .line 87
    iput-object v1, v0, Lcom/can/activity/databinding/HondaUsbIpodBinding;->usbIpodProcess:Lcom/can/ui/draw/FuelSeekBar;

    move-object v1, p13

    .line 88
    iput-object v1, v0, Lcom/can/activity/databinding/HondaUsbIpodBinding;->usbIpodState:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 89
    iput-object v1, v0, Lcom/can/activity/databinding/HondaUsbIpodBinding;->usbIpodTrack:Landroid/widget/TextView;

    move-object/from16 v1, p15

    .line 90
    iput-object v1, v0, Lcom/can/activity/databinding/HondaUsbIpodBinding;->usbIpodTvIpod:Landroid/widget/TextView;

    move-object/from16 v1, p16

    .line 91
    iput-object v1, v0, Lcom/can/activity/databinding/HondaUsbIpodBinding;->usbIpodTvUsb:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/HondaUsbIpodBinding;
    .locals 20

    move-object/from16 v0, p0

    const v1, 0x7f0808d3

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v1, 0x7f0808d4

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const v1, 0x7f0808d5

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v1, 0x7f0808d6

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v1, 0x7f0808d7

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v1, 0x7f0808d8

    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v1, 0x7f0808d9

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v1, 0x7f0808da

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v1, 0x7f0808db

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0808dc

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0808dd

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/can/ui/draw/FuelSeekBar;

    if-eqz v15, :cond_0

    const v1, 0x7f0808de

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0808df

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0808e0

    .line 200
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0808e1

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    .line 211
    new-instance v1, Lcom/can/activity/databinding/HondaUsbIpodBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v19}, Lcom/can/activity/databinding/HondaUsbIpodBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/can/ui/draw/FuelSeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 216
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/HondaUsbIpodBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/HondaUsbIpodBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/HondaUsbIpodBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/HondaUsbIpodBinding;
    .locals 2

    const v0, 0x7f0b0077

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/HondaUsbIpodBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/HondaUsbIpodBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/can/activity/databinding/HondaUsbIpodBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/can/activity/databinding/HondaUsbIpodBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
