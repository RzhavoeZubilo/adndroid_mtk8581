.class Lcom/autochips/bluetooth/setting/module/BTSettingModule$2;
.super Ljava/lang/Object;
.source "BTSettingModule.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/setting/module/BTSettingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/setting/module/BTSettingModule;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/BTSettingModule;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule$2;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "BTSettingModule"

    const-string v0, "onServiceConnected"

    .line 88
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule$2;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    invoke-static {p2}, Lcom/autochips/bluetooth/IBTService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/autochips/bluetooth/IBTService;

    move-result-object p2

    iput-object p2, p1, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    .line 91
    :try_start_0
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule$2;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    iget-object p1, p1, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    iget-object p2, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule$2;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    invoke-static {p2}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->access$000(Lcom/autochips/bluetooth/setting/module/BTSettingModule;)Lcom/autochips/bluetooth/IRemoteServiceCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/autochips/bluetooth/IBTService;->registerNotify(Lcom/autochips/bluetooth/IRemoteServiceCallback;)V

    .line 93
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule$2;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    iget-object p1, p1, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {p1}, Lcom/autochips/bluetooth/IBTService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule$2;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    invoke-static {p2}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->access$100(Lcom/autochips/bluetooth/setting/module/BTSettingModule;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 94
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x7dc

    invoke-virtual {p1, p2, v0}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V

    .line 95
    invoke-static {}, Lcom/carlos/eventlibrary/EventMailer;->getInstance()Lcom/carlos/eventlibrary/EventMailer;

    move-result-object p1

    const-class p2, Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/carlos/eventlibrary/EventMailer;->sendMail(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "BTSettingModule"

    const-string v0, "onServiceDisconnected"

    .line 103
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
