.class Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13;
.super Ljava/lang/Object;
.source "BTSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->initSyncContractState()V
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

    .line 595
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 599
    :try_start_0
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v0}, Lcom/autochips/bluetooth/IBTService;->getContactSyncState()I

    move-result v0

    .line 600
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v1

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v1}, Lcom/autochips/bluetooth/IBTService;->getBTState()I

    move-result v1

    const-string v2, "BTSettingFragment"

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " btState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$600(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13$4;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13$4;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$600(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13$2;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13$2;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 624
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$600(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13$3;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13$3;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 605
    :cond_3
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$600(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13$1;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13$1;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 643
    :cond_4
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingFragment;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment;->access$600(Lcom/autochips/bluetooth/setting/module/BTSettingFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13$5;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13$5;-><init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$13;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 651
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
