.class public Lcom/autochips/bluetooth/setting/module/FragmentSetting;
.super Lcom/autochips/bluetooth/fragment/BaseMailFragment;
.source "FragmentSetting.java"

# interfaces
.implements Lcom/carocean/navicar/MMIKeyHelper$Callback;
.implements Lcom/autochips/bluetooth/event/IBTObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/setting/module/FragmentSetting$SystemStatusConnectObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentSetting"

.field private static final URI_SYS_BT_CONNECT_STATUS:Ljava/lang/String; = "content://com.carocean.status.provider/sys/SYS_BT_CONNECT_STATUS"


# instance fields
.field private btState:I

.field private cbSwitch:Landroid/widget/CheckBox;

.field private deviceName:Ljava/lang/String;

.field private et_device_name:Landroid/widget/EditText;

.field private et_pin_code:Landroid/widget/EditText;

.field private handler:Landroid/os/Handler;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private systemStatusConnectObserver:Lcom/autochips/bluetooth/setting/module/FragmentSetting$SystemStatusConnectObserver;

.field private tvStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->handler:Landroid/os/Handler;

    .line 417
    new-instance v0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$5;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting$5;-><init>(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Landroid/widget/CheckBox;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->cbSwitch:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->checkCarplayConnected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->isServiceActive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->btState:I

    return p0
.end method

.method static synthetic access$402(Lcom/autochips/bluetooth/setting/module/FragmentSetting;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->btState:I

    return p1
.end method

.method static synthetic access$500(Lcom/autochips/bluetooth/setting/module/FragmentSetting;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->initBTSwitch(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->deviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/autochips/bluetooth/setting/module/FragmentSetting;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->deviceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Landroid/widget/EditText;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->et_device_name:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$800(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->updateConnectStatusView()V

    return-void
.end method

.method private checkCarplayConnected()Z
    .locals 4

    .line 180
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->isServiceActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    :try_start_0
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v0}, Lcom/autochips/bluetooth/IBTService;->isCarPlayConnected()Z

    move-result v0

    const-string v1, "FragmentSetting"

    .line 183
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

    .line 185
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/autochips/bluetooth/setting/module/FragmentSetting$2;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting$2;-><init>(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkMMIKeyHelper()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/autochips/bluetooth/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/autochips/bluetooth/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/BaseFragmentActivity;->getMMIKeyHelper()Lcom/carocean/navicar/MMIKeyHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    :cond_0
    return-void
.end method

.method private initBTState(ZZ)V
    .locals 2

    const-string v0, "FragmentSetting"

    const-string v1, "initBTState"

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;-><init>(Lcom/autochips/bluetooth/setting/module/FragmentSetting;ZZ)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initBTSwitch(I)V
    .locals 3

    .line 305
    invoke-virtual {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->isAdded()Z

    move-result v0

    const-string v1, "FragmentSetting"

    if-nez v0, :cond_0

    const-string p1, "initBTSwitch isAdded=false"

    .line 306
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 309
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 322
    :pswitch_0
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->cbSwitch:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 323
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->cbSwitch:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 317
    :pswitch_1
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->cbSwitch:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 318
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->cbSwitch:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 319
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->setBluetoothSwitchClick()V

    goto :goto_0

    .line 326
    :pswitch_2
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->cbSwitch:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 327
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->cbSwitch:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    .line 312
    :pswitch_3
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->cbSwitch:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 313
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->cbSwitch:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 314
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->setBluetoothSwitchClick()V

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

.method private isBTConnected()Z
    .locals 2

    .line 250
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getConnectState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isServiceActive()Z
    .locals 2

    .line 378
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    const-string v1, "FragmentSetting"

    if-eqz v0, :cond_0

    .line 379
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v0}, Lcom/autochips/bluetooth/IBTService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isServiceActive=true"

    .line 380
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "isServiceActive=false"

    .line 383
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->connectBTService()V

    const/4 v0, 0x0

    return v0
.end method

.method private registerSystemStatusContentObserver()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys/SYS_BT_CONNECT_STATUS"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->systemStatusConnectObserver:Lcom/autochips/bluetooth/setting/module/FragmentSetting$SystemStatusConnectObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setBluetoothSwitchClick()V
    .locals 4

    const-string v0, "FragmentSetting"

    const-string v1, "setBluetoothSwitchClick1"

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->cbSwitch:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 335
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/autochips/bluetooth/setting/module/FragmentSetting$4;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting$4;-><init>(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private unregisterSystemStatusContentObserver()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->systemStatusConnectObserver:Lcom/autochips/bluetooth/setting/module/FragmentSetting$SystemStatusConnectObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateConnectStatusView()V
    .locals 6

    .line 238
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->isBTConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getCurrentConnectDevice()Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->tvStatus:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/autochips/bluetooth/setting/module/R$string;->bt_status_connected:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "%s %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->tvStatus:Landroid/widget/TextView;

    sget v1, Lcom/autochips/bluetooth/setting/module/R$string;->bt_settings_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public MailBox(Lcom/carlos/eventlibrary/EventMail;)V
    .locals 1

    .line 255
    invoke-virtual {p1}, Lcom/carlos/eventlibrary/EventMail;->getFlag()I

    move-result p1

    const/16 v0, 0x7dc

    if-ne p1, v0, :cond_0

    const-string p1, "FragmentSetting"

    const-string v0, "MailBox SERVICE_CONNECT_SUCCESS"

    .line 256
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 257
    invoke-direct {p0, p1, p1}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->initBTState(ZZ)V

    .line 258
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->updateConnectStatusView()V

    :cond_0
    return-void
.end method

.method public handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
    .locals 3

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEvent mailFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentSetting"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x7d1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7d2

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_1

    const/16 p2, 0x13ed

    if-eq p1, p2, :cond_0

    const/16 p2, 0x13ee

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->updateConnectStatusView()V

    goto :goto_0

    :cond_1
    const/16 p1, 0xfa2

    .line 355
    invoke-virtual {p2, p1}, Lcom/carlos/eventlibrary/EventMail;->getData(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto :goto_0

    .line 372
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->initBTState(ZZ)V

    goto :goto_0

    .line 364
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->initBTState(ZZ)V

    .line 365
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->updateConnectStatusView()V

    :goto_0
    return-void
.end method

.method public init(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isKDLK()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 56
    sget p3, Lcom/autochips/bluetooth/setting/module/R$layout;->bt_settings_kdlk:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->rootView:Landroid/view/View;

    goto/16 :goto_1

    .line 57
    :cond_0
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isAudi()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 58
    sget p3, Lcom/autochips/bluetooth/setting/module/R$layout;->bt_settings_audi:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->rootView:Landroid/view/View;

    goto/16 :goto_1

    .line 59
    :cond_1
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isBenz()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 60
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isYZGCustomer()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1920x720And240dpi()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1280x480And160dpi()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x600And240dpi()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1600x720And240dpi()Z

    move-result p3

    if-nez p3, :cond_3

    .line 61
    :cond_2
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isZLHCustomer()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1920x720And240dpi()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->is1280x480And160dpi()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 62
    :cond_3
    sget p3, Lcom/autochips/bluetooth/setting/module/R$layout;->bt_settings_yzg_benz:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->rootView:Landroid/view/View;

    goto :goto_1

    .line 64
    :cond_4
    sget p3, Lcom/autochips/bluetooth/setting/module/R$layout;->bt_settings_benz:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->rootView:Landroid/view/View;

    goto :goto_1

    .line 66
    :cond_5
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isVolvo()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 67
    sget p3, Lcom/autochips/bluetooth/setting/module/R$layout;->bt_settings_kld_benz:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->rootView:Landroid/view/View;

    goto :goto_1

    .line 68
    :cond_6
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isLexus()Z

    move-result p3

    if-nez p3, :cond_9

    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isTOYOTACROWN()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_0

    .line 71
    :cond_7
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->ensureID8()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 72
    sget p3, Lcom/autochips/bluetooth/setting/module/R$layout;->bt_settings_id8:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->rootView:Landroid/view/View;

    goto :goto_1

    .line 74
    :cond_8
    sget p3, Lcom/autochips/bluetooth/setting/module/R$layout;->bt_settings:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->rootView:Landroid/view/View;

    goto :goto_1

    .line 69
    :cond_9
    :goto_0
    sget p3, Lcom/autochips/bluetooth/setting/module/R$layout;->bt_settings_lexus:I

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->rootView:Landroid/view/View;

    .line 78
    :goto_1
    new-instance p1, Lcom/autochips/bluetooth/setting/module/FragmentSetting$SystemStatusConnectObserver;

    iget-object p2, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->handler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/autochips/bluetooth/setting/module/FragmentSetting$SystemStatusConnectObserver;-><init>(Lcom/autochips/bluetooth/setting/module/FragmentSetting;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->systemStatusConnectObserver:Lcom/autochips/bluetooth/setting/module/FragmentSetting$SystemStatusConnectObserver;

    .line 80
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->rootView:Landroid/view/View;

    sget p2, Lcom/autochips/bluetooth/setting/module/R$id;->txt_devicename:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->et_device_name:Landroid/widget/EditText;

    .line 81
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->rootView:Landroid/view/View;

    sget p2, Lcom/autochips/bluetooth/setting/module/R$id;->txt_devicepin:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->et_pin_code:Landroid/widget/EditText;

    .line 82
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->rootView:Landroid/view/View;

    sget p2, Lcom/autochips/bluetooth/setting/module/R$id;->bt_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->cbSwitch:Landroid/widget/CheckBox;

    .line 83
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->rootView:Landroid/view/View;

    sget p2, Lcom/autochips/bluetooth/setting/module/R$id;->txt_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->tvStatus:Landroid/widget/TextView;

    .line 85
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/info/BTStateManager;->getDevicePin()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 87
    iget-object p2, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->et_pin_code:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 89
    :cond_a
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->et_pin_code:Landroid/widget/EditText;

    const-string p2, "0000"

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_2
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->cbSwitch:Landroid/widget/CheckBox;

    if-eqz p1, :cond_b

    .line 93
    new-instance p2, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;

    invoke-direct {p2, p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;-><init>(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)V

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :cond_b
    invoke-virtual {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->initMMIkey()V

    .line 144
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/autochips/bluetooth/event/BTObserverManager;->registerMainThreadObservers(Lcom/autochips/bluetooth/event/IBTObserver;)V

    .line 145
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->registerSystemStatusContentObserver()V

    .line 146
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 147
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->mActivity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public initMMIkey()V
    .locals 2

    .line 152
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->checkMMIKeyHelper()V

    .line 153
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->mMMIKeyHelper:Lcom/carocean/navicar/MMIKeyHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/carocean/navicar/MMIKeyHelper;->removeFromSector(I)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 174
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onDestroyView()V

    .line 175
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->unregisterSystemStatusContentObserver()V

    .line 176
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onEnter(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onFocused(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onMenuUpEnd()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 167
    invoke-super {p0}, Lcom/autochips/bluetooth/fragment/BaseMailFragment;->onResume()V

    const/4 v0, 0x1

    .line 168
    invoke-direct {p0, v0, v0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->initBTState(ZZ)V

    .line 169
    invoke-direct {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->updateConnectStatusView()V

    return-void
.end method

.method public onSelectChanged(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onTurnning(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public updateID8Theme(I)V
    .locals 0

    .line 391
    invoke-virtual {p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method protected updateSwitchView(Z)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->cbSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
