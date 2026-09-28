.class public Lcom/autochips/bluetooth/setting/module/BTSettingFragment;
.super Lcom/autochips/bluetooth/fragment/BaseMailFragment;
.source "BTSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/autochips/bluetooth/event/IBTObserver;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ACTION_QUIT_DLG:Ljava/lang/String; = "com.carocean.action.ACTION_QUIT_DLG"

.field public static final TAG:Ljava/lang/String; = "BTSettingFragment"

.field private static final TYPE_BT_AUTO_ANSWER:I = 0x2

.field private static final TYPE_BT_AUTO_CONNECT:I = 0x4

.field private static final TYPE_BT_DEVICE_NAME:I = 0x3

.field private static final TYPE_BT_OPEN_STATE:I


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private autoAnswer:Landroid/widget/Switch;

.field private autoConnect:Landroid/widget/Switch;

.field private bluetoothDevices:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/autochips/bluetooth/model/MyBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothName:Landroid/widget/TextView;

.field private bluetoothSwitch:Landroid/widget/Switch;

.field private btState:I

.field private btswitch_button_click_time:J

.field delaySyncRunnable:Ljava/lang/Runnable;

.field private deviceName:Ljava/lang/String;

.field private discoverButton:Landroid/widget/ImageButton;

.field private discover_button_click_time:J

.field private handler:Landroid/os/Handler;

.field private isAutoAnswer:Z

.field private isAutoConnect:Z

.field private isDiscovering:Z

.field private isSyncContact:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private pairedAdapter:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private syncSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;-><init>()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 84
    iput-wide v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->discover_button_click_time:J

    .line 85
    iput-wide v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->btswitch_button_click_time:J

    .line 683
    new-instance v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$15;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$15;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->delaySyncRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/app/AlertDialog;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->alertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/widget/Switch;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/widget/Switch;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->autoAnswer:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->deviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->deviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->isDiscovering:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->isDiscovering:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->discoverButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->isAutoConnect:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->isAutoConnect:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/widget/Switch;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->autoConnect:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/widget/Switch;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->syncSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Z
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->isServiceActive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->pairedAdapter:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;

    return-object p0
.end method

.method static synthetic access$302(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;)Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->pairedAdapter:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Ljava/util/Vector;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothDevices:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->btState:I

    return p0
.end method

