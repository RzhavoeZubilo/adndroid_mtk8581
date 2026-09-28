.class public Lcom/android/launcher2/popuView/TouchCheckFrameLayout;
.super Landroid/widget/FrameLayout;
.source "TouchCheckFrameLayout.java"


# static fields
.field public static final ACTION_FIVEHAND_TOUCH:Ljava/lang/String; = "action.fivehand.touch"

.field static final DELAY_TIME:I = 0x7d0

.field static final HAND_COUNT:I = 0x3

.field static mTouchPointCount:I


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/android/launcher2/popuView/TouchCheckFrameLayout;->mContext:Landroid/content/Context;

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popuView/TouchCheckFrameLayout;->mHandler:Landroid/os/Handler;

    .line 19
    new-instance v0, Lcom/android/launcher2/popuView/TouchCheckFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/popuView/TouchCheckFrameLayout$1;-><init>(Lcom/android/launcher2/popuView/TouchCheckFrameLayout;)V

    iput-object v0, p0, Lcom/android/launcher2/popuView/TouchCheckFrameLayout;->mRunnable:Ljava/lang/Runnable;

    .line 39
    iput-object p1, p0, Lcom/android/launcher2/popuView/TouchCheckFrameLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 16
    iput-object p2, p0, Lcom/android/launcher2/popuView/TouchCheckFrameLayout;->mContext:Landroid/content/Context;

    .line 18
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/launcher2/popuView/TouchCheckFrameLayout;->mHandler:Landroid/os/Handler;

    .line 19
    new-instance p2, Lcom/android/launcher2/popuView/TouchCheckFrameLayout$1;

    invoke-direct {p2, p0}, Lcom/android/launcher2/popuView/TouchCheckFrameLayout$1;-><init>(Lcom/android/launcher2/popuView/TouchCheckFrameLayout;)V

    iput-object p2, p0, Lcom/android/launcher2/popuView/TouchCheckFrameLayout;->mRunnable:Ljava/lang/Runnable;

    .line 32
    iput-object p1, p0, Lcom/android/launcher2/popuView/TouchCheckFrameLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 16
    iput-object p2, p0, Lcom/android/launcher2/popuView/TouchCheckFrameLayout;->mContext:Landroid/content/Context;

    .line 18
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/launcher2/popuView/TouchCheckFrameLayout;->mHandler:Landroid/os/Handler;

    .line 19
    new-instance p2, Lcom/android/launcher2/popuView/TouchCheckFrameLayout$1;

    invoke-direct {p2, p0}, Lcom/android/launcher2/popuView/TouchCheckFrameLayout$1;-><init>(Lcom/android/launcher2/popuView/TouchCheckFrameLayout;)V

    iput-object p2, p0, Lcom/android/launcher2/popuView/TouchCheckFrameLayout;->mRunnable:Ljava/lang/Runnable;

    .line 46
    iput-object p1, p0, Lcom/android/launcher2/popuView/TouchCheckFrameLayout;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method sendFiveHandMessage()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/launcher2/popuView/TouchCheckFrameLayout;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget v0, Lcom/android/launcher2/popuView/TouchCheckFrameLayout;->mTouchPointCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const-string v0, "liuzhiyuan"

    const-string v1, ".................................onCalibartion"

    .line 55
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/android/launcher2/popuView/TouchCheckFrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher2/uitl/Function;->onCalibartion(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
