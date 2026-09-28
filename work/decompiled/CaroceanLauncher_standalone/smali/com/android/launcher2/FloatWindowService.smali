.class public Lcom/android/launcher2/FloatWindowService;
.super Landroid/app/Service;
.source "FloatWindowService.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FloatWindowService"


# instance fields
.field private floatImage:Landroid/widget/Button;

.field private isStarted:Z

.field private ismoving:Z

.field private mTouchStartX:F

.field private mTouchStartY:F

.field m_tiemcheck:J

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private pendingIntent:Landroid/app/PendingIntent;

.field private resumeActivityIntent:Landroid/content/Intent;

.field private rootview:Landroid/view/View;

.field private statusbarHeight:I

.field private wm:Landroid/view/WindowManager;

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/android/launcher2/FloatWindowService;->isStarted:Z

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/android/launcher2/FloatWindowService;->x:F

    .line 43
    iput v1, p0, Lcom/android/launcher2/FloatWindowService;->y:F

    .line 44
    iput v0, p0, Lcom/android/launcher2/FloatWindowService;->statusbarHeight:I

    .line 45
    iput-boolean v0, p0, Lcom/android/launcher2/FloatWindowService;->ismoving:Z

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/FloatWindowService;->m_tiemcheck:J

    .line 110
    new-instance v0, Lcom/android/launcher2/FloatWindowService$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FloatWindowService$1;-><init>(Lcom/android/launcher2/FloatWindowService;)V

    iput-object v0, p0, Lcom/android/launcher2/FloatWindowService;->onTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/FloatWindowService;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/android/launcher2/FloatWindowService;->x:F

    return p1
.end method

.method static synthetic access$1000(Lcom/android/launcher2/FloatWindowService;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/launcher2/FloatWindowService;->saveViewPosition()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher2/FloatWindowService;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/android/launcher2/FloatWindowService;->y:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/launcher2/FloatWindowService;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/android/launcher2/FloatWindowService;->statusbarHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/FloatWindowService;)I
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/launcher2/FloatWindowService;->getStatusBarHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/launcher2/FloatWindowService;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/android/launcher2/FloatWindowService;->ismoving:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/launcher2/FloatWindowService;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/android/launcher2/FloatWindowService;->ismoving:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/launcher2/FloatWindowService;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/android/launcher2/FloatWindowService;->mTouchStartX:F

    return p1
.end method

.method static synthetic access$602(Lcom/android/launcher2/FloatWindowService;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/android/launcher2/FloatWindowService;->mTouchStartY:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/launcher2/FloatWindowService;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/launcher2/FloatWindowService;->updateViewPosition()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/FloatWindowService;)Landroid/widget/Button;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/launcher2/FloatWindowService;->floatImage:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/launcher2/FloatWindowService;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/launcher2/FloatWindowService;->clickToResume()V

    return-void
.end method

.method private clickToResume()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/launcher2/FloatWindowService;->resumeActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FloatWindowService;->startActivity(Landroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/launcher2/FloatWindowService;->stopSelf()V

    return-void
.end method

.method private getStatusBarHeight()I
    .locals 1

    .line 161
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 162
    iget-object p0, p0, Lcom/android/launcher2/FloatWindowService;->rootview:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 163
    iget p0, v0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method private saveViewPosition()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/launcher2/FloatWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.ivicar.avm.fb.x"

    # invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object p0, p0, Lcom/android/launcher2/FloatWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "persist.sys.ivicar.avm.fb.y"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private showFloatWindow()V
    .locals 3

    const-string v0, "window"

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FloatWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/launcher2/FloatWindowService;->wm:Landroid/view/WindowManager;

    .line 86
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FloatWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7da

    .line 87
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 88
    iget-object v0, p0, Lcom/android/launcher2/FloatWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x308

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 91
    iget-object v0, p0, Lcom/android/launcher2/FloatWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 92
    iget-object v0, p0, Lcom/android/launcher2/FloatWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 93
    iget-object v0, p0, Lcom/android/launcher2/FloatWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 94
    iget-object v0, p0, Lcom/android/launcher2/FloatWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "persist.sys.ivicar.avm.fb.x"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 95
    iget-object v0, p0, Lcom/android/launcher2/FloatWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher2/FloatWindowService;->wm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const-string v2, "persist.sys.ivicar.avm.fb.y"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 96
    iget-object v0, p0, Lcom/android/launcher2/FloatWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 97
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FloatWindowService;->rootview:Landroid/view/View;

    const v1, 0x7f080022

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/launcher2/FloatWindowService;->floatImage:Landroid/widget/Button;

    .line 99
    iget-object v1, p0, Lcom/android/launcher2/FloatWindowService;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/launcher2/FloatWindowService;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher2/FloatWindowService;->rootview:Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher2/FloatWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateViewPosition()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/launcher2/FloatWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/launcher2/FloatWindowService;->x:F

    iget v2, p0, Lcom/android/launcher2/FloatWindowService;->mTouchStartX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 151
    iget-object v0, p0, Lcom/android/launcher2/FloatWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/launcher2/FloatWindowService;->y:F

    iget v2, p0, Lcom/android/launcher2/FloatWindowService;->mTouchStartY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/launcher2/FloatWindowService;->statusbarHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 152
    iget-object v0, p0, Lcom/android/launcher2/FloatWindowService;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher2/FloatWindowService;->rootview:Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher2/FloatWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 105
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 106
    sget-object v0, Lcom/android/launcher2/FloatWindowService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/launcher2/FloatWindowService;->wm:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/launcher2/FloatWindowService;->rootview:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 55
    sget-object p1, Lcom/android/launcher2/FloatWindowService;->TAG:Ljava/lang/String;

    const-string p2, "onStartCommand"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-boolean p1, p0, Lcom/android/launcher2/FloatWindowService;->isStarted:Z

    const/4 p2, 0x2

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/android/launcher2/FloatWindowService;->isStarted:Z

    .line 61
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    iput-object p3, p0, Lcom/android/launcher2/FloatWindowService;->resumeActivityIntent:Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    .line 62
    invoke-virtual {p3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    iget-object p3, p0, Lcom/android/launcher2/FloatWindowService;->resumeActivityIntent:Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.ivicar.avm"

    const-string v2, "com.ivicar.modules.main.view.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 64
    iget-object p3, p0, Lcom/android/launcher2/FloatWindowService;->resumeActivityIntent:Landroid/content/Intent;

    const/high16 v0, 0x10200000

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    iget-object p3, p0, Lcom/android/launcher2/FloatWindowService;->resumeActivityIntent:Landroid/content/Intent;

    const/high16 v0, 0x8000000

    const/4 v2, 0x0

    invoke-static {p0, v2, p3, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    iput-object p3, p0, Lcom/android/launcher2/FloatWindowService;->pendingIntent:Landroid/app/PendingIntent;

    .line 70
    new-instance p3, Landroid/app/NotificationChannel;

    const-string v0, "ivicaravm"

    invoke-direct {p3, v1, v0, p2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const v0, -0xffff01

    .line 71
    invoke-virtual {p3, v0}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 72
    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string v0, "notification"

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/launcher2/FloatWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 74
    invoke-virtual {v0, p3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 75
    new-instance p3, Landroid/app/Notification$Builder;

    invoke-direct {p3, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/android/launcher2/FloatWindowService;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 79
    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher2/FloatWindowService;->startForeground(ILandroid/app/Notification;)V

    .line 80
    invoke-direct {p0}, Lcom/android/launcher2/FloatWindowService;->showFloatWindow()V

    return p2
.end method
