.class public Lcom/can/ui/draw/ScreenSwitchStatus;
.super Ljava/lang/Object;
.source "ScreenSwitchStatus.java"


# instance fields
.field AutoClose:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLayout:Landroid/view/ViewGroup;

.field private mPopWind:Lcom/can/ui/draw/PopWind;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->mContext:Landroid/content/Context;

    .line 25
    new-instance v1, Lcom/can/ui/draw/ScreenSwitchStatus$1;

    invoke-direct {v1, p0}, Lcom/can/ui/draw/ScreenSwitchStatus$1;-><init>(Lcom/can/ui/draw/ScreenSwitchStatus;)V

    iput-object v1, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->uiHandler:Landroid/os/Handler;

    .line 48
    iput-object v0, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->mPopWind:Lcom/can/ui/draw/PopWind;

    .line 49
    iput-object v0, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->mLayout:Landroid/view/ViewGroup;

    .line 72
    new-instance v1, Lcom/can/ui/draw/ScreenSwitchStatus$3;

    invoke-direct {v1, p0}, Lcom/can/ui/draw/ScreenSwitchStatus$3;-><init>(Lcom/can/ui/draw/ScreenSwitchStatus;)V

    iput-object v1, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->AutoClose:Ljava/lang/Runnable;

    .line 52
    iput-object p2, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->mContext:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance p3, Lcom/can/ui/draw/PopWind;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 55
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f060109

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-direct {p3, v1, p2}, Lcom/can/ui/draw/PopWind;-><init>(II)V

    iput-object p3, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->mPopWind:Lcom/can/ui/draw/PopWind;

    const p2, 0x7f0b00c3

    .line 58
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->mLayout:Landroid/view/ViewGroup;

    const p2, 0x7f0807d0

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->mLayout:Landroid/view/ViewGroup;

    new-instance p2, Lcom/can/ui/draw/ScreenSwitchStatus$2;

    invoke-direct {p2, p0}, Lcom/can/ui/draw/ScreenSwitchStatus$2;-><init>(Lcom/can/ui/draw/ScreenSwitchStatus;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/can/ui/draw/ScreenSwitchStatus;)Lcom/can/ui/draw/PopWind;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->mPopWind:Lcom/can/ui/draw/PopWind;

    return-object p0
.end method

.method static synthetic access$100(Lcom/can/ui/draw/ScreenSwitchStatus;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/can/ui/draw/ScreenSwitchStatus;)Landroid/view/ViewGroup;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->mLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/can/ui/draw/ScreenSwitchStatus;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public Hide()V
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->uiHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public IsShow()Z
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->mPopWind:Lcom/can/ui/draw/PopWind;

    invoke-virtual {p0}, Lcom/can/ui/draw/PopWind;->IsVisable()Z

    move-result p0

    return p0
.end method

.method public show(Z)V
    .locals 1

    .line 86
    iget-object p0, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->uiHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
