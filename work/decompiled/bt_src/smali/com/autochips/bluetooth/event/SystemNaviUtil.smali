.class public Lcom/autochips/bluetooth/event/SystemNaviUtil;
.super Ljava/lang/Object;
.source "SystemNaviUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SystemNaviUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearBluetoothCallInfo(Landroid/content/Context;)V
    .locals 1

    const-string p0, "SystemNaviUtil"

    const-string v0, "clearBluetoothCallInfo"

    .line 90
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance p0, Lcom/autochips/bluetooth/event/SystemNaviUtil$2;

    invoke-direct {p0}, Lcom/autochips/bluetooth/event/SystemNaviUtil$2;-><init>()V

    invoke-static {p0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static clearCurrentCall(Landroid/content/Context;)V
    .locals 7

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/media"

    const-string v2, "BLUETOOTH_INFO"

    invoke-static {v1, v0, v2}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;

    invoke-direct {v0}, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;-><init>()V

    :cond_0
    const/4 v3, 0x0

    .line 242
    iget-object v4, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->callName:Ljava/lang/String;

    const/4 v5, 0x1

    const-string v6, ""

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->callName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 243
    iput-object v6, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->callName:Ljava/lang/String;

    move v3, v5

    .line 246
    :cond_1
    iget-object v4, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->callName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->callNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 247
    iput-object v6, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->callNumber:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    if-eqz v5, :cond_3

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v1, p0, v2, v0}, Lcom/carocean/navicar/NaviStatus;->putObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static setAbandonCallFocus(Landroid/content/Context;)V
    .locals 3

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.carocean.status.provider/sys"

    const-string v1, "SYS_BT_CALL_FOCUS_STATUS"

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static setBluetoothInfo(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    .line 44
    new-instance p0, Lcom/autochips/bluetooth/event/SystemNaviUtil$1;

    invoke-direct {p0}, Lcom/autochips/bluetooth/event/SystemNaviUtil$1;-><init>()V

    invoke-static {p0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setNaviBTCallState(Landroid/content/Context;)V
    .locals 7

    .line 298
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "persist.sys.bt.call.status"

    const-string v3, "SYS_BT_CALL_STATUS"

    const-string v4, "content://com.carocean.status.provider/sys"

    if-lez v0, :cond_3

    .line 299
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentState="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "SystemNaviUtil"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    const/4 v6, 0x3

    if-eq v1, v6, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviCurrentCall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v4, p0, v3, v6}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 319
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    # invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviCurrentCall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v4, p0, v3, v5}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 313
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    # invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviCurrentCall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v4, p0, v3, v0}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 307
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    # invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v4, v0, v3, v1}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 325
    invoke-static {p0}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->clearCurrentCall(Landroid/content/Context;)V

    .line 326
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    # invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v4, v0, v3, v1}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 331
    invoke-static {p0}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->clearCurrentCall(Landroid/content/Context;)V

    .line 332
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    # invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static setNaviBTSignalBattery(Landroid/content/Context;IILjava/lang/String;Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V
    .locals 5

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/media"

    const-string v2, "BLUETOOTH_INFO"

    invoke-static {v1, v0, v2}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;

    invoke-direct {v0}, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;-><init>()V

    .line 268
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNaviBTSignalBattery mac="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SystemNaviUtil"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v3, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectMac:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 270
    iput p2, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->batteryLevel:I

    .line 271
    iput p1, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->signalLevel:I

    .line 272
    iput-object p3, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->operator:Ljava/lang/String;

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v1, p0, v2, v0}, Lcom/carocean/navicar/NaviStatus;->putObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static setNaviBTState(Landroid/content/Context;I)V
    .locals 5

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/media"

    const-string v2, "BLUETOOTH_INFO"

    invoke-static {v1, v0, v2}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;

    invoke-direct {v0}, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;-><init>()V

    .line 286
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNaviBTState state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   bluetooth info state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->openState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SystemNaviUtil"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iput p1, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->openState:I

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v1, p0, v2, v0}, Lcom/carocean/navicar/NaviStatus;->putObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setNaviBluetoothDeviceName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/media"

    const-string v2, "BLUETOOTH_INFO"

    invoke-static {v1, v0, v2}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;

    invoke-direct {v0}, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;-><init>()V

    .line 204
    :cond_0
    iput-object p1, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->localName:Ljava/lang/String;

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v1, p0, v2, v0}, Lcom/carocean/navicar/NaviStatus;->putObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setNaviConnectState(Landroid/content/Context;)V
    .locals 10

    .line 111
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getCurrentConnectDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v0

    const-string v1, "BLUETOOTH_INFO:"

    const-string v2, "SystemNaviUtil"

    const-string v3, "SYS_BT_CONNECT_STATUS"

    const-string v4, "content://com.carocean.status.provider/sys"

    const-string v5, "BLUETOOTH_INFO"

    const-string v6, "content://com.carocean.status.provider/media"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_7

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v4, v9, v3, v8}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v6, v3, v5}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;

    if-nez v3, :cond_0

    .line 118
    new-instance v3, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;

    invoke-direct {v3}, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;-><init>()V

    .line 120
    :cond_0
    iget-object v4, v3, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectMac:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectMac:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectMac:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 121
    :cond_1
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectMac:Ljava/lang/String;

    move v7, v8

    .line 124
    :cond_2
    iget-object v4, v3, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectName:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 125
    :cond_3
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectName:Ljava/lang/String;

    move v7, v8

    .line 129
    :cond_4
    invoke-static {v3, v0}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->updateHfpA2dpStatus(Lcom/carocean/navicar/Navi$Status$BluetoothInfo;Lcom/autochips/bluetooth/model/MyBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v7, v8

    .line 133
    :cond_5
    iput v8, v3, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->openState:I

    if-eqz v7, :cond_6

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v6, p0, v5, v3}, Lcom/carocean/navicar/NaviStatus;->putObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 139
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v4, v0, v3, v7}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6, v0, v5}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;

    if-nez v0, :cond_8

    .line 144
    new-instance v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;

    invoke-direct {v0}, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;-><init>()V

    .line 146
    :cond_8
    iget-object v3, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectMac:Ljava/lang/String;

    const-string v4, ""

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectMac:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 147
    iput-object v4, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectMac:Ljava/lang/String;

    move v3, v8

    goto :goto_0

    :cond_9
    move v3, v7

    .line 150
    :goto_0
    iget-object v9, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectName:Ljava/lang/String;

    if-eqz v9, :cond_a

    iget-object v9, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 151
    iput-object v4, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->connectName:Ljava/lang/String;

    move v3, v8

    .line 154
    :cond_a
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getA2dpConnectDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 156
    invoke-static {v0, v4}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->updateHfpA2dpStatus(Lcom/carocean/navicar/Navi$Status$BluetoothInfo;Lcom/autochips/bluetooth/model/MyBluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_1

    .line 160
    :cond_b
    iget v4, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->hfpState:I

    if-nez v4, :cond_c

    iget v4, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->a2dpState:I

    if-eqz v4, :cond_d

    .line 161
    :cond_c
    iput v7, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->hfpState:I

    .line 162
    iput v7, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->a2dpState:I

    :goto_1
    move v3, v8

    .line 167
    :cond_d
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autochips/bluetooth/control/Bluetooth;->isbtopened()Z

    move-result v4

    .line 168
    iget v7, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->openState:I

    if-eq v4, v7, :cond_e

    .line 169
    iput v4, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->openState:I

    goto :goto_2

    :cond_e
    move v8, v3

    :goto_2
    if-eqz v8, :cond_f

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v6, p0, v5, v0}, Lcom/carocean/navicar/NaviStatus;->putObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public static setNaviCurrentCall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/media"

    const-string v2, "BLUETOOTH_INFO"

    invoke-static {v1, v0, v2}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;

    invoke-direct {v0}, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;-><init>()V

    :cond_0
    const/4 v3, 0x0

    .line 219
    iget-object v4, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->callName:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->callName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->callName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 220
    :cond_1
    iput-object p1, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->callName:Ljava/lang/String;

    move v3, v5

    .line 223
    :cond_2
    iget-object p1, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->callName:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->callNumber:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->callNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v5, v3

    goto :goto_1

    .line 224
    :cond_4
    :goto_0
    iput-object p2, v0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->callNumber:Ljava/lang/String;

    :goto_1
    if-eqz v5, :cond_5

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v1, p0, v2, v0}, Lcom/carocean/navicar/NaviStatus;->putObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public static setRequestCallFocus(Landroid/content/Context;)V
    .locals 3

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.carocean.status.provider/sys"

    const-string v1, "SYS_BT_CALL_FOCUS_STATUS"

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2}, Lcom/carocean/navicar/NaviStatus;->putInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method private static updateHfpA2dpStatus(Lcom/carocean/navicar/Navi$Status$BluetoothInfo;Lcom/autochips/bluetooth/model/MyBluetoothDevice;)Z
    .locals 4

    const/16 v0, 0xb

    .line 182
    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v3, 0x10

    .line 183
    invoke-virtual {p1, v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result p1

    if-eq p1, v2, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 184
    :goto_1
    iget v3, p0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->a2dpState:I

    if-eq v3, v0, :cond_2

    .line 185
    iput v0, p0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->a2dpState:I

    move v1, v2

    .line 188
    :cond_2
    iget v0, p0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->hfpState:I

    if-eq v0, p1, :cond_3

    .line 189
    iput p1, p0, Lcom/carocean/navicar/Navi$Status$BluetoothInfo;->hfpState:I

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    return v2
.end method
