.class Lcom/autochips/bluetooth/music/module/BTMusicService$5;
.super Landroid/content/BroadcastReceiver;
.source "BTMusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/music/module/BTMusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 612
    const-class v0, Lcom/autochips/bluetooth/music/module/BTMusicService;

    return-void
.end method

.method constructor <init>(Lcom/autochips/bluetooth/music/module/BTMusicService;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 615
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 617
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastReceiver action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTMusicService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v0, v7

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "navi.intent.action.ACTION_MCU_KEY_COMMAND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "navi.intent.action.ACTION_BLUETOOTH_MUSIC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "net.easyconn.link.in"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.action.ACTION_PLAYBACK_DATA_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "net.easyconn.iphone.resume"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v2, "net.easyconn.a2dp.acquire"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v2, "com.zjinnova.zlink"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_1

    :sswitch_8
    const-string v2, "net.easyconn.link.out"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v0, v4

    goto :goto_1

    :sswitch_9
    const-string v2, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.action.ACTION_MEDIA_DATA_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    move v0, v5

    goto :goto_1

    :sswitch_a
    const-string v2, "net.easyconn.app.quit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    move v0, v6

    goto :goto_1

    :sswitch_b
    const-string v2, "net.easyconn.audiofocus.music.status"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    move v0, v9

    goto :goto_1

    :sswitch_c
    const-string v2, "net.easyconn.bt.checkstatus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    move v0, v8

    :goto_1
    const-string v2, "status"

    const-string v10, "SYS_SOURCE_ID"

    const-string v11, "content://com.carocean.status.provider/sys"

    const/16 v12, 0xf

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 789
    :pswitch_0
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    const-string v0, "MCU_KEY_VALUE"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$2300(Lcom/autochips/bluetooth/music/module/BTMusicService;I)V

    .line 791
    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 792
    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {v11, p2, v10, v7}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_MCU_KEY_COMMAND keyValue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_6

    :pswitch_1
    if-ne p2, v9, :cond_27

    .line 802
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$2100(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    goto/16 :goto_6

    :pswitch_2
    if-ne p2, v9, :cond_27

    .line 797
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$2000(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    goto/16 :goto_6

    :pswitch_3
    if-ne p2, v9, :cond_27

    .line 807
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1800(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    goto/16 :goto_6

    :pswitch_4
    if-ne p2, v9, :cond_27

    .line 812
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1700(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    goto/16 :goto_6

    :pswitch_5
    const-string p1, "CMD_CODE"

    .line 727
    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 728
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "broadcastReceiver cmdCode="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {p2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {v11, p2, v10, v7}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_6

    .line 749
    :pswitch_6
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$2000(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    goto/16 :goto_6

    .line 752
    :pswitch_7
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$2100(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    goto/16 :goto_6

    :pswitch_8
    if-ne p2, v9, :cond_27

    .line 745
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1900(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    goto/16 :goto_6

    :pswitch_9
    if-ne p2, v9, :cond_27

    .line 781
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget p2, p1, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    if-ne p2, v12, :cond_e

    move v5, v6

    :cond_e
    iput v5, p1, Lcom/autochips/bluetooth/music/module/BTMusicService;->currentControlPlayState:I

    .line 782
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$2200(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    goto/16 :goto_6

    :pswitch_a
    if-ne p2, v9, :cond_27

    .line 733
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iput v6, p1, Lcom/autochips/bluetooth/music/module/BTMusicService;->currentControlPlayState:I

    .line 734
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1700(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    goto/16 :goto_6

    :pswitch_b
    if-ne p2, v9, :cond_27

    .line 739
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iput v5, p1, Lcom/autochips/bluetooth/music/module/BTMusicService;->currentControlPlayState:I

    .line 740
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1800(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    goto/16 :goto_6

    .line 764
    :pswitch_c
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1900(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    goto/16 :goto_6

    :pswitch_d
    const-string p1, "broadcastReceiver start source"

    .line 770
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "com.autochips.bluetooth"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "background"

    .line 773
    invoke-virtual {p1, p2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "BTFragmentId"

    .line 774
    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 775
    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->startActivity(Landroid/content/Intent;)V

    .line 776
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    goto/16 :goto_6

    :pswitch_e
    const-string p1, "broadcastReceiver start source background"

    .line 757
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    goto/16 :goto_6

    :pswitch_f
    const-string p1, "EASTCONN_LINK_IN_ACTION status:"

    .line 819
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_10
    const-string p1, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.PLAYBACK_STATUS"

    .line 630
    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 631
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    const-string v2, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_POSITION"

    const-string v3, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_LENGTH"

    if-eq v0, v7, :cond_11

    if-eqz p1, :cond_10

    if-eq p1, v9, :cond_f

    if-eq p1, v6, :cond_10

    goto :goto_2

    .line 635
    :cond_f
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v0

    const-class v1, Lcom/autochips/bluetooth/music/module/FragmentMusic;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    goto :goto_2

    .line 640
    :cond_10
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object v0

    const-class v1, Lcom/autochips/bluetooth/music/module/FragmentMusic;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    .line 643
    :goto_2
    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 644
    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 645
    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {v1, v0, p2, p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$500(Lcom/autochips/bluetooth/music/module/BTMusicService;III)V

    goto/16 :goto_6

    .line 646
    :cond_11
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$600(Lcom/autochips/bluetooth/music/module/BTMusicService;)I

    move-result v0

    if-eqz v0, :cond_12

    if-ne p1, v9, :cond_12

    const-string p1, "eastA2dpConnStatus"

    .line 647
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$700(Lcom/autochips/bluetooth/music/module/BTMusicService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget-object p2, p2, Lcom/autochips/bluetooth/music/module/BTMusicService;->delayEasyconnRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 649
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$800(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    .line 650
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$700(Lcom/autochips/bluetooth/music/module/BTMusicService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget-object p2, p2, Lcom/autochips/bluetooth/music/module/BTMusicService;->delayEasyconnRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    :cond_12
    if-eqz p1, :cond_14

    if-eq p1, v9, :cond_13

    if-eq p1, v6, :cond_14

    goto/16 :goto_6

    .line 655
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "broadcastReceiver playing send pause eastAudioFocusStatus:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$900(Lcom/autochips/bluetooth/music/module/BTMusicService;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "   isAirPlayConnected:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1000(Lcom/autochips/bluetooth/music/module/BTMusicService;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " isAutoConnected:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1100(Lcom/autochips/bluetooth/music/module/BTMusicService;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/music/module/FragmentMusic;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v5}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    .line 658
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/music/module/BTMusicFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v5}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    .line 659
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/autochips/bluetooth/music/module/BTMusicService$5$1;

    invoke-direct {p2, p0}, Lcom/autochips/bluetooth/music/module/BTMusicService$5$1;-><init>(Lcom/autochips/bluetooth/music/module/BTMusicService$5;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 672
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_6

    .line 677
    :cond_14
    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 678
    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 679
    iget-object v1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {v1, v0, p2, p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$500(Lcom/autochips/bluetooth/music/module/BTMusicService;III)V

    .line 681
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/music/module/FragmentMusic;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    goto/16 :goto_6

    :pswitch_11
    const-string p1, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    .line 688
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v0, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    .line 689
    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profileName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " connectState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    a2dpState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget v2, v2, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  currentControlPlayState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget v2, v2, Lcom/autochips/bluetooth/music/module/BTMusicService;->currentControlPlayState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_A2DP_SINK:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    if-ne p1, v0, :cond_1a

    .line 692
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget p1, p1, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    .line 693
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iput p2, v0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    if-ne p2, v6, :cond_15

    .line 695
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1400(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    goto :goto_4

    :cond_15
    if-ne p2, v9, :cond_18

    if-eq p1, v6, :cond_17

    if-nez p1, :cond_16

    goto :goto_3

    .line 707
    :cond_16
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1600(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    .line 709
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/music/module/FragmentMusic;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    goto :goto_4

    .line 700
    :cond_17
    :goto_3
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v11, p1, v10, v7}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 701
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sourceId:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v9, :cond_19

    .line 703
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iput v5, p1, Lcom/autochips/bluetooth/music/module/BTMusicService;->currentControlPlayState:I

    .line 704
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1500(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    goto :goto_4

    :cond_18
    if-ne p2, v12, :cond_19

    .line 713
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/music/module/FragmentMusic;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v5}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    .line 715
    :cond_19
    :goto_4
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget p1, p1, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    if-ne p1, v12, :cond_27

    .line 716
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget p1, p1, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    goto/16 :goto_6

    .line 721
    :cond_1a
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_AVRCP_CT:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    if-ne p1, v0, :cond_27

    .line 722
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iput p2, p1, Lcom/autochips/bluetooth/music/module/BTMusicService;->avrcpState:I

    goto/16 :goto_6

    :pswitch_12
    const-string p1, "EASTCONN_LINK_IPHONE_RESUME start"

    .line 849
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1, v6}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$602(Lcom/autochips/bluetooth/music/module/BTMusicService;I)I

    goto/16 :goto_6

    :pswitch_13
    const-string p1, "EASTCONN_MUSIC_STATUS_ACTION bluetoothName start"

    .line 842
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "bluetoothName"

    .line 843
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 844
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EASTCONN_MUSIC_STATUS_ACTION bluetoothName:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1, v9}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$602(Lcom/autochips/bluetooth/music/module/BTMusicService;I)I

    goto/16 :goto_6

    .line 872
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "phoneMode"

    .line 873
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_1b

    return-void

    .line 876
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CAR_PLAY status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " phoneMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DISCONNECT"

    const-string v2, "CONNECTED"

    if-eqz p2, :cond_1e

    const-string v3, "android_mirror_wired"

    .line 877
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "android_mirror_wireless"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "airplay_wired"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 878
    :cond_1c
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 879
    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2, v9}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$2402(Lcom/autochips/bluetooth/music/module/BTMusicService;Z)Z

    .line 881
    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget p2, p2, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    if-eq p2, v9, :cond_23

    .line 883
    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$2500(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    .line 884
    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget p2, p2, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    if-ne p2, v9, :cond_23

    .line 885
    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1300(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    .line 886
    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$2600(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    goto/16 :goto_5

    .line 889
    :cond_1d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 890
    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2, v8}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$2402(Lcom/autochips/bluetooth/music/module/BTMusicService;Z)Z

    .line 891
    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1900(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    goto :goto_5

    :cond_1e
    if-eqz p2, :cond_21

    const-string v3, "auto_wired"

    .line 893
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "auto_wireless"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "hicar_wired"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "hicar_wireless"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 894
    :cond_1f
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 895
    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2, v9}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1102(Lcom/autochips/bluetooth/music/module/BTMusicService;Z)Z

    goto :goto_5

    .line 896
    :cond_20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 897
    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2, v8}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1102(Lcom/autochips/bluetooth/music/module/BTMusicService;Z)Z

    goto :goto_5

    :cond_21
    if-eqz p2, :cond_23

    const-string v3, "airplay_wireless"

    .line 899
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 900
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_22

    .line 901
    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2, v9}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1002(Lcom/autochips/bluetooth/music/module/BTMusicService;Z)Z

    goto :goto_5

    .line 902
    :cond_22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 903
    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2, v8}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1002(Lcom/autochips/bluetooth/music/module/BTMusicService;Z)Z

    :cond_23
    :goto_5
    const-string p2, "MAIN_PAGE_SHOW"

    .line 906
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$2400(Lcom/autochips/bluetooth/music/module/BTMusicService;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 907
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget p1, p1, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    if-eq p1, v9, :cond_24

    .line 909
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$2500(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    .line 910
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget p1, p1, Lcom/autochips/bluetooth/music/module/BTMusicService;->focusState:I

    if-ne p1, v9, :cond_24

    .line 911
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$1300(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    .line 912
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$2600(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    .line 916
    :cond_24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AUTO isCarplayAutoConnected="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$2400(Lcom/autochips/bluetooth/music/module/BTMusicService;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_15
    const-string p1, "EASTCONN_LINK_OUT_ACTION status:"

    .line 830
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1, v8}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$602(Lcom/autochips/bluetooth/music/module/BTMusicService;I)I

    .line 832
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1, v7}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$902(Lcom/autochips/bluetooth/music/module/BTMusicService;I)I

    goto/16 :goto_6

    .line 622
    :pswitch_16
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    const-string v0, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_TITLE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$102(Lcom/autochips/bluetooth/music/module/BTMusicService;Ljava/lang/String;)Ljava/lang/String;

    .line 623
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    const-string v0, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_ARTIST"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$202(Lcom/autochips/bluetooth/music/module/BTMusicService;Ljava/lang/String;)Ljava/lang/String;

    .line 624
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    const-string v0, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEIDA_ALBUM"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$302(Lcom/autochips/bluetooth/music/module/BTMusicService;Ljava/lang/String;)Ljava/lang/String;

    .line 625
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "title="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$100(Lcom/autochips/bluetooth/music/module/BTMusicService;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " artist="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$200(Lcom/autochips/bluetooth/music/module/BTMusicService;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " album="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$300(Lcom/autochips/bluetooth/music/module/BTMusicService;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$400(Lcom/autochips/bluetooth/music/module/BTMusicService;)V

    goto/16 :goto_6

    :pswitch_17
    const-string p1, "EASTCONN_LINK_APP_QUIT status:"

    .line 824
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1, v8}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$602(Lcom/autochips/bluetooth/music/module/BTMusicService;I)I

    .line 826
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p1, v7}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$902(Lcom/autochips/bluetooth/music/module/BTMusicService;I)I

    goto/16 :goto_6

    :pswitch_18
    const-string p1, "EASTCONN_AUDIOFOCUS_MUSIC_STATUS status start"

    .line 836
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$902(Lcom/autochips/bluetooth/music/module/BTMusicService;I)I

    .line 838
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "EASTCONN_AUDIOFOCUS_MUSIC_STATUS status:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-static {p2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->access$900(Lcom/autochips/bluetooth/music/module/BTMusicService;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :pswitch_19
    const-string p2, "EASTCONN_BT_CHECKSTATUS_ACTION check status"

    .line 854
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "net.easyconn.bt.connected"

    .line 856
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    if-eq v0, v9, :cond_25

    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    iget v0, v0, Lcom/autochips/bluetooth/music/module/BTMusicService;->a2dpState:I

    if-ne v0, v12, :cond_26

    .line 858
    :cond_25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.carocean.status.provider/media"

    const-string v2, "BLUETOOTH_INFO"

    invoke-static {v0, p1, v2}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;

    if-eqz p1, :cond_26

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EASTCONN_BT_CHECKSTATUS_ACTION bluetoothInfo.connectName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v9, [Ljava/lang/String;

    .line 863
    iget-object p1, p1, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectName:Ljava/lang/String;

    aput-object p1, v0, v8

    const-string p1, "name"

    .line 864
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    :cond_26
    iget-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicService$5;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicService;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/music/module/BTMusicService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_27
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x43fe5633 -> :sswitch_c
        0x21d695f8 -> :sswitch_b
        0x26664fab -> :sswitch_a
        0x272af48a -> :sswitch_9
        0x2a9afd09 -> :sswitch_8
        0x3a595d54 -> :sswitch_7
        0x40c49654 -> :sswitch_6
        0x4603f747 -> :sswitch_5
        0x4e3becb1 -> :sswitch_4
        0x5ac1cbf3 -> :sswitch_3
        0x64789c0a -> :sswitch_2
        0x744f1d39 -> :sswitch_1
        0x7e9b5a90 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x70
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xffeb00
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
