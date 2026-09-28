.class Lcom/autochips/bluetooth/setting/module/BTSettingFragment$15$1;
.super Ljava/lang/Object;
.source "BTSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/BTSettingFragment$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$15;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/BTSettingFragment$15;)V
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingFragment$15$1;->this$1:Lcom/autochips/bluetooth/setting/module/BTSettingFragment$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 691
    :try_start_0
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v0

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v0}, Lcom/autochips/bluetooth/IBTService;->switchSyncContactState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 693
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
