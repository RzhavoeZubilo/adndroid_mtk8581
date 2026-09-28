.class public interface abstract Lcom/autochips/bluetooth/btinterface/IBluetoothService;
.super Ljava/lang/Object;
.source "IBluetoothService.java"


# static fields
.field public static final ACTION_BT_SERVICE_START:Ljava/lang/String; = "ACTION_BT_SERVICE_START"

.field public static final BT_AUTO_CONNECT:Ljava/lang/String; = "persist.bt.auto.connect"


# virtual methods
.method public abstract acceptCall()V
.end method

.method public abstract bondDevice(Ljava/lang/String;)V
.end method

.method public abstract call(Ljava/lang/String;)V
.end method

.method public abstract cancelDiscovery()V
.end method

.method public abstract closeBt()V
.end method

.method public abstract connect(Ljava/lang/String;)V
.end method

.method public abstract deleteBond(Ljava/lang/String;)V
.end method

.method public abstract disConnect(Ljava/lang/String;)V
.end method

.method public abstract endCall()V
.end method

.method public abstract getCallList()Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/autochips/bluetooth/model/MyCall;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCallLog()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCallNumber()Ljava/lang/String;
.end method

.method public abstract getCallState()I
.end method

.method public abstract getCallTime()Ljava/lang/String;
.end method

.method public abstract getConnectState()I
.end method

.method public abstract getConnectedDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;
.end method

.method public abstract getContact()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/PhoneBookModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;
.end method

.method public abstract getDeviceName()Ljava/lang/String;
.end method

.method public abstract getDiscoverDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/MyBluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDiscoverState()Z
.end method

.method public abstract getPairedDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/MyBluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAutoAnswer()Z
.end method

.method public abstract isBusying()Z
.end method

.method public abstract openBt()V
.end method

.method public abstract rejectCall()V
.end method

.method public abstract sendDTMF(Ljava/lang/String;)V
.end method

.method public abstract setAutoAnswer(Z)V
.end method

.method public abstract setAutoConnect(Z)V
.end method

.method public abstract setDeviceName(Ljava/lang/String;)V
.end method

.method public abstract setDisconnectAndConnect(Lcom/autochips/bluetooth/model/MyBluetoothDevice;Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V
.end method

.method public abstract startDiscovery()V
.end method

.method public abstract startDownloadPhoneBook()V
.end method

.method public abstract stopDownloadPhoneBook()V
.end method

.method public abstract switchAudioChannel()V
.end method
