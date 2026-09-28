.class public abstract Lcom/can/assist/CanProxy;
.super Lcom/can/assist/AProxy;
.source "CanProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/assist/CanProxy$RegProxy_Info;
    }
.end annotation


# instance fields
.field protected final TAG:Ljava/lang/String;

.field public mArrayRegProxyInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/can/assist/CanProxy$RegProxy_Info;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Landroid/content/ServiceConnection;

.field public mProxyContext:Landroid/content/Context;

.field public mProxyMessenger:Landroid/os/Messenger;

.field public mServiceMessenger:Landroid/os/Messenger;

.field public mStrUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/can/assist/AProxy;-><init>()V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/can/assist/CanProxy;->mStrUserName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/can/assist/CanProxy;->mProxyContext:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/can/assist/CanProxy;->mProxyMessenger:Landroid/os/Messenger;

    .line 35
    iput-object v0, p0, Lcom/can/assist/CanProxy;->mServiceMessenger:Landroid/os/Messenger;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/can/assist/CanProxy;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/can/assist/CanProxy;->mArrayRegProxyInfo:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Lcom/can/assist/CanProxy$1;

    invoke-direct {v0, p0}, Lcom/can/assist/CanProxy$1;-><init>(Lcom/can/assist/CanProxy;)V

    iput-object v0, p0, Lcom/can/assist/CanProxy;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private doBindService()V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/can/assist/CanProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++doBindService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/can/assist/CanProxy;->mProxyContext:Landroid/content/Context;

    const-class v2, Lcom/can/services/CanService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    iget-object v1, p0, Lcom/can/assist/CanProxy;->mProxyContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/can/assist/CanProxy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    .line 227
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 229
    iget-object p0, p0, Lcom/can/assist/CanProxy;->TAG:Ljava/lang/String;

    const-string v0, "--doBindService"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unBindService()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/can/assist/CanProxy;->mProxyContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/can/assist/CanProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public RegisterProxy(II)V
    .locals 1

    .line 141
    new-instance v0, Lcom/can/assist/CanProxy$RegProxy_Info;

    invoke-direct {v0, p0}, Lcom/can/assist/CanProxy$RegProxy_Info;-><init>(Lcom/can/assist/CanProxy;)V

    and-int/lit16 p1, p1, 0xff

    .line 142
    iput p1, v0, Lcom/can/assist/CanProxy$RegProxy_Info;->iCmdId:I

    .line 143
    iput p2, v0, Lcom/can/assist/CanProxy$RegProxy_Info;->ilen:I

    .line 145
    iget-object p0, p0, Lcom/can/assist/CanProxy;->mArrayRegProxyInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public deInit()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/can/assist/CanProxy;->unBindService()V

    return-void
.end method

.method public deregisterProxy(II)Z
    .locals 3

    const/4 v0, 0x0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/can/assist/CanProxy;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/can/assist/CanProxy;->mStrUserName:Ljava/lang/String;

    iget-object v2, p0, Lcom/can/assist/CanProxy;->mProxyMessenger:Landroid/os/Messenger;

    invoke-static {p1, p2, v1, v2}, Lcom/can/assist/CanMessage;->getDeregisterMessage(IILjava/lang/String;Landroid/os/Messenger;)Landroid/os/Message;

    move-result-object p1

    .line 104
    iget-object p0, p0, Lcom/can/assist/CanProxy;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public registerProxy(II)Z
    .locals 3

    const/4 v0, 0x0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/can/assist/CanProxy;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/can/assist/CanProxy;->mStrUserName:Ljava/lang/String;

    iget-object v2, p0, Lcom/can/assist/CanProxy;->mProxyMessenger:Landroid/os/Messenger;

    invoke-static {p1, p2, v1, v2}, Lcom/can/assist/CanMessage;->getRegisterMessage(IILjava/lang/String;Landroid/os/Messenger;)Landroid/os/Message;

    move-result-object p1

    .line 77
    iget-object p0, p0, Lcom/can/assist/CanProxy;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public sendMsg2Can(Landroid/os/Message;)Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/can/assist/CanProxy;->mServiceMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 173
    iget-object p0, p0, Lcom/can/assist/CanProxy;->TAG:Ljava/lang/String;

    const-string p1, "sendMsg2Can:mServiceMessenger is null"

    invoke-static {p0, p1}, Lcom/can/tool/CanInfo;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 176
    iget-object p0, p0, Lcom/can/assist/CanProxy;->TAG:Ljava/lang/String;

    const-string p1, "sendMsg2Can:msg is fiter!"

    invoke-static {p0, p1}, Lcom/can/tool/CanInfo;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/can/assist/CanProxy;->mProxyMessenger:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 181
    iget-object p0, p0, Lcom/can/assist/CanProxy;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {p0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 189
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 186
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public setProtocol()V
    .locals 0

    return-void
.end method

.method public start(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p3, p0, Lcom/can/assist/CanProxy;->mStrUserName:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/can/assist/CanProxy;->mProxyContext:Landroid/content/Context;

    .line 55
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/can/assist/CanProxy;->mProxyMessenger:Landroid/os/Messenger;

    .line 56
    invoke-direct {p0}, Lcom/can/assist/CanProxy;->doBindService()V

    return-void
.end method
