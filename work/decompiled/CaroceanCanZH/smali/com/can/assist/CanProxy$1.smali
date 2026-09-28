.class Lcom/can/assist/CanProxy$1;
.super Ljava/lang/Object;
.source "CanProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/assist/CanProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/assist/CanProxy;


# direct methods
.method constructor <init>(Lcom/can/assist/CanProxy;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/can/assist/CanProxy$1;->this$0:Lcom/can/assist/CanProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 211
    iget-object p1, p0, Lcom/can/assist/CanProxy$1;->this$0:Lcom/can/assist/CanProxy;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/can/assist/CanProxy;->mServiceMessenger:Landroid/os/Messenger;

    .line 213
    iget-object p1, p0, Lcom/can/assist/CanProxy$1;->this$0:Lcom/can/assist/CanProxy;

    invoke-virtual {p1}, Lcom/can/assist/CanProxy;->setProtocol()V

    .line 215
    iget-object p1, p0, Lcom/can/assist/CanProxy$1;->this$0:Lcom/can/assist/CanProxy;

    iget-object p1, p1, Lcom/can/assist/CanProxy;->mArrayRegProxyInfo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/can/assist/CanProxy$RegProxy_Info;

    .line 216
    iget-object v0, p0, Lcom/can/assist/CanProxy$1;->this$0:Lcom/can/assist/CanProxy;

    iget v1, p2, Lcom/can/assist/CanProxy$RegProxy_Info;->iCmdId:I

    iget p2, p2, Lcom/can/assist/CanProxy$RegProxy_Info;->ilen:I

    invoke-virtual {v0, v1, p2}, Lcom/can/assist/CanProxy;->registerProxy(II)Z

    goto :goto_0

    .line 219
    :cond_0
    iget-object p0, p0, Lcom/can/assist/CanProxy$1;->this$0:Lcom/can/assist/CanProxy;

    invoke-virtual {p0}, Lcom/can/assist/CanProxy;->Finish()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 201
    iget-object p1, p0, Lcom/can/assist/CanProxy$1;->this$0:Lcom/can/assist/CanProxy;

    iget-object p1, p1, Lcom/can/assist/CanProxy;->mArrayRegProxyInfo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/can/assist/CanProxy$RegProxy_Info;

    .line 202
    iget-object v1, p0, Lcom/can/assist/CanProxy$1;->this$0:Lcom/can/assist/CanProxy;

    iget v2, v0, Lcom/can/assist/CanProxy$RegProxy_Info;->iCmdId:I

    iget v0, v0, Lcom/can/assist/CanProxy$RegProxy_Info;->ilen:I

    invoke-virtual {v1, v2, v0}, Lcom/can/assist/CanProxy;->deregisterProxy(II)Z

    goto :goto_0

    .line 205
    :cond_0
    iget-object p0, p0, Lcom/can/assist/CanProxy$1;->this$0:Lcom/can/assist/CanProxy;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/can/assist/CanProxy;->mServiceMessenger:Landroid/os/Messenger;

    return-void
.end method
