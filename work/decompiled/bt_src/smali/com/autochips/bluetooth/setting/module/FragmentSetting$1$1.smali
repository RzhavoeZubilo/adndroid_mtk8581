.class Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$1;
.super Ljava/lang/Object;
.source "FragmentSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$1;->this$1:Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$1;->this$1:Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$200(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$1$1;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$1$1;-><init>(Lcom/autochips/bluetooth/setting/module/FragmentSetting$1$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v0}, Lcom/autochips/bluetooth/IBTService;->openBT()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
