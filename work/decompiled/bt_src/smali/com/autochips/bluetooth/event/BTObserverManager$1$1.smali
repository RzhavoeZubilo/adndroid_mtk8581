.class Lcom/autochips/bluetooth/event/BTObserverManager$1$1;
.super Ljava/lang/Object;
.source "BTObserverManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/event/BTObserverManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/event/BTObserverManager$1;

.field final synthetic val$ibtObserverWeakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/event/BTObserverManager$1;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1$1;->this$1:Lcom/autochips/bluetooth/event/BTObserverManager$1;

    iput-object p2, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1$1;->val$ibtObserverWeakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1$1;->val$ibtObserverWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/event/IBTObserver;

    if-eqz v0, :cond_0

    .line 243
    iget-object v1, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1$1;->this$1:Lcom/autochips/bluetooth/event/BTObserverManager$1;

    iget v1, v1, Lcom/autochips/bluetooth/event/BTObserverManager$1;->val$mailFlag:I

    iget-object v2, p0, Lcom/autochips/bluetooth/event/BTObserverManager$1$1;->this$1:Lcom/autochips/bluetooth/event/BTObserverManager$1;

    iget-object v2, v2, Lcom/autochips/bluetooth/event/BTObserverManager$1;->val$eventMail:Lcom/carlos/eventlibrary/EventMail;

    invoke-interface {v0, v1, v2}, Lcom/autochips/bluetooth/event/IBTObserver;->handleEvent(ILcom/carlos/eventlibrary/EventMail;)V

    goto :goto_0

    :cond_0
    const-string v0, "BTObserverManager"

    const-string v1, "ibtObserver == null"

    .line 245
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
