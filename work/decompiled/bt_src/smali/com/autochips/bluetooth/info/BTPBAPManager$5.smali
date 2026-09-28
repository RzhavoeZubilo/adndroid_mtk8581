.class Lcom/autochips/bluetooth/info/BTPBAPManager$5;
.super Ljava/lang/Object;
.source "BTPBAPManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/info/BTPBAPManager;->openSyncContact()V
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

    .line 533
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$5;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "BTPBAPManager"

    const-string v1, "openSyncContact"

    .line 536
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$5;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$502(Lcom/autochips/bluetooth/info/BTPBAPManager;I)I

    .line 539
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$5;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v2}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$500(Lcom/autochips/bluetooth/info/BTPBAPManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->setSyncContactState(I)V

    .line 540
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x3ea

    invoke-virtual {v1, v3, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    .line 541
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$5;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$700(Lcom/autochips/bluetooth/info/BTPBAPManager;)V

    .line 542
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$5;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$502(Lcom/autochips/bluetooth/info/BTPBAPManager;I)I

    .line 543
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTBaseManager;->getSharedPreferenceUtil()Lcom/autochips/bluetooth/util/SharedPreferenceUtil;

    move-result-object v1

    iget-object v4, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$5;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v4}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$500(Lcom/autochips/bluetooth/info/BTPBAPManager;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/autochips/bluetooth/util/SharedPreferenceUtil;->setSyncContactState(I)V

    .line 544
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "openSyncContact exception"

    .line 546
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
