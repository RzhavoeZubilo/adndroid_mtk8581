.class Lcom/autochips/bluetooth/event/BTEventManager$6;
.super Ljava/lang/Object;
.source "BTEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/event/BTEventManager;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/event/BTEventManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/event/BTEventManager;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    iput-object p2, p0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    .line 233
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x12

    const/16 v7, 0xa

    const/4 v12, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x17

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_3
    const-string v3, "com.ckx.bluetooth.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_4
    const-string v3, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_5
    const-string v3, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    move v2, v4

    goto/16 :goto_0

    :sswitch_6
    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfUtility.action.callStateChange"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "com.autochips.bluetooth.callnameandnumchange"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_8
    const-string v3, "com.bluetooth.call.abandon.audiofocus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_finish"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "com.autochips.bluetooth.changelocaldevicename"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "com.autochips.bluetooth.DISCOVERY_FINISHED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    move v2, v7

    goto/16 :goto_0

    :sswitch_e
    const-string v3, "com.autochiips.bluetooth.profile.action.AG_EVENT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_f
    const-string v3, "com.autochips.bluetooth.DISCOVERY_STARTED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_10
    const-string v3, "com.autochips.bluetooth.FOUND"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_11
    const-string v3, "com.autochips.bluetooth.profilestatechange"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_12
    const-string v3, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_onestep"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_13
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_14
    const-string v3, "com.autochips.bluetooth.BluetoothHfService.action.SCO_STATE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_0

    :cond_15
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_15
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_0

    :cond_16
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_16
    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.MULTI_CALL_NUMBER_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_0

    :cond_17
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_17
    const-string v3, "com.bluetooth.call.request.audiofocus"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_0

    :cond_18
    move v2, v12

    :goto_0
    const/16 v1, 0xfa3

    const-string v3, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    const-string v13, "android.bluetooth.adapter.extra.STATE"

    const-string v14, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_MAC"

    const/16 v5, 0xbba

    const-string v6, ""

    const-string v9, " deviceMac="

    const-string v10, "android.bluetooth.device.extra.DEVICE"

    const/16 v11, 0xfa2

    const/16 v8, 0xfa4

    const-string v15, "BTEventManager20210602"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    .line 248
    :pswitch_0
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 249
    iget-object v2, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 250
    iget-object v3, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v4, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v1, :cond_23

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_BOND_STATE_CHANGED state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " previousState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deviceName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v4, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v4}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v4

    const/16 v5, 0xfa0

    .line 254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    const/16 v2, 0xfa1

    .line 255
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 256
    invoke-static {v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->toMyBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 257
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2, v4}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_7

    .line 315
    :pswitch_1
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 316
    iget-object v2, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v3, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_23

    if-eqz v2, :cond_23

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_NAME_CHANGED deviceName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v3, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v3}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v3

    const/16 v4, 0xfa6

    .line 320
    invoke-virtual {v3, v4, v2}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 321
    invoke-static {v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->toMyBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v1

    invoke-virtual {v3, v8, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 322
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    const/16 v2, 0xbc0

    invoke-virtual {v1, v2, v3}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_7

    .line 411
    :pswitch_2
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_23

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_ACL_DISCONNECTED deviceName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v2, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v2}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v2

    const/16 v3, 0xfab

    .line 415
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 416
    invoke-static {v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->toMyBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 417
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    const/16 v3, 0xbc6

    invoke-virtual {v1, v3, v2}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_7

    .line 370
    :pswitch_3
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_23

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_FOUND deviceName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v2, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v2}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v2

    .line 374
    invoke-static {v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->toMyBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 375
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    const/16 v3, 0xbc3

    invoke-virtual {v1, v3, v2}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_7

    .line 507
    :pswitch_4
    iget-object v2, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2, v13, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 508
    iget-object v4, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v4, v3, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 509
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BluetoothAdapter.ACTION_CONNECTION_STATE_CHANGED state="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " previousState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v4, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v4}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v4

    .line 511
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v11, v2}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 512
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 513
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    const/16 v2, 0xbc9

    invoke-virtual {v1, v2, v4}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    .line 514
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_7

    .line 601
    :pswitch_5
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.hf.extra.callState"

    invoke-virtual {v1, v2, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 602
    iget-object v2, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NUMBER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 603
    iget-object v3, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v4, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NAME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_CALL_STATE_CHANGE phoneCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v4, Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {v4}, Lcom/carlos/eventlibrary/EventMail;-><init>()V

    .line 606
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v11, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    const/16 v1, 0xfb0

    .line 607
    invoke-virtual {v4, v1, v2}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    const/16 v1, 0xfb1

    .line 608
    invoke-virtual {v4, v1, v3}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 609
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    const/16 v2, 0xbd9

    invoke-virtual {v1, v2, v4}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_7

    .line 613
    :pswitch_6
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NUMBER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 614
    iget-object v2, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NAME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 615
    iget-object v3, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v4, "com.autochips.bluetooth.hf.extra.callState"

    invoke-virtual {v3, v4, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_PHONE_NUMBER_CHANGED phoneNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v1, "00000000"

    .line 620
    :cond_19
    new-instance v4, Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {v4}, Lcom/carlos/eventlibrary/EventMail;-><init>()V

    const/16 v5, 0xfb0

    .line 621
    invoke-virtual {v4, v5, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    const/16 v1, 0xfb1

    .line 622
    invoke-virtual {v4, v1, v2}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 623
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v11, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 624
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    const/16 v2, 0xbe9

    invoke-virtual {v1, v2, v4}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_7

    .line 238
    :pswitch_7
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setAbandonCallFocus(Landroid/content/Context;)V

    const-string v1, "ACTION_ABANDON_CALL_FOCUS"

    .line 239
    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 499
    :pswitch_8
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_folder"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PBSyncManagerService.ACTION_DOWNLOAD_FINISH path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v2, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v2}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v2

    const/16 v3, 0xfac

    .line 502
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 503
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    const/16 v3, 0xbe8

    invoke-virtual {v1, v3, v2}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_7

    :pswitch_9
    const-string v1, "ACTION_CHANGELOCALDEVICENAME"

    .line 815
    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/control/Bluetooth;->readCustomDevicename()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw.zlink.bt.name"

    # invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 279
    :pswitch_a
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.extra.PAIRING_KEY"

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 280
    iget-object v2, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v4, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 281
    iget-object v3, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_23

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_PAIRING_REQUEST pairing_key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deviceName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  deviceMac="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 284
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " deviceBondState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v2, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v2}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v2

    const/16 v4, 0xfa5

    .line 296
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 297
    invoke-static {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->toMyBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 298
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    const/16 v3, 0xbbe

    invoke-virtual {v1, v3, v2}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_7

    .line 327
    :pswitch_b
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v2, "com.autochiips.bluetooth.headsetclient.extra.BATTERY_LEVEL"

    invoke-virtual {v1, v2, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 328
    iget-object v2, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v3, "com.autochiips.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    invoke-virtual {v2, v3, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 329
    iget-object v3, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 330
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_INDICATORCONTROL_CHANGED battery="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " signal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  mac:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v4, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v4}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v4

    const/16 v5, 0xfa7

    .line 332
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    const/16 v1, 0xfa8

    .line 333
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    const/16 v1, 0xfa9

    .line 334
    invoke-virtual {v4, v1, v6}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    const/16 v1, 0xfaa

    .line 335
    invoke-virtual {v4, v1, v6}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 336
    new-instance v1, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-direct {v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;-><init>()V

    .line 337
    invoke-virtual {v1, v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setMac(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v4, v8, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 339
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    const/16 v2, 0xbc1

    invoke-virtual {v1, v2, v4}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_7

    :pswitch_c
    const-string v1, "ACTION_DISCOVERY_STARTED"

    .line 264
    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v1}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v1

    .line 266
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v2

    const/16 v3, 0xbbc

    invoke-virtual {v2, v3, v1}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_7

    .line 380
    :pswitch_d
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/control/PBRecord;

    if-eqz v1, :cond_23

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_FOUND deviceName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autochips/bluetooth/control/PBRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v2, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v2}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v2

    .line 384
    invoke-static {v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->toMyBluetoothDevice(Lcom/autochips/bluetooth/control/PBRecord;)Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 385
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    const/16 v3, 0xbc3

    invoke-virtual {v1, v3, v2}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_7

    .line 519
    :pswitch_e
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/control/Bluetooth;->getConnectedHFPAddr()Ljava/lang/String;

    move-result-object v1

    .line 520
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autochips/bluetooth/control/Bluetooth;->getConnectedA2DPAddr()Ljava/lang/String;

    move-result-object v2

    .line 521
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autochips/bluetooth/control/Bluetooth;->getconnectingmac()Ljava/lang/String;

    move-result-object v3

    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mConnectedHFPMac:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "    mConnectedA2DPMac:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "  getconnectingmac:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    move-object v6, v1

    const/4 v3, 0x1

    goto :goto_2

    .line 531
    :cond_1a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    move-object v6, v3

    const/4 v3, 0x3

    goto :goto_2

    .line 534
    :cond_1b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autochips/bluetooth/control/Bluetooth;->getconnectingmac()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    move-object v6, v2

    goto :goto_1

    .line 537
    :cond_1c
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v3

    iget-boolean v3, v3, Lcom/autochips/bluetooth/control/Bluetooth;->isHFPdisconnecting:Z

    if-eqz v3, :cond_1d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    move-object v6, v1

    const/4 v3, 0x4

    goto :goto_2

    :cond_1d
    :goto_1
    const/4 v3, 0x2

    .line 543
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 547
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/control/Bluetooth;->isAVRCPconnected()Z

    move-result v1

    if-eqz v1, :cond_1e

    move-object v1, v2

    const/4 v2, 0x1

    const/4 v4, 0x1

    goto :goto_5

    :cond_1e
    move-object v1, v2

    const/4 v2, 0x1

    goto :goto_4

    .line 550
    :cond_1f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_3

    :cond_20
    move-object v1, v6

    :goto_3
    const/4 v2, 0x2

    :goto_4
    const/4 v4, 0x2

    .line 556
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hfpState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    a2dpState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  avrcpState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_21

    if-ne v2, v6, :cond_21

    .line 558
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    const/16 v2, 0x1389

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    .line 559
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v1}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v1

    .line 560
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 561
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto :goto_6

    .line 563
    :cond_21
    new-instance v6, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-direct {v6}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;-><init>()V

    .line 564
    invoke-virtual {v6, v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setMac(Ljava/lang/String;)V

    .line 567
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v1}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v1

    .line 568
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v11, v7}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 569
    invoke-virtual {v1, v8, v6}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    const/4 v7, 0x1

    if-ne v3, v7, :cond_22

    const/16 v3, 0xfa0

    const/16 v7, 0xc

    .line 571
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 572
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v3

    const/16 v7, 0xbb8

    invoke-virtual {v3, v7, v1}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    .line 574
    :cond_22
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    .line 577
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v1}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v1

    .line 578
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 579
    invoke-virtual {v1, v8, v6}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 580
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v2

    const/16 v3, 0xbbb

    invoke-virtual {v2, v3, v1}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    .line 583
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v1}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v1

    .line 584
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 585
    invoke-virtual {v1, v8, v6}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 586
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v2

    const/16 v3, 0xbb9

    invoke-virtual {v2, v3, v1}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    .line 591
    :goto_6
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MACMAC:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 594
    iget-object v2, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v2}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v2

    const/16 v3, 0xfb2

    .line 595
    invoke-virtual {v2, v3, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 596
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    const/16 v3, 0xbd5

    invoke-virtual {v1, v3, v2}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_7

    .line 489
    :pswitch_f
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_folder"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 490
    iget-object v2, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_onestep_count"

    invoke-virtual {v2, v3, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PBSyncManagerService.ACTION_DOWNLOAD_ONESTEP path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " oneStepCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v3, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v3}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v3

    const/16 v4, 0xfac

    .line 493
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    const/16 v1, 0xfad

    .line 494
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 495
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    const/16 v2, 0xbd2

    invoke-virtual {v1, v2, v3}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_7

    .line 392
    :pswitch_10
    iget-object v2, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const/16 v4, 0xc

    invoke-virtual {v2, v13, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 393
    iget-object v5, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BluetoothAdapter.ACTION_STATE_CHANGED state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  preState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v4, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v4}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v4

    .line 396
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v11, v2}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 397
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 398
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    const/16 v2, 0xbc4

    invoke-virtual {v1, v2, v4}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_7

    .line 640
    :pswitch_11
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.BluetoothHfService.extra.EXTRA_NEW_SCO_STATE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_PHONE_NUMBER_CHANGED socState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    new-instance v2, Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {v2}, Lcom/carlos/eventlibrary/EventMail;-><init>()V

    .line 643
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 644
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    const/16 v3, 0xbc5

    invoke-virtual {v1, v3, v2}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto/16 :goto_7

    :pswitch_12
    const-string v1, "ACTION_DISCOVERY_FINISHED"

    .line 272
    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v1}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v1

    .line 274
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v2

    const/16 v3, 0xbbd

    invoke-virtual {v2, v3, v1}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto :goto_7

    .line 628
    :pswitch_13
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.CURRENT_NUMBER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 629
    iget-object v2, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.CURRENT_NUMBER_INDEX"

    invoke-virtual {v2, v3, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 630
    iget-object v3, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$intent:Landroid/content/Intent;

    const-string v4, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.CURRENT_NUMBER_STATUS"

    invoke-virtual {v3, v4, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_MULTI_CALL_NUMBER_CHANGED currentNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " currentStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    new-instance v4, Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {v4}, Lcom/carlos/eventlibrary/EventMail;-><init>()V

    const/16 v5, 0xfb0

    .line 633
    invoke-virtual {v4, v5, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 634
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v11, v1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    const/16 v1, 0xfad

    .line 635
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 636
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v1

    const/16 v2, 0xbea

    invoke-virtual {v1, v2, v4}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    goto :goto_7

    .line 243
    :pswitch_14
    iget-object v1, v0, Lcom/autochips/bluetooth/event/BTEventManager$6;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setRequestCallFocus(Landroid/content/Context;)V

    const-string v1, "ACTION_REQUEST_CALL_FOCUS"

    .line 244
    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    :goto_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7447935c -> :sswitch_17
        -0x73743b89 -> :sswitch_16
        -0x6a269925 -> :sswitch_15
        -0x5fac2390 -> :sswitch_14
        -0x5b36f014 -> :sswitch_13
        -0x4fa66b15 -> :sswitch_12
        -0x4ecb44a5 -> :sswitch_11
        -0x4792cea1 -> :sswitch_10
        -0x36a808d1 -> :sswitch_f
        -0x1fe53116 -> :sswitch_e
        -0x14fd209c -> :sswitch_d
        -0xd553507 -> :sswitch_c
        -0x91d9e27 -> :sswitch_b
        0x6724d8 -> :sswitch_a
        0x6964eba -> :sswitch_9
        0x33d944fe -> :sswitch_8
        0x3985bf8b -> :sswitch_7
        0x3b38972c -> :sswitch_6
        0x42f3be3f -> :sswitch_5
        0x459717c3 -> :sswitch_4
        0x68548a79 -> :sswitch_3
        0x6c9330ef -> :sswitch_2
        0x7a04d55f -> :sswitch_1
        0x7e2cc189 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_12
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
