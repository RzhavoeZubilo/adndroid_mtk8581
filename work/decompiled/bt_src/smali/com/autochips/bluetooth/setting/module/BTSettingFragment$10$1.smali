.class Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10$1;
.super Ljava/lang/Object;
.source "BTSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10$1;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10$1;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$10;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTSettingFragment"

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "devidceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v1

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v1, v0}, Lcom/autochips/bluetooth/IBTService;->setDeviceName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 472
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
