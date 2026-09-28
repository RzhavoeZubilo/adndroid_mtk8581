.class Lcom/autochips/bluetooth/music/module/BTMusicModule$3;
.super Lcom/autochips/bluetooth/IRemoteServiceCallback$Stub;
.source "BTMusicModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/music/module/BTMusicModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/music/module/BTMusicModule;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/music/module/BTMusicModule;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/autochips/bluetooth/music/module/BTMusicModule$3;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicModule;

    invoke-direct {p0}, Lcom/autochips/bluetooth/IRemoteServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyEventMail(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicModule$3;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicModule;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicModule;->access$200(Lcom/autochips/bluetooth/music/module/BTMusicModule;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicModule$3;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicModule;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicModule;->access$200(Lcom/autochips/bluetooth/music/module/BTMusicModule;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicModule$3;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicModule;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicModule;->access$200(Lcom/autochips/bluetooth/music/module/BTMusicModule;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicModule$3;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicModule;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicModule;->access$200(Lcom/autochips/bluetooth/music/module/BTMusicModule;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/autochips/bluetooth/music/module/BTMusicModule$3;->this$0:Lcom/autochips/bluetooth/music/module/BTMusicModule;

    invoke-static {v0}, Lcom/autochips/bluetooth/music/module/BTMusicModule;->access$200(Lcom/autochips/bluetooth/music/module/BTMusicModule;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/event/IBTObserver;

    sget-object v1, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    const-class v2, Lcom/carlos/eventlibrary/EventMail;

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/carlos/eventlibrary/EventMail;

    invoke-interface {v0, p1, p2}, Lcom/autochips/bluetooth/event/IBTObserver;->handleEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_0
    return-void
.end method
