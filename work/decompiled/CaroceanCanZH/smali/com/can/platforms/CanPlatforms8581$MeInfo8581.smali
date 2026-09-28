.class Lcom/can/platforms/CanPlatforms8581$MeInfo8581;
.super Ljava/lang/Object;
.source "CanPlatforms8581.java"

# interfaces
.implements Lcom/can/assist/Platforms$MediaInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/platforms/CanPlatforms8581;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeInfo8581"
.end annotation


# instance fields
.field private mbAccPowerStatus:Z

.field final synthetic this$0:Lcom/can/platforms/CanPlatforms8581;


# direct methods
.method private constructor <init>(Lcom/can/platforms/CanPlatforms8581;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 192
    iput-boolean p1, p0, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->mbAccPowerStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/can/platforms/CanPlatforms8581;Lcom/can/platforms/CanPlatforms8581$1;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1}, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;-><init>(Lcom/can/platforms/CanPlatforms8581;)V

    return-void
.end method

.method private getCurrentStreamType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method public PanoramicVideo(Z)V
    .locals 1

    .line 420
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "show_360_video"

    goto :goto_0

    :cond_0
    const-string p1, "close_360_video"

    .line 421
    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p0}, Lcom/can/platforms/CanPlatforms8581;->access$200(Lcom/can/platforms/CanPlatforms8581;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public RightVideo(Z)V
    .locals 0

    return-void
.end method

.method public TranslateSource(I)I
    .locals 8

    .line 333
    invoke-virtual {p0}, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->getPhonestate()I

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0xff

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eq v0, v7, :cond_1

    invoke-virtual {p0}, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->getPhonestate()I

    move-result v0

    if-eq v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->getPhonestate()I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v1, v2

    goto :goto_1

    :pswitch_1
    const/16 v1, 0xb

    goto :goto_1

    :pswitch_2
    const/16 v1, 0xa

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x9

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x7

    goto :goto_1

    :pswitch_5
    const/4 v1, 0x6

    goto :goto_1

    :pswitch_6
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_7
    move v1, v3

    goto :goto_1

    :pswitch_8
    move v1, v4

    goto :goto_1

    :pswitch_9
    move v1, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v5

    :goto_1
    :pswitch_a
    if-eq v1, v5, :cond_2

    .line 382
    iget-object p1, p0, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p1, v1}, Lcom/can/platforms/CanPlatforms8581;->access$502(Lcom/can/platforms/CanPlatforms8581;I)I

    .line 385
    :cond_2
    invoke-virtual {p0}, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->getAccPowerStatus()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public checkVol()Z
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {v0}, Lcom/can/platforms/CanPlatforms8581;->access$300(Lcom/can/platforms/CanPlatforms8581;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->getCurrentStreamType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 317
    iget-object v1, p0, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {v1}, Lcom/can/platforms/CanPlatforms8581;->access$400(Lcom/can/platforms/CanPlatforms8581;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 318
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p0, v0}, Lcom/can/platforms/CanPlatforms8581;->access$402(Lcom/can/platforms/CanPlatforms8581;I)I

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAccPowerStatus()Z
    .locals 0

    .line 432
    iget-boolean p0, p0, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->mbAccPowerStatus:Z

    return p0
.end method

.method public getAssistFun(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    .line 414
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getBand()B
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurTrack()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getFreqIndex()B
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getID3Album()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getID3Author()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getID3Title()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getMainFreq()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMute(I)Z
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p0}, Lcom/can/platforms/CanPlatforms8581;->access$300(Lcom/can/platforms/CanPlatforms8581;)Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0
.end method

.method public getPhoneConnects()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getPhonestate()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPlayTime()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSource()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getTimeInfo()Lcom/can/parser/DDef$TimeInfo;
    .locals 4

    .line 276
    new-instance v0, Lcom/can/parser/DDef$TimeInfo;

    invoke-direct {v0}, Lcom/can/parser/DDef$TimeInfo;-><init>()V

    const/4 v1, 0x0

    .line 277
    iput-byte v1, v0, Lcom/can/parser/DDef$TimeInfo;->by24Mode:B

    .line 279
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p0}, Lcom/can/platforms/CanPlatforms8581;->access$200(Lcom/can/platforms/CanPlatforms8581;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 280
    iput-byte v1, v0, Lcom/can/parser/DDef$TimeInfo;->by24Mode:B

    .line 282
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 283
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iput v2, v0, Lcom/can/parser/DDef$TimeInfo;->iYear:I

    const/4 v2, 0x2

    .line 284
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    int-to-byte v2, v2

    iput-byte v2, v0, Lcom/can/parser/DDef$TimeInfo;->byMonth:B

    const/4 v2, 0x5

    .line 285
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v0, Lcom/can/parser/DDef$TimeInfo;->byDay:B

    const/16 v2, 0xa

    .line 286
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v0, Lcom/can/parser/DDef$TimeInfo;->byHour:B

    const/16 v2, 0x9

    .line 287
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-byte v2, v2

    iput-byte v2, v0, Lcom/can/parser/DDef$TimeInfo;->byAmPm:B

    .line 288
    iget-byte v2, v0, Lcom/can/parser/DDef$TimeInfo;->by24Mode:B

    const/16 v3, 0xc

    if-ne v2, v1, :cond_1

    iget-byte v2, v0, Lcom/can/parser/DDef$TimeInfo;->byAmPm:B

    if-ne v2, v1, :cond_1

    .line 289
    iget-byte v1, v0, Lcom/can/parser/DDef$TimeInfo;->byHour:B

    add-int/2addr v1, v3

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/can/parser/DDef$TimeInfo;->byHour:B

    goto :goto_0

    .line 290
    :cond_1
    iget-byte v1, v0, Lcom/can/parser/DDef$TimeInfo;->by24Mode:B

    if-nez v1, :cond_2

    iget-byte v1, v0, Lcom/can/parser/DDef$TimeInfo;->byHour:B

    if-nez v1, :cond_2

    .line 291
    iput-byte v3, v0, Lcom/can/parser/DDef$TimeInfo;->byHour:B

    .line 293
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/can/parser/DDef$TimeInfo;->byMinute:B

    const/16 v1, 0xd

    .line 294
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-byte p0, p0

    iput-byte p0, v0, Lcom/can/parser/DDef$TimeInfo;->bySecond:B

    return-object v0
.end method

.method public getTotalTrack()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getVol()I
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {v0}, Lcom/can/platforms/CanPlatforms8581;->access$300(Lcom/can/platforms/CanPlatforms8581;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->getCurrentStreamType()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method public isBackgroundRunning(Ljava/lang/String;)Z
    .locals 2

    .line 392
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p0}, Lcom/can/platforms/CanPlatforms8581;->access$200(Lcom/can/platforms/CanPlatforms8581;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 393
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 394
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 395
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 396
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setAccPowerStatus(Z)V
    .locals 0

    .line 427
    iput-boolean p1, p0, Lcom/can/platforms/CanPlatforms8581$MeInfo8581;->mbAccPowerStatus:Z

    return-void
.end method
