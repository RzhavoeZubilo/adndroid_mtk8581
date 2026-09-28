.class Lcom/autochips/bluetooth/setting/module/BTSettingFragment$5;
.super Ljava/lang/Object;
.source "BTSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->setBTState(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

.field final synthetic val$type:I

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;ILjava/lang/Object;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$5;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    iput p2, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$5;->val$type:I

    iput-object p3, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$5;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$5;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$200(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 312
    :try_start_0
    iget v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$5;->val$type:I

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$5;->val$value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/autochips/bluetooth/IBTService;->setAutoConnect(Z)V

    goto :goto_0

    .line 324
    :cond_1
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$5;->val$value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/autochips/bluetooth/IBTService;->setDeviceName(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_2
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$5;->val$value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/autochips/bluetooth/IBTService;->setAutoAnswer(Z)V

    goto :goto_0

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$5;->val$value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 315
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v0}, Lcom/autochips/bluetooth/IBTService;->openBT()V

    goto :goto_0

    .line 317
    :cond_4
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v0}, Lcom/autochips/bluetooth/IBTService;->closeBT()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 331
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method
