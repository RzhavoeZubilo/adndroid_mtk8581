.class Lcom/can/platforms/CanPlatforms8581$PfReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CanPlatforms8581.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/platforms/CanPlatforms8581;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PfReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/platforms/CanPlatforms8581;


# direct methods
.method private constructor <init>(Lcom/can/platforms/CanPlatforms8581;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/can/platforms/CanPlatforms8581;Lcom/can/platforms/CanPlatforms8581$1;)V
    .locals 0

    .line 436
    invoke-direct {p0, p1}, Lcom/can/platforms/CanPlatforms8581$PfReceiver;-><init>(Lcom/can/platforms/CanPlatforms8581;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_d

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 445
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.yecon.action.BACKCAR_START"

    .line 447
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 449
    iget-object p1, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p1}, Lcom/can/platforms/CanPlatforms8581;->access$600(Lcom/can/platforms/CanPlatforms8581;)Lcom/can/assist/Platforms$OnGdDataListener;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 450
    iget-object p1, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p1}, Lcom/can/platforms/CanPlatforms8581;->access$600(Lcom/can/platforms/CanPlatforms8581;)Lcom/can/assist/Platforms$OnGdDataListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/can/assist/Platforms$OnGdDataListener;->onReverse(Z)V

    .line 451
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p0}, Lcom/can/platforms/CanPlatforms8581;->access$700(Lcom/can/platforms/CanPlatforms8581;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onReverse ing!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    const-string v0, "com.yecon.action.BACKCAR_STOP"

    .line 453
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 455
    iget-object p1, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p1}, Lcom/can/platforms/CanPlatforms8581;->access$600(Lcom/can/platforms/CanPlatforms8581;)Lcom/can/assist/Platforms$OnGdDataListener;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 456
    iget-object p1, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p1}, Lcom/can/platforms/CanPlatforms8581;->access$600(Lcom/can/platforms/CanPlatforms8581;)Lcom/can/assist/Platforms$OnGdDataListener;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/can/assist/Platforms$OnGdDataListener;->onReverse(Z)V

    .line 457
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p0}, Lcom/can/platforms/CanPlatforms8581;->access$700(Lcom/can/platforms/CanPlatforms8581;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onReverse stop!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    const-string v0, "com.yecon.sourcemanager.source_changed_notify"

    .line 459
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v0, "com.autochips.bluetooth.profilestatechange"

    .line 460
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "com.autochips.bluetooth.hfp_isconnected"

    .line 461
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 462
    iget-object p2, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p2}, Lcom/can/platforms/CanPlatforms8581;->access$600(Lcom/can/platforms/CanPlatforms8581;)Lcom/can/assist/Platforms$OnGdDataListener;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 463
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p0}, Lcom/can/platforms/CanPlatforms8581;->access$600(Lcom/can/platforms/CanPlatforms8581;)Lcom/can/assist/Platforms$OnGdDataListener;

    move-result-object p0

    invoke-interface {p0, v2, p1}, Lcom/can/assist/Platforms$OnGdDataListener;->onBtInfo(II)V

    goto/16 :goto_1

    :cond_4
    const-string v0, "com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_CALL_STATUS_CHANGE"

    .line 465
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_8

    const/4 p1, -0x1

    const-string v0, "com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_CALL_STATUS"

    .line 466
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lt p1, v3, :cond_d

    const/4 p2, 0x5

    if-gt p1, p2, :cond_d

    .line 470
    iget-object v0, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {v0}, Lcom/can/platforms/CanPlatforms8581;->access$800(Lcom/can/platforms/CanPlatforms8581;)I

    move-result v0

    if-eq p1, v0, :cond_d

    .line 471
    iget-object v0, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {v0, p1}, Lcom/can/platforms/CanPlatforms8581;->access$802(Lcom/can/platforms/CanPlatforms8581;I)I

    .line 472
    iget-object p1, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p1}, Lcom/can/platforms/CanPlatforms8581;->access$800(Lcom/can/platforms/CanPlatforms8581;)I

    move-result p1

    const/4 v0, 0x4

    const/4 v2, 0x3

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_7

    if-eq p1, v0, :cond_5

    move v3, v1

    goto :goto_0

    :cond_5
    move v3, v0

    goto :goto_0

    :cond_6
    move v3, v2

    .line 490
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p1}, Lcom/can/platforms/CanPlatforms8581;->access$600(Lcom/can/platforms/CanPlatforms8581;)Lcom/can/assist/Platforms$OnGdDataListener;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 491
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p0}, Lcom/can/platforms/CanPlatforms8581;->access$600(Lcom/can/platforms/CanPlatforms8581;)Lcom/can/assist/Platforms$OnGdDataListener;

    move-result-object p0

    invoke-interface {p0, v1, v3}, Lcom/can/assist/Platforms$OnGdDataListener;->onBtInfo(II)V

    goto/16 :goto_1

    :cond_8
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 495
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 497
    iget-object p1, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p1}, Lcom/can/platforms/CanPlatforms8581;->access$600(Lcom/can/platforms/CanPlatforms8581;)Lcom/can/assist/Platforms$OnGdDataListener;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 499
    iget-object p1, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p1}, Lcom/can/platforms/CanPlatforms8581;->access$400(Lcom/can/platforms/CanPlatforms8581;)I

    move-result p1

    if-eqz p1, :cond_d

    .line 500
    iget-object p1, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p1, v2}, Lcom/can/platforms/CanPlatforms8581;->access$402(Lcom/can/platforms/CanPlatforms8581;I)I

    .line 501
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p0}, Lcom/can/platforms/CanPlatforms8581;->access$600(Lcom/can/platforms/CanPlatforms8581;)Lcom/can/assist/Platforms$OnGdDataListener;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/can/assist/Platforms$OnGdDataListener;->onVolInfo(I)V

    goto :goto_1

    :cond_9
    const-string v0, "com.yecon.action.ACTION_CAN_APP_INFO"

    .line 504
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 505
    iget-object p1, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p1}, Lcom/can/platforms/CanPlatforms8581;->access$600(Lcom/can/platforms/CanPlatforms8581;)Lcom/can/assist/Platforms$OnGdDataListener;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 506
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p0}, Lcom/can/platforms/CanPlatforms8581;->access$600(Lcom/can/platforms/CanPlatforms8581;)Lcom/can/assist/Platforms$OnGdDataListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/can/assist/Platforms$OnGdDataListener;->onAbout()V

    goto :goto_1

    :cond_a
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 508
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 509
    iget-object p1, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p1}, Lcom/can/platforms/CanPlatforms8581;->access$600(Lcom/can/platforms/CanPlatforms8581;)Lcom/can/assist/Platforms$OnGdDataListener;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 510
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p0}, Lcom/can/platforms/CanPlatforms8581;->access$600(Lcom/can/platforms/CanPlatforms8581;)Lcom/can/assist/Platforms$OnGdDataListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/can/assist/Platforms$OnGdDataListener;->onLang()V

    goto :goto_1

    :cond_b
    const-string v0, "com.yecon.can.keys"

    .line 512
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_1

    :cond_c
    const-string v0, "youzi.service.intent.action.ACTION_REVERSE_TRACK"

    .line 513
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "param"

    .line 514
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_d

    .line 515
    array-length p2, p1

    if-lt p2, v3, :cond_d

    .line 516
    aget p2, p1, v2

    if-ne p2, v1, :cond_d

    iget-object p2, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p2}, Lcom/can/platforms/CanPlatforms8581;->access$600(Lcom/can/platforms/CanPlatforms8581;)Lcom/can/assist/Platforms$OnGdDataListener;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 517
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$PfReceiver;->this$0:Lcom/can/platforms/CanPlatforms8581;

    invoke-static {p0}, Lcom/can/platforms/CanPlatforms8581;->access$600(Lcom/can/platforms/CanPlatforms8581;)Lcom/can/assist/Platforms$OnGdDataListener;

    move-result-object p0

    aget p1, p1, v1

    invoke-interface {p0, p1}, Lcom/can/assist/Platforms$OnGdDataListener;->onTrackData(I)V

    :cond_d
    :goto_1
    return-void
.end method
