.class public Lcom/can/ui/draw/Air;
.super Ljava/lang/Object;
.source "Air.java"


# instance fields
.field AirAutoClose:Ljava/lang/Runnable;

.field protected mAirAc:Landroid/widget/ImageView;

.field protected mAirAcMax:Landroid/widget/ImageView;

.field protected mAirAqsState:Landroid/widget/ImageView;

.field protected mAirAuto:Landroid/widget/ImageView;

.field protected mAirAuto2:Landroid/widget/ImageView;

.field protected mAirAutoWind:Landroid/widget/TextView;

.field protected mAirCircle:Landroid/widget/ImageView;

.field protected mAirClear:Landroid/widget/TextView;

.field protected mAirDual:Landroid/widget/ImageView;

.field protected mAirECO:Landroid/widget/TextView;

.field protected mAirFfogger:Landroid/widget/ImageView;

.field protected mAirHeat:Landroid/widget/TextView;

.field protected mAirIon:Landroid/widget/ImageView;

.field protected mAirLDwWind:Landroid/widget/ImageView;

.field protected mAirLHotSeat:Landroid/widget/ImageView;

.field protected mAirLPaWind:Landroid/widget/ImageView;

.field protected mAirLUpWind:Landroid/widget/ImageView;

.field protected mAirLeftTemp:Landroid/widget/TextView;

.field protected mAirMaxFront:Landroid/widget/ImageView;

.field protected mAirOutTemp:Landroid/widget/TextView;

.field protected mAirProfile:Landroid/widget/TextView;

.field protected mAirRDwWind:Landroid/widget/ImageView;

.field protected mAirRHotSeat:Landroid/widget/ImageView;

.field protected mAirRPaWind:Landroid/widget/ImageView;

.field protected mAirRUpWind:Landroid/widget/ImageView;

.field protected mAirRear:Landroid/widget/TextView;

.field protected mAirRearTemp:Landroid/widget/TextView;

.field protected mAirRearlock:Landroid/widget/ImageView;

.field protected mAirRfogger:Landroid/widget/ImageView;

.field protected mAirRightTemp:Landroid/widget/TextView;

.field protected mAirSync:Landroid/widget/TextView;

.field protected mAirView:Landroid/widget/LinearLayout;

.field protected mAirWindlv:Lcom/can/ui/draw/Windlv;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPopWind:Lcom/can/ui/draw/PopWind;

