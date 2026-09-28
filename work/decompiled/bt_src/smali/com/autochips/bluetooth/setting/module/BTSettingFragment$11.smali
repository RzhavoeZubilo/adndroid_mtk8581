.class Lcom/autochips/bluetooth/setting/module/BTSettingFragment$11;
.super Ljava/lang/Object;
.source "BTSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initAutoConnect()V
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

    .line 489
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$11;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$11;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$200(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$11;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v1

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v1}, Lcom/autochips/bluetooth/IBTService;->isAutoConnect()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$1502(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;Z)Z

    const-string v0, "BTSettingFragment"

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAutoConnect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$11;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v2}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$1500(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$11;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$600(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$11$1;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$11$1;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$11;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 503
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
