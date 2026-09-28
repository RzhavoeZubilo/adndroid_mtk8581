.class public Lcom/autochips/bluetooth/model/PhoneBookDownload;
.super Ljava/lang/Object;
.source "PhoneBookDownload.java"


# static fields
.field public static final STATE_DOWNLOADING:I = 0x1

.field public static final STATE_DOWNLOAD_ERROR:I = 0x3

.field public static final STATE_DOWNLOAD_FINISHED:I = 0x2

.field public static final STATE_DOWNLOAD_HANDLE:I = 0x4

.field public static final STATE_NOT_START:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PhoneBookDownloadState"


# instance fields
.field private callLogDownloadState:I

.field private callLogIndex:I

.field private contactDownloadState:I

.field private contactIndex:I

.field private incomingCallsSize:I

.field private missedCallsSize:I

.field private myBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

.field private outgoingCallsSize:I

.field private phoneContactSize:I

.field private simContactSize:I


# direct methods
.method public constructor <init>(Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->phoneContactSize:I

    .line 46
    iput v0, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->simContactSize:I

    .line 50
    iput v0, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->contactIndex:I

    .line 59
    iput v0, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->contactDownloadState:I

    .line 61
    iput v0, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->incomingCallsSize:I

    .line 62
    iput v0, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->outgoingCallsSize:I

    .line 63
    iput v0, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->missedCallsSize:I

    .line 67
    iput v0, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->callLogIndex:I

    .line 75
    iput v0, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->callLogDownloadState:I

    .line 78
    iput-object p1, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->myBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneBookDownloadState new mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PhoneBookDownloadState"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCallLogDownloadState()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->callLogDownloadState:I

    return v0
.end method

.method public getCallLogIndex()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->callLogIndex:I

    return v0
.end method

.method public getCallLogSize()I
    .locals 2

    .line 127
    iget v0, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->incomingCallsSize:I

    iget v1, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->outgoingCallsSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->missedCallsSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getContactDownloadState()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->contactDownloadState:I

    return v0
.end method

.method public getContactIndex()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->contactIndex:I

    return v0
.end method

.method public getContactSize()I
    .locals 2

    .line 106
    iget v0, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->simContactSize:I

    iget v1, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->phoneContactSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMyBluetoothDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->myBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    return-object v0
.end method

.method public setCallLogDownloadState(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->callLogDownloadState:I

    return-void
.end method

.method public setCallLogIndex(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->callLogIndex:I

    return-void
.end method

.method public setContactDownloadState(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->contactDownloadState:I

    return-void
.end method

.method public setContactIndex(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->contactIndex:I

    return-void
.end method

.method public setIncomingCallsSize(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->incomingCallsSize:I

    return-void
.end method

.method public setMissedCallsSize(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->missedCallsSize:I

    return-void
.end method

.method public setOutgoingCallsSize(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->outgoingCallsSize:I

    return-void
.end method

.method public setPhoneContactSize(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->phoneContactSize:I

    return-void
.end method

.method public setSimContactSize(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/autochips/bluetooth/model/PhoneBookDownload;->simContactSize:I

    return-void
.end method
