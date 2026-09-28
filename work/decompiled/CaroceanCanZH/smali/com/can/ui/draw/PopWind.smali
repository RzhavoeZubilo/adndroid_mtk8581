.class public Lcom/can/ui/draw/PopWind;
.super Ljava/lang/Object;
.source "PopWind.java"


# instance fields
.field private mHeight:I

.field private mObject:[B

.field private mWidth:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mbshow:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/can/ui/draw/PopWind;->mWidth:I

    .line 23
    iput v0, p0, Lcom/can/ui/draw/PopWind;->mHeight:I

    .line 24
    iput-boolean v0, p0, Lcom/can/ui/draw/PopWind;->mbshow:Z

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/can/ui/draw/PopWind;->mWindowManager:Landroid/view/WindowManager;

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 26
    iput-object v0, p0, Lcom/can/ui/draw/PopWind;->mObject:[B

    .line 30
    iput p1, p0, Lcom/can/ui/draw/PopWind;->mWidth:I

    .line 31
    iput p2, p0, Lcom/can/ui/draw/PopWind;->mHeight:I

    return-void
.end method


# virtual methods
.method public IsVisable()Z
    .locals 0

    .line 150
    iget-boolean p0, p0, Lcom/can/ui/draw/PopWind;->mbshow:Z

    return p0
.end method

.method public hide(Landroid/view/View;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/can/ui/draw/PopWind;->mObject:[B

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 132
    :try_start_0
    iget-boolean v1, p0, Lcom/can/ui/draw/PopWind;->mbshow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 133
    iput-boolean v1, p0, Lcom/can/ui/draw/PopWind;->mbshow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    iget-object p0, p0, Lcom/can/ui/draw/PopWind;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 137
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public show(Landroid/content/Context;Landroid/view/View;)J
    .locals 1

    const/16 v0, 0x11

    .line 41
    invoke-virtual {p0, p1, p2, v0}, Lcom/can/ui/draw/PopWind;->show(Landroid/content/Context;Landroid/view/View;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public show(Landroid/content/Context;Landroid/view/View;I)J
    .locals 4

    .line 44
    iget-boolean v0, p0, Lcom/can/ui/draw/PopWind;->mbshow:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-string v0, "window"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/can/ui/draw/PopWind;->mWindowManager:Landroid/view/WindowManager;

    .line 48
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v0, 0x7da

    .line 49
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const v0, 0x20728

    .line 59
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, -0x3

    .line 61
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 65
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 66
    iget-object v2, p0, Lcom/can/ui/draw/PopWind;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 67
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/can/ui/draw/PopWind;->mWidth:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 68
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, p0, Lcom/can/ui/draw/PopWind;->mHeight:I

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 69
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 70
    iget-object p3, p0, Lcom/can/ui/draw/PopWind;->mObject:[B

    monitor-enter p3

    .line 71
    :try_start_0
    iget-boolean v0, p0, Lcom/can/ui/draw/PopWind;->mbshow:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 72
    iput-boolean v1, p0, Lcom/can/ui/draw/PopWind;->mbshow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :try_start_1
    iget-object p0, p0, Lcom/can/ui/draw/PopWind;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, p2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 76
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    :cond_1
    :goto_0
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 79
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public showEx(Landroid/content/Context;Landroid/view/View;)J
    .locals 4

    .line 91
    iget-boolean v0, p0, Lcom/can/ui/draw/PopWind;->mbshow:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-string v0, "window"

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/can/ui/draw/PopWind;->mWindowManager:Landroid/view/WindowManager;

    .line 95
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v0, 0x7da

    .line 96
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const v0, 0x20720

    .line 104
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, -0x3

    .line 105
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 106
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 107
    iget-object v2, p0, Lcom/can/ui/draw/PopWind;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 108
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/can/ui/draw/PopWind;->mWidth:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 109
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, p0, Lcom/can/ui/draw/PopWind;->mHeight:I

    sub-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    .line 110
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 111
    iget-object v0, p0, Lcom/can/ui/draw/PopWind;->mObject:[B

    monitor-enter v0

    .line 112
    :try_start_0
    iget-boolean v2, p0, Lcom/can/ui/draw/PopWind;->mbshow:Z

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 113
    iput-boolean v1, p0, Lcom/can/ui/draw/PopWind;->mbshow:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    iget-object p0, p0, Lcom/can/ui/draw/PopWind;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, p2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 117
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 120
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
