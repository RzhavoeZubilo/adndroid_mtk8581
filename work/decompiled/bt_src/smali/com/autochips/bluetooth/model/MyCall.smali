.class public Lcom/autochips/bluetooth/model/MyCall;
.super Ljava/lang/Object;
.source "MyCall.java"


# static fields
.field public static final ACTION_CALL_NAME_CHANGED:I = 0x1389

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_DIALING:I = 0x3

.field public static final STATE_DISCONNECTED:I = 0x1

.field public static final STATE_DISCONNECTING:I = 0xa

.field public static final STATE_HOLDING:I = 0x8

.field public static final STATE_NEW:I = 0x0

.field public static final STATE_RINGING:I = 0x2

.field public static final STATE_SELECT_PHONE_ACCOUNT:I = 0x8

.field public static final TAG:Ljava/lang/String; = "MyCall"

.field public static final TEL_STAT_IDLE:I


# instance fields
.field private activeTime:J

.field private audioConnectState:I

.field private id:I

.field private isActivated:Z

.field private isShouldSendNotification:Z

.field private name:Ljava/lang/String;

.field private phoneBookModel:Lcom/autochips/bluetooth/model/PhoneBookModel;

.field private phoneNumber:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, -0x1

    .line 38
    iput p3, p0, Lcom/autochips/bluetooth/model/MyCall;->audioConnectState:I

    const/4 p3, 0x0

    .line 58
    iput-boolean p3, p0, Lcom/autochips/bluetooth/model/MyCall;->isActivated:Z

    const-string p3, ""

    .line 70
    iput-object p3, p0, Lcom/autochips/bluetooth/model/MyCall;->name:Ljava/lang/String;

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/autochips/bluetooth/model/MyCall;->isShouldSendNotification:Z

    .line 43
    iput-object p1, p0, Lcom/autochips/bluetooth/model/MyCall;->phoneNumber:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/autochips/bluetooth/model/MyCall;->name:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/autochips/bluetooth/model/MyCall;->id:I

    .line 47
    new-instance p1, Lcom/autochips/bluetooth/model/PhoneBookModel;

    invoke-direct {p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;-><init>()V

    iput-object p1, p0, Lcom/autochips/bluetooth/model/MyCall;->phoneBookModel:Lcom/autochips/bluetooth/model/PhoneBookModel;

    .line 48
    iget-object p2, p0, Lcom/autochips/bluetooth/model/MyCall;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->addPhoneNumber(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/autochips/bluetooth/model/MyCall;->phoneBookModel:Lcom/autochips/bluetooth/model/PhoneBookModel;

    invoke-virtual {p0}, Lcom/autochips/bluetooth/model/MyCall;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setName(Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/autochips/bluetooth/model/MyCall;->phoneBookModel:Lcom/autochips/bluetooth/model/PhoneBookModel;

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setModeType(I)V

    .line 51
    iget-object p1, p0, Lcom/autochips/bluetooth/model/MyCall;->phoneBookModel:Lcom/autochips/bluetooth/model/PhoneBookModel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setTimeStamp(J)V

    .line 52
    invoke-static {}, Lcom/autochips/bluetooth/info/BTPBAPManager;->getInstance()Lcom/autochips/bluetooth/info/BTPBAPManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->queryNameByNumber(Lcom/autochips/bluetooth/model/MyCall;)V

    return-void
.end method


# virtual methods
.method public answer()V
    .locals 0

    return-void
.end method

.method public disconnect()V
    .locals 0

    return-void
.end method

.method public getActiveTime()J
    .locals 2

    .line 119
    iget-wide v0, p0, Lcom/autochips/bluetooth/model/MyCall;->activeTime:J

    return-wide v0
.end method

.method public getAudioConnectState()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/autochips/bluetooth/model/MyCall;->audioConnectState:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/autochips/bluetooth/model/MyCall;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/autochips/bluetooth/model/MyCall;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneBookModel()Lcom/autochips/bluetooth/model/PhoneBookModel;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/autochips/bluetooth/model/MyCall;->phoneBookModel:Lcom/autochips/bluetooth/model/PhoneBookModel;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/autochips/bluetooth/model/MyCall;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/autochips/bluetooth/model/MyCall;->state:I

    return v0
.end method

.method public hold()V
    .locals 0

    return-void
.end method

.method public isActivated()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/autochips/bluetooth/model/MyCall;->isActivated:Z

    return v0
.end method

.method public isBluetoothCall()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShouldSendNotification()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/autochips/bluetooth/model/MyCall;->isShouldSendNotification:Z

    return v0
.end method

.method public playDtmfTone(C)V
    .locals 0

    return-void
.end method

.method public reject()V
    .locals 0

    return-void
.end method

.method public setActivated(Z)V
    .locals 4

    .line 89
    iput-boolean p1, p0, Lcom/autochips/bluetooth/model/MyCall;->isActivated:Z

    .line 90
    iget-wide v0, p0, Lcom/autochips/bluetooth/model/MyCall;->activeTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autochips/bluetooth/model/MyCall;->activeTime:J

    :cond_0
    return-void
.end method

.method public setAudioConnectState(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/autochips/bluetooth/model/MyCall;->audioConnectState:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/autochips/bluetooth/model/MyCall;->phoneBookModel:Lcom/autochips/bluetooth/model/PhoneBookModel;

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setName(Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/autochips/bluetooth/model/MyCall;->name:Ljava/lang/String;

    return-void
.end method

.method public setShouldSendNotification(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lcom/autochips/bluetooth/model/MyCall;->isShouldSendNotification:Z

    return-void
.end method

.method public setState(I)V
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this.state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/model/MyCall;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MyCall"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget v0, p0, Lcom/autochips/bluetooth/model/MyCall;->state:I

    const/4 v1, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/autochips/bluetooth/model/MyCall;->phoneBookModel:Lcom/autochips/bluetooth/model/PhoneBookModel;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setCallType(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_2

    .line 179
    iget-object v0, p0, Lcom/autochips/bluetooth/model/MyCall;->phoneBookModel:Lcom/autochips/bluetooth/model/PhoneBookModel;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setCallType(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/autochips/bluetooth/model/MyCall;->phoneBookModel:Lcom/autochips/bluetooth/model/PhoneBookModel;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setCallType(I)V

    .line 188
    :cond_2
    :goto_0
    iput p1, p0, Lcom/autochips/bluetooth/model/MyCall;->state:I

    return-void
.end method

.method public unHold()V
    .locals 2

    const-string v0, "MyCall"

    const-string v1, "unHold"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->unHold()V

    return-void
.end method
