.class public Lcom/can/ui/draw/SwicthView;
.super Ljava/lang/Object;
.source "SwicthView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/ui/draw/SwicthView$OnSVlistener;
    }
.end annotation


# instance fields
.field private final BACKCAR_STATE:I

.field private mButtons:[Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mSVLayout:Landroid/widget/RelativeLayout;

.field private mSVPopWind:Lcom/can/ui/draw/PopWind;

.field private mSVlistener:Lcom/can/ui/draw/SwicthView$OnSVlistener;

.field private mbReverse:Z

.field private miBtnId:[I


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/can/ui/draw/SwicthView;->mContext:Landroid/content/Context;

    .line 18
    iput-object v0, p0, Lcom/can/ui/draw/SwicthView;->mSVPopWind:Lcom/can/ui/draw/PopWind;

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/can/ui/draw/SwicthView;->mbReverse:Z

    const/4 v2, 0x6

    .line 20
    iput v2, p0, Lcom/can/ui/draw/SwicthView;->BACKCAR_STATE:I

    .line 21
    iput-object v0, p0, Lcom/can/ui/draw/SwicthView;->mSVLayout:Landroid/widget/RelativeLayout;

    .line 22
    iput-object v0, p0, Lcom/can/ui/draw/SwicthView;->mSVlistener:Lcom/can/ui/draw/SwicthView$OnSVlistener;

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/widget/Button;

    .line 23
    iput-object v3, p0, Lcom/can/ui/draw/SwicthView;->mButtons:[Landroid/widget/Button;

    new-array v2, v2, [I

    .line 25
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/can/ui/draw/SwicthView;->miBtnId:[I

    .line 60
    new-instance v2, Lcom/can/ui/draw/SwicthView$1;

    invoke-direct {v2, p0}, Lcom/can/ui/draw/SwicthView$1;-><init>(Lcom/can/ui/draw/SwicthView;)V

    iput-object v2, p0, Lcom/can/ui/draw/SwicthView;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p2, p0, Lcom/can/ui/draw/SwicthView;->mContext:Landroid/content/Context;

    .line 30
    new-instance p2, Lcom/can/ui/draw/PopWind;

    invoke-direct {p2, v1, v1}, Lcom/can/ui/draw/PopWind;-><init>(II)V

    iput-object p2, p0, Lcom/can/ui/draw/SwicthView;->mSVPopWind:Lcom/can/ui/draw/PopWind;

    const p2, 0x7f0b00ce

    .line 32
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/can/ui/draw/SwicthView;->mSVLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f080581

    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/can/ui/draw/SwicthView;->miBtnId:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/can/ui/draw/SwicthView;->mButtons:[Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/can/ui/draw/SwicthView;->miBtnId:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v0, v1

    .line 37
    iget-object v0, p0, Lcom/can/ui/draw/SwicthView;->mButtons:[Landroid/widget/Button;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x7f0801a9
        0x7f0801a8
        0x7f0801a7
    .end array-data
.end method

.method static synthetic access$000(Lcom/can/ui/draw/SwicthView;Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/can/ui/draw/SwicthView;->doReverse(Z)V

    return-void
.end method

.method private doReverse(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/can/ui/draw/SwicthView;->show()V

    .line 79
    iget-object p1, p0, Lcom/can/ui/draw/SwicthView;->mSVlistener:Lcom/can/ui/draw/SwicthView$OnSVlistener;

    if-eqz p1, :cond_1

    .line 80
    invoke-interface {p1}, Lcom/can/ui/draw/SwicthView$OnSVlistener;->SviewType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/can/ui/draw/SwicthView;->setViewType(I)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/can/ui/draw/SwicthView;->hide()V

    :cond_1
    :goto_0
    return-void
.end method

.method private setViewType(I)V
    .locals 4

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 106
    :goto_0
    iget-object v2, p0, Lcom/can/ui/draw/SwicthView;->mButtons:[Landroid/widget/Button;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    if-ne p1, v1, :cond_0

    .line 108
    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_1

    .line 110
    :cond_0
    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public IsShow()Z
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/can/ui/draw/SwicthView;->mSVPopWind:Lcom/can/ui/draw/PopWind;

    invoke-virtual {p0}, Lcom/can/ui/draw/PopWind;->IsVisable()Z

    move-result p0

    return p0
.end method

.method public hide()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/can/ui/draw/SwicthView;->mSVPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz v0, :cond_0

    .line 100
    iget-object p0, p0, Lcom/can/ui/draw/SwicthView;->mSVLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Lcom/can/ui/draw/PopWind;->hide(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    .line 142
    :goto_0
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/can/ui/draw/SwicthView;->setViewType(I)V

    .line 143
    iget-object p0, p0, Lcom/can/ui/draw/SwicthView;->mSVlistener:Lcom/can/ui/draw/SwicthView$OnSVlistener;

    if-eqz p0, :cond_0

    .line 144
    invoke-interface {p0, v0}, Lcom/can/ui/draw/SwicthView$OnSVlistener;->Sview(I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0801a7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setOnSVlistener(Lcom/can/ui/draw/SwicthView$OnSVlistener;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/can/ui/draw/SwicthView;->mSVlistener:Lcom/can/ui/draw/SwicthView$OnSVlistener;

    return-void
.end method

.method public setSwicthView(Z)V
    .locals 3

    .line 42
    iget-boolean v0, p0, Lcom/can/ui/draw/SwicthView;->mbReverse:Z

    if-eq v0, p1, :cond_2

    .line 43
    iput-boolean p1, p0, Lcom/can/ui/draw/SwicthView;->mbReverse:Z

    .line 45
    iget-object v0, p0, Lcom/can/ui/draw/SwicthView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 46
    iput v1, v0, Landroid/os/Message;->what:I

    .line 47
    iput p1, v0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    .line 50
    iget-object p0, p0, Lcom/can/ui/draw/SwicthView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/can/ui/draw/SwicthView;->mHandler:Landroid/os/Handler;

    iget v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 53
    iget-object p1, p0, Lcom/can/ui/draw/SwicthView;->mHandler:Landroid/os/Handler;

    iget v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 55
    :cond_1
    iget-object p0, p0, Lcom/can/ui/draw/SwicthView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/can/ui/draw/SwicthView;->mSVPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/can/ui/draw/SwicthView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/can/ui/draw/SwicthView;->mSVLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, p0}, Lcom/can/ui/draw/PopWind;->showEx(Landroid/content/Context;Landroid/view/View;)J

    :cond_0
    return-void
.end method
