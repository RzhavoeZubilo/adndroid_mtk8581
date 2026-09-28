.class Lcom/autochips/bluetooth/info/BTPBAPManager$1;
.super Ljava/lang/Object;
.source "BTPBAPManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/info/BTPBAPManager;->handleCallLogsData()V
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

    .line 277
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTPBAPManager$1;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v1, p0

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    iget-object v2, v1, Lcom/autochips/bluetooth/info/BTPBAPManager$1;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v2}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$000(Lcom/autochips/bluetooth/info/BTPBAPManager;)Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->getMyBluetoothDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v2

    const-string v3, "BTPBAPManager"

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCallLogsData getCallLogsSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/autochips/bluetooth/info/BTPBAPManager$1;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v5}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$000(Lcom/autochips/bluetooth/info/BTPBAPManager;)Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v5

    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->getCallLogSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->GetRecord(Ljava/util/List;)Z

    move-result v3

    const-string v4, "BTPBAPManager"

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleCallLogsData getCallLogsSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x3e9

    const/4 v6, 0x2

    if-eqz v3, :cond_9

    .line 288
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v3

    iget-object v3, v3, Lcom/autochips/bluetooth/info/BTBaseManager;->callLogsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 289
    :try_start_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v7

    iget-object v7, v7, Lcom/autochips/bluetooth/info/BTBaseManager;->callLogs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 290
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/autochips/bluetooth/control/PBRecord;

    .line 291
    new-instance v10, Lcom/autochips/bluetooth/model/PhoneBookModel;

    invoke-direct {v10}, Lcom/autochips/bluetooth/model/PhoneBookModel;-><init>()V

    const/4 v11, 0x1

    .line 292
    invoke-virtual {v10, v11}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setModeType(I)V

    .line 293
    invoke-virtual {v9}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x3

    if-eqz v0, :cond_2

    const-string v13, ""

    .line 294
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "10000000"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 295
    invoke-virtual {v2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getLocalNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "+86"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {v10, v11}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setCallLogType(I)V

    goto :goto_1

    .line 296
    :cond_2
    :goto_0
    invoke-virtual {v10, v12}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setCallLogType(I)V

    .line 300
    :goto_1
    invoke-virtual {v10, v0}, Lcom/autochips/bluetooth/model/PhoneBookModel;->addPhoneNumber(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v9}, Lcom/autochips/bluetooth/control/PBRecord;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setName(Ljava/lang/String;)V

    const-string v0, "BTPBAPManager"

    .line 302
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "calllog name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   phone:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getPhoneNumber()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 306
    :try_start_1
    invoke-virtual {v9}, Lcom/autochips/bluetooth/control/PBRecord;->getCalltime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->getTimestamp(Ljava/lang/String;)J

    move-result-wide v13

    const-string v0, "BTPBAPManager"

    .line 307
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TIMT:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v10, v13, v14}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setTimeStamp(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 310
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-wide/16 v13, 0x0

    .line 311
    invoke-virtual {v10, v13, v14}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setTimeStamp(J)V

    .line 313
    :goto_2
    invoke-virtual {v9}, Lcom/autochips/bluetooth/control/PBRecord;->getType()I

    move-result v0

    const/16 v4, 0x40

    if-ne v0, v11, :cond_3

    goto :goto_3

    :cond_3
    if-nez v0, :cond_4

    const/16 v4, 0x100

    goto :goto_3

    :cond_4
    if-ne v0, v6, :cond_5

    const/16 v4, 0x400

    .line 325
    :cond_5
    :goto_3
    invoke-virtual {v10, v4}, Lcom/autochips/bluetooth/model/PhoneBookModel;->setCallType(I)V

    .line 326
    invoke-virtual {v10}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x5

    if-ge v0, v4, :cond_6

    invoke-virtual {v10}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    invoke-virtual {v10}, Lcom/autochips/bluetooth/model/PhoneBookModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lcom/autochips/bluetooth/util/T9SearchSupport;->buildT9Key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/autochips/bluetooth/model/PhoneBookModel;->t9Key:Ljava/lang/String;

    .line 327
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/info/BTBaseManager;->callLogs:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, v1, Lcom/autochips/bluetooth/info/BTPBAPManager$1;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$100(Lcom/autochips/bluetooth/info/BTPBAPManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    :cond_7
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/info/BTBaseManager;->callLogs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 332
    iget-object v0, v1, Lcom/autochips/bluetooth/info/BTPBAPManager$1;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v0, v8}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$102(Lcom/autochips/bluetooth/info/BTPBAPManager;Z)Z

    .line 333
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 334
    iget-object v0, v1, Lcom/autochips/bluetooth/info/BTPBAPManager$1;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$200(Lcom/autochips/bluetooth/info/BTPBAPManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 335
    :try_start_3
    iget-object v0, v1, Lcom/autochips/bluetooth/info/BTPBAPManager$1;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$000(Lcom/autochips/bluetooth/info/BTPBAPManager;)Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 336
    iget-object v0, v1, Lcom/autochips/bluetooth/info/BTPBAPManager$1;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$000(Lcom/autochips/bluetooth/info/BTPBAPManager;)Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->setCallLogDownloadState(I)V

    .line 338
    :cond_8
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 339
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    const-string v0, "BTPBAPManager"

    const-string v2, "handleCallLogsData finished"

    .line 340
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 338
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 333
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_9
    const-string v0, "BTPBAPManager"

    const-string v2, "load call logs from PBSyncManager error"

    .line 342
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, v1, Lcom/autochips/bluetooth/info/BTPBAPManager$1;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$200(Lcom/autochips/bluetooth/info/BTPBAPManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 344
    :try_start_6
    iget-object v0, v1, Lcom/autochips/bluetooth/info/BTPBAPManager$1;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$000(Lcom/autochips/bluetooth/info/BTPBAPManager;)Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 345
    iget-object v0, v1, Lcom/autochips/bluetooth/info/BTPBAPManager$1;->this$0:Lcom/autochips/bluetooth/info/BTPBAPManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/info/BTPBAPManager;->access$000(Lcom/autochips/bluetooth/info/BTPBAPManager;)Lcom/autochips/bluetooth/model/PhoneBookDownload;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/autochips/bluetooth/model/PhoneBookDownload;->setCallLogDownloadState(I)V

    .line 347
    :cond_a
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 348
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :goto_5
    return-void

    :catchall_2
    move-exception v0

    .line 347
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method
