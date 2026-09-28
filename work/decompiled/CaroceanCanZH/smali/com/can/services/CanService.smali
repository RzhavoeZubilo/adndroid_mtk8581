.class public Lcom/can/services/CanService;
.super Landroid/app/Service;
.source "CanService.java"

# interfaces
.implements Lcom/can/assist/CanContant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/services/CanService$RxData;,
        Lcom/can/services/CanService$UserInfo;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mArrayUserInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/can/services/CanService$UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCanRxTx:Lcom/can/assist/Platforms$Can;

.field public mHandler:Landroid/os/Handler;

.field public mServiceMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/can/services/CanService;->mCanRxTx:Lcom/can/assist/Platforms$Can;

    const-string v0, "CanService"

    .line 38
    iput-object v0, p0, Lcom/can/services/CanService;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/can/services/CanService;->mArrayUserInfos:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Lcom/can/services/CanService$1;

    invoke-direct {v0, p0}, Lcom/can/services/CanService$1;-><init>(Lcom/can/services/CanService;)V

    iput-object v0, p0, Lcom/can/services/CanService;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/can/services/CanService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/can/services/CanService;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Lcom/can/services/CanService;Landroid/os/Message;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/can/services/CanService;->setProtocol(Landroid/os/Message;)V

    return-void
.end method

