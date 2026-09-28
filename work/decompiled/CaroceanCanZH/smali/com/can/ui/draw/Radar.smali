.class public Lcom/can/ui/draw/Radar;
.super Ljava/lang/Object;
.source "Radar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/ui/draw/Radar$OnRadarlistener;
    }
.end annotation


# static fields
.field private static final PERSYS_BACKCAR_DYNAMIC_TRACE:Ljava/lang/String; = "persist.sys.dyntrace_enable"

.field private static final PERSYS_BACKCAR_RADAR:Ljava/lang/String; = "persist.sys.radar_enable"

.field private static final PERSYS_BACKCAR_TRACE:Ljava/lang/String; = "persist.sys.trace_enable"


# instance fields
.field private final BACKCAR_STATE:I

.field private mBigRadarLayout:Landroid/widget/LinearLayout;

.field private mBigRadarSurface:Lcom/can/ui/draw/RadarSurface;

.field private mBtnBigRadar2Video:Landroid/widget/ImageButton;

.field private mBtnBigRadarMute:Landroid/widget/ImageButton;

.field private mBtnLeftHide:Landroid/widget/ImageButton;

.field private mBtnLeftShow:Landroid/widget/ImageButton;

.field private mBtnRightHide:Landroid/widget/ImageButton;

.field private mBtnRightShow:Landroid/widget/ImageButton;

.field private mBtnSmRadar2Big:Landroid/widget/ImageButton;

.field private mBtnSmRadarMute:Landroid/widget/ImageButton;

.field private mBtnSmRadarPark:Landroid/widget/ImageButton;

.field private mBtnT70Hide:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDyncTrack:Lcom/can/ui/draw/Track;

.field private mFrameLayout2:Landroid/widget/FrameLayout;

