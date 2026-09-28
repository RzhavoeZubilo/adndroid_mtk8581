.class public Lcom/can/ui/draw/Door;
.super Ljava/lang/Object;
.source "Door.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field DoorAutoClose:Ljava/lang/Runnable;

.field private isPopup:Z

.field private mContext:Landroid/content/Context;

.field private mDoorFb:Landroid/widget/ImageView;

.field private mDoorLf:Landroid/widget/ImageView;

.field private mDoorLr:Landroid/widget/ImageView;

.field private mDoorRf:Landroid/widget/ImageView;

.field private mDoorRr:Landroid/widget/ImageView;

.field private mDoorTb:Landroid/widget/ImageView;

.field private mDoorView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mPopWind:Lcom/can/ui/draw/PopWind;

.field private mbDoorAutoCloseFlag:Z

.field private mlshowDoorTime:J


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mHandler:Landroid/os/Handler;

    .line 28
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mPopWind:Lcom/can/ui/draw/PopWind;

    .line 29
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorLf:Landroid/widget/ImageView;

    .line 30
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorRf:Landroid/widget/ImageView;

    .line 31
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorLr:Landroid/widget/ImageView;

    .line 32
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorRr:Landroid/widget/ImageView;

    .line 33
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorTb:Landroid/widget/ImageView;

    .line 34
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorFb:Landroid/widget/ImageView;

    .line 35
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorView:Landroid/view/View;

    const-wide/16 v1, 0x0

    .line 36
    iput-wide v1, p0, Lcom/can/ui/draw/Door;->mlshowDoorTime:J

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/can/ui/draw/Door;->mbDoorAutoCloseFlag:Z

    const/4 v2, 0x1

    .line 48
    iput-boolean v2, p0, Lcom/can/ui/draw/Door;->isPopup:Z

    .line 130
    new-instance v2, Lcom/can/ui/draw/Door$1;

    invoke-direct {v2, p0}, Lcom/can/ui/draw/Door$1;-><init>(Lcom/can/ui/draw/Door;)V

    iput-object v2, p0, Lcom/can/ui/draw/Door;->DoorAutoClose:Ljava/lang/Runnable;

    .line 41
    iput-object p2, p0, Lcom/can/ui/draw/Door;->mContext:Landroid/content/Context;

    .line 42
    iput-object p3, p0, Lcom/can/ui/draw/Door;->mHandler:Landroid/os/Handler;

    .line 43
    new-instance p2, Lcom/can/ui/draw/PopWind;

    invoke-direct {p2, v1, v1}, Lcom/can/ui/draw/PopWind;-><init>(II)V

    iput-object p2, p0, Lcom/can/ui/draw/Door;->mPopWind:Lcom/can/ui/draw/PopWind;

    const p2, 0x7f0b004b

    .line 44
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/can/ui/draw/Door;->mDoorView:Landroid/view/View;

    .line 45
    invoke-direct {p0}, Lcom/can/ui/draw/Door;->initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mHandler:Landroid/os/Handler;

    .line 28
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mPopWind:Lcom/can/ui/draw/PopWind;

    .line 29
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorLf:Landroid/widget/ImageView;

    .line 30
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorRf:Landroid/widget/ImageView;

    .line 31
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorLr:Landroid/widget/ImageView;

    .line 32
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorRr:Landroid/widget/ImageView;

    .line 33
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorTb:Landroid/widget/ImageView;

    .line 34
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorFb:Landroid/widget/ImageView;

    .line 35
    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorView:Landroid/view/View;

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/can/ui/draw/Door;->mlshowDoorTime:J

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/can/ui/draw/Door;->mbDoorAutoCloseFlag:Z

    const/4 v1, 0x1

    .line 48
    iput-boolean v1, p0, Lcom/can/ui/draw/Door;->isPopup:Z

    .line 130
    new-instance v1, Lcom/can/ui/draw/Door$1;

    invoke-direct {v1, p0}, Lcom/can/ui/draw/Door$1;-><init>(Lcom/can/ui/draw/Door;)V

    iput-object v1, p0, Lcom/can/ui/draw/Door;->DoorAutoClose:Ljava/lang/Runnable;

    .line 51
    iput-boolean v0, p0, Lcom/can/ui/draw/Door;->isPopup:Z

    .line 52
    iput-object p2, p0, Lcom/can/ui/draw/Door;->mContext:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Lcom/can/ui/draw/Door;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance p2, Lcom/can/ui/draw/PopWind;

    invoke-direct {p2, v0, v0}, Lcom/can/ui/draw/PopWind;-><init>(II)V

    iput-object p2, p0, Lcom/can/ui/draw/Door;->mPopWind:Lcom/can/ui/draw/PopWind;

    .line 55
    iput-object p1, p0, Lcom/can/ui/draw/Door;->mDoorView:Landroid/view/View;

    .line 56
    invoke-direct {p0}, Lcom/can/ui/draw/Door;->initViews()V

    return-void
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

