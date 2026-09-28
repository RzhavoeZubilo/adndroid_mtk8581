.class Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;
.super Ljava/lang/Object;
.source "BTSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initBTState(ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

.field final synthetic val$isInitAutoAnswer:Z

.field final synthetic val$isInitDeviceName:Z

.field final synthetic val$isInitDiscoverState:Z

.field final synthetic val$isInitOpenState:Z


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;ZZZZ)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    iput-boolean p2, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->val$isInitOpenState:Z

    iput-boolean p3, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->val$isInitAutoAnswer:Z

    iput-boolean p4, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->val$isInitDeviceName:Z

    iput-boolean p5, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->val$isInitDiscoverState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$200(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 237
    :try_start_0
    iget-boolean v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->val$isInitOpenState:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "BTSettingFragment"

    if-eqz v0, :cond_0

    .line 238
    :try_start_1
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v2

    iget-object v2, v2, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v2}, Lcom/autochips/bluetooth/IBTService;->getBTState()I

    move-result v2

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$702(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;I)I

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBTState btState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v2}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$700(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$600(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$1;

    invoke-direct {v2, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$1;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    :cond_0
    iget-boolean v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->val$isInitAutoAnswer:Z

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v2

    iget-object v2, v2, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v2}, Lcom/autochips/bluetooth/IBTService;->isAutoAnswer()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$902(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;Z)Z

    .line 249
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$600(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$2;

    invoke-direct {v2, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$2;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    :cond_1
    iget-boolean v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->val$isInitDeviceName:Z

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v2

    iget-object v2, v2, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v2}, Lcom/autochips/bluetooth/IBTService;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$1102(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBTState deviceName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v2}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$1100(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$600(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$3;

    invoke-direct {v2, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$3;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    :cond_2
    iget-boolean v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->val$isInitDiscoverState:Z

    if-eqz v0, :cond_4

    .line 267
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v2

    iget-object v2, v2, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v2}, Lcom/autochips/bluetooth/IBTService;->isDiscovering()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$1302(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;Z)Z

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initBTState isDiscovering="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v2}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$1300(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$1300(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$600(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$4;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$4;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 279
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$600(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$5;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4$5;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method