.field private mGs4Id:[I

.field private mGs5Id:[I

.field private mHandler:Landroid/os/Handler;

.field private mHdToyotaId:[I

.field private mHdToyotaRav4:Landroid/widget/LinearLayout;

.field private mRadarleftlayout:Landroid/widget/FrameLayout;

.field private mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

.field private mSmRadarLayout:Lcom/can/ui/draw/TouchLayout;

.field private mSmRadarRLayout:Landroid/widget/LinearLayout;

.field private mSmRadarRState:Landroid/widget/LinearLayout;

.field private mSmRadarSurface:Lcom/can/ui/draw/RadarSurface;

.field private mSmRadarVideoGroup:Landroid/widget/RadioGroup;

.field private mStaticTrack:Landroid/widget/ImageView;

.field private mT70Id:[I

.field private mT70Layout:Landroid/widget/LinearLayout;

.field private mT70View:[Landroid/widget/TextView;

.field private mToyotoId:[I

.field private mbPanoramic:Z

.field private mbParkType:Z

.field private mbPopWind:Lcom/can/ui/draw/PopWind;

.field private mbRadarMute:Z

.field private mbReverse:Z

.field private msPopWind:Lcom/can/ui/draw/PopWind;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 7

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 43
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mBtnLeftShow:Landroid/widget/ImageButton;

    .line 44
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mBtnLeftHide:Landroid/widget/ImageButton;

    .line 45
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mBtnRightShow:Landroid/widget/ImageButton;

    .line 46
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mBtnRightHide:Landroid/widget/ImageButton;

    .line 47
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mBtnSmRadarMute:Landroid/widget/ImageButton;

    .line 48
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mBtnSmRadarPark:Landroid/widget/ImageButton;

    .line 49
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mBtnSmRadar2Big:Landroid/widget/ImageButton;

    .line 50
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mBtnBigRadarMute:Landroid/widget/ImageButton;

    .line 51
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mBtnBigRadar2Video:Landroid/widget/ImageButton;

    .line 52
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mBtnT70Hide:Landroid/widget/Button;

    .line 54
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mFrameLayout2:Landroid/widget/FrameLayout;

    .line 55
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mT70Layout:Landroid/widget/LinearLayout;

    .line 56
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mHdToyotaRav4:Landroid/widget/LinearLayout;

    .line 57
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mSmRadarLayout:Lcom/can/ui/draw/TouchLayout;

    .line 58
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mSmRadarSurface:Lcom/can/ui/draw/RadarSurface;

    .line 59
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mBigRadarSurface:Lcom/can/ui/draw/RadarSurface;

    .line 60
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mSmRadarRLayout:Landroid/widget/LinearLayout;

    .line 61
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mSmRadarRState:Landroid/widget/LinearLayout;

    .line 62
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mBigRadarLayout:Landroid/widget/LinearLayout;

    .line 63
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mRadarleftlayout:Landroid/widget/FrameLayout;

    .line 64
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mSmRadarVideoGroup:Landroid/widget/RadioGroup;

    .line 65
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mStaticTrack:Landroid/widget/ImageView;

    .line 66
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/can/ui/draw/Radar;->mbRadarMute:Z

    .line 69
    iput-boolean v0, p0, Lcom/can/ui/draw/Radar;->mbParkType:Z

    .line 70
    iput-boolean v0, p0, Lcom/can/ui/draw/Radar;->mbReverse:Z

    .line 71
    iput-boolean v0, p0, Lcom/can/ui/draw/Radar;->mbPanoramic:Z

    .line 73
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->msPopWind:Lcom/can/ui/draw/PopWind;

    .line 74
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mbPopWind:Lcom/can/ui/draw/PopWind;

    .line 75
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mDyncTrack:Lcom/can/ui/draw/Track;

    .line 77
    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mContext:Landroid/content/Context;

    const/4 v1, 0x5

    .line 78
    iput v1, p0, Lcom/can/ui/draw/Radar;->BACKCAR_STATE:I

    new-array v2, v1, [I

    .line 83
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/can/ui/draw/Radar;->mToyotoId:[I

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 91
    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/can/ui/draw/Radar;->mHdToyotaId:[I

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 97
    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/can/ui/draw/Radar;->mGs4Id:[I

    new-array v3, v1, [I

    .line 104
    fill-array-data v3, :array_3

    iput-object v3, p0, Lcom/can/ui/draw/Radar;->mGs5Id:[I

    new-array v3, v1, [I

    .line 112
    fill-array-data v3, :array_4

    iput-object v3, p0, Lcom/can/ui/draw/Radar;->mT70Id:[I

    .line 120
    array-length v3, v3

    new-array v3, v3, [Landroid/widget/TextView;

    iput-object v3, p0, Lcom/can/ui/draw/Radar;->mT70View:[Landroid/widget/TextView;

    .line 622
    new-instance v3, Lcom/can/ui/draw/Radar$1;

    invoke-direct {v3, p0}, Lcom/can/ui/draw/Radar$1;-><init>(Lcom/can/ui/draw/Radar;)V

    iput-object v3, p0, Lcom/can/ui/draw/Radar;->mHandler:Landroid/os/Handler;

    .line 124
    iput-object p2, p0, Lcom/can/ui/draw/Radar;->mContext:Landroid/content/Context;

    .line 125
    new-instance p2, Lcom/can/ui/draw/PopWind;

    invoke-direct {p2, v0, v0}, Lcom/can/ui/draw/PopWind;-><init>(II)V

    iput-object p2, p0, Lcom/can/ui/draw/Radar;->msPopWind:Lcom/can/ui/draw/PopWind;

    .line 126
    new-instance p2, Lcom/can/ui/draw/PopWind;

    invoke-direct {p2, v0, v0}, Lcom/can/ui/draw/PopWind;-><init>(II)V

    iput-object p2, p0, Lcom/can/ui/draw/Radar;->mbPopWind:Lcom/can/ui/draw/PopWind;

    const p2, 0x7f0b00c7

    .line 128
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/can/ui/draw/TouchLayout;

    iput-object v3, p0, Lcom/can/ui/draw/Radar;->mSmRadarLayout:Lcom/can/ui/draw/TouchLayout;

    const v3, 0x7f0b0027

    .line 129
    invoke-virtual {p1, v3, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/can/ui/draw/Radar;->mBigRadarLayout:Landroid/widget/LinearLayout;

    .line 130
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarLayout:Lcom/can/ui/draw/TouchLayout;

    const p3, 0x7f08079f

    invoke-virtual {p1, p3}, Lcom/can/ui/draw/TouchLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const p3, 0x7f0807a7

    .line 131
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const p3, 0x7f080591

    .line 132
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mRadarleftlayout:Landroid/widget/FrameLayout;

    const v4, 0x7f08057f

    .line 134
    invoke-virtual {p3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    const v4, 0x7f0806f3

    .line 135
    invoke-virtual {p3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/can/ui/draw/RadarSurface;

    iput-object v4, p0, Lcom/can/ui/draw/Radar;->mSmRadarSurface:Lcom/can/ui/draw/RadarSurface;

    .line 136
    iget-object v4, p0, Lcom/can/ui/draw/Radar;->mRadarleftlayout:Landroid/widget/FrameLayout;

    const v5, 0x7f080177

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/can/ui/draw/Radar;->mBtnLeftShow:Landroid/widget/ImageButton;

    const v4, 0x7f080176

    .line 137
    invoke-virtual {p3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageButton;

    iput-object p3, p0, Lcom/can/ui/draw/Radar;->mBtnLeftHide:Landroid/widget/ImageButton;

    .line 138
    iget-object p3, p0, Lcom/can/ui/draw/Radar;->mBtnLeftShow:Landroid/widget/ImageButton;

    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p3, p0, Lcom/can/ui/draw/Radar;->mBtnLeftHide:Landroid/widget/ImageButton;

    invoke-virtual {p3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object p3, p0, Lcom/can/ui/draw/Radar;->mSmRadarSurface:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {p3, p2}, Lcom/can/ui/draw/RadarSurface;->setlayoutId(I)V

    const p2, 0x7f080702

    .line 142
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarRState:Landroid/widget/LinearLayout;

    const p2, 0x7f0801ac

    .line 143
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarRLayout:Landroid/widget/LinearLayout;

    .line 144
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarRState:Landroid/widget/LinearLayout;

    const p2, 0x7f0801ab

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarVideoGroup:Landroid/widget/RadioGroup;

    .line 145
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarRState:Landroid/widget/LinearLayout;

    const p2, 0x7f08017a

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnRightShow:Landroid/widget/ImageButton;

    .line 146
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarRState:Landroid/widget/LinearLayout;

    const p2, 0x7f08017c

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnRightHide:Landroid/widget/ImageButton;

    .line 147
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarRLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f08017b

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnSmRadarMute:Landroid/widget/ImageButton;

    .line 148
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarRLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f080179

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnSmRadarPark:Landroid/widget/ImageButton;

    .line 149
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarRLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f080178

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnSmRadar2Big:Landroid/widget/ImageButton;

    .line 151
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarVideoGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 152
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnRightShow:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnRightHide:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnSmRadarMute:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnSmRadarPark:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnSmRadar2Big:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBigRadarLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0806f1

    .line 159
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0806f2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 160
    iget-object p2, p0, Lcom/can/ui/draw/Radar;->mBigRadarLayout:Landroid/widget/LinearLayout;

    const p3, 0x7f080068

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/can/ui/draw/RadarSurface;

    iput-object p2, p0, Lcom/can/ui/draw/Radar;->mBigRadarSurface:Lcom/can/ui/draw/RadarSurface;

    const p2, 0x7f08017d

    .line 161
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/can/ui/draw/Radar;->mBtnBigRadar2Video:Landroid/widget/ImageButton;

    const p2, 0x7f080067

    .line 162
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnBigRadarMute:Landroid/widget/ImageButton;

    .line 163
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnBigRadar2Video:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnBigRadarMute:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBigRadarSurface:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {p1, v3}, Lcom/can/ui/draw/RadarSurface;->setlayoutId(I)V

    .line 167
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarLayout:Lcom/can/ui/draw/TouchLayout;

    const p2, 0x7f08058a

    .line 168
    invoke-virtual {p1, p2}, Lcom/can/ui/draw/TouchLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const p2, 0x7f0807cb

    .line 169
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/can/ui/draw/Track;

    iput-object p2, p0, Lcom/can/ui/draw/Radar;->mDyncTrack:Lcom/can/ui/draw/Track;

    const p2, 0x7f08074d

    .line 170
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/can/ui/draw/Radar;->mStaticTrack:Landroid/widget/ImageView;

    .line 172
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarLayout:Lcom/can/ui/draw/TouchLayout;

    const p2, 0x7f080584

    invoke-virtual {p1, p2}, Lcom/can/ui/draw/TouchLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/can/ui/draw/Radar;->mT70Layout:Landroid/widget/LinearLayout;

    .line 173
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarLayout:Lcom/can/ui/draw/TouchLayout;

    const p2, 0x7f080760

    invoke-virtual {p1, p2}, Lcom/can/ui/draw/TouchLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnT70Hide:Landroid/widget/Button;

    .line 174
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarLayout:Lcom/can/ui/draw/TouchLayout;

    const p2, 0x7f08057e

    .line 175
    invoke-virtual {p1, p2}, Lcom/can/ui/draw/TouchLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/can/ui/draw/Radar;->mFrameLayout2:Landroid/widget/FrameLayout;

    .line 176
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarLayout:Lcom/can/ui/draw/TouchLayout;

    const p2, 0x7f08057a

    invoke-virtual {p1, p2}, Lcom/can/ui/draw/TouchLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/can/ui/draw/Radar;->mHdToyotaRav4:Landroid/widget/LinearLayout;

    .line 177
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarLayout:Lcom/can/ui/draw/TouchLayout;

    const p2, 0x7f08058c

    .line 178
    invoke-virtual {p1, p2}, Lcom/can/ui/draw/TouchLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 179
    iget-object p2, p0, Lcom/can/ui/draw/Radar;->mSmRadarLayout:Lcom/can/ui/draw/TouchLayout;

    const p3, 0x7f08058d

    .line 180
    invoke-virtual {p2, p3}, Lcom/can/ui/draw/TouchLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 181
    iget-object p3, p0, Lcom/can/ui/draw/Radar;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/can/assist/CanXml;->getInstance(Landroid/content/Context;)Lcom/can/assist/CanXml;

    move-result-object p3

    invoke-virtual {p3}, Lcom/can/assist/CanXml;->getCanDescribe()Lcom/can/assist/CanContant$CAN_DESCRIBE;

    move-result-object p3

    .line 182
    iget v3, p3, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iSeriesID:I

    const/4 v4, 0x2

    if-ne v3, v2, :cond_1

    iget v2, p3, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iCarTypeID:I

    if-ne v2, v4, :cond_1

    .line 183
    iget p1, p3, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iBoxID:I

    if-ne p1, v4, :cond_0

    .line 184
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mHdToyotaRav4:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mHdToyotaId:[I

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_8

    aget p3, p1, v0

    .line 186
    iget-object v1, p0, Lcom/can/ui/draw/Radar;->mHdToyotaRav4:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mFrameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mToyotoId:[I

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_8

    aget p3, p1, v0

    .line 191
    iget-object v1, p0, Lcom/can/ui/draw/Radar;->mFrameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_1
    iget v2, p3, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iSeriesID:I

    const/16 v3, 0x16

    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    iget v2, p3, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iCarTypeID:I

    if-eq v2, v5, :cond_4

    :cond_2
    iget v2, p3, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iSeriesID:I

    const/16 v6, 0x13

    if-ne v2, v6, :cond_3

    iget v2, p3, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iCarTypeID:I

    if-eq v2, v4, :cond_4

    :cond_3
    iget v2, p3, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iBoxID:I

    if-ne v2, v5, :cond_5

    iget v2, p3, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iSeriesID:I

    const/16 v5, 0x1e

    if-ne v2, v5, :cond_5

    iget v2, p3, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iCarTypeID:I

    if-ne v2, v1, :cond_5

    .line 197
    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 198
    iget-object p2, p0, Lcom/can/ui/draw/Radar;->mGs4Id:[I

    array-length p3, p2

    :goto_2
    if-ge v0, p3, :cond_8

    aget v1, p2, v0

    .line 199
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 201
    :cond_5
    iget p1, p3, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iSeriesID:I

    if-ne p1, v3, :cond_6

    iget p1, p3, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iCarTypeID:I

    if-ne p1, v4, :cond_6

    .line 202
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 203
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mGs5Id:[I

    array-length p3, p1

    :goto_3
    if-ge v0, p3, :cond_8

    aget v1, p1, v0

    .line 204
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 206
    :cond_6
    iget p1, p3, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iSeriesID:I

    const/16 p2, 0x20

    if-ne p1, p2, :cond_8

    iget p1, p3, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iCarTypeID:I

    if-nez p1, :cond_8

    .line 207
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnT70Hide:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnT70Hide:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :goto_4
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mT70Id:[I

    array-length p2, p1

    if-ge v0, p2, :cond_8

    .line 210
    iget-object p2, p0, Lcom/can/ui/draw/Radar;->mT70View:[Landroid/widget/TextView;

    iget-object p3, p0, Lcom/can/ui/draw/Radar;->mT70Layout:Landroid/widget/LinearLayout;

    aget p1, p1, v0

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    aput-object p1, p2, v0

    .line 211
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mT70View:[Landroid/widget/TextView;

    aget-object p2, p1, v0

    if-eqz p2, :cond_7

    .line 212
    aget-object p1, p1, v0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    return-void

    :array_0
    .array-data 4
        0x7f080159
        0x7f08018e
        0x7f080158
        0x7f08018d
        0x7f08006c
    .end array-data

    :array_1
    .array-data 4
        0x7f080465
        0x7f080467
        0x7f080468
    .end array-data

    :array_2
    .array-data 4
        0x7f0800ff
        0x7f08017e
        0x7f080157
        0x7f08018c
    .end array-data

    :array_3
    .array-data 4
        0x7f080100
        0x7f080101
        0x7f08017f
        0x7f080129
        0x7f0801a3
    .end array-data

    :array_4
    .array-data 4
        0x7f08075b
        0x7f08075f
        0x7f08075d
        0x7f08075e
        0x7f08075c
    .end array-data
.end method

.method static synthetic access$000(Lcom/can/ui/draw/Radar;Ljava/lang/Boolean;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/can/ui/draw/Radar;->doReverse(Ljava/lang/Boolean;)V

    return-void
.end method

.method private doReverse(Ljava/lang/Boolean;)V
    .locals 3

    .line 640
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 641
    invoke-virtual {p0}, Lcom/can/ui/draw/Radar;->IsAssistShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 642
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBigRadarSurface:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {p1}, Lcom/can/ui/draw/RadarSurface;->stopThread()V

    .line 643
    invoke-virtual {p0}, Lcom/can/ui/draw/Radar;->hideAssist()V

    .line 646
    :cond_0
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mDyncTrack:Lcom/can/ui/draw/Track;

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string v2, "persist.sys.dyntrace_enable"

    .line 647
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Lcom/can/ui/draw/Track;->setVisibility(I)V

    .line 652
    :cond_2
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mStaticTrack:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    const-string v2, "persist.sys.trace_enable"

    .line 653
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 658
    :cond_4
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

    if-eqz p1, :cond_5

    .line 659
    invoke-interface {p1}, Lcom/can/ui/draw/Radar$OnRadarlistener;->remove()V

    .line 661
    :cond_5
    invoke-direct {p0}, Lcom/can/ui/draw/Radar;->setReverseAttr()V

    .line 663
    invoke-virtual {p0}, Lcom/can/ui/draw/Radar;->show()V

    goto :goto_1

    .line 666
    :cond_6
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarSurface:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {p1}, Lcom/can/ui/draw/RadarSurface;->stopThread()V

    .line 667
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarLayout:Lcom/can/ui/draw/TouchLayout;

    invoke-virtual {p1}, Lcom/can/ui/draw/TouchLayout;->OverReverse()V

    .line 668
    invoke-virtual {p0}, Lcom/can/ui/draw/Radar;->hide()V

    .line 669
    invoke-virtual {p0}, Lcom/can/ui/draw/Radar;->IsAssistShow()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 670
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBigRadarSurface:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {p1}, Lcom/can/ui/draw/RadarSurface;->stopThread()V

    .line 671
    invoke-virtual {p0}, Lcom/can/ui/draw/Radar;->hideAssist()V

    :cond_7
    :goto_1
    return-void
.end method

.method private muteRadar()V
    .locals 2

    .line 428
    iget-boolean v0, p0, Lcom/can/ui/draw/Radar;->mbRadarMute:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/can/ui/draw/Radar;->mbRadarMute:Z

    if-eqz v0, :cond_0

    const v0, 0x7f07045f

    goto :goto_0

    :cond_0
    const v0, 0x7f070463

    .line 431
    :goto_0
    iget-object v1, p0, Lcom/can/ui/draw/Radar;->mBtnSmRadarMute:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 432
    iget-object v1, p0, Lcom/can/ui/draw/Radar;->mBtnBigRadarMute:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 434
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

    if-eqz v0, :cond_1

    .line 435
    iget-boolean p0, p0, Lcom/can/ui/draw/Radar;->mbRadarMute:Z

    invoke-interface {v0, p0}, Lcom/can/ui/draw/Radar$OnRadarlistener;->mute(Z)V

    :cond_1
    return-void
.end method

.method private parkType()V
    .locals 2

    .line 441
    iget-boolean v0, p0, Lcom/can/ui/draw/Radar;->mbParkType:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/can/ui/draw/Radar;->mbParkType:Z

    if-eqz v0, :cond_0

    const v0, 0x7f070461

    goto :goto_0

    :cond_0
    const v0, 0x7f070460

    .line 444
    :goto_0
    iget-object v1, p0, Lcom/can/ui/draw/Radar;->mBtnSmRadarPark:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 446
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

    if-eqz v0, :cond_1

    .line 447
    iget-boolean p0, p0, Lcom/can/ui/draw/Radar;->mbParkType:Z

    invoke-interface {v0, p0}, Lcom/can/ui/draw/Radar$OnRadarlistener;->park(Z)V

    :cond_1
    return-void
.end method

.method private setGone()V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mBtnLeftShow:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mSmRadarSurface:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {v0, v1}, Lcom/can/ui/draw/RadarSurface;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mBtnLeftHide:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mBtnRightShow:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mSmRadarRLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mBtnRightHide:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 587
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mSmRadarVideoGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    return-void
.end method

.method private setPanoramic(I)V
    .locals 7

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x2

    sparse-switch p1, :sswitch_data_0

    move v0, v1

    goto :goto_2

    :cond_0
    :sswitch_0
    move v0, v2

    goto :goto_2

    :sswitch_1
    const/4 v0, 0x6

    goto :goto_2

    .line 366
    :sswitch_2
    iget-boolean p1, p0, Lcom/can/ui/draw/Radar;->mbPanoramic:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x8

    goto :goto_2

    :goto_0
    :sswitch_4
    move v0, v3

    goto :goto_2

    .line 357
    :sswitch_5
    iget-boolean p1, p0, Lcom/can/ui/draw/Radar;->mbPanoramic:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :sswitch_6
    move v0, v4

    goto :goto_2

    :goto_1
    :sswitch_7
    move v0, v6

    goto :goto_2

    :sswitch_8
    move v0, v5

    .line 421
    :goto_2
    :sswitch_9
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

    if-eqz p0, :cond_2

    .line 422
    invoke-interface {p0, v0, v1}, Lcom/can/ui/draw/Radar$OnRadarlistener;->Panoramic(BB)V

    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f08006c -> :sswitch_9
        0x7f0800ff -> :sswitch_8
        0x7f080100 -> :sswitch_8
        0x7f080101 -> :sswitch_7
        0x7f080129 -> :sswitch_6
        0x7f080157 -> :sswitch_9
        0x7f080158 -> :sswitch_5
        0x7f080159 -> :sswitch_8
        0x7f08017e -> :sswitch_7
        0x7f08017f -> :sswitch_4
        0x7f08018c -> :sswitch_3
        0x7f08018d -> :sswitch_2
        0x7f08018e -> :sswitch_1
        0x7f0801a3 -> :sswitch_0
        0x7f08075b -> :sswitch_7
        0x7f08075c -> :sswitch_0
        0x7f08075d -> :sswitch_6
        0x7f08075e -> :sswitch_0
        0x7f08075f -> :sswitch_4
    .end sparse-switch
.end method

.method private setRadarUI()V
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

    if-eqz v0, :cond_2

    .line 562
    invoke-interface {v0}, Lcom/can/ui/draw/Radar$OnRadarlistener;->getRadarState()B

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 573
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mSmRadarSurface:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {v0, v1}, Lcom/can/ui/draw/RadarSurface;->setVisibility(I)V

    .line 574
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mBtnLeftHide:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mSmRadarSurface:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {v0, v1}, Lcom/can/ui/draw/RadarSurface;->setVisibility(I)V

    .line 570
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mBtnLeftHide:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mSmRadarSurface:Lcom/can/ui/draw/RadarSurface;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/can/ui/draw/RadarSurface;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mBtnLeftHide:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 566
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mBtnLeftShow:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setReverseAttr()V
    .locals 4

    .line 518
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 519
    invoke-interface {v0}, Lcom/can/ui/draw/Radar$OnRadarlistener;->IsVaild()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    const-string v0, "persist.sys.radar_enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 521
    invoke-direct {p0}, Lcom/can/ui/draw/Radar;->setGone()V

    .line 523
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

    invoke-interface {v0}, Lcom/can/ui/draw/Radar$OnRadarlistener;->attr()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    .line 538
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

    invoke-interface {v0}, Lcom/can/ui/draw/Radar$OnRadarlistener;->IsSuportRadar()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 541
    :cond_0
    invoke-direct {p0}, Lcom/can/ui/draw/Radar;->setRadarUI()V

    goto :goto_0

    .line 534
    :cond_1
    invoke-direct {p0}, Lcom/can/ui/draw/Radar;->setRadarUI()V

    .line 535
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mBtnRightShow:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 529
    :cond_2
    invoke-direct {p0}, Lcom/can/ui/draw/Radar;->setRadarUI()V

    .line 530
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mSmRadarVideoGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

    invoke-interface {v0}, Lcom/can/ui/draw/Radar$OnRadarlistener;->videoType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/can/ui/draw/Radar;->setVideoType(I)V

    goto :goto_0

    .line 525
    :cond_3
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mSmRadarVideoGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

    invoke-interface {v0}, Lcom/can/ui/draw/Radar$OnRadarlistener;->videoType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/can/ui/draw/Radar;->setVideoType(I)V

    :goto_0
    move v2, v1

    .line 550
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mFrameLayout2:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    .line 551
    iget-object v3, p0, Lcom/can/ui/draw/Radar;->mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

    invoke-interface {v3}, Lcom/can/ui/draw/Radar$OnRadarlistener;->IsPanoramic()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_6
    move v1, v2

    :cond_7
    if-eqz v1, :cond_8

    .line 556
    invoke-direct {p0}, Lcom/can/ui/draw/Radar;->setGone()V

    :cond_8
    return-void
.end method

.method private setVideoType(I)V
    .locals 1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 617
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mSmRadarVideoGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    const/4 p1, 0x1

    .line 618
    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private switchRadar(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 336
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarSurface:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {p1}, Lcom/can/ui/draw/RadarSurface;->stopThread()V

    .line 337
    invoke-virtual {p0}, Lcom/can/ui/draw/Radar;->hide()V

    .line 338
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnBigRadar2Video:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 339
    invoke-virtual {p0}, Lcom/can/ui/draw/Radar;->showAssist()V

    goto :goto_0

    .line 341
    :cond_0
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBigRadarSurface:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {p1}, Lcom/can/ui/draw/RadarSurface;->stopThread()V

    .line 342
    invoke-virtual {p0}, Lcom/can/ui/draw/Radar;->hideAssist()V

    .line 343
    invoke-virtual {p0}, Lcom/can/ui/draw/Radar;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public IsAssistShow()Z
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mbPopWind:Lcom/can/ui/draw/PopWind;

    invoke-virtual {p0}, Lcom/can/ui/draw/PopWind;->IsVisable()Z

    move-result p0

    return p0
.end method

.method public IsShow()Z
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->msPopWind:Lcom/can/ui/draw/PopWind;

    invoke-virtual {p0}, Lcom/can/ui/draw/PopWind;->IsVisable()Z

    move-result p0

    return p0
.end method

.method public doDyncTrack(Lcom/can/parser/DDef$WheelInfo;)V
    .locals 0

    .line 678
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mDyncTrack:Lcom/can/ui/draw/Track;

    if-eqz p0, :cond_0

    .line 679
    iget p1, p1, Lcom/can/parser/DDef$WheelInfo;->mEps:I

    invoke-virtual {p0, p1}, Lcom/can/ui/draw/Track;->DrawTrack(I)V

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->msPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz v0, :cond_0

    .line 309
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mSmRadarLayout:Lcom/can/ui/draw/TouchLayout;

    invoke-virtual {v0, p0}, Lcom/can/ui/draw/PopWind;->hide(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public hideAssist()V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mbPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz v0, :cond_0

    .line 325
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mBigRadarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Lcom/can/ui/draw/PopWind;->hide(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x2

    .line 701
    :goto_0
    :pswitch_2
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

    if-eqz p0, :cond_0

    .line 702
    invoke-interface {p0, p1}, Lcom/can/ui/draw/Radar$OnRadarlistener;->video(I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0801a4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_1

    .line 290
    :pswitch_0
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mT70Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 287
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/can/ui/draw/Radar;->setPanoramic(I)V

    goto/16 :goto_1

    .line 253
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/can/ui/draw/Radar;->switchRadar(Z)V

    goto/16 :goto_1

    .line 245
    :pswitch_3
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnRightShow:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 246
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarRLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 247
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mBtnRightHide:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 240
    :pswitch_4
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnRightShow:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 241
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarRLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mBtnRightHide:Landroid/widget/ImageButton;

    invoke-virtual {p0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 260
    :pswitch_5
    invoke-direct {p0}, Lcom/can/ui/draw/Radar;->parkType()V

    goto :goto_1

    .line 250
    :pswitch_6
    invoke-direct {p0, v1}, Lcom/can/ui/draw/Radar;->switchRadar(Z)V

    goto :goto_1

    .line 223
    :pswitch_7
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnLeftShow:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 224
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnLeftHide:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarSurface:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {p1, v3}, Lcom/can/ui/draw/RadarSurface;->setVisibility(I)V

    .line 226
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

    if-eqz p0, :cond_1

    .line 227
    invoke-interface {p0, v1}, Lcom/can/ui/draw/Radar$OnRadarlistener;->saveRadarState(B)V

    goto :goto_1

    .line 231
    :pswitch_8
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarSurface:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {p1}, Lcom/can/ui/draw/RadarSurface;->stopThread()V

    .line 232
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnLeftShow:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 233
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mSmRadarSurface:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {p1, v2}, Lcom/can/ui/draw/RadarSurface;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnLeftHide:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 235
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

    if-eqz p0, :cond_1

    .line 236
    invoke-interface {p0, v3}, Lcom/can/ui/draw/Radar$OnRadarlistener;->saveRadarState(B)V

    goto :goto_1

    .line 273
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/can/ui/draw/Radar;->setPanoramic(I)V

    goto :goto_1

    .line 280
    :pswitch_a
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/can/ui/draw/Radar;->setPanoramic(I)V

    goto :goto_1

    .line 267
    :pswitch_b
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/can/ui/draw/Radar;->setPanoramic(I)V

    goto :goto_1

    .line 257
    :pswitch_c
    :sswitch_2
    invoke-direct {p0}, Lcom/can/ui/draw/Radar;->muteRadar()V

    :cond_1
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f080067 -> :sswitch_2
        0x7f08006c -> :sswitch_1
        0x7f080129 -> :sswitch_0
        0x7f0801a3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f0800ff
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f080157
        :pswitch_9
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f080176
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_c
        :pswitch_3
        :pswitch_2
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f08018c
        :pswitch_9
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7f08075b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 740
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 742
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v1, v3

    :goto_0
    :pswitch_1
    move v3, v4

    goto :goto_2

    :pswitch_2
    move v1, v2

    goto :goto_0

    :pswitch_3
    move v1, v4

    move v3, v1

    goto :goto_2

    .line 755
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v4, :cond_1

    .line 757
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_1

    :pswitch_4
    goto :goto_1

    :pswitch_5
    move v1, v2

    goto :goto_2

    :pswitch_6
    move v1, v4

    goto :goto_2

    :cond_1
    :goto_1
    move v1, v3

    .line 771
    :goto_2
    :pswitch_7
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

    if-eqz p0, :cond_2

    if-eqz v1, :cond_2

    .line 772
    invoke-interface {p0, v1, v3}, Lcom/can/ui/draw/Radar$OnRadarlistener;->Panoramic(BB)V

    :cond_2
    return v4

    :pswitch_data_0
    .packed-switch 0x7f080465
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f080465
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public setAvmInfo(Lcom/can/parser/DDef$AvmInfo;)V
    .locals 5

    .line 591
    iget p1, p1, Lcom/can/parser/DDef$AvmInfo;->mVideoState:I

    .line 592
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mT70View:[Landroid/widget/TextView;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-nez v4, :cond_0

    return-void

    .line 596
    :cond_0
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_8

    const/4 v3, 0x7

    if-ne p1, v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v3, 0x4

    if-eq p1, v3, :cond_7

    const/16 v4, 0x8

    if-ne p1, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x5

    if-eq p1, v4, :cond_6

    const/16 v4, 0x9

    if-ne p1, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x6

    if-ne p1, v4, :cond_5

    .line 605
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mT70View:[Landroid/widget/TextView;

    aget-object p1, p1, v3

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mT70View:[Landroid/widget/TextView;

    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 607
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mT70View:[Landroid/widget/TextView;

    aget-object p0, p0, v0

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    const/16 v4, 0xa

    if-ne p1, v4, :cond_9

    .line 609
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mT70View:[Landroid/widget/TextView;

    aget-object p1, p1, v0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 610
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mT70View:[Landroid/widget/TextView;

    aget-object p1, p1, v0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 611
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mT70View:[Landroid/widget/TextView;

    aget-object p0, p0, v3

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 603
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mT70View:[Landroid/widget/TextView;

    const/4 p1, 0x2

    aget-object p0, p0, p1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_4

    .line 601
    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mT70View:[Landroid/widget/TextView;

    aget-object p0, p0, v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_4

    .line 599
    :cond_8
    :goto_3
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mT70View:[Landroid/widget/TextView;

    aget-object p0, p0, v2

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_9
    :goto_4
    return-void
.end method

.method public setOnRadarlistener(Lcom/can/ui/draw/Radar$OnRadarlistener;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/can/ui/draw/Radar;->mRadarlistener:Lcom/can/ui/draw/Radar$OnRadarlistener;

    return-void
.end method

.method public setPanoramicState(Z)V
    .locals 0

    .line 330
    iput-boolean p1, p0, Lcom/can/ui/draw/Radar;->mbPanoramic:Z

    return-void
.end method

.method public setParkAttr(Lcom/can/parser/DDef$ParkAssistInfo;)V
    .locals 2

    .line 489
    iget-byte v0, p1, Lcom/can/parser/DDef$ParkAssistInfo;->mRadarSoundState:B

    if-nez v0, :cond_0

    const v0, 0x7f07045f

    goto :goto_0

    :cond_0
    const v0, 0x7f070463

    .line 492
    :goto_0
    iget-object v1, p0, Lcom/can/ui/draw/Radar;->mBtnSmRadarMute:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 493
    iget-object v1, p0, Lcom/can/ui/draw/Radar;->mBtnBigRadarMute:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 496
    invoke-virtual {p0}, Lcom/can/ui/draw/Radar;->IsShow()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 499
    :cond_1
    iget-byte p1, p1, Lcom/can/parser/DDef$ParkAssistInfo;->mParkSystemState:B

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 500
    invoke-virtual {p0}, Lcom/can/ui/draw/Radar;->IsAssistShow()Z

    move-result p1

    if-nez p1, :cond_3

    .line 501
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBtnBigRadar2Video:Landroid/widget/ImageButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 502
    invoke-virtual {p0}, Lcom/can/ui/draw/Radar;->showAssist()V

    goto :goto_1

    .line 506
    :cond_2
    invoke-virtual {p0}, Lcom/can/ui/draw/Radar;->IsAssistShow()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 507
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mBigRadarSurface:Lcom/can/ui/draw/RadarSurface;

    invoke-virtual {p1}, Lcom/can/ui/draw/RadarSurface;->stopThread()V

    .line 508
    invoke-virtual {p0}, Lcom/can/ui/draw/Radar;->hideAssist()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setRadar(Lcom/can/parser/DDef$RadarInfo;)V
    .locals 1

    .line 472
    invoke-static {p1}, Lcom/can/ui/draw/RadarSurface;->setRadarInfo(Lcom/can/parser/DDef$RadarInfo;)V

    .line 473
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mSmRadarRState:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 474
    iget-byte p1, p1, Lcom/can/parser/DDef$RadarInfo;->mbyRightShowType:B

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mSmRadarRState:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 476
    :cond_1
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mSmRadarRState:Landroid/widget/LinearLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setReverse(Z)V
    .locals 3

    .line 453
    iget-boolean v0, p0, Lcom/can/ui/draw/Radar;->mbReverse:Z

    if-eq v0, p1, :cond_2

    .line 454
    iput-boolean p1, p0, Lcom/can/ui/draw/Radar;->mbReverse:Z

    .line 456
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 457
    iput v1, v0, Landroid/os/Message;->what:I

    .line 458
    iput p1, v0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    .line 461
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 463
    :cond_0
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mHandler:Landroid/os/Handler;

    iget v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 464
    iget-object p1, p0, Lcom/can/ui/draw/Radar;->mHandler:Landroid/os/Handler;

    iget v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 466
    :cond_1
    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->msPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz v0, :cond_0

    .line 299
    iget-object v1, p0, Lcom/can/ui/draw/Radar;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mSmRadarLayout:Lcom/can/ui/draw/TouchLayout;

    invoke-virtual {v0, v1, p0}, Lcom/can/ui/draw/PopWind;->showEx(Landroid/content/Context;Landroid/view/View;)J

    :cond_0
    return-void
.end method

.method public showAssist()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/can/ui/draw/Radar;->mbPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz v0, :cond_0

    .line 315
    iget-object v1, p0, Lcom/can/ui/draw/Radar;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/can/ui/draw/Radar;->mBigRadarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, p0}, Lcom/can/ui/draw/PopWind;->show(Landroid/content/Context;Landroid/view/View;)J

    :cond_0
    return-void
.end method
