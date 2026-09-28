.class Lcom/autochips/bluetooth/event/BTObserverManager$2;
.super Ljava/lang/Object;
.source "BTObserverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/event/BTObserverManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/event/BTObserverManager;

.field final synthetic val$eventMail:Lcom/carlos/eventlibrary/EventMail;

.field final synthetic val$mailFlag:I


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/event/BTObserverManager;ILcom/carlos/eventlibrary/EventMail;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/autochips/bluetooth/event/BTObserverManager$2;->this$0:Lcom/autochips/bluetooth/event/BTObserverManager;

    iput p2, p0, Lcom/autochips/bluetooth/event/BTObserverManager$2;->val$mailFlag:I

    iput-object p3, p0, Lcom/autochips/bluetooth/event/BTObserverManager$2;->val$eventMail:Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 276
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager$2;->this$0:Lcom/autochips/bluetooth/event/BTObserverManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/event/BTObserverManager;->access$300(Lcom/autochips/bluetooth/event/BTObserverManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 277
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 279
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    .line 284
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/autochips/bluetooth/event/BTObserverManager$2;->this$0:Lcom/autochips/bluetooth/event/BTObserverManager;

    invoke-static {v2}, Lcom/autochips/bluetooth/event/BTObserverManager;->access$400(Lcom/autochips/bluetooth/event/BTObserverManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/autochips/bluetooth/event/BTObserverManager$2$1;

    invoke-direct {v3, p0, v1}, Lcom/autochips/bluetooth/event/BTObserverManager$2$1;-><init>(Lcom/autochips/bluetooth/event/BTObserverManager$2;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager$2;->this$0:Lcom/autochips/bluetooth/event/BTObserverManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/event/BTObserverManager;->access$500(Lcom/autochips/bluetooth/event/BTObserverManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/IRemoteServiceCallback;

    if-eqz v1, :cond_3

    .line 304
    invoke-interface {v1}, Lcom/autochips/bluetooth/IRemoteServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 306
    :try_start_0
    iget v2, p0, Lcom/autochips/bluetooth/event/BTObserverManager$2;->val$mailFlag:I

    sget-object v3, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    iget-object v4, p0, Lcom/autochips/bluetooth/event/BTObserverManager$2;->val$eventMail:Lcom/carlos/eventlibrary/EventMail;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/autochips/bluetooth/IRemoteServiceCallback;->notifyEventMail(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 308
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_4
    return-void
.end method
