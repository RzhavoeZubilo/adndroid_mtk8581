.class Lcom/autochips/bluetooth/info/BTPBAPManager$2;
.super Ljava/lang/Object;
.source "BTPBAPManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/info/BTPBAPManager;->queryNameByNumber(Lcom/autochips/bluetooth/model/MyCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

.field final synthetic val$myCall:Lcom/autochips/bluetooth/model/MyCall;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/info/BTPBAPManager;Lcom/autochips/bluetooth/model/MyCall;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$2;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    iput-object p2, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$2;->val$myCall:Lcom/autochips/bluetooth/model/MyCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 362
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/info/BTBaseManager;->contactsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v1

    iget-object v1, v1, Lcom/autochips/bluetooth/info/BTBaseManager;->contacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/model/PhoneBookModel;

    .line 364
    invoke-virtual {v2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 365
    iget-object v5, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$2;->val$myCall:Lcom/autochips/bluetooth/model/MyCall;

    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/MyCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 366
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$2;->val$myCall:Lcom/autochips/bluetooth/model/MyCall;

    invoke-virtual {v2}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/model/MyCall;->setName(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v1

    const/16 v2, 0x1389

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    .line 368
    monitor-exit v0

    return-void

    .line 372
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