.method private setProtocol(Landroid/os/Message;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected deregisterUser(Landroid/os/Message;)V
    .locals 7

    .line 192
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Msg_Can_Reg_User"

    .line 193
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++deregisterUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CanService"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p0, p0, Lcom/can/services/CanService;->mArrayUserInfos:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    .line 198
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/can/services/CanService$UserInfo;

    .line 201
    iget v5, v4, Lcom/can/services/CanService$UserInfo;->iCmdId:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v6, :cond_0

    iget v5, v4, Lcom/can/services/CanService$UserInfo;->iSubId:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v6, :cond_0

    iget-object v5, v4, Lcom/can/services/CanService$UserInfo;->mMessenger:Landroid/os/Messenger;

    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 202
    invoke-virtual {v5, v6}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/can/services/CanService$UserInfo;->mName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 203
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deregisterUser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/can/services/CanService$UserInfo;->iCmdId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/can/services/CanService$UserInfo;->iSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/can/services/CanService$UserInfo;->mName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-gtz v1, :cond_2

    const-string p0, "--deregisterUser: failed, no user"

    .line 212
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string p0, "--deregisterUser: OK"

    .line 214
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/can/services/CanService;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 44
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "CanService"

    const-string v1, "CanService is active!"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/can/services/CanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/can/assist/CanXml;->getInstance(Landroid/content/Context;)Lcom/can/assist/CanXml;

    move-result-object v0

    invoke-virtual {v0}, Lcom/can/assist/CanXml;->getPlatforms()Lcom/can/assist/Platforms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/can/assist/Platforms;->getCanRxTx()Lcom/can/assist/Platforms$Can;

    move-result-object v0

    iput-object v0, p0, Lcom/can/services/CanService;->mCanRxTx:Lcom/can/assist/Platforms$Can;

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/can/services/CanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/can/assist/Platforms$Can;->Init(Landroid/content/Context;)V

    .line 50
    iget-object v0, p0, Lcom/can/services/CanService;->mCanRxTx:Lcom/can/assist/Platforms$Can;

    new-instance v1, Lcom/can/services/CanService$RxData;

    invoke-direct {v1, p0}, Lcom/can/services/CanService$RxData;-><init>(Lcom/can/services/CanService;)V

    invoke-interface {v0, v1}, Lcom/can/assist/Platforms$Can;->setRxDataLister(Lcom/can/assist/Platforms$Can$OnRxDataLister;)V

    .line 51
    iget-object v0, p0, Lcom/can/services/CanService;->mCanRxTx:Lcom/can/assist/Platforms$Can;

    invoke-virtual {p0}, Lcom/can/services/CanService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/can/assist/CanXml;->getInstance(Landroid/content/Context;)Lcom/can/assist/CanXml;

    move-result-object v1

    invoke-virtual {v1}, Lcom/can/assist/CanXml;->getBand()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/can/assist/Platforms$Can;->setEnvironment(I)V

    .line 52
    iget-object p0, p0, Lcom/can/services/CanService;->mCanRxTx:Lcom/can/assist/Platforms$Can;

    invoke-interface {p0}, Lcom/can/assist/Platforms$Can;->setRxReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 62
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 65
    :try_start_0
    iget-object p0, p0, Lcom/can/services/CanService;->mCanRxTx:Lcom/can/assist/Platforms$Can;

    invoke-interface {p0}, Lcom/can/assist/Platforms$Can;->DeInit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p2, 0x1

    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method protected registerUser(Landroid/os/Message;)V
    .locals 9

    const-string v0, "CanService"

    const-string v1, "++registerUser++"

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const-string v2, "Msg_Can_Reg_User"

    const-string v3, " "

    const-string v4, " iSubId: "

    const-string v5, "--registerUser: iCmdId: "

    if-nez v1, :cond_0

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 148
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " error!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 147
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 152
    :cond_0
    new-instance v1, Lcom/can/services/CanService$UserInfo;

    invoke-direct {v1}, Lcom/can/services/CanService$UserInfo;-><init>()V

    .line 153
    iget v6, p1, Landroid/os/Message;->arg1:I

    iput v6, v1, Lcom/can/services/CanService$UserInfo;->iCmdId:I

    .line 154
    iget v6, p1, Landroid/os/Message;->arg2:I

    iput v6, v1, Lcom/can/services/CanService$UserInfo;->iSubId:I

    .line 155
    iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v6, v1, Lcom/can/services/CanService$UserInfo;->mMessenger:Landroid/os/Messenger;

    .line 156
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 157
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/can/services/CanService$UserInfo;->mName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 161
    iget-object v2, p0, Lcom/can/services/CanService;->mArrayUserInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/can/services/CanService$UserInfo;

    .line 162
    iget v7, v6, Lcom/can/services/CanService$UserInfo;->iCmdId:I

    iget v8, v1, Lcom/can/services/CanService$UserInfo;->iCmdId:I

    if-ne v7, v8, :cond_1

    iget v7, v6, Lcom/can/services/CanService$UserInfo;->iSubId:I

    iget v8, v1, Lcom/can/services/CanService$UserInfo;->iSubId:I

    if-ne v7, v8, :cond_1

    iget-object v7, v6, Lcom/can/services/CanService$UserInfo;->mMessenger:Landroid/os/Messenger;

    if-eqz v7, :cond_1

    iget-object v6, v6, Lcom/can/services/CanService$UserInfo;->mMessenger:Landroid/os/Messenger;

    iget-object v7, v1, Lcom/can/services/CanService$UserInfo;->mMessenger:Landroid/os/Messenger;

    .line 163
    invoke-virtual {v6, v7}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 p1, 0x1

    :cond_2
    if-gtz p1, :cond_3

    .line 171
    iget-object p0, p0, Lcom/can/services/CanService;->mArrayUserInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, v1, Lcom/can/services/CanService$UserInfo;->iCmdId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, v1, Lcom/can/services/CanService$UserInfo;->iSubId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, v1, Lcom/can/services/CanService$UserInfo;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " registered successfully"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, v1, Lcom/can/services/CanService$UserInfo;->iCmdId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, v1, Lcom/can/services/CanService$UserInfo;->iSubId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, v1, Lcom/can/services/CanService$UserInfo;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " had been registered"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "--registerUser--"

    .line 180
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected send2Prot(Landroid/os/Message;)Z
    .locals 3

    .line 304
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Msg_Can_Tx"

    .line 305
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "Msg_Can_Tx_Cmd"

    const/4 v2, -0x1

    .line 306
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x0

    if-ne p1, v2, :cond_0

    return v1

    .line 311
    :cond_0
    invoke-static {v0}, Lcom/can/tool/CanInfo;->Tx([B)V

    .line 313
    :try_start_0
    iget-object p0, p0, Lcom/can/services/CanService;->mCanRxTx:Lcom/can/assist/Platforms$Can;

    array-length v2, v0

    invoke-interface {p0, p1, v0, v2}, Lcom/can/assist/Platforms$Can;->sendData(I[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 316
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method protected send2User(Landroid/os/Message;)Z
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/can/services/CanService;->mArrayUserInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/can/services/CanService$UserInfo;

    .line 230
    :try_start_0
    iget v2, v1, Lcom/can/services/CanService$UserInfo;->iSubId:I

    if-nez v2, :cond_1

    .line 232
    iget v2, v1, Lcom/can/services/CanService$UserInfo;->iCmdId:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/can/services/CanService$UserInfo;->mMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, v1, Lcom/can/services/CanService$UserInfo;->mMessenger:Landroid/os/Messenger;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0

    .line 236
    :cond_1
    iget v2, v1, Lcom/can/services/CanService$UserInfo;->iCmdId:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_2

    iget v2, v1, Lcom/can/services/CanService$UserInfo;->iSubId:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-gt v2, v3, :cond_2

    iget-object v2, v1, Lcom/can/services/CanService$UserInfo;->mMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_2

    .line 239
    iget-object v2, v1, Lcom/can/services/CanService$UserInfo;->mMessenger:Landroid/os/Messenger;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_0

    .line 241
    :cond_2
    iget v2, v1, Lcom/can/services/CanService$UserInfo;->iCmdId:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/can/services/CanService$UserInfo;->iSubId:I

    iget v1, p1, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 249
    iget-object v3, p0, Lcom/can/services/CanService;->mArrayUserInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
