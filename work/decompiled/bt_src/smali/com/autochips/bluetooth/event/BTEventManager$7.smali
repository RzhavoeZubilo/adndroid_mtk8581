.class Lcom/autochips/bluetooth/event/BTEventManager$7;
.super Landroid/os/Handler;
.source "BTEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/event/BTEventManager;->initBackThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/event/BTEventManager;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/event/BTEventManager;Landroid/os/Looper;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lcom/autochips/bluetooth/event/BTEventManager$7;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 910
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/autochips/bluetooth/event/BTEventManager;->MSG_BT_STATUS_NOTIFY:I

    if-ne v0, v1, :cond_0

    .line 911
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    .line 912
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTEventManager$7;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/event/BTEventManager;->access$100(Lcom/autochips/bluetooth/event/BTEventManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/autochips/bluetooth/event/BTEventManager;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
