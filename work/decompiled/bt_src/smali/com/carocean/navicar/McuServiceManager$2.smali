.class Lcom/carocean/navicar/McuServiceManager$2;
.super Ljava/lang/Object;
.source "McuServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carocean/navicar/McuServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/carocean/navicar/McuServiceManager;


# direct methods
.method constructor <init>(Lcom/carocean/navicar/McuServiceManager;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/carocean/navicar/McuServiceManager$2;->this$0:Lcom/carocean/navicar/McuServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 314
    sget-object p1, Lcom/carocean/navicar/McuServiceManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mcu service connected. thread id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object p1, p0, Lcom/carocean/navicar/McuServiceManager$2;->this$0:Lcom/carocean/navicar/McuServiceManager;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/carocean/navicar/McuServiceManager;->access$302(Lcom/carocean/navicar/McuServiceManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 316
    iget-object p1, p0, Lcom/carocean/navicar/McuServiceManager$2;->this$0:Lcom/carocean/navicar/McuServiceManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/carocean/navicar/McuServiceManager;->access$402(Lcom/carocean/navicar/McuServiceManager;Z)Z

    .line 320
    iget-object p1, p0, Lcom/carocean/navicar/McuServiceManager$2;->this$0:Lcom/carocean/navicar/McuServiceManager;

    monitor-enter p1

    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/carocean/navicar/McuServiceManager$2;->this$0:Lcom/carocean/navicar/McuServiceManager;

    invoke-static {v0}, Lcom/carocean/navicar/McuServiceManager;->access$000(Lcom/carocean/navicar/McuServiceManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/carocean/navicar/McuServiceManager$2;->this$0:Lcom/carocean/navicar/McuServiceManager;

    invoke-static {v0}, Lcom/carocean/navicar/McuServiceManager;->access$000(Lcom/carocean/navicar/McuServiceManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 325
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 326
    :goto_0
    iget-object v3, p0, Lcom/carocean/navicar/McuServiceManager$2;->this$0:Lcom/carocean/navicar/McuServiceManager;

    invoke-static {v3}, Lcom/carocean/navicar/McuServiceManager;->access$000(Lcom/carocean/navicar/McuServiceManager;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 327
    iget-object v3, p0, Lcom/carocean/navicar/McuServiceManager$2;->this$0:Lcom/carocean/navicar/McuServiceManager;

    invoke-static {v3}, Lcom/carocean/navicar/McuServiceManager;->access$000(Lcom/carocean/navicar/McuServiceManager;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v0, v2

    .line 328
    iget-object v3, p0, Lcom/carocean/navicar/McuServiceManager$2;->this$0:Lcom/carocean/navicar/McuServiceManager;

    invoke-static {v3}, Lcom/carocean/navicar/McuServiceManager;->access$000(Lcom/carocean/navicar/McuServiceManager;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/carocean/navicar/McuServiceManager$2;->this$0:Lcom/carocean/navicar/McuServiceManager;

    invoke-static {v2, v0, p2}, Lcom/carocean/navicar/McuServiceManager;->access$500(Lcom/carocean/navicar/McuServiceManager;[IZ)V

    .line 332
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/McuServiceManager$DataListener;

    const/16 v1, 0xff

    const/4 v2, 0x0

    .line 333
    invoke-interface {v0, v1, v2}, Lcom/carocean/navicar/McuServiceManager$DataListener;->onReceive(I[B)V

    goto :goto_1

    .line 336
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 341
    sget-object p1, Lcom/carocean/navicar/McuServiceManager;->TAG:Ljava/lang/String;

    const-string v0, "mcu service disconnected."

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object p1, p0, Lcom/carocean/navicar/McuServiceManager$2;->this$0:Lcom/carocean/navicar/McuServiceManager;

    invoke-static {p1}, Lcom/carocean/navicar/McuServiceManager;->access$100(Lcom/carocean/navicar/McuServiceManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/carocean/navicar/McuServiceManager$2;->this$0:Lcom/carocean/navicar/McuServiceManager;

    invoke-static {v0}, Lcom/carocean/navicar/McuServiceManager;->access$600(Lcom/carocean/navicar/McuServiceManager;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 343
    iget-object p1, p0, Lcom/carocean/navicar/McuServiceManager$2;->this$0:Lcom/carocean/navicar/McuServiceManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/carocean/navicar/McuServiceManager;->access$302(Lcom/carocean/navicar/McuServiceManager;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 344
    iget-object p1, p0, Lcom/carocean/navicar/McuServiceManager$2;->this$0:Lcom/carocean/navicar/McuServiceManager;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/carocean/navicar/McuServiceManager;->access$402(Lcom/carocean/navicar/McuServiceManager;Z)Z

    .line 345
    iget-object p1, p0, Lcom/carocean/navicar/McuServiceManager$2;->this$0:Lcom/carocean/navicar/McuServiceManager;

    invoke-static {p1, v0}, Lcom/carocean/navicar/McuServiceManager;->access$102(Lcom/carocean/navicar/McuServiceManager;Landroid/content/Context;)Landroid/content/Context;

    return-void
.end method