.field private mStrWindID:[I

.field protected mWindLayout:Landroid/widget/LinearLayout;

.field protected mWindStrength:Landroid/widget/TextView;

.field private mbAirAutoCloseFlag:Z

.field private mlshowAirTime:J


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mPopWind:Lcom/can/ui/draw/PopWind;

    const-wide/16 v1, 0x0

    .line 30
    iput-wide v1, p0, Lcom/can/ui/draw/Air;->mlshowAirTime:J

    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcom/can/ui/draw/Air;->mbAirAutoCloseFlag:Z

    .line 33
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirIon:Landroid/widget/ImageView;

    .line 34
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirDual:Landroid/widget/ImageView;

    .line 35
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirAuto:Landroid/widget/ImageView;

    .line 36
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirAuto2:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirAc:Landroid/widget/ImageView;

    .line 39
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirAqsState:Landroid/widget/ImageView;

    .line 40
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirCircle:Landroid/widget/ImageView;

    .line 41
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirFfogger:Landroid/widget/ImageView;

    .line 42
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirRfogger:Landroid/widget/ImageView;

    .line 43
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirMaxFront:Landroid/widget/ImageView;

    .line 44
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirRearlock:Landroid/widget/ImageView;

    .line 45
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirAcMax:Landroid/widget/ImageView;

    .line 46
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirWindlv:Lcom/can/ui/draw/Windlv;

    .line 47
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirECO:Landroid/widget/TextView;

    .line 48
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirSync:Landroid/widget/TextView;

    .line 49
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirRear:Landroid/widget/TextView;

    .line 50
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirHeat:Landroid/widget/TextView;

    .line 51
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirClear:Landroid/widget/TextView;

    .line 52
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirAutoWind:Landroid/widget/TextView;

    .line 53
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirProfile:Landroid/widget/TextView;

    .line 55
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirLUpWind:Landroid/widget/ImageView;

    .line 56
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirLPaWind:Landroid/widget/ImageView;

    .line 57
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirLDwWind:Landroid/widget/ImageView;

    .line 58
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirLHotSeat:Landroid/widget/ImageView;

    .line 60
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirRUpWind:Landroid/widget/ImageView;

    .line 61
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirRPaWind:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirRDwWind:Landroid/widget/ImageView;

    .line 63
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirRHotSeat:Landroid/widget/ImageView;

    .line 65
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirLeftTemp:Landroid/widget/TextView;

    .line 66
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirRightTemp:Landroid/widget/TextView;

    .line 67
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirOutTemp:Landroid/widget/TextView;

    .line 68
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirRearTemp:Landroid/widget/TextView;

    .line 69
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    .line 70
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mWindStrength:Landroid/widget/TextView;

    .line 71
    iput-object v0, p0, Lcom/can/ui/draw/Air;->mWindLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 73
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/can/ui/draw/Air;->mStrWindID:[I

    .line 123
    new-instance v1, Lcom/can/ui/draw/Air$1;

    invoke-direct {v1, p0}, Lcom/can/ui/draw/Air$1;-><init>(Lcom/can/ui/draw/Air;)V

    iput-object v1, p0, Lcom/can/ui/draw/Air;->AirAutoClose:Ljava/lang/Runnable;

    .line 80
    iput-object p2, p0, Lcom/can/ui/draw/Air;->mContext:Landroid/content/Context;

    .line 81
    iput-object p3, p0, Lcom/can/ui/draw/Air;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance p3, Lcom/can/ui/draw/PopWind;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 83
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f060051

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p3, v1, p2}, Lcom/can/ui/draw/PopWind;-><init>(II)V

    iput-object p3, p0, Lcom/can/ui/draw/Air;->mPopWind:Lcom/can/ui/draw/PopWind;

    const p2, 0x7f0b0025

    .line 86
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f080849

    .line 87
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirProfile:Landroid/widget/TextView;

    .line 88
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f08084a

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirRear:Landroid/widget/TextView;

    .line 89
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f08081e

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirIon:Landroid/widget/ImageView;

    .line 90
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0807d1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirAc:Landroid/widget/ImageView;

    .line 91
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0807e8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirDual:Landroid/widget/ImageView;

    .line 92
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0807d3

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirAuto:Landroid/widget/ImageView;

    .line 93
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0807d4

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirAuto2:Landroid/widget/ImageView;

    .line 94
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f080846

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirECO:Landroid/widget/TextView;

    .line 95
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f080847

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirHeat:Landroid/widget/TextView;

    .line 96
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f080845

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirClear:Landroid/widget/TextView;

    .line 97
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f08084c

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirSync:Landroid/widget/TextView;

    .line 98
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0804d6

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirAqsState:Landroid/widget/ImageView;

    .line 99
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0804d7

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirCircle:Landroid/widget/ImageView;

    .line 100
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0804de

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirFfogger:Landroid/widget/ImageView;

    .line 101
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0804d2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirRfogger:Landroid/widget/ImageView;

    .line 102
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0804da

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirMaxFront:Landroid/widget/ImageView;

    .line 103
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0804df

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirRearlock:Landroid/widget/ImageView;

    .line 104
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0804c8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirAcMax:Landroid/widget/ImageView;

    .line 105
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0804e3

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/can/ui/draw/Windlv;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirWindlv:Lcom/can/ui/draw/Windlv;

    .line 106
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0804ce

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirLUpWind:Landroid/widget/ImageView;

    .line 107
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0804cc

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirLPaWind:Landroid/widget/ImageView;

    .line 108
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0804ca

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirLDwWind:Landroid/widget/ImageView;

    .line 109
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0804d4

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirLHotSeat:Landroid/widget/ImageView;

    .line 110
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0804cf

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirRUpWind:Landroid/widget/ImageView;

    .line 111
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0804cd

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirRPaWind:Landroid/widget/ImageView;

    .line 112
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0804cb

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirRDwWind:Landroid/widget/ImageView;

    .line 113
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0804d5

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirRHotSeat:Landroid/widget/ImageView;

    .line 114
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f08083a

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirLeftTemp:Landroid/widget/TextView;

    .line 115
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f08083b

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirRightTemp:Landroid/widget/TextView;

    .line 116
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f080848

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirOutTemp:Landroid/widget/TextView;

    .line 117
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f08084b

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirRearTemp:Landroid/widget/TextView;

    .line 118
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f08084d

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mWindStrength:Landroid/widget/TextView;

    .line 119
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f08059c

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mWindLayout:Landroid/widget/LinearLayout;

    .line 120
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    const p2, 0x7f0804c9

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/can/ui/draw/Air;->mAirAutoWind:Landroid/widget/TextView;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d02df
        0x7f0d02e4
        0x7f0d02cb
    .end array-data
.end method

.method private GetGoneSate(B)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    return p0
.end method

.method private GetVisibSate(B)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method static synthetic access$000(Lcom/can/ui/draw/Air;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/can/ui/draw/Air;->mlshowAirTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/can/ui/draw/Air;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/can/ui/draw/Air;->mbAirAutoCloseFlag:Z

    return p0
.end method

.method static synthetic access$102(Lcom/can/ui/draw/Air;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/can/ui/draw/Air;->mbAirAutoCloseFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/can/ui/draw/Air;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/can/ui/draw/Air;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public Hide()V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/can/ui/draw/Air;->mPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz v0, :cond_0

    .line 440
    iget-object p0, p0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Lcom/can/ui/draw/PopWind;->hide(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public IsShow()Z
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/can/ui/draw/Air;->mPopWind:Lcom/can/ui/draw/PopWind;

    invoke-virtual {p0}, Lcom/can/ui/draw/PopWind;->IsVisable()Z

    move-result p0

    return p0
.end method

.method public setOutTempInfo(Lcom/can/parser/DDef$OutTemputerInfo;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 420
    iget-object v0, p0, Lcom/can/ui/draw/Air;->mAirOutTemp:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 421
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "OUT:"

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    .line 423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    iget-boolean v1, p1, Lcom/can/parser/DDef$OutTemputerInfo;->mbEnable:Z

    if-eqz v1, :cond_0

    .line 426
    iget p1, p1, Lcom/can/parser/DDef$OutTemputerInfo;->mOutCTemp:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 427
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0027

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    iget-object p0, p0, Lcom/can/ui/draw/Air;->mAirOutTemp:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 429
    :cond_0
    iget-boolean v1, p1, Lcom/can/parser/DDef$OutTemputerInfo;->mbFEndble:Z

    if-eqz v1, :cond_1

    .line 430
    iget p1, p1, Lcom/can/parser/DDef$OutTemputerInfo;->mOutFTemp:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 431
    iget-object p1, p0, Lcom/can/ui/draw/Air;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0028

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    iget-object p0, p0, Lcom/can/ui/draw/Air;->mAirOutTemp:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public show(Lcom/can/parser/DDef$AirInfo;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 147
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirIon:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mAirIon:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetGoneSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirAc:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mAcState:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetGoneSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirDual:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mDaulLight:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetGoneSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirECO:Landroid/widget/TextView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mEco:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetGoneSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirHeat:Landroid/widget/TextView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mAirHeat:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetGoneSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirClear:Landroid/widget/TextView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mAirClear:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetGoneSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirSync:Landroid/widget/TextView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mSync:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetGoneSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirAqsState:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mAqsInCircle:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetGoneSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirFfogger:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mFWDefogger:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetGoneSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirRfogger:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mRearLight:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetGoneSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirMaxFront:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mMaxForntLight:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetGoneSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirRearlock:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mRearLock:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetGoneSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirAcMax:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mAcMax:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetGoneSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirAuto:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mAutoLight1:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetGoneSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirAuto2:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mAutoLight2:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetGoneSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirRear:Landroid/widget/TextView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mRearAir:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetGoneSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mWindLayout:Landroid/widget/LinearLayout;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mShowWindStrength:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetGoneSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    iget-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mWindStrength:B

    if-ltz v2, :cond_0

    iget-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mWindStrength:B

    iget-object v3, v0, Lcom/can/ui/draw/Air;->mStrWindID:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 166
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mWindStrength:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/can/ui/draw/Air;->mContext:Landroid/content/Context;

    iget-byte v5, v1, Lcom/can/parser/DDef$AirInfo;->mWindStrength:B

    aget v3, v3, v5

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_0
    iget-boolean v2, v1, Lcom/can/parser/DDef$AirInfo;->mbWindDual:Z

    if-eqz v2, :cond_1

    .line 170
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirLUpWind:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mLeftUpwardWind:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetVisibSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirLPaWind:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mLeftParallelWind:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetVisibSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirLDwWind:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mLeftDowmWind:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetVisibSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirRUpWind:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mRightUpwardWind:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetVisibSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirRPaWind:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mRightParallelWind:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetVisibSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirRDwWind:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mRightDowmWind:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetVisibSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirLUpWind:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mUpwardWind:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetVisibSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirLPaWind:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mParallelWind:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetVisibSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirLDwWind:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mDowmWind:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetVisibSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirRUpWind:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mUpwardWind:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetVisibSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirRPaWind:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mParallelWind:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetVisibSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirRDwWind:Landroid/widget/ImageView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mDowmWind:B

    invoke-direct {v0, v3}, Lcom/can/ui/draw/Air;->GetVisibSate(B)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    :goto_0
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirProfile:Landroid/widget/TextView;

    iget-byte v3, v1, Lcom/can/parser/DDef$AirInfo;->mAirProfile:B

    const/4 v4, -0x1

    const/16 v5, 0x8

    if-ne v3, v4, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mAirProfile:B

    const/4 v3, 0x2

    const/4 v7, 0x1

    if-nez v2, :cond_3

    .line 188
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mContext:Landroid/content/Context;

    const v8, 0x7f0d00b8

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 189
    :cond_3
    iget-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mAirProfile:B

    if-ne v2, v7, :cond_4

    .line 190
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mContext:Landroid/content/Context;

    const v8, 0x7f0d00b9

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 191
    :cond_4
    iget-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mAirProfile:B

    if-ne v2, v3, :cond_5

    .line 192
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mContext:Landroid/content/Context;

    const v8, 0x7f0d00ba

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    const-string v2, ""

    .line 194
    :goto_2
    iget-object v8, v0, Lcom/can/ui/draw/Air;->mAirProfile:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirCircle:Landroid/widget/ImageView;

    iget-byte v8, v1, Lcom/can/parser/DDef$AirInfo;->mCircleState:B

    if-ne v8, v4, :cond_6

    move v4, v5

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mCircleState:B

    if-ne v2, v7, :cond_7

    .line 198
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirCircle:Landroid/widget/ImageView;

    const v4, 0x7f07007d

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 199
    :cond_7
    iget-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mCircleState:B

    if-nez v2, :cond_8

    .line 200
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirCircle:Landroid/widget/ImageView;

    const v4, 0x7f070080

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 201
    :cond_8
    iget-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mCircleState:B

    if-ne v2, v3, :cond_9

    .line 202
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirCircle:Landroid/widget/ImageView;

    const v4, 0x7f07007e

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    :cond_9
    :goto_4
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirWindlv:Lcom/can/ui/draw/Windlv;

    if-eqz v2, :cond_c

    .line 206
    iget-byte v4, v1, Lcom/can/parser/DDef$AirInfo;->mMaxWindlv:B

    invoke-virtual {v2, v4}, Lcom/can/ui/draw/Windlv;->setMaxLevel(I)V

    .line 207
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirAutoWind:Landroid/widget/TextView;

    iget-byte v4, v1, Lcom/can/parser/DDef$AirInfo;->mAutoWind:B

    if-ne v4, v7, :cond_a

    const/4 v5, 0x0

    :cond_a
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirWindlv:Lcom/can/ui/draw/Windlv;

    iget-byte v4, v1, Lcom/can/parser/DDef$AirInfo;->mAutoWind:B

    if-ne v4, v7, :cond_b

    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    iget-byte v4, v1, Lcom/can/parser/DDef$AirInfo;->mWindRate:B

    :goto_5
    invoke-virtual {v2, v4}, Lcom/can/ui/draw/Windlv;->setCurLevel(I)V

    .line 209
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirWindlv:Lcom/can/ui/draw/Windlv;

    invoke-virtual {v2}, Lcom/can/ui/draw/Windlv;->invalidate()V

    .line 214
    :cond_c
    iget-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mLeftHotSeatTemp:B

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_6

    :pswitch_0
    const v2, 0x7f070078

    goto :goto_6

    :pswitch_1
    const v2, 0x7f070077

    goto :goto_6

    :pswitch_2
    const v2, 0x7f070076

    goto :goto_6

    :pswitch_3
    const v2, 0x7f070075

    goto :goto_6

    :pswitch_4
    const v2, 0x7f07006f

    goto :goto_6

    :pswitch_5
    const v2, 0x7f070070

    goto :goto_6

    :pswitch_6
    const v2, 0x7f070071

    .line 240
    :goto_6
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mAirLHotSeat:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    iget-byte v4, v1, Lcom/can/parser/DDef$AirInfo;->mRightHotSeatTemp:B

    packed-switch v4, :pswitch_data_1

    goto :goto_7

    :pswitch_7
    const v2, 0x7f07007c

    goto :goto_7

    :pswitch_8
    const v2, 0x7f07007b

    goto :goto_7

    :pswitch_9
    const v2, 0x7f07007a

    goto :goto_7

    :pswitch_a
    const v2, 0x7f070079

    goto :goto_7

    :pswitch_b
    const v2, 0x7f070072

    goto :goto_7

    :pswitch_c
    const v2, 0x7f070073

    goto :goto_7

    :pswitch_d
    const v2, 0x7f070074

    .line 266
    :goto_7
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mAirRHotSeat:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    iget-byte v2, v1, Lcom/can/parser/DDef$AirInfo;->mTempUnit:B

    .line 270
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mContext:Landroid/content/Context;

    if-nez v2, :cond_d

    const v9, 0x7f0d0027

    goto :goto_8

    :cond_d
    const v9, 0x7f0d0028

    :goto_8
    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 273
    iget-object v9, v0, Lcom/can/ui/draw/Air;->mAirLeftTemp:Landroid/widget/TextView;

    const v10, 0x7f0d00ad

    const v11, 0x7f0d00b5

    const v12, 0x7f0d00a8

    const v13, 0x7f0d0026

    const-string v15, "--"

    const v5, 0x7f0d0024

    const v8, 0x7f0d0025

    if-eqz v9, :cond_1c

    .line 274
    iget-boolean v14, v1, Lcom/can/parser/DDef$AirInfo;->mbshowLTemp:Z

    if-nez v14, :cond_f

    iget-boolean v14, v1, Lcom/can/parser/DDef$AirInfo;->mbshowLTempLv:Z

    if-eqz v14, :cond_e

    goto :goto_9

    :cond_e
    const/4 v14, 0x4

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v14, 0x0

    :goto_a
    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    iget-byte v9, v1, Lcom/can/parser/DDef$AirInfo;->mShowTempMode:B

    if-ne v9, v7, :cond_13

    .line 278
    iget-byte v4, v1, Lcom/can/parser/DDef$AirInfo;->mLTempMode:B

    if-eqz v4, :cond_12

    if-eq v4, v7, :cond_11

    if-eq v4, v3, :cond_10

    goto/16 :goto_b

    .line 286
    :cond_10
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mAirLeftTemp:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b

    .line 283
    :cond_11
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mAirLeftTemp:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b

    .line 280
    :cond_12
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mAirLeftTemp:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b

    .line 292
    :cond_13
    iget-boolean v9, v1, Lcom/can/parser/DDef$AirInfo;->mbshowLTempLv:Z

    if-eqz v9, :cond_14

    .line 293
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 294
    iget-object v9, v0, Lcom/can/ui/draw/Air;->mAirLeftTemp:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v6, v1, Lcom/can/parser/DDef$AirInfo;->mbyLeftTemplv:B

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 296
    :cond_14
    iget-boolean v6, v1, Lcom/can/parser/DDef$AirInfo;->mbMaxMinDual:Z

    if-eqz v6, :cond_18

    .line 297
    iget v6, v1, Lcom/can/parser/DDef$AirInfo;->mLeftTemp:F

    iget v9, v1, Lcom/can/parser/DDef$AirInfo;->mMinLeftTemp:F

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_15

    .line 298
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mAirLeftTemp:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b

    .line 299
    :cond_15
    iget v6, v1, Lcom/can/parser/DDef$AirInfo;->mLeftTemp:F

    iget v9, v1, Lcom/can/parser/DDef$AirInfo;->mMaxLeftTemp:F

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_16

    .line 300
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mAirLeftTemp:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_b

    .line 301
    :cond_16
    iget v6, v1, Lcom/can/parser/DDef$AirInfo;->mLeftTemp:F

    iget v9, v1, Lcom/can/parser/DDef$AirInfo;->mVaildTemp:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_17

    .line 302
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mAirLeftTemp:Landroid/widget/TextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 304
    :cond_17
    iget-object v6, v0, Lcom/can/ui/draw/Air;->mAirLeftTemp:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v1, Lcom/can/parser/DDef$AirInfo;->mLeftTemp:F

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 307
    :cond_18
    iget v6, v1, Lcom/can/parser/DDef$AirInfo;->mLeftTemp:F

    iget v9, v1, Lcom/can/parser/DDef$AirInfo;->mMinTemp:F

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_19

    .line 308
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mAirLeftTemp:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_b

    .line 309
    :cond_19
    iget v6, v1, Lcom/can/parser/DDef$AirInfo;->mLeftTemp:F

    iget v9, v1, Lcom/can/parser/DDef$AirInfo;->mMaxTemp:F

    cmpl-float v6, v6, v9

    if-ltz v6, :cond_1a

    .line 310
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mAirLeftTemp:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_b

    .line 311
    :cond_1a
    iget v6, v1, Lcom/can/parser/DDef$AirInfo;->mLeftTemp:F

    iget v9, v1, Lcom/can/parser/DDef$AirInfo;->mVaildTemp:F

    cmpl-float v6, v6, v9

    if-nez v6, :cond_1b

    .line 312
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mAirLeftTemp:Landroid/widget/TextView;

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 314
    :cond_1b
    iget-object v6, v0, Lcom/can/ui/draw/Air;->mAirLeftTemp:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v1, Lcom/can/parser/DDef$AirInfo;->mLeftTemp:F

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_1c
    :goto_b
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mAirRightTemp:Landroid/widget/TextView;

    if-eqz v4, :cond_2c

    .line 322
    iget-boolean v6, v1, Lcom/can/parser/DDef$AirInfo;->mbshowRTemp:Z

    if-nez v6, :cond_1e

    iget-boolean v6, v1, Lcom/can/parser/DDef$AirInfo;->mbshowRTempLv:Z

    if-eqz v6, :cond_1d

    goto :goto_c

    :cond_1d
    const/4 v14, 0x4

    goto :goto_d

    :cond_1e
    :goto_c
    const/4 v14, 0x0

    :goto_d
    invoke-virtual {v4, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    iget-byte v4, v1, Lcom/can/parser/DDef$AirInfo;->mShowTempMode:B

    if-ne v4, v7, :cond_22

    .line 327
    iget-byte v4, v1, Lcom/can/parser/DDef$AirInfo;->mRTempMode:B

    if-eqz v4, :cond_21

    if-eq v4, v7, :cond_20

    if-eq v4, v3, :cond_1f

    goto/16 :goto_f

    .line 335
    :cond_1f
    iget-object v3, v0, Lcom/can/ui/draw/Air;->mAirRightTemp:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_f

    .line 332
    :cond_20
    iget-object v3, v0, Lcom/can/ui/draw/Air;->mAirRightTemp:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_f

    .line 329
    :cond_21
    iget-object v3, v0, Lcom/can/ui/draw/Air;->mAirRightTemp:Landroid/widget/TextView;

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_f

    .line 341
    :cond_22
    iget-boolean v3, v1, Lcom/can/parser/DDef$AirInfo;->mbshowRTempLv:Z

    if-eqz v3, :cond_23

    .line 342
    iget-object v3, v0, Lcom/can/ui/draw/Air;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 343
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mAirRightTemp:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v6, v1, Lcom/can/parser/DDef$AirInfo;->mbyRightTemplv:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 345
    :cond_23
    iget-object v3, v0, Lcom/can/ui/draw/Air;->mContext:Landroid/content/Context;

    if-nez v2, :cond_24

    const v4, 0x7f0d0027

    goto :goto_e

    :cond_24
    const v4, 0x7f0d0028

    :goto_e
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 347
    iget-boolean v4, v1, Lcom/can/parser/DDef$AirInfo;->mbMaxMinDual:Z

    if-eqz v4, :cond_28

    .line 348
    iget v4, v1, Lcom/can/parser/DDef$AirInfo;->mRightTemp:F

    iget v6, v1, Lcom/can/parser/DDef$AirInfo;->mMinRightTemp:F

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_25

    .line 349
    iget-object v3, v0, Lcom/can/ui/draw/Air;->mAirRightTemp:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_f

    .line 350
    :cond_25
    iget v4, v1, Lcom/can/parser/DDef$AirInfo;->mRightTemp:F

    iget v6, v1, Lcom/can/parser/DDef$AirInfo;->mMaxRightTemp:F

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_26

    .line 351
    iget-object v3, v0, Lcom/can/ui/draw/Air;->mAirRightTemp:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_f

    .line 352
    :cond_26
    iget v4, v1, Lcom/can/parser/DDef$AirInfo;->mRightTemp:F

    iget v5, v1, Lcom/can/parser/DDef$AirInfo;->mVaildTemp:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_27

    .line 353
    iget-object v3, v0, Lcom/can/ui/draw/Air;->mAirRightTemp:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 355
    :cond_27
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mAirRightTemp:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lcom/can/parser/DDef$AirInfo;->mRightTemp:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 358
    :cond_28
    iget v4, v1, Lcom/can/parser/DDef$AirInfo;->mRightTemp:F

    iget v6, v1, Lcom/can/parser/DDef$AirInfo;->mMinTemp:F

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_29

    .line 359
    iget-object v3, v0, Lcom/can/ui/draw/Air;->mAirRightTemp:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_f

    .line 360
    :cond_29
    iget v4, v1, Lcom/can/parser/DDef$AirInfo;->mRightTemp:F

    iget v6, v1, Lcom/can/parser/DDef$AirInfo;->mMaxTemp:F

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_2a

    .line 361
    iget-object v3, v0, Lcom/can/ui/draw/Air;->mAirRightTemp:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_f

    .line 362
    :cond_2a
    iget v4, v1, Lcom/can/parser/DDef$AirInfo;->mRightTemp:F

    iget v5, v1, Lcom/can/parser/DDef$AirInfo;->mVaildTemp:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2b

    .line 363
    iget-object v3, v0, Lcom/can/ui/draw/Air;->mAirRightTemp:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 365
    :cond_2b
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mAirRightTemp:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lcom/can/parser/DDef$AirInfo;->mRightTemp:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    :cond_2c
    :goto_f
    iget-boolean v3, v1, Lcom/can/parser/DDef$AirInfo;->mOutTempEnable:Z

    const-string v4, " "

    if-eqz v3, :cond_2e

    .line 374
    iget-object v3, v0, Lcom/can/ui/draw/Air;->mAirOutTemp:Landroid/widget/TextView;

    if-eqz v3, :cond_2e

    .line 375
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "OUT:"

    .line 376
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    iget v5, v1, Lcom/can/parser/DDef$AirInfo;->mOutTemp:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 379
    iget-object v5, v0, Lcom/can/ui/draw/Air;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2d

    const v6, 0x7f0d0027

    goto :goto_10

    :cond_2d
    const v6, 0x7f0d0028

    :goto_10
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 381
    iget-object v6, v0, Lcom/can/ui/draw/Air;->mAirOutTemp:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    :cond_2e
    iget-boolean v3, v1, Lcom/can/parser/DDef$AirInfo;->mRearTempEnable:Z

    if-eqz v3, :cond_32

    .line 386
    iget-object v3, v0, Lcom/can/ui/draw/Air;->mAirRearTemp:Landroid/widget/TextView;

    if-eqz v3, :cond_32

    iget-object v3, v1, Lcom/can/parser/DDef$AirInfo;->mstrRearAirTemp:Ljava/lang/String;

    if-eqz v3, :cond_32

    .line 387
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "REAR:"

    .line 388
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    iget-object v4, v1, Lcom/can/parser/DDef$AirInfo;->mstrRearAirTemp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2f

    const v5, 0x7f0d0027

    goto :goto_11

    :cond_2f
    const v5, 0x7f0d0028

    :goto_11
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 393
    iget-object v4, v1, Lcom/can/parser/DDef$AirInfo;->mstrRearAirTemp:Ljava/lang/String;

    const-string v5, "HI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, v1, Lcom/can/parser/DDef$AirInfo;->mstrRearAirTemp:Ljava/lang/String;

    const-string v5, "LO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_12

    .line 396
    :cond_30
    iget-object v4, v0, Lcom/can/ui/draw/Air;->mAirRearTemp:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 394
    :cond_31
    :goto_12
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mAirRearTemp:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :cond_32
    :goto_13
    iget-boolean v2, v1, Lcom/can/parser/DDef$AirInfo;->bAirUIShow:Z

    if-eqz v2, :cond_33

    if-eqz p2, :cond_33

    .line 402
    iget-object v1, v0, Lcom/can/ui/draw/Air;->mPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz v1, :cond_34

    .line 403
    iget-object v2, v0, Lcom/can/ui/draw/Air;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/can/ui/draw/Air;->mAirView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3}, Lcom/can/ui/draw/PopWind;->show(Landroid/content/Context;Landroid/view/View;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/can/ui/draw/Air;->mlshowAirTime:J

    .line 404
    iget-object v1, v0, Lcom/can/ui/draw/Air;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/can/ui/draw/Air;->AirAutoClose:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 405
    iput-boolean v7, v0, Lcom/can/ui/draw/Air;->mbAirAutoCloseFlag:Z

    goto :goto_14

    .line 408
    :cond_33
    iget-byte v1, v1, Lcom/can/parser/DDef$AirInfo;->mAiron:B

    if-nez v1, :cond_34

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/can/ui/draw/Air;->IsShow()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/can/ui/draw/Air;->Hide()V

    const/4 v1, 0x0

    .line 412
    iput-boolean v1, v0, Lcom/can/ui/draw/Air;->mbAirAutoCloseFlag:Z

    :cond_34
    :goto_14
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
