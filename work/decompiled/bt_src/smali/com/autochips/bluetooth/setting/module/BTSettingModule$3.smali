.class Lcom/autochips/bluetooth/setting/module/BTSettingModule$3;
.super Ljava/lang/Object;
.source "BTSettingModule.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    .line 110
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "BTSettingModule"

    const-string v1, "binderDied "

    .line 113
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/BTSettingModule$3;->this$0:Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->connectBTService()V

    :cond_0
    return-void
.end method
