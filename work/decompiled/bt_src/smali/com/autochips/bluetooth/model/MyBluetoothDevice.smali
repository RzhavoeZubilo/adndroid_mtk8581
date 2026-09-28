.class public Lcom/autochips/bluetooth/model/MyBluetoothDevice;
.super Ljava/lang/Object;
.source "MyBluetoothDevice.java"


# static fields
.field public static final A2DP:I = 0xb

.field public static final AVRCP:I = 0xd

.field public static final BOND_BONDED:I = 0xc

.field public static final BOND_BONDING:I = 0xb

.field public static final BOND_NONE:I = 0xa

.field public static final HEADSET:I = 0x10

.field public static final PBAP:I = 0x11

.field public static final PROFILE_STATE_CONNECTED:I = 0x1

.field public static final PROFILE_STATE_CONNECTING:I = 0x3

.field public static final PROFILE_STATE_DISCONNECTED:I = 0x2

.field public static final PROFILE_STATE_DISCONNECTING:I = 0x4

.field public static final TAG:Ljava/lang/String; = "MyBluetoothDevice"


# instance fields
.field private battery:I

.field private bondState:I

.field private connectStates:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private localNumber:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private operator:Ljava/lang/String;

.field private pbapConnectTime:J

.field private signal:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 52
    iput-object v0, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->localNumber:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->operator:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->pbapConnectTime:J

    .line 37
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->connectStates:Ljava/util/Hashtable;

    return-void
.end method

.method public static toMyBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/model/MyBluetoothDevice;
    .locals 2

    .line 109
    new-instance v0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-direct {v0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;-><init>()V

    .line 110
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setMac(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 116
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setBondState(I)V

    return-object v0
.end method

.method public static toMyBluetoothDevice(Lcom/autochips/bluetooth/control/PBRecord;)Lcom/autochips/bluetooth/model/MyBluetoothDevice;
    .locals 2

    .line 121
    new-instance v0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-direct {v0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;-><init>()V

    .line 122
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setMac(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/PBRecord;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/PBRecord;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 128
    :goto_0
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/autochips/bluetooth/control/Bluetooth;->isBluetoothBond(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xc

    goto :goto_1

    :cond_1
    const/16 p0, 0xa

    :goto_1
    invoke-virtual {v0, p0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setBondState(I)V

    return-object v0
.end method


# virtual methods
.method public getBattery()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->battery:I

    return v0
.end method

.method public getBluetoothDevice(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method public getBondState()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->bondState:I

    return v0
.end method

.method public getConnectState(I)I
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->connectStates:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->connectStates:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public getLocalNumber()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->localNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getPbapConnectTime()J
    .locals 2

    .line 184
    iget-wide v0, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->pbapConnectTime:J

    return-wide v0
.end method

.method public getSignal()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->signal:I

    return v0
.end method

.method public setBattery(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->battery:I

    return-void
.end method

.method public setBondState(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->bondState:I

    return-void
.end method

.method public setConnectState(II)V
    .locals 2

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->pbapConnectTime:J

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->connectStates:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setLocalNumber(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->localNumber:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->mac:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->name:Ljava/lang/String;

    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->operator:Ljava/lang/String;

    return-void
.end method

.method public setPbapConnectTime(J)V
    .locals 0

    .line 188
    iput-wide p1, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->pbapConnectTime:J

    return-void
.end method

.method public setSignal(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->signal:I

    return-void
.end method
