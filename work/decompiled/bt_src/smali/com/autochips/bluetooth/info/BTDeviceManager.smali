.class public Lcom/autochips/bluetooth/info/BTDeviceManager;
.super Ljava/lang/Object;
.source "BTDeviceManager.java"

# interfaces
.implements Lcom/autochips/bluetooth/event/IBTObserver;


# static fields
.field public static final ACTION_DISCOVER_DEVICE_LIST_CHANGED:I = 0xfa2

.field public static final ACTION_PAIRED_DEVICE_LIST_CHANGED:I = 0xfa1

.field public static final TAG:Ljava/lang/String; = "BTDeviceManager"

.field private static btDeviceManager:Lcom/autochips/bluetooth/info/BTDeviceManager;

.field public static final discoveryDeviceLock:Ljava/lang/Object;

.field public static final pairedDeviceLock:Ljava/lang/Object;


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private context:Landroid/content/Context;

.field private discoveryDevices:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/autochips/bluetooth/model/MyBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private discoveryDevicesHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/autochips/bluetooth/model/MyBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private pairedDevices:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/autochips/bluetooth/model/MyBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDeviceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevicesHistory:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;
    .locals 2

    .line 66
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->btDeviceManager:Lcom/autochips/bluetooth/info/BTDeviceManager;

    if-nez v0, :cond_1

    .line 67
    const-class v0, Lcom/autochips/bluetooth/info/BTDeviceManager;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/info/BTDeviceManager;->btDeviceManager:Lcom/autochips/bluetooth/info/BTDeviceManager;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/autochips/bluetooth/info/BTDeviceManager;

    invoke-direct {v1}, Lcom/autochips/bluetooth/info/BTDeviceManager;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/info/BTDeviceManager;->btDeviceManager:Lcom/autochips/bluetooth/info/BTDeviceManager;

    .line 71
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 73
    :cond_1
    :goto_0
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->btDeviceManager:Lcom/autochips/bluetooth/info/BTDeviceManager;

    return-object v0
.end method