.method static synthetic access$702(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->btState:I

    return p1
.end method

.method static synthetic access$800(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initBTSwitch(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->isAutoAnswer:Z

    return p0
.end method

.method static synthetic access$902(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->isAutoAnswer:Z

    return p1
.end method

.method private checkCarplayConnected()Z
    .locals 4

    .line 658
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->isServiceActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    :try_start_0
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v0}, Lcom/autochips/bluetooth/IBTService;->isCarPlayConnected()Z

    move-result v0

    const-string v1, "BTSettingFragment"

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCarPlayConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$14;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$14;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 673
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initAutoConnect()V
    .locals 1

    .line 489
    new-instance v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$11;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$11;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initBTState(ZZZZ)V
    .locals 8

    const-string v0, "BTSettingFragment"

    const-string v1, "initBTState"

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;ZZZZ)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initBTSwitch(I)V
    .locals 3

    .line 139
    invoke-virtual {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->isAdded()Z

    move-result v0

    const-string v1, "BTSettingFragment"

    if-nez v0, :cond_0

    const-string p1, "initBTSwitch isAdded=false"

    .line 140
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBTSwitch currentBTState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 164
    :pswitch_0
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 165
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 166
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->autoAnswer:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 167
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->autoConnect:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 158
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 159
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->autoAnswer:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 160
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->autoConnect:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 161
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->setBluetoothSwitchClick()V

    goto :goto_0

    .line 170
    :pswitch_2
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 171
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 172
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->autoAnswer:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 173
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->autoConnect:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 146
    :pswitch_3
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 147
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 148
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->autoAnswer:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 149
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->autoConnect:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 151
    iput-boolean v1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->isDiscovering:Z

    .line 152
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->discoverButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->clearAnimation()V

    .line 153
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->discoverButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 154
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->setBluetoothSwitchClick()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initDeviceList()V
    .locals 1

    .line 193
    new-instance v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initSyncContractState()V
    .locals 1

    .line 590
    invoke-virtual {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->syncSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_1

    return-void

    .line 595
    :cond_1
    new-instance v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isServiceActive()Z
    .locals 2

    .line 511
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    const-string v1, "BTSettingFragment"

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v0}, Lcom/autochips/bluetooth/IBTService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isServiceActive=true"

    .line 513
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "isServiceActive=false"

    .line 516
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->connectBTService()V

    const/4 v0, 0x0

    return v0
.end method

.method private registerBroadcast()V
    .locals 3

    .line 88
    new-instance v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$1;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.carocean.action.ACTION_QUIT_DLG"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeSyncDelayRunnable()V
    .locals 2

    const-string v0, "BTSettingFragment"

    const-string v1, "removeSyncDelayRunnable >>"

    .line 701
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->delaySyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setBTState(ILjava/lang/Object;)V
    .locals 1

    .line 307
    new-instance v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$5;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setBluetoothSwitchClick()V
    .locals 4

    const-string v0, "BTSettingFragment"

    const-string v1, "setBluetoothSwitchClick1"

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 181
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$2;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$2;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showResetNameDialog()V
    .locals 5

    .line 448
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->alertDialog:Landroid/app/AlertDialog;

    .line 449
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 450
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    .line 452
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 453
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    sget v1, Lcom/autochips/bluetooth/setting/module/R$layout;->dialog_reset_name:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 455
    sget v1, Lcom/autochips/bluetooth/setting/module/R$id;->deviceName:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 456
    iget-object v3, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 457
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    .line 458
    new-instance v4, Lcom/autochips/bluetooth/setting/module/utils/EmojiExcludeFilter;

    invoke-direct {v4}, Lcom/autochips/bluetooth/setting/module/utils/EmojiExcludeFilter;-><init>()V

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 459
    new-instance v2, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10;

    invoke-direct {v2, p0, v1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;Landroid/widget/EditText;)V

    .line 481
    sget v1, Lcom/autochips/bluetooth/setting/module/R$id;->cancelButton:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    sget v1, Lcom/autochips/bluetooth/setting/module/R$id;->confirmButton:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public MailBox(Lcom/carlos/eventlibrary/EventMail;)V
    .locals 1

    .line 530
    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getFlag()I

    move-result p1

    const/16 v0, 0x7dc

    if-ne p1, v0, :cond_0

    const-string p1, "BTSettingFragment"

    const-string v0, "MailBox SERVICE_CONNECT_SUCCESS"

    .line 531
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 532
    invoke-direct {p0, p1, p1, p1, p1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initBTState(ZZZZ)V

    .line 533
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initDeviceList()V

    .line 534
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initAutoConnect()V

    .line 535
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initSyncContractState()V

    :cond_0
    return-void
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 4

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEvent mailFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTSettingFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_8

    const/16 v0, 0xbb8

    const/16 v1, 0xfa2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_6

    const/16 v0, 0x7d1

    if-eq p1, v0, :cond_5

    const/16 v0, 0x7d2

    if-eq p1, v0, :cond_4

    const/16 p2, 0xbbc

    if-eq p1, p2, :cond_3

    const/16 p2, 0xbbd

    if-eq p1, p2, :cond_3

    const/16 p2, 0xfa1

    if-eq p1, p2, :cond_2

    if-eq p1, v1, :cond_2

    const/16 p2, 0x13ed

    if-eq p1, p2, :cond_1

    const/16 p2, 0x13ee

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    invoke-direct {p0, v3, v2, v3, v3}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initBTState(ZZZZ)V

    goto :goto_0

    .line 568
    :cond_1
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initAutoConnect()V

    goto :goto_0

    .line 549
    :cond_2
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initDeviceList()V

    goto :goto_0

    .line 545
    :cond_3
    invoke-direct {p0, v3, v3, v3, v2}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initBTState(ZZZZ)V

    goto :goto_0

    :cond_4
    const/16 p1, 0x7d3

    .line 574
    invoke-virtual {p2, p1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->deviceName:Ljava/lang/String;

    .line 575
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$12;

    invoke-direct {p2, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$12;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 564
    :cond_5
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initSyncContractState()V

    .line 565
    invoke-direct {p0, v2, v3, v3, v3}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initBTState(ZZZZ)V

    goto :goto_0

    .line 552
    :cond_6
    invoke-virtual {p2, v1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_7

    .line 554
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->discoverButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 556
    :cond_7
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->discoverButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 561
    :cond_8
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initSyncContractState()V

    :goto_0
    return-void
.end method

.method public init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    .line 105
    sget p3, Lcom/autochips/bluetooth/setting/module/R$layout;->fragment_setting:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->rootView:Landroid/view/View;

    .line 106
    sget p1, Lcom/autochips/bluetooth/setting/module/R$id;->bluetoothSwitch:I

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothSwitch:Landroid/widget/Switch;

    .line 107
    sget p1, Lcom/autochips/bluetooth/setting/module/R$id;->autoConnect:I

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->autoConnect:Landroid/widget/Switch;

    .line 108
    sget p1, Lcom/autochips/bluetooth/setting/module/R$id;->syncSwitch:I

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->syncSwitch:Landroid/widget/Switch;

    .line 109
    sget p1, Lcom/autochips/bluetooth/setting/module/R$id;->autoAnswer:I

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->autoAnswer:Landroid/widget/Switch;

    .line 110
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->syncSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->autoConnect:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->autoAnswer:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget p1, Lcom/autochips/bluetooth/setting/module/R$id;->bluetoothName:I

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothName:Landroid/widget/TextView;

    .line 115
    sget p1, Lcom/autochips/bluetooth/setting/module/R$id;->recycleView:I

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    sget p1, Lcom/autochips/bluetooth/setting/module/R$id;->discoverButton:I

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->discoverButton:Landroid/widget/ImageButton;

    .line 117
    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothName:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothDevices:Ljava/util/Vector;

    .line 120
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->setIbtObserver(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 121
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initDeviceList()V

    .line 122
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->registerBroadcast()V

    .line 123
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initAutoConnect()V

    .line 124
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initSyncContractState()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/autochips/bluetooth/setting/module/R$id;->bluetoothName:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 342
    iget p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->btState:I

    if-ne p1, v2, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->showResetNameDialog()V

    goto/16 :goto_1

    .line 345
    :cond_0
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/autochips/bluetooth/setting/module/R$string;->f_setting_seven:I

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 347
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/autochips/bluetooth/setting/module/R$id;->discoverButton:I

    const-wide/16 v4, 0x1f4

    if-ne v0, v1, :cond_5

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->discover_button_click_time:J

    sub-long/2addr v0, v6

    cmp-long p1, v0, v4

    if-gtz p1, :cond_2

    return-void

    .line 352
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->discover_button_click_time:J

    .line 355
    iget p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->btState:I

    if-eq p1, v2, :cond_3

    return-void

    .line 357
    :cond_3
    iget-boolean p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->isDiscovering:Z

    if-eqz p1, :cond_4

    .line 358
    new-instance p1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$6;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$6;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)V

    invoke-static {p1}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 369
    :cond_4
    new-instance p1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$7;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$7;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)V

    invoke-static {p1}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 380
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/autochips/bluetooth/setting/module/R$id;->syncSwitch:I

    if-ne v0, v1, :cond_6

    .line 382
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->syncSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v3}, Landroid/widget/Switch;->playSoundEffect(I)V

    .line 383
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->syncSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 384
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->removeSyncDelayRunnable()V

    .line 385
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->delaySyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 386
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/autochips/bluetooth/setting/module/R$id;->bluetoothSwitch:I

    if-ne v0, v1, :cond_9

    .line 395
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    const-string v0, "BTSettingFragment"

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->checkCarplayConnected()Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "checkCarplayConnected true return"

    .line 396
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    .line 401
    :cond_7
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 402
    new-instance p1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$8;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$8;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)V

    invoke-static {p1}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 419
    :cond_8
    new-instance p1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$9;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$9;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)V

    invoke-static {p1}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    .line 436
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btSwitch="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->bluetoothSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 437
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/autochips/bluetooth/setting/module/R$id;->autoAnswer:I

    if-ne v0, v1, :cond_a

    const/4 p1, 0x2

    .line 438
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->autoAnswer:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->setBTState(ILjava/lang/Object;)V

    goto :goto_1

    .line 439
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/autochips/bluetooth/setting/module/R$id;->autoConnect:I

    if-ne p1, v0, :cond_b

    const/4 p1, 0x4

    .line 440
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->autoConnect:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->setBTState(ILjava/lang/Object;)V

    :cond_b
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 524
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onDestroy()V

    .line 525
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 130
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onResume()V

    const-string v0, "BTSettingFragment"

    const-string v1, "onResume"

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 132
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initBTState(ZZZZ)V

    return-void
.end method