.method static synthetic access$000(Lcom/can/ui/draw/Door;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/can/ui/draw/Door;->mlshowDoorTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/can/ui/draw/Door;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/can/ui/draw/Door;->mbDoorAutoCloseFlag:Z

    return p0
.end method

.method static synthetic access$102(Lcom/can/ui/draw/Door;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/can/ui/draw/Door;->mbDoorAutoCloseFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/can/ui/draw/Door;)Landroid/os/Handler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/can/ui/draw/Door;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getDoorShow(Lcom/can/parser/DDef$BaseInfo;)Z
    .locals 0

    .line 153
    iget-byte p0, p1, Lcom/can/parser/DDef$BaseInfo;->mLeftFrontDoor:B

    if-nez p0, :cond_0

    iget-byte p0, p1, Lcom/can/parser/DDef$BaseInfo;->mRightFrontDoor:B

    if-nez p0, :cond_0

    iget-byte p0, p1, Lcom/can/parser/DDef$BaseInfo;->mLeftBackDoor:B

    if-nez p0, :cond_0

    iget-byte p0, p1, Lcom/can/parser/DDef$BaseInfo;->mRightBackDoor:B

    if-nez p0, :cond_0

    iget-byte p0, p1, Lcom/can/parser/DDef$BaseInfo;->mTailBoxDoor:B

    if-nez p0, :cond_0

    iget-byte p0, p1, Lcom/can/parser/DDef$BaseInfo;->mFrontBoxDoor:B

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private initViews()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorView:Landroid/view/View;

    const v1, 0x7f0804d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorLf:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorView:Landroid/view/View;

    const v1, 0x7f0804e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorRf:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorView:Landroid/view/View;

    const v1, 0x7f0804d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorLr:Landroid/widget/ImageView;

    .line 68
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorView:Landroid/view/View;

    const v1, 0x7f0804e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorRr:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorView:Landroid/view/View;

    const v1, 0x7f0804dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorTb:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorView:Landroid/view/View;

    const v1, 0x7f0804d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/can/ui/draw/Door;->mDoorFb:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public Hide()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz v0, :cond_0

    .line 126
    iget-object p0, p0, Lcom/can/ui/draw/Door;->mDoorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/can/ui/draw/PopWind;->hide(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public IsShow()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/can/ui/draw/Door;->isPopup:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object p0, p0, Lcom/can/ui/draw/Door;->mPopWind:Lcom/can/ui/draw/PopWind;

    invoke-virtual {p0}, Lcom/can/ui/draw/PopWind;->IsVisable()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public initViews(Landroid/view/View;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/can/ui/draw/Door;->mDoorView:Landroid/view/View;

    .line 61
    invoke-direct {p0}, Lcom/can/ui/draw/Door;->initViews()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/can/ui/draw/Door;->IsShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/can/ui/draw/Door;->Hide()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public show(Lcom/can/parser/DDef$BaseInfo;Z)V
    .locals 2

    if-eqz p1, :cond_3

    .line 100
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorLf:Landroid/widget/ImageView;

    iget-byte v1, p1, Lcom/can/parser/DDef$BaseInfo;->mLeftFrontDoor:B

    invoke-direct {p0, v1}, Lcom/can/ui/draw/Door;->GetVisibSate(B)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorRf:Landroid/widget/ImageView;

    iget-byte v1, p1, Lcom/can/parser/DDef$BaseInfo;->mRightFrontDoor:B

    invoke-direct {p0, v1}, Lcom/can/ui/draw/Door;->GetVisibSate(B)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorLr:Landroid/widget/ImageView;

    iget-byte v1, p1, Lcom/can/parser/DDef$BaseInfo;->mLeftBackDoor:B

    invoke-direct {p0, v1}, Lcom/can/ui/draw/Door;->GetVisibSate(B)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorRr:Landroid/widget/ImageView;

    iget-byte v1, p1, Lcom/can/parser/DDef$BaseInfo;->mRightBackDoor:B

    invoke-direct {p0, v1}, Lcom/can/ui/draw/Door;->GetVisibSate(B)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorTb:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 105
    iget-byte v1, p1, Lcom/can/parser/DDef$BaseInfo;->mTailBoxDoor:B

    invoke-direct {p0, v1}, Lcom/can/ui/draw/Door;->GetVisibSate(B)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorFb:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 107
    iget-byte v1, p1, Lcom/can/parser/DDef$BaseInfo;->mFrontBoxDoor:B

    invoke-direct {p0, v1}, Lcom/can/ui/draw/Door;->GetVisibSate(B)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    :cond_1
    iget-boolean v0, p1, Lcom/can/parser/DDef$BaseInfo;->mbDoorValid:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 110
    iget-object p2, p0, Lcom/can/ui/draw/Door;->mPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz p2, :cond_3

    .line 111
    invoke-direct {p0, p1}, Lcom/can/ui/draw/Door;->getDoorShow(Lcom/can/parser/DDef$BaseInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 112
    iget-object p1, p0, Lcom/can/ui/draw/Door;->mPopWind:Lcom/can/ui/draw/PopWind;

    iget-object p2, p0, Lcom/can/ui/draw/Door;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorView:Landroid/view/View;

    invoke-virtual {p1, p2, v0}, Lcom/can/ui/draw/PopWind;->show(Landroid/content/Context;Landroid/view/View;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/can/ui/draw/Door;->mlshowDoorTime:J

    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lcom/can/ui/draw/Door;->mbDoorAutoCloseFlag:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 116
    iput-boolean p1, p0, Lcom/can/ui/draw/Door;->mbDoorAutoCloseFlag:Z

    .line 117
    invoke-virtual {p0}, Lcom/can/ui/draw/Door;->Hide()V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateView(B)V
    .locals 2

    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorView:Landroid/view/View;

    if-eqz v0, :cond_doorview_done

    and-int/lit16 v1, p1, 0xfc

    if-nez v1, :cond_doorview_show

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :cond_doorview_done

    :cond_doorview_show
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_doorview_done
    .line 88
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorLf:Landroid/widget/ImageView;

    shr-int/lit8 v1, p1, 0x7

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-direct {p0, v1}, Lcom/can/ui/draw/Door;->GetVisibSate(B)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorRf:Landroid/widget/ImageView;

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-direct {p0, v1}, Lcom/can/ui/draw/Door;->GetVisibSate(B)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorLr:Landroid/widget/ImageView;

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-direct {p0, v1}, Lcom/can/ui/draw/Door;->GetVisibSate(B)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorRr:Landroid/widget/ImageView;

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-direct {p0, v1}, Lcom/can/ui/draw/Door;->GetVisibSate(B)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorTb:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    shr-int/lit8 v1, p1, 0x3

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    .line 93
    invoke-direct {p0, v1}, Lcom/can/ui/draw/Door;->GetVisibSate(B)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/can/ui/draw/Door;->mDoorFb:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    shr-int/lit8 p1, p1, 0x2

    and-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    .line 95
    invoke-direct {p0, p1}, Lcom/can/ui/draw/Door;->GetVisibSate(B)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