.method private isPairedExist(Ljava/lang/String;)Z
    .locals 3

    .line 758
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 760
    invoke-virtual {v2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 765
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private sortPairedDevices()V
    .locals 10

    .line 795
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 796
    :try_start_0
    sget-object v1, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDeviceLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 797
    :try_start_1
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 798
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0xc

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 799
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 800
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getBondState()I

    move-result v6

    if-eq v6, v4, :cond_0

    .line 801
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 802
    iget-object v4, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-virtual {v4, v5, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 805
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 806
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 808
    sget-object v1, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 809
    :try_start_3
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDeviceLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 810
    :try_start_4
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 811
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v6, 0x1

    if-eqz v3, :cond_6

    .line 812
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 813
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getBondState()I

    move-result v7

    if-ne v7, v4, :cond_2

    .line 815
    iget-object v7, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 816
    invoke-virtual {v8}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    if-eqz v6, :cond_5

    .line 822
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 824
    :cond_5
    iget-object v6, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v6, v5, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 828
    :cond_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 829
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 831
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    move v1, v5

    .line 832
    :goto_3
    :try_start_6
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 833
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    const/16 v3, 0x10

    .line 834
    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v2

    if-ne v2, v6, :cond_7

    .line 835
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 839
    :cond_8
    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 841
    sget-object v1, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 842
    :try_start_7
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 843
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 844
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 845
    sget-object v3, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 846
    :try_start_8
    iget-object v4, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 847
    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 848
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 852
    :cond_a
    monitor-exit v3

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0

    .line 854
    :cond_b
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 839
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v1

    :catchall_3
    move-exception v2

    .line 828
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v2

    :catchall_4
    move-exception v0

    .line 829
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    :catchall_5
    move-exception v2

    .line 805
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    throw v2

    :catchall_6
    move-exception v1

    .line 806
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v1
.end method


# virtual methods
.method addOneDiscoveryDevice(Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V
    .locals 7

    .line 344
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 347
    invoke-virtual {v2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "BTDeviceManager"

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceAdded founded,but it is in discoverList deviceName="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-nez v1, :cond_3

    .line 354
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 355
    invoke-virtual {v5}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v1, "BTDeviceManager"

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceAdded founded,but it is in pairedList deviceName="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    if-nez v3, :cond_4

    .line 363
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-virtual {v1, v4, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 364
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 v1, 0xfa2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    .line 366
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method addOnePairedDevice(Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V
    .locals 6

    .line 318
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 320
    invoke-virtual {v2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "BTDeviceManager"

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceAdded founded,but it is in pairedList deviceName="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-nez v1, :cond_3

    const/16 v2, 0x10

    .line 327
    invoke-virtual {p1, v2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 328
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v2, v4, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 330
    :cond_2
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    .line 335
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->sortPairedDevices()V

    .line 336
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 v0, 0xfa1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 333
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bondDevice(Ljava/lang/String;)V
    .locals 1

    .line 1018
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->isBonding()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1020
    :cond_0
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->connect(Ljava/lang/String;)V

    return-void
.end method

.method public clearDiscoverDeviceList()V
    .locals 3

    .line 784
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 785
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 786
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    const/16 v1, 0xfa2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    return-void

    :catchall_0
    move-exception v1

    .line 786
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clearPairedDeviceList()V
    .locals 3

    .line 773
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 775
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    const/16 v1, 0xfa1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    return-void

    :catchall_0
    move-exception v1

    .line 775
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public connect(Ljava/lang/String;)V
    .locals 3

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect device mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    connecting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/control/Bluetooth;->getconnectingmac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTDeviceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->getconnectingmac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 999
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start connect:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->connect(Ljava/lang/String;)V

    return-void
.end method

.method public deleteBondDevice(Ljava/lang/String;)V
    .locals 2

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteBondDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTDeviceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->isHFPconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->getConnectedHFPAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "deleteBondDevice: return"

    .line 1030
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->disconnect(Ljava/lang/String;)V

    .line 1034
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->deleteBondDevice(Ljava/lang/String;)V

    const-string v0, "deleteBondDevice: del"

    .line 1035
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->delpaired(Ljava/lang/String;)V

    .line 1037
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->writeAutoConnectedMac(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->refreshPairedDevices2()V

    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 2

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect device mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BTDeviceManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->disconnect()V

    return-void
.end method

.method public getA2dpConnectDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;
    .locals 5

    .line 301
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 303
    invoke-virtual {v2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    const/16 v3, 0xb

    .line 304
    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 305
    monitor-exit v0

    return-object v2

    .line 308
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "BTDeviceManager"

    const-string v1, "getA2dpConnectDevice=null"

    .line 309
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 308
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getConnectState()I
    .locals 8

    .line 121
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 123
    invoke-virtual {v2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    const/16 v5, 0x10

    if-ne v3, v4, :cond_1

    .line 124
    invoke-virtual {v2, v5}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 125
    monitor-exit v0

    return v4

    .line 126
    :cond_1
    invoke-virtual {v2, v5}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/16 v3, 0xd

    .line 127
    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v6

    if-eq v6, v4, :cond_4

    const/16 v6, 0xb

    .line 128
    invoke-virtual {v2, v6}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v7

    if-ne v7, v4, :cond_2

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {v2, v5}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    .line 131
    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v3

    if-eq v3, v5, :cond_3

    .line 132
    invoke-virtual {v2, v6}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 133
    :cond_3
    monitor-exit v0

    return v5

    .line 129
    :cond_4
    :goto_0
    monitor-exit v0

    return v4

    :cond_5
    const/4 v1, 0x2

    .line 136
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentConnectDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;
    .locals 5

    .line 285
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 287
    invoke-virtual {v2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    const/16 v3, 0x10

    .line 288
    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 289
    monitor-exit v0

    return-object v2

    .line 292
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "BTDeviceManager"

    const-string v1, "getCurrentConnectDevice=null"

    .line 293
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 292
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getDiscoveryDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/MyBluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v2, "BTDeviceManager"

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDiscoveryDevices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 114
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPairedDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/model/MyBluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v2, "BTDeviceManager"

    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPairedDevices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 8

    const/16 v0, 0xbc3

    const/16 v1, 0xfa4

    if-eq p1, v0, :cond_6

    const/16 v0, 0xbc4

    const/16 v2, 0xfa2

    const-string v3, "BTDeviceManager"

    if-eq p1, v0, :cond_4

    const/16 v0, 0xbc6

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1389

    const/16 v4, 0x10

    const/16 v5, 0xb

    const/16 v6, 0xd

    const/4 v7, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    const/16 p1, 0xfa7

    .line 901
    invoke-virtual {p2, p1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xfa8

    .line 902
    invoke-virtual {p2, v0}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xfa9

    .line 903
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xfaa

    .line 904
    invoke-virtual {p2, v2}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 906
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getCurrentConnectDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 908
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->updatePairedBattery(Ljava/lang/String;I)Z

    .line 909
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->updatePairedSignal(Ljava/lang/String;I)Z

    .line 910
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->updateDiscoveryBattery(Ljava/lang/String;I)Z

    .line 911
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->updateDiscoverySignal(Ljava/lang/String;I)Z

    .line 912
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->context:Landroid/content/Context;

    invoke-static {v2, v0, p1, v1, p2}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviBTSignalBattery(Landroid/content/Context;IILjava/lang/String;Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V

    goto/16 :goto_1

    :pswitch_1
    const/16 p1, 0xfa6

    .line 881
    invoke-virtual {p2, p1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 882
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 883
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->updatePairedName(Ljava/lang/String;Ljava/lang/String;)Z

    .line 884
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->updateDiscoveryName(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    :pswitch_2
    const-string p1, "ACTION_CONNECTION_STATE_CHANGED_A2DP"

    .line 956
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->refreshPairedDevices2()V

    .line 958
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 959
    invoke-virtual {p2, v2}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 960
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, p2}, Lcom/autochips/bluetooth/info/BTDeviceManager;->updatePairedProfile(Ljava/lang/String;II)Z

    .line 961
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v5, p2}, Lcom/autochips/bluetooth/info/BTDeviceManager;->updateDiscoveryProfile(Ljava/lang/String;II)Z

    .line 962
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviConnectState(Landroid/content/Context;)V

    goto/16 :goto_1

    :pswitch_3
    const-string p1, "ACTION_CONNECTION_STATE_CHANGED_HEADSET"

    .line 938
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->refreshPairedDevices2()V

    .line 940
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string v1, "ACTION_CONNECTION_STATE_CHANGED_HEADSET2"

    .line 942
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    check-cast p1, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 944
    invoke-virtual {p2, v2}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 945
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, p2}, Lcom/autochips/bluetooth/info/BTDeviceManager;->updatePairedProfile(Ljava/lang/String;II)Z

    .line 946
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v4, p2}, Lcom/autochips/bluetooth/info/BTDeviceManager;->updateDiscoveryProfile(Ljava/lang/String;II)Z

    .line 947
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviConnectState(Landroid/content/Context;)V

    if-ne p2, v0, :cond_0

    .line 949
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyAG()V

    .line 951
    :cond_0
    sget-object p1, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->logBondDevice(Lcom/google/gson/Gson;)V

    goto/16 :goto_1

    .line 927
    :pswitch_4
    invoke-virtual {p2, v2}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 929
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 930
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->updatePairedProfile(Ljava/lang/String;II)Z

    .line 931
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, v6, p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->updateDiscoveryProfile(Ljava/lang/String;II)Z

    goto/16 :goto_1

    :cond_1
    if-ne p1, v7, :cond_8

    .line 933
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object p2

    invoke-virtual {p2, v6, p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->setAllDeviceProfileState(II)V

    goto/16 :goto_1

    :pswitch_5
    const/16 p1, 0xfa0

    .line 918
    invoke-virtual {p2, p1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 919
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceBondStateChanged deviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bondState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->updatePairedBondState(Ljava/lang/String;I)Z

    .line 923
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->updateDiscoveryBondState(Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 980
    :cond_2
    invoke-virtual {p0, v4, v7}, Lcom/autochips/bluetooth/info/BTDeviceManager;->setAllDeviceProfileState(II)V

    .line 981
    invoke-virtual {p0, v5, v7}, Lcom/autochips/bluetooth/info/BTDeviceManager;->setAllDeviceProfileState(II)V

    const/16 p1, 0x11

    .line 982
    invoke-virtual {p0, p1, v7}, Lcom/autochips/bluetooth/info/BTDeviceManager;->setAllDeviceProfileState(II)V

    .line 983
    invoke-virtual {p0, v6, v7}, Lcom/autochips/bluetooth/info/BTDeviceManager;->setAllDeviceProfileState(II)V

    .line 984
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviConnectState(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 966
    :cond_3
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 975
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getBondState()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->updatePairedBondState(Ljava/lang/String;I)Z

    .line 976
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getBondState()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->updateDiscoveryBondState(Ljava/lang/String;I)Z

    .line 977
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviConnectState(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 861
    :cond_4
    invoke-virtual {p2, v2}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0xfa3

    .line 862
    invoke-virtual {p2, v0}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_STATE_CHANGED state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   preState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_5

    .line 865
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->clearDiscoverDeviceList()V

    .line 866
    invoke-virtual {p0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->clearPairedDeviceList()V

    goto :goto_1

    :cond_5
    if-eq p1, p2, :cond_8

    .line 868
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/autochips/bluetooth/info/BTDeviceManager$2;

    invoke-direct {p2, p0}, Lcom/autochips/bluetooth/info/BTDeviceManager$2;-><init>(Lcom/autochips/bluetooth/info/BTDeviceManager;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 873
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 888
    :cond_6
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 890
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object p2

    invoke-virtual {p2}, Lcom/autochips/bluetooth/control/Bluetooth;->isbtopened()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 891
    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getBondState()I

    move-result p2

    const/16 v0, 0xc

    if-ne p2, v0, :cond_7

    .line 892
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->addOnePairedDevice(Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V

    goto :goto_0

    .line 894
    :cond_7
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->addOneDiscoveryDevice(Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V

    .line 896
    :goto_0
    iget-object p2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevicesHistory:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xbb8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xbbf
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 80
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->context:Landroid/content/Context;

    .line 81
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerSecondObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 83
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTStateManager;->getBtState()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 84
    new-instance p1, Lcom/autochips/bluetooth/info/BTDeviceManager$1;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/info/BTDeviceManager$1;-><init>(Lcom/autochips/bluetooth/info/BTDeviceManager;)V

    invoke-static {p1}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public isBonding()Z
    .locals 9

    .line 145
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0xb

    const/16 v5, 0x10

    const/4 v6, 0x3

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 147
    invoke-virtual {v2, v5}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v7

    if-eq v7, v6, :cond_1

    .line 148
    invoke-virtual {v2, v4}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v7

    if-ne v7, v6, :cond_0

    :cond_1
    const-string v1, "BTDeviceManager"

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pairedDevices bondDevice one device is bonding deviceName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 154
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_6

    .line 156
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_1
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 158
    invoke-virtual {v7, v5}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v8

    if-eq v8, v6, :cond_4

    .line 159
    invoke-virtual {v7, v4}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v8

    if-ne v8, v6, :cond_3

    :cond_4
    const-string v1, "BTDeviceManager"

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bondDevice one device is bonding deviceName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move v3, v1

    .line 165
    :goto_1
    monitor-exit v0

    move v1, v3

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_6
    :goto_2
    return v1

    :catchall_1
    move-exception v1

    .line 154
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public logBondDevice(Lcom/google/gson/Gson;)V
    .locals 6

    .line 373
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    const-string v3, "BTDeviceManager"

    .line 375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logBondDevice="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public refreshPairedDevices()V
    .locals 8

    .line 174
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 175
    sget-object v1, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 178
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 179
    iget-object v3, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    const-string v0, "BTDeviceManager"

    const-string v2, "getBondDevices bluetooth state_off"

    .line 180
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 182
    monitor-exit v1

    return-void

    :cond_1
    const-string v3, "BTDeviceManager"

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBondDevices originDeviceAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v3, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 187
    invoke-virtual {v4}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v6

    :goto_1
    if-nez v3, :cond_0

    .line 193
    invoke-static {v2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->toMyBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v2

    const/16 v3, 0x10

    const/4 v4, 0x2

    .line 194
    invoke-virtual {v2, v3, v4}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setConnectState(II)V

    const/16 v7, 0xb

    .line 195
    invoke-virtual {v2, v7, v4}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setConnectState(II)V

    const/16 v7, 0xd

    .line 196
    invoke-virtual {v2, v7, v4}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setConnectState(II)V

    .line 197
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/autochips/bluetooth/info/BTBaseManager;->getBluetoothPbapClient()Landroid/bluetooth/BluetoothPbapClient;

    move-result-object v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const/16 v7, 0x11

    .line 200
    invoke-virtual {v2, v7, v4}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setConnectState(II)V

    .line 202
    :goto_2
    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 203
    iget-object v3, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v3, v6, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 205
    :cond_5
    iget-object v3, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 210
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->sortPairedDevices()V

    .line 212
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    const/16 v1, 0xfa1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    return-void

    :catchall_0
    move-exception v0

    .line 210
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public refreshPairedDevices2()V
    .locals 9

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->GetPairedList(Ljava/util/List;)Z

    const-string v1, "BTDeviceManager"

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshPairedDevices2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v1, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/control/PBRecord;

    .line 226
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v6

    invoke-virtual {v6}, Lcom/autochips/bluetooth/control/Bluetooth;->isbtopened()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v0, "BTDeviceManager"

    const-string v2, "getBondDevices bluetooth state_off"

    .line 227
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 229
    monitor-exit v1

    return-void

    :cond_1
    const-string v6, "BTDeviceManager"

    .line 231
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBondDevices originDeviceAddress="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/autochips/bluetooth/control/PBRecord;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v6, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 234
    invoke-virtual {v7}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    if-nez v6, :cond_0

    .line 240
    invoke-static {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->toMyBluetoothDevice(Lcom/autochips/bluetooth/control/PBRecord;)Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v3

    const/16 v6, 0x10

    const/4 v7, 0x2

    .line 241
    invoke-virtual {v3, v6, v7}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setConnectState(II)V

    const/16 v8, 0xb

    .line 242
    invoke-virtual {v3, v8, v7}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setConnectState(II)V

    const/16 v8, 0xd

    .line 243
    invoke-virtual {v3, v8, v7}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setConnectState(II)V

    const/16 v8, 0xc

    .line 244
    invoke-virtual {v3, v8}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setBondState(I)V

    .line 245
    invoke-static {}, Lcom/autochips/bluetooth/info/BTBaseManager;->getInstance()Lcom/autochips/bluetooth/info/BTBaseManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/autochips/bluetooth/info/BTBaseManager;->getBluetoothPbapClient()Landroid/bluetooth/BluetoothPbapClient;

    move-result-object v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    const/16 v8, 0x11

    .line 248
    invoke-virtual {v3, v8, v7}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setConnectState(II)V

    .line 250
    :goto_2
    invoke-virtual {v3, v6}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v6

    if-ne v6, v4, :cond_5

    .line 251
    iget-object v4, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v4, v5, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 253
    :cond_5
    iget-object v4, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 259
    :cond_6
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 260
    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 261
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    const-string v6, "BTDeviceManager"

    .line 262
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeBondDevice originDeviceAddress="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  name="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/autochips/bluetooth/control/PBRecord;

    .line 265
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v3, v4

    goto :goto_4

    :cond_9
    move v3, v5

    :goto_4
    if-nez v3, :cond_7

    const-string v3, "BTDeviceManager"

    const-string v6, "REMOVE device"

    .line 271
    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 276
    :cond_a
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->sortPairedDevices()V

    .line 278
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    const/16 v1, 0xfa1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    return-void

    :catchall_0
    move-exception v0

    .line 276
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method setAllDeviceProfileState(II)V
    .locals 4

    const-string v0, ""

    .line 688
    sget-object v1, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 689
    :try_start_0
    iget-object v2, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 690
    invoke-virtual {v0, p1, p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setConnectState(II)V

    .line 691
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 693
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 694
    sget-object v2, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDeviceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 695
    :try_start_1
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 696
    invoke-virtual {v3, p1, p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setConnectState(II)V

    goto :goto_1

    .line 698
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    if-eqz v0, :cond_2

    .line 699
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 700
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p2

    const/16 v0, 0xfa1

    invoke-virtual {p2, v0, p1}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    .line 701
    :cond_2
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p2

    const/16 v0, 0xfa2

    invoke-virtual {p2, v0, p1}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    return-void

    :catchall_0
    move-exception p1

    .line 698
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 693
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method updateDiscoveryBattery(Ljava/lang/String;I)Z
    .locals 5

    .line 478
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 480
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 482
    invoke-virtual {v3, p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setBattery(I)V

    goto :goto_0

    .line 485
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 487
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 p2, 0xfa1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 485
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method updateDiscoveryBondState(Ljava/lang/String;I)Z
    .locals 5

    .line 639
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 641
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 643
    invoke-virtual {v3, p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setBondState(I)V

    goto :goto_0

    .line 646
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 648
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->sortPairedDevices()V

    .line 649
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 p2, 0xfa2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 646
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method updateDiscoveryLocalNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 544
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 546
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 548
    invoke-virtual {v3, p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setLocalNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 553
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 p2, 0xfa2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 551
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method updateDiscoveryName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 591
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 593
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 595
    invoke-virtual {v3, p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 598
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 600
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->sortPairedDevices()V

    .line 601
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 p2, 0xfa2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 598
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method updateDiscoveryOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 522
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 524
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 526
    invoke-virtual {v3, p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 531
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 p2, 0xfa2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 529
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method updateDiscoveryProfile(Ljava/lang/String;II)Z
    .locals 8

    .line 714
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 715
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0xc

    const/16 v5, 0x10

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 716
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 718
    invoke-virtual {v3, p2, p3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setConnectState(II)V

    if-ne v5, p2, :cond_1

    if-ne p3, v6, :cond_1

    .line 720
    invoke-virtual {v3, v4}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setBondState(I)V

    :cond_1
    move v2, v6

    goto :goto_0

    .line 724
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "BTDeviceManager"

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDiscoveryProfile isInDiscovery:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  state:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_5

    if-ne v5, p2, :cond_5

    if-eq p3, v6, :cond_3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_5

    .line 728
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevicesHistory:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    if-eqz v0, :cond_5

    .line 730
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->isPairedExist(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "BTDeviceManager"

    .line 731
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDiscoveryProfile isExist :"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_5

    .line 733
    invoke-virtual {v0, p2, p3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setConnectState(II)V

    if-ne v5, p2, :cond_4

    if-ne p3, v6, :cond_4

    .line 735
    invoke-virtual {v0, v4}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setBondState(I)V

    .line 737
    :cond_4
    iget-object p1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v2, v6

    :cond_5
    if-eqz v2, :cond_6

    .line 744
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->sortPairedDevices()V

    .line 745
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 p2, 0xfa2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_6
    return v2

    :catchall_0
    move-exception p1

    .line 724
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method updateDiscoverySignal(Ljava/lang/String;I)Z
    .locals 5

    .line 500
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->discoveryDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 502
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 504
    invoke-virtual {v3, p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setSignal(I)V

    goto :goto_0

    .line 507
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 509
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 p2, 0xfa2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 507
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method updatePairedBattery(Ljava/lang/String;I)Z
    .locals 5

    .line 389
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 391
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 393
    invoke-virtual {v3, p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setBattery(I)V

    goto :goto_0

    .line 396
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 398
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 p2, 0xfa1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 396
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method updatePairedBondState(Ljava/lang/String;I)Z
    .locals 5

    .line 615
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 617
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 619
    invoke-virtual {v3, p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setBondState(I)V

    goto :goto_0

    .line 622
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 624
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->sortPairedDevices()V

    .line 625
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 p2, 0xfa1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 622
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method updatePairedLocalNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 455
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 457
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 459
    invoke-virtual {v3, p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setLocalNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 464
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 p2, 0xfa1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 462
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method updatePairedName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 566
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 568
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 570
    invoke-virtual {v3, p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 573
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 575
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->sortPairedDevices()V

    const-string p1, "BTDeviceManager"

    .line 576
    sget-object p2, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 p2, 0xfa1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 573
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method updatePairedOperator(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 433
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 435
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 437
    invoke-virtual {v3, p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setOperator(Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 442
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 p2, 0xfa1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 440
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method updatePairedProfile(Ljava/lang/String;II)Z
    .locals 5

    .line 665
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 666
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 667
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 669
    invoke-virtual {v3, p2, p3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setConnectState(II)V

    goto :goto_0

    .line 672
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 674
    invoke-direct {p0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->sortPairedDevices()V

    .line 675
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 p2, 0xfa1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 672
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method updatePairedSignal(Ljava/lang/String;I)Z
    .locals 5

    .line 411
    sget-object v0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager;->pairedDevices:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 413
    invoke-virtual {v3}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 415
    invoke-virtual {v3, p2}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->setSignal(I)V

    goto :goto_0

    .line 418
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 420
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    const/16 p2, 0xfa1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    :cond_2
    return v2

    :catchall_0
    move-exception p1

    .line 418
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
