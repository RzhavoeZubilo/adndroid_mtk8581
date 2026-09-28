.class Lcom/autochips/bluetooth/info/BTPBAPManager$3;
.super Ljava/lang/Object;
.source "BTPBAPManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/info/BTPBAPManager;->handleContactData()V
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

    .line 381
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$3;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$3;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$000(Lcom/autochips/bluetooth/info/BTPBAPManager;)Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "BTPBAPManager"

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleContactData getContactSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$3;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v3}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$000(Lcom/autochips/bluetooth/info/BTPBAPManager;)Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->getContactSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "BTPBAPManager"

    const-string v2, "handleContactData phoneBookDownload= null"

    .line 388
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->GetPhonebook(Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x3e9

    const/4 v4, 0x2

    if-eqz v1, :cond_a

    const-string v1, "BTPBAPManager"

    .line 392
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pbRecords size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v1

    iget-object v1, v1, Lcom/autochips/bluetooth/info/BTBaseManager;->contactsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v5

    iget-object v5, v5, Lcom/autochips/bluetooth/info/BTBaseManager;->contacts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 395
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autochips/bluetooth/control/PBRecord;

    .line 396
    new-instance v8, Lcom/autochips/bluetooth/model/PhoneBookModel;

    invoke-direct {v8}, Lcom/autochips/bluetooth/model/PhoneBookModel;-><init>()V

    .line 397
    invoke-virtual {v8, v4}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setModeType(I)V

    .line 398
    invoke-virtual {v5}, Lcom/autochips/bluetooth/control/PBRecord;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setName(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v5}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/autochips/bluetooth/model/PhoneBookModel;->addPhoneNumber(Ljava/lang/String;)V

    const-string v5, "BTPBAPManager"

    .line 400
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "contact name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "   phone:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v8}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x5

    if-ge v5, v9, :cond_2

    invoke-virtual {v8}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x3

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-static {v5}, Lcom/autochips/bluetooth/util/T9SearchSupport;->buildT9Key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/autochips/bluetooth/model/PhoneBookModel;->t9Key:Ljava/lang/String;

    .line 403
    invoke-virtual {v8}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v5

    .line 404
    invoke-static {v5}, Lcom/autochips/bluetooth/util/CharacterParser;->getSelling(Ljava/lang/String;)[Ljava/lang/StringBuilder;

    move-result-object v5

    .line 405
    aget-object v9, v5, v6

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 406
    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setNamePinYin(Ljava/lang/String;)V

    const-string v5, "#"

    .line 408
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    array-length v10, v10

    if-eqz v10, :cond_4

    .line 409
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    aget-char v5, v5, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 410
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    aget-byte v10, v10, v7

    const/16 v11, 0x61

    if-lt v10, v11, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    aget-byte v10, v10, v7

    const/16 v11, 0x7a

    if-le v10, v11, :cond_4

    :cond_3
    const-string v5, "#"

    .line 414
    :cond_4
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 415
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setPinyinFirst(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v8, v9}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setPinyinFlag(Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v5

    iget-object v5, v5, Lcom/autochips/bluetooth/info/BTBaseManager;->contacts:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v5, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$3;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v5}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$300(Lcom/autochips/bluetooth/info/BTPBAPManager;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 420
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/info/BTBaseManager;->contacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 426
    :cond_5
    new-instance v0, Lcom/autochips/bluetooth/util/PinyinComparator;

    invoke-direct {v0}, Lcom/autochips/bluetooth/util/PinyinComparator;-><init>()V

    .line 427
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v5

    iget-object v5, v5, Lcom/autochips/bluetooth/info/BTBaseManager;->contacts:Ljava/util/List;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v0, v7

    .line 430
    :goto_2
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v5

    iget-object v5, v5, Lcom/autochips/bluetooth/info/BTBaseManager;->contacts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    if-ge v0, v5, :cond_7

    .line 431
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v5

    iget-object v5, v5, Lcom/autochips/bluetooth/info/BTBaseManager;->contacts:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autochips/bluetooth/model/PhoneBookModel;

    .line 432
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v8

    iget-object v8, v8, Lcom/autochips/bluetooth/info/BTBaseManager;->contacts:Ljava/util/List;

    add-int/lit8 v9, v0, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autochips/bluetooth/model/PhoneBookModel;

    .line 433
    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v10

    .line 434
    invoke-virtual {v8}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v10, :cond_6

    .line 435
    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v8}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v8}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 436
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v5

    iget-object v5, v5, Lcom/autochips/bluetooth/info/BTBaseManager;->contacts:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    move v0, v9

    goto :goto_2

    :cond_7
    move v0, v7

    .line 443
    :goto_3
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v5

    iget-object v5, v5, Lcom/autochips/bluetooth/info/BTBaseManager;->contacts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 444
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v5

    iget-object v5, v5, Lcom/autochips/bluetooth/info/BTBaseManager;->contacts:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autochips/bluetooth/model/PhoneBookModel;

    .line 445
    iget-object v6, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$3;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v6}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$400(Lcom/autochips/bluetooth/info/BTPBAPManager;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPinyinFirst()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 447
    :cond_8
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$3;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v0, v7}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$302(Lcom/autochips/bluetooth/info/BTPBAPManager;Z)Z

    .line 448
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 449
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$3;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$200(Lcom/autochips/bluetooth/info/BTPBAPManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 450
    :try_start_1
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$3;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$000(Lcom/autochips/bluetooth/info/BTPBAPManager;)Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 451
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$3;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$000(Lcom/autochips/bluetooth/info/BTPBAPManager;)Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->setContactDownloadState(I)V

    .line 453
    :cond_9
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$3;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->syncTxzContacts()V

    .line 455
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    const-string v0, "BTPBAPManager"

    const-string v1, "handleContactData finished"

    .line 456
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception v1

    .line 453
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 448
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_a
    const-string v0, "BTPBAPManager"

    const-string v1, "load contacts from PBSyncManager error"

    .line 458
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$3;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$200(Lcom/autochips/bluetooth/info/BTPBAPManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 460
    :try_start_4
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$3;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$000(Lcom/autochips/bluetooth/info/BTPBAPManager;)Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 461
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$3;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v1}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$000(Lcom/autochips/bluetooth/info/BTPBAPManager;)Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->setContactDownloadState(I)V

    .line 463
    :cond_b
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 464
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :goto_4
    return-void

    :catchall_2
    move-exception v1

    .line 463
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method
