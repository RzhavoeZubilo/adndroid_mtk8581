.class public Lcom/autochips/bluetooth/event/BTObserverManager;
.super Ljava/lang/Object;
.source "BTObserverManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BTObserverManager"

.field private static btObserverManager:Lcom/autochips/bluetooth/event/BTObserverManager;


# instance fields
.field private extendObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autochips/bluetooth/event/IBTObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private firstObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autochips/bluetooth/event/IBTObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private mainThreadObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autochips/bluetooth/event/IBTObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private remoteServiceCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/IRemoteServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private secondObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autochips/bluetooth/event/IBTObserver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->firstObservers:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->secondObservers:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->mainThreadObservers:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->extendObservers:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->remoteServiceCallbacks:Ljava/util/List;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/event/BTObserverManager;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->firstObservers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/event/BTObserverManager;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->secondObservers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/event/BTObserverManager;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->extendObservers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/event/BTObserverManager;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->mainThreadObservers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/event/BTObserverManager;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/event/BTObserverManager;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->remoteServiceCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;
    .locals 2

    .line 61
    sget-object v0, Lcom/autochips/bluetooth/event/BTObserverManager;->btObserverManager:Lcom/autochips/bluetooth/event/BTObserverManager;

    if-nez v0, :cond_1

    .line 62
    const-class v0, Lcom/autochips/bluetooth/event/BTObserverManager;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/event/BTObserverManager;->btObserverManager:Lcom/autochips/bluetooth/event/BTObserverManager;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lcom/autochips/bluetooth/event/BTObserverManager;

    invoke-direct {v1}, Lcom/autochips/bluetooth/event/BTObserverManager;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/event/BTObserverManager;->btObserverManager:Lcom/autochips/bluetooth/event/BTObserverManager;

    .line 65
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 67
    :cond_1
    :goto_0
    sget-object v0, Lcom/autochips/bluetooth/event/BTObserverManager;->btObserverManager:Lcom/autochips/bluetooth/event/BTObserverManager;

    return-object v0
.end method


# virtual methods
.method public registerExtendObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->extendObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 146
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 148
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->extendObservers:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerFirstObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->firstObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 80
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 82
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->firstObservers:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerMainThreadObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->mainThreadObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 126
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->mainThreadObservers:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerRemoteCallBack(Lcom/autochips/bluetooth/IRemoteServiceCallback;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->remoteServiceCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->remoteServiceCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerSecondObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->secondObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 102
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 104
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager;->secondObservers:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 1

    .line 176
    new-instance v0, Lcom/autochips/bluetooth/event/BTObserverManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/autochips/bluetooth/event/BTObserverManager$1;-><init>(Lcom/autochips/bluetooth/event/BTObserverManager;ILcom/carlos/eventlibrary/EventMail;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 1

    .line 272
    new-instance v0, Lcom/autochips/bluetooth/event/BTObserverManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/autochips/bluetooth/event/BTObserverManager$2;-><init>(Lcom/autochips/bluetooth/event/BTObserverManager;ILcom/carlos/eventlibrary/EventMail;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method
