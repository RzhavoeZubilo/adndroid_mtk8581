.class public Lcom/can/ui/draw/AvmSet;
.super Ljava/lang/Object;
.source "AvmSet.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/ui/draw/AvmSet$OnAvmlistener;
    }
.end annotation


# instance fields
.field AutoClose:Ljava/lang/Runnable;

.field private mAvmInfo:Lcom/can/parser/DDef$AvmInfo;

.field private mAvmlistener:Lcom/can/ui/draw/AvmSet$OnAvmlistener;

.field private mCheckBoxId:[I

.field private mCheckBoxs:[Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLayout2:Landroid/widget/LinearLayout;

.field private mPopWind:Lcom/can/ui/draw/PopWind;

.field private mbAutoCloseFlag:Z

.field private mlayout:Landroid/widget/RelativeLayout;

.field private mlshowAboutTime:J


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/can/ui/draw/AvmSet;->mContext:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/can/ui/draw/AvmSet;->mPopWind:Lcom/can/ui/draw/PopWind;

    .line 25
    iput-object v0, p0, Lcom/can/ui/draw/AvmSet;->mHandler:Landroid/os/Handler;

    .line 26
    iput-object v0, p0, Lcom/can/ui/draw/AvmSet;->mlayout:Landroid/widget/RelativeLayout;

    .line 27
    iput-object v0, p0, Lcom/can/ui/draw/AvmSet;->mLayout2:Landroid/widget/LinearLayout;

    const-wide/16 v1, 0x0

    .line 28
    iput-wide v1, p0, Lcom/can/ui/draw/AvmSet;->mlshowAboutTime:J

    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lcom/can/ui/draw/AvmSet;->mbAutoCloseFlag:Z

    .line 30
    iput-object v0, p0, Lcom/can/ui/draw/AvmSet;->mAvmlistener:Lcom/can/ui/draw/AvmSet$OnAvmlistener;

    .line 31
    iput-object v0, p0, Lcom/can/ui/draw/AvmSet;->mAvmInfo:Lcom/can/parser/DDef$AvmInfo;

    const/4 v2, 0x7

    new-array v2, v2, [I

    .line 33
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxId:[I

    .line 42
    array-length v2, v2

    new-array v2, v2, [Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxs:[Landroid/widget/CheckBox;

    .line 81
    new-instance v2, Lcom/can/ui/draw/AvmSet$1;

    invoke-direct {v2, p0}, Lcom/can/ui/draw/AvmSet$1;-><init>(Lcom/can/ui/draw/AvmSet;)V

    iput-object v2, p0, Lcom/can/ui/draw/AvmSet;->AutoClose:Ljava/lang/Runnable;

    .line 46
    iput-object p2, p0, Lcom/can/ui/draw/AvmSet;->mContext:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/can/ui/draw/AvmSet;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance p2, Lcom/can/ui/draw/PopWind;

    invoke-direct {p2, v1, v1}, Lcom/can/ui/draw/PopWind;-><init>(II)V

    iput-object p2, p0, Lcom/can/ui/draw/AvmSet;->mPopWind:Lcom/can/ui/draw/PopWind;

    const p2, 0x7f0b0026

    .line 49
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/can/ui/draw/AvmSet;->mlayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f080572

    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/can/ui/draw/AvmSet;->mLayout2:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 53
    :goto_0
    iget-object p1, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxId:[I

    array-length p2, p1

    if-ge v1, p2, :cond_0

    .line 54
    iget-object p2, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxs:[Landroid/widget/CheckBox;

    iget-object p3, p0, Lcom/can/ui/draw/AvmSet;->mLayout2:Landroid/widget/LinearLayout;

    aget p1, p1, v1

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    aput-object p1, p2, v1

    .line 55
    iget-object p1, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxs:[Landroid/widget/CheckBox;

    aget-object p1, p1, v1

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/can/ui/draw/AvmSet;->mlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    iget-object p1, p0, Lcom/can/ui/draw/AvmSet;->mlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void

    :array_0
    .array-data 4
        0x7f08005a
        0x7f08005b
        0x7f08005c
        0x7f08005d
        0x7f08005e
        0x7f08005f
        0x7f080060
    .end array-data
.end method

.method static synthetic access$000(Lcom/can/ui/draw/AvmSet;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/can/ui/draw/AvmSet;->mlshowAboutTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/can/ui/draw/AvmSet;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/can/ui/draw/AvmSet;->mbAutoCloseFlag:Z

    return p0
.end method

.method static synthetic access$102(Lcom/can/ui/draw/AvmSet;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/can/ui/draw/AvmSet;->mbAutoCloseFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/can/ui/draw/AvmSet;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/can/ui/draw/AvmSet;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private sendData(II)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/can/ui/draw/AvmSet;->mAvmlistener:Lcom/can/ui/draw/AvmSet$OnAvmlistener;

    if-eqz p0, :cond_0

    .line 156
    invoke-interface {p0, p1, p2}, Lcom/can/ui/draw/AvmSet$OnAvmlistener;->sendData(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public IsShow()Z
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/can/ui/draw/AvmSet;->mPopWind:Lcom/can/ui/draw/PopWind;

    invoke-virtual {p0}, Lcom/can/ui/draw/PopWind;->IsVisable()Z

    move-result p0

    return p0
.end method

.method public hide()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/can/ui/draw/AvmSet;->mPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz v0, :cond_0

    .line 73
    iget-object p0, p0, Lcom/can/ui/draw/AvmSet;->mlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Lcom/can/ui/draw/PopWind;->hide(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x6

    const/4 v2, 0x3

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x7

    .line 147
    iget-object v0, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxs:[Landroid/widget/CheckBox;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/can/ui/draw/AvmSet;->sendData(II)V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object p1, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxs:[Landroid/widget/CheckBox;

    const/4 v0, 0x5

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/can/ui/draw/AvmSet;->sendData(II)V

    goto :goto_0

    .line 141
    :pswitch_2
    iget-object p1, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxs:[Landroid/widget/CheckBox;

    const/4 v1, 0x4

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/can/ui/draw/AvmSet;->sendData(II)V

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x8

    .line 138
    iget-object v0, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxs:[Landroid/widget/CheckBox;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/can/ui/draw/AvmSet;->sendData(II)V

    goto :goto_0

    .line 135
    :pswitch_4
    iget-object p1, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxs:[Landroid/widget/CheckBox;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/can/ui/draw/AvmSet;->sendData(II)V

    goto :goto_0

    .line 132
    :pswitch_5
    iget-object p1, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxs:[Landroid/widget/CheckBox;

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/can/ui/draw/AvmSet;->sendData(II)V

    goto :goto_0

    .line 129
    :pswitch_6
    iget-object p1, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxs:[Landroid/widget/CheckBox;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/can/ui/draw/AvmSet;->sendData(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f08005a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/can/ui/draw/AvmSet;->hide()V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 100
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 101
    iget-object v0, p0, Lcom/can/ui/draw/AvmSet;->mLayout2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/can/ui/draw/AvmSet;->hide()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAvmInfo(Lcom/can/parser/DDef$AvmInfo;)V
    .locals 3

    .line 165
    iput-object p1, p0, Lcom/can/ui/draw/AvmSet;->mAvmInfo:Lcom/can/parser/DDef$AvmInfo;

    if-eqz p1, :cond_7

    .line 166
    iget-object v0, p0, Lcom/can/ui/draw/AvmSet;->mLayout2:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    .line 167
    iget-object v0, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxs:[Landroid/widget/CheckBox;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-byte p1, p1, Lcom/can/parser/DDef$AvmInfo;->mIntelligent:B

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 168
    iget-object p1, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxs:[Landroid/widget/CheckBox;

    aget-object p1, p1, v2

    iget-object v0, p0, Lcom/can/ui/draw/AvmSet;->mAvmInfo:Lcom/can/parser/DDef$AvmInfo;

    iget-byte v0, v0, Lcom/can/parser/DDef$AvmInfo;->mLogo:B

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 169
    iget-object p1, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxs:[Landroid/widget/CheckBox;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/can/ui/draw/AvmSet;->mAvmInfo:Lcom/can/parser/DDef$AvmInfo;

    iget-byte v0, v0, Lcom/can/parser/DDef$AvmInfo;->mRightTrigger:B

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 170
    iget-object p1, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxs:[Landroid/widget/CheckBox;

    const/4 v0, 0x3

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/can/ui/draw/AvmSet;->mAvmInfo:Lcom/can/parser/DDef$AvmInfo;

    iget-byte v0, v0, Lcom/can/parser/DDef$AvmInfo;->mFoward:B

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    iget-object p1, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxs:[Landroid/widget/CheckBox;

    const/4 v0, 0x4

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/can/ui/draw/AvmSet;->mAvmInfo:Lcom/can/parser/DDef$AvmInfo;

    iget-byte v0, v0, Lcom/can/parser/DDef$AvmInfo;->mFirstStart:B

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 172
    iget-object p1, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxs:[Landroid/widget/CheckBox;

    const/4 v0, 0x5

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/can/ui/draw/AvmSet;->mAvmInfo:Lcom/can/parser/DDef$AvmInfo;

    iget-byte v0, v0, Lcom/can/parser/DDef$AvmInfo;->mLeftTrigger:B

    if-ne v0, v2, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 173
    iget-object p1, p0, Lcom/can/ui/draw/AvmSet;->mCheckBoxs:[Landroid/widget/CheckBox;

    const/4 v0, 0x6

    aget-object p1, p1, v0

    iget-object p0, p0, Lcom/can/ui/draw/AvmSet;->mAvmInfo:Lcom/can/parser/DDef$AvmInfo;

    iget-byte p0, p0, Lcom/can/parser/DDef$AvmInfo;->mWheelTrigger:B

    if-ne p0, v2, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_7
    return-void
.end method

.method public setListener(Lcom/can/ui/draw/AvmSet$OnAvmlistener;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/can/ui/draw/AvmSet;->mAvmlistener:Lcom/can/ui/draw/AvmSet$OnAvmlistener;

    return-void
.end method

.method public show()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/can/ui/draw/AvmSet;->mPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/can/ui/draw/AvmSet;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/can/ui/draw/AvmSet;->mlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Lcom/can/ui/draw/PopWind;->showEx(Landroid/content/Context;Landroid/view/View;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/can/ui/draw/AvmSet;->mlshowAboutTime:J

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/can/ui/draw/AvmSet;->mbAutoCloseFlag:Z

    :cond_0
    return-void
.end method
