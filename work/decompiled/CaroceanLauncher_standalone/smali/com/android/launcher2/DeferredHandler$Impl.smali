.class Lcom/android/launcher2/DeferredHandler$Impl;
.super Landroid/os/Handler;
.source "DeferredHandler.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DeferredHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Impl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DeferredHandler;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/DeferredHandler;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/DeferredHandler;Lcom/android/launcher2/DeferredHandler$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeferredHandler$Impl;-><init>(Lcom/android/launcher2/DeferredHandler;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    invoke-static {p1}, Lcom/android/launcher2/DeferredHandler;->access$100(Lcom/android/launcher2/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object p1

    monitor-enter p1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    invoke-static {v0}, Lcom/android/launcher2/DeferredHandler;->access$100(Lcom/android/launcher2/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    monitor-exit p1

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    invoke-static {v0}, Lcom/android/launcher2/DeferredHandler;->access$100(Lcom/android/launcher2/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 51
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 52
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 54
    iget-object p1, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    invoke-static {p1}, Lcom/android/launcher2/DeferredHandler;->access$100(Lcom/android/launcher2/DeferredHandler;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 55
    :try_start_1
    iget-object p0, p0, Lcom/android/launcher2/DeferredHandler$Impl;->this$0:Lcom/android/launcher2/DeferredHandler;

    invoke-virtual {p0}, Lcom/android/launcher2/DeferredHandler;->scheduleNextLocked()V

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 52
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public queueIdle()Z
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeferredHandler$Impl;->handleMessage(Landroid/os/Message;)V

    const/4 p0, 0x0

    return p0
.end method
