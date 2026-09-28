.class public Lcom/can/ui/draw/TouchLayout;
.super Landroid/widget/FrameLayout;
.source "TouchLayout.java"

# interfaces
.implements Lcom/can/assist/CanContant;
.implements Lcom/can/ui/draw/Rgb$OnRGBlistener;


# static fields
.field public static final ACTION_FIVEHAND_TOUCH:Ljava/lang/String; = "action.fivehand.touch"

.field public static final DELAY_TIME:I = 0x1f4

.field public static final HAND_COUNT:I = 0x2

.field public static final PERSYS_BACKCAR_CAMERA_TYPE:Ljava/lang/String; = "persist.sys.bc_camera_type"

.field public static mTouchPointCount:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRgbPopWind:Lcom/can/ui/draw/PopWind;

.field private mRgbsetView:Lcom/can/ui/draw/Rgb;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/can/ui/draw/TouchLayout;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/can/ui/draw/TouchLayout;->mRgbsetView:Lcom/can/ui/draw/Rgb;

    .line 27
    iput-object v0, p0, Lcom/can/ui/draw/TouchLayout;->mRgbPopWind:Lcom/can/ui/draw/PopWind;

    .line 37
    iput-object p1, p0, Lcom/can/ui/draw/TouchLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 25
    iput-object p2, p0, Lcom/can/ui/draw/TouchLayout;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/can/ui/draw/TouchLayout;->mRgbsetView:Lcom/can/ui/draw/Rgb;

    .line 27
    iput-object p2, p0, Lcom/can/ui/draw/TouchLayout;->mRgbPopWind:Lcom/can/ui/draw/PopWind;

    .line 43
    iput-object p1, p0, Lcom/can/ui/draw/TouchLayout;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b00c0

    .line 45
    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/can/ui/draw/Rgb;

    iput-object p1, p0, Lcom/can/ui/draw/TouchLayout;->mRgbsetView:Lcom/can/ui/draw/Rgb;

    .line 46
    new-instance p1, Lcom/can/ui/draw/PopWind;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/can/ui/draw/PopWind;-><init>(II)V

    iput-object p1, p0, Lcom/can/ui/draw/TouchLayout;->mRgbPopWind:Lcom/can/ui/draw/PopWind;

    .line 47
    iget-object p1, p0, Lcom/can/ui/draw/TouchLayout;->mRgbsetView:Lcom/can/ui/draw/Rgb;

    invoke-virtual {p1, p0}, Lcom/can/ui/draw/Rgb;->setRGBlistener(Lcom/can/ui/draw/Rgb$OnRGBlistener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 25
    iput-object p2, p0, Lcom/can/ui/draw/TouchLayout;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/can/ui/draw/TouchLayout;->mRgbsetView:Lcom/can/ui/draw/Rgb;

    .line 27
    iput-object p2, p0, Lcom/can/ui/draw/TouchLayout;->mRgbPopWind:Lcom/can/ui/draw/PopWind;

    .line 53
    iput-object p1, p0, Lcom/can/ui/draw/TouchLayout;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public IsRGBShow()Z
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/can/ui/draw/TouchLayout;->mRgbPopWind:Lcom/can/ui/draw/PopWind;

    invoke-virtual {p0}, Lcom/can/ui/draw/PopWind;->IsVisable()Z

    move-result p0

    return p0
.end method

.method public OverReverse()V
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/can/ui/draw/TouchLayout;->IsRGBShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/can/ui/draw/TouchLayout;->hideRGB()V

    :cond_0
    return-void
.end method

.method public hideRGB()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/can/ui/draw/TouchLayout;->mRgbPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz v0, :cond_0

    .line 96
    iget-object p0, p0, Lcom/can/ui/draw/TouchLayout;->mRgbsetView:Lcom/can/ui/draw/Rgb;

    invoke-virtual {v0, p0}, Lcom/can/ui/draw/PopWind;->hide(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    sput p1, Lcom/can/ui/draw/TouchLayout;->mTouchPointCount:I

    const/4 v1, 0x2

    if-lt p1, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/can/ui/draw/TouchLayout;->showRGB()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onShow(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/can/ui/draw/TouchLayout;->showRGB()V

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/can/ui/draw/TouchLayout;->hideRGB()V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    sput p1, Lcom/can/ui/draw/TouchLayout;->mTouchPointCount:I

    const/4 v1, 0x2

    if-lt p1, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/can/ui/draw/TouchLayout;->showRGB()V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public showRGB()V
    .locals 2

    const-string v0, "persist.sys.bc_camera_type"

    const/4 v1, 0x0

    .line 83
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/can/ui/draw/TouchLayout;->mRgbPopWind:Lcom/can/ui/draw/PopWind;

    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/can/ui/draw/TouchLayout;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/can/ui/draw/TouchLayout;->mRgbsetView:Lcom/can/ui/draw/Rgb;

    invoke-virtual {v0, v1, p0}, Lcom/can/ui/draw/PopWind;->showEx(Landroid/content/Context;Landroid/view/View;)J

    :cond_0
    return-void
.end method
