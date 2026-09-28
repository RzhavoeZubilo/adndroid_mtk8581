.class Lcom/autochips/bluetooth/info/BTPBAPManager$4;
.super Ljava/lang/Object;
.source "BTPBAPManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/info/BTPBAPManager;->disableSyncContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/info/BTPBAPManager;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$4;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "BTPBAPManager"

    const-string v1, "disableSyncContact"

    .line 478
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$4;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$502(Lcom/autochips/bluetooth/info/BTPBAPManager;I)I

    .line 480
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$4;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$500(Lcom/autochips/bluetooth/info/BTPBAPManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->setSyncContactState(I)V

    .line 481
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    .line 482
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$4;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$600(Lcom/autochips/bluetooth/info/BTPBAPManager;)V

    .line 483
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$4;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$502(Lcom/autochips/bluetooth/info/BTPBAPManager;I)I

    .line 484
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object v0

    iget-object v3, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$4;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v3}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$500(Lcom/autochips/bluetooth/info/BTPBAPManager;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->setSyncContactState(I)V

    .line 485
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    return-void
.end method
