.class Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/FragmentSetting;->initBTState(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

.field final synthetic val$isInitDeviceName:Z

.field final synthetic val$isInitOpenState:Z


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/FragmentSetting;ZZ)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    iput-boolean p2, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->val$isInitOpenState:Z

    iput-boolean p3, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->val$isInitDeviceName:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$300(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :try_start_0
    iget-boolean v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->val$isInitOpenState:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "FragmentSetting"

    if-eqz v0, :cond_0

    .line 273
    :try_start_1
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v2

    iget-object v2, v2, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v2}, Lcom/autochips/bluetooth/IBTService;->getBTState()I

    move-result v2

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$402(Lcom/autochips/bluetooth/setting/module/FragmentSetting;I)I

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBTState btState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {v2}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$400(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$200(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3$1;

    invoke-direct {v2, p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3$1;-><init>(Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    :cond_0
    iget-boolean v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->val$isInitDeviceName:Z

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v2

    iget-object v2, v2, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v2}, Lcom/autochips/bluetooth/IBTService;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$602(Lcom/autochips/bluetooth/setting/module/FragmentSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v2

    iget-object v2, v2, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v2}, Lcom/autochips/bluetooth/IBTService;->getBTState()I

    move-result v2

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$402(Lcom/autochips/bluetooth/setting/module/FragmentSetting;I)I

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBTState deviceName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {v2}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$600(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$200(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3$2;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting$3$2;-><init>(Lcom/autochips/bluetooth/setting/module/FragmentSetting$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 294
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
