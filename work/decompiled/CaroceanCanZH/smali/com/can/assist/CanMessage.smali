.class public Lcom/can/assist/CanMessage;
.super Ljava/lang/Object;
.source "CanMessage.java"

# interfaces
.implements Lcom/can/assist/CanContant;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeregisterMessage(IILjava/lang/String;Landroid/os/Messenger;)Landroid/os/Message;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 70
    invoke-static {v0, v1, p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 71
    iput-object p3, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 73
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "Msg_Can_Reg_User"

    .line 74
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static getDeregisterMessage(Ljava/lang/String;Landroid/os/Messenger;)Landroid/os/Message;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 82
    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 83
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 85
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Msg_Can_Reg_User"

    .line 86
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static getMessage(Landroid/os/Handler;Ljava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p2, p3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static getRegisterMessage(IILjava/lang/String;Landroid/os/Messenger;)Landroid/os/Message;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 45
    invoke-static {v0, v1, p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 46
    iput-object p3, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 48
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "Msg_Can_Reg_User"

    .line 49
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static getRegisterMessage(Ljava/lang/String;Landroid/os/Messenger;)Landroid/os/Message;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 57
    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 58
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 60
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Msg_Can_Reg_User"

    .line 61
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static getRxMessage([BII)Landroid/os/Message;
    .locals 2

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Msg_Can_Rx"

    .line 103
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/4 p0, 0x0

    const/4 v1, 0x2

    .line 105
    invoke-static {p0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 106
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static getRxPacket(Landroid/os/Message;)[B
    .locals 1

    .line 94
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "Msg_Can_Rx"

    .line 95
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getTxMessage(I[B)Landroid/os/Message;
    .locals 3

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const-string v2, "Msg_Can_Tx"

    .line 146
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p1, "Msg_Can_Tx_Cmd"

    .line 147
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 148
    invoke-static {v1, p0, p1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    .line 149
    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static getTxMessage(Landroid/os/Message;)Landroid/os/Message;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 156
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static getTxPacket(Landroid/os/Message;)[B
    .locals 1

    .line 163
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "Msg_Can_Tx"

    .line 164
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getdataMessage(IILandroid/os/Messenger;)Landroid/os/Message;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 22
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 23
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 24
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 25
    iput-object p2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    return-object v0
.end method

.method public static getdataMessage(ILandroid/os/Messenger;)Landroid/os/Message;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 13
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 14
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 15
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    return-object v0
.end method

.method public static getdataMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-static {v0, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    .line 33
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object p0
.end method
