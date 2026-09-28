.class Lcom/autochips/bluetooth/info/BTStateManager$2;
.super Landroid/content/BroadcastReceiver;
.source "BTStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/info/BTStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/info/BTStateManager;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/info/BTStateManager;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTStateManager$2;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 362
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.suding.speedplay"

    .line 364
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.zjinnova.zlink"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "navi.intent.action.ACTION_SYSTEM_TO_SLEEP"

    .line 399
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 401
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->isbtopened()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 402
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->closebt()V

    goto/16 :goto_3

    :cond_1
    const-string p2, "navi.intent.action.ACTION_SYSTEM_TO_AWAKE"

    .line 405
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 407
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getBtStatePersist:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/info/BTStateManager;->getBtStatePersist()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTStateManager;->getBtStatePersist()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->isbtopened()Z

    move-result p1

    if-nez p1, :cond_10

    .line 409
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->openbt()V

    goto/16 :goto_3

    :cond_2
    :goto_0
    const-string p1, "status"

    .line 365
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "phoneMode"

    .line 366
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_3

    return-void

    .line 369
    :cond_3
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

    const-string v3, "hicar_wired"

    const-string v4, "auto_wired"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p2, :cond_6

    const-string v8, "carplay_wired"

    .line 370
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "carplay_wireless"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 371
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v8, 0x7d4

    if-eqz v2, :cond_5

    .line 372
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTStateManager$2;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-static {v0, v7}, Lcom/autochips/bluetooth/info/BTStateManager;->access$202(Lcom/autochips/bluetooth/info/BTStateManager;Z)Z

    .line 373
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    invoke-virtual {v0, v8, v6}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    goto :goto_1

    .line 374
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 375
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTStateManager$2;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-static {v0, v5}, Lcom/autochips/bluetooth/info/BTStateManager;->access$202(Lcom/autochips/bluetooth/info/BTStateManager;Z)Z

    .line 376
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    invoke-virtual {v0, v8, v6}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_9

    .line 378
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "auto_wireless"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "android_mirror_wired"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "android_mirror_wireless"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 379
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "hicar_wireless"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 380
    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v8, 0x7d5

    if-eqz v2, :cond_8

    .line 381
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTStateManager$2;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-static {v0, v7}, Lcom/autochips/bluetooth/info/BTStateManager;->access$302(Lcom/autochips/bluetooth/info/BTStateManager;Z)Z

    .line 382
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    invoke-virtual {v0, v8, v6}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    goto :goto_1

    .line 383
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 384
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTStateManager$2;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-static {v0, v5}, Lcom/autochips/bluetooth/info/BTStateManager;->access$302(Lcom/autochips/bluetooth/info/BTStateManager;Z)Z

    .line 385
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    invoke-virtual {v0, v8, v6}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_9
    :goto_1
    const-string v0, "MAIN_PAGE_SHOW"

    .line 389
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 390
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTStateManager$2;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-static {p1, v7}, Lcom/autochips/bluetooth/info/BTStateManager;->access$402(Lcom/autochips/bluetooth/info/BTStateManager;Z)Z

    goto :goto_2

    :cond_a
    const-string v0, "MAIN_PAGE_HIDDEN"

    .line 391
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 392
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTStateManager$2;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-static {p1, v5}, Lcom/autochips/bluetooth/info/BTStateManager;->access$402(Lcom/autochips/bluetooth/info/BTStateManager;Z)Z

    goto :goto_2

    :cond_b
    const-string v0, "PHONE_CALL_ON"

    .line 393
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz p2, :cond_d

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 394
    :cond_c
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTStateManager$2;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-static {p1, v7}, Lcom/autochips/bluetooth/info/BTStateManager;->access$502(Lcom/autochips/bluetooth/info/BTStateManager;Z)Z

    goto :goto_2

    :cond_d
    const-string v0, "PHONE_CALL_OFF"

    .line 395
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 396
    :cond_e
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTStateManager$2;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-static {p1, v5}, Lcom/autochips/bluetooth/info/BTStateManager;->access$502(Lcom/autochips/bluetooth/info/BTStateManager;Z)Z

    .line 398
    :cond_f
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CAR_PLAY isCarplayShow="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTStateManager$2;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-static {p2}, Lcom/autochips/bluetooth/info/BTStateManager;->access$400(Lcom/autochips/bluetooth/info/BTStateManager;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " isCarplayPhoneShow="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTStateManager$2;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-static {p2}, Lcom/autochips/bluetooth/info/BTStateManager;->access$500(Lcom/autochips/bluetooth/info/BTStateManager;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "   isCarplayConnected:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTStateManager$2;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-static {p2}, Lcom/autochips/bluetooth/info/BTStateManager;->access$200(Lcom/autochips/bluetooth/info/BTStateManager;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " isCarplayAutoConnected:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTStateManager$2;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-static {p2}, Lcom/autochips/bluetooth/info/BTStateManager;->access$300(Lcom/autochips/bluetooth/info/BTStateManager;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_3
    return-void
.end method
