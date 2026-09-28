.class final Lcom/autochips/bluetooth/setting/module/BTSettingModule$1;
.super Landroid/content/BroadcastReceiver;
.source "BTSettingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/BTSettingModule;->init(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "BTSettingModule"

    const-string p2, "receive action=ACTION_BT_SERVICE_START"

    .line 52
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object p2

    iget-object p2, p2, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    if-eqz p2, :cond_0

    .line 54
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object p2

    iget-object p2, p2, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {p2}, Lcom/autochips/bluetooth/IBTService;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "receive connectBTService"

    .line 55
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x7dc

    invoke-virtual {p1, p2, v0}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    .line 57
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p2, "receive alreadyConnect"

    .line 59
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->connectBTService()V

    :goto_0
    return-void
.end method
