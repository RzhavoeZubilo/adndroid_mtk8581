.class Lcom/autochips/bluetooth/service/BTService$1$5;
.super Ljava/lang/Object;
.source "BTService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/service/BTService$1;->registerNotify(Lcom/autochips/bluetooth/IRemoteServiceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/service/BTService$1;

.field final synthetic val$callback:Lcom/autochips/bluetooth/IRemoteServiceCallback;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/service/BTService$1;Lcom/autochips/bluetooth/IRemoteServiceCallback;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/autochips/bluetooth/service/BTService$1$5;->this$1:Lcom/autochips/bluetooth/service/BTService$1;

    iput-object p2, p0, Lcom/autochips/bluetooth/service/BTService$1$5;->val$callback:Lcom/autochips/bluetooth/IRemoteServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 133
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/service/BTService$1$5;->val$callback:Lcom/autochips/bluetooth/IRemoteServiceCallback;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerRemoteCallBack(Lcom/autochips/bluetooth/IRemoteServiceCallback;)V

    return-void
.end method
