.class Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;
.super Ljava/lang/Object;
.source "BTSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initDeviceList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$200(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    :try_start_0
    sget-object v0, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v1

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v1}, Lcom/autochips/bluetooth/IBTService;->getPairedDevices()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$1;

    invoke-direct {v2, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$1;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;)V

    .line 199
    invoke-virtual {v2}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 198
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 200
    sget-object v1, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v2

    iget-object v2, v2, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v2}, Lcom/autochips/bluetooth/IBTService;->getDiscoverDevices()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$2;

    invoke-direct {v3, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$2;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;)V

    .line 201
    invoke-virtual {v3}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 200
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    .line 202
    iget-object v2, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v2}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$600(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3$3;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$3;Ljava/util/Vector;Ljava/util/Vector;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
