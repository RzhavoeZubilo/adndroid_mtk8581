.class public final Lcom/can/activity/databinding/JeepCdinfoBinding;
.super Ljava/lang/Object;
.source "JeepCdinfoBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barJeepCdinfoProcess:Lcom/can/ui/draw/FuelSeekBar;

.field public final btnJeepCdinfoFNext:Landroid/widget/TextView;

.field public final btnJeepCdinfoFPre:Landroid/widget/TextView;

.field public final btnJeepCdinfoNext:Landroid/widget/TextView;

.field public final btnJeepCdinfoPause:Landroid/widget/TextView;

.field public final btnJeepCdinfoPlay:Landroid/widget/TextView;

.field public final btnJeepCdinfoPre:Landroid/widget/TextView;

.field public final btnJeepCdinfoRandomOff:Landroid/widget/TextView;

.field public final btnJeepCdinfoRandomOn:Landroid/widget/TextView;

.field public final btnJeepCdinfoRepeatOff:Landroid/widget/TextView;

.field public final btnJeepCdinfoRepeatOn:Landroid/widget/TextView;

.field public final layoutAllBtn:Landroid/widget/LinearLayout;

.field public final layoutAllProgress:Landroid/widget/LinearLayout;

.field public final listJeepCdInfo:Landroid/widget/ListView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final txJeepCdinfoCurTime:Landroid/widget/TextView;

.field public final txJeepCdinfoMode:Landroid/widget/TextView;

.field public final txJeepCdinfoState:Landroid/widget/TextView;

.field public final txJeepCdinfoTrack:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/can/ui/draw/FuelSeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ListView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 88
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->rootView:Landroid/widget/RelativeLayout;

    move-object v1, p2

    .line 89
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->barJeepCdinfoProcess:Lcom/can/ui/draw/FuelSeekBar;

    move-object v1, p3

    .line 90
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->btnJeepCdinfoFNext:Landroid/widget/TextView;

    move-object v1, p4

    .line 91
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->btnJeepCdinfoFPre:Landroid/widget/TextView;

    move-object v1, p5

    .line 92
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->btnJeepCdinfoNext:Landroid/widget/TextView;

    move-object v1, p6

    .line 93
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->btnJeepCdinfoPause:Landroid/widget/TextView;

    move-object v1, p7

    .line 94
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->btnJeepCdinfoPlay:Landroid/widget/TextView;

    move-object v1, p8

    .line 95
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->btnJeepCdinfoPre:Landroid/widget/TextView;

    move-object v1, p9

    .line 96
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->btnJeepCdinfoRandomOff:Landroid/widget/TextView;

    move-object v1, p10

    .line 97
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->btnJeepCdinfoRandomOn:Landroid/widget/TextView;

    move-object v1, p11

    .line 98
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->btnJeepCdinfoRepeatOff:Landroid/widget/TextView;

    move-object v1, p12

    .line 99
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->btnJeepCdinfoRepeatOn:Landroid/widget/TextView;

    move-object v1, p13

    .line 100
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->layoutAllBtn:Landroid/widget/LinearLayout;

    move-object/from16 v1, p14

    .line 101
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->layoutAllProgress:Landroid/widget/LinearLayout;

    move-object/from16 v1, p15

    .line 102
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->listJeepCdInfo:Landroid/widget/ListView;

    move-object/from16 v1, p16

    .line 103
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->txJeepCdinfoCurTime:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 104
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->txJeepCdinfoMode:Landroid/widget/TextView;

    move-object/from16 v1, p18

    .line 105
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->txJeepCdinfoState:Landroid/widget/TextView;

    move-object/from16 v1, p19

    .line 106
    iput-object v1, v0, Lcom/can/activity/databinding/JeepCdinfoBinding;->txJeepCdinfoTrack:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/can/activity/databinding/JeepCdinfoBinding;
    .locals 23

    move-object/from16 v0, p0

    const v1, 0x7f080062

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/can/ui/draw/FuelSeekBar;

    if-eqz v5, :cond_0

    const v1, 0x7f080147

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const v1, 0x7f080148

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v1, 0x7f080149

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v1, 0x7f08014a

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v1, 0x7f08014b

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v1, 0x7f08014c

    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v1, 0x7f08014d

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v1, 0x7f08014e

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f08014f

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f080150

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f080570

    .line 203
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/LinearLayout;

    if-eqz v16, :cond_0

    const v1, 0x7f080571

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/LinearLayout;

    if-eqz v17, :cond_0

    const v1, 0x7f08059a

    .line 215
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/ListView;

    if-eqz v18, :cond_0

    const v1, 0x7f0808b7

    .line 221
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0808b8

    .line 227
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    const v1, 0x7f0808b9

    .line 233
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    const v1, 0x7f0808ba

    .line 239
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    .line 244
    new-instance v1, Lcom/can/activity/databinding/JeepCdinfoBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v22}, Lcom/can/activity/databinding/JeepCdinfoBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/can/ui/draw/FuelSeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ListView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 251
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/can/activity/databinding/JeepCdinfoBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-static {p0, v0, v1}, Lcom/can/activity/databinding/JeepCdinfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/JeepCdinfoBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/can/activity/databinding/JeepCdinfoBinding;
    .locals 2

    const v0, 0x7f0b0087

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    :cond_0
    invoke-static {p0}, Lcom/can/activity/databinding/JeepCdinfoBinding;->bind(Landroid/view/View;)Lcom/can/activity/databinding/JeepCdinfoBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/can/activity/databinding/JeepCdinfoBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/can/activity/databinding/JeepCdinfoBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
