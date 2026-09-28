.class Lcom/autochips/bluetooth/event/BTObserverManager$1;
.super Ljava/lang/Object;
.source "BTObserverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V
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

    .line 176
    iput-object p1, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1;->this$0:Lcom/autochips/bluetooth/event/BTObserverManager;

    iput p2, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1;->val$mailFlag:I

    iput-object p3, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1;->val$eventMail:Lcom/carlos/eventlibrary/EventMail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 180
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1;->this$0:Lcom/autochips/bluetooth/event/BTObserverManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/event/BTObserverManager;->access$000(Lcom/autochips/bluetooth/event/BTObserverManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 181
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 183
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/event/IBTObserver;

    iget v2, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1;->val$mailFlag:I

    iget-object v3, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1;->val$eventMail:Lcom/carlos/eventlibrary/EventMail;

    invoke-interface {v1, v2, v3}, Lcom/autochips/bluetooth/event/IBTObserver;->handleEvent(ILcom/carlos/eventlibrary/EventMail;)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1;->this$0:Lcom/autochips/bluetooth/event/BTObserverManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/event/BTObserverManager;->access$100(Lcom/autochips/bluetooth/event/BTObserverManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 196
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 198
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 202
    :cond_3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_4

    .line 203
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 207
    :cond_4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/event/IBTObserver;

    iget v2, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1;->val$mailFlag:I

    iget-object v3, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1;->val$eventMail:Lcom/carlos/eventlibrary/EventMail;

    invoke-interface {v1, v2, v3}, Lcom/autochips/bluetooth/event/IBTObserver;->handleEvent(ILcom/carlos/eventlibrary/EventMail;)V

    goto :goto_1

    .line 210
    :cond_5
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1;->this$0:Lcom/autochips/bluetooth/event/BTObserverManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/event/BTObserverManager;->access$200(Lcom/autochips/bluetooth/event/BTObserverManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 211
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 212
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 213
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    .line 214
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 217
    :cond_6
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_7

    .line 218
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    .line 222
    :cond_7
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/event/IBTObserver;

    iget v2, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1;->val$mailFlag:I

    iget-object v3, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1;->val$eventMail:Lcom/carlos/eventlibrary/EventMail;

    invoke-interface {v1, v2, v3}, Lcom/autochips/bluetooth/event/IBTObserver;->handleEvent(ILcom/carlos/eventlibrary/EventMail;)V

    goto :goto_2

    .line 225
    :cond_8
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1;->this$0:Lcom/autochips/bluetooth/event/BTObserverManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/event/BTObserverManager;->access$300(Lcom/autochips/bluetooth/event/BTObserverManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 226
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 227
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 228
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    .line 229
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 232
    :cond_9
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_a

    .line 233
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    .line 237
    :cond_a
    iget-object v2, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1;->this$0:Lcom/autochips/bluetooth/event/BTObserverManager;

    invoke-static {v2}, Lcom/autochips/bluetooth/event/BTObserverManager;->access$400(Lcom/autochips/bluetooth/event/BTObserverManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/autochips/bluetooth/event/BTObserverManager$1$1;

    invoke-direct {v3, p0, v1}, Lcom/autochips/bluetooth/event/BTObserverManager$1$1;-><init>(Lcom/autochips/bluetooth/event/BTObserverManager$1;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 251
    :cond_b
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1;->this$0:Lcom/autochips/bluetooth/event/BTObserverManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/event/BTObserverManager;->access$500(Lcom/autochips/bluetooth/event/BTObserverManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autochips/bluetooth/IRemoteServiceCallback;

    if-eqz v1, :cond_c

    .line 253
    invoke-interface {v1}, Lcom/autochips/bluetooth/IRemoteServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 255
    :try_start_0
    iget v2, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1;->val$mailFlag:I

    sget-object v3, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    iget-object v4, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1;->val$eventMail:Lcom/carlos/eventlibrary/EventMail;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/autochips/bluetooth/IRemoteServiceCallback;->notifyEventMail(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 257
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    :cond_d
    return-void
.end method
