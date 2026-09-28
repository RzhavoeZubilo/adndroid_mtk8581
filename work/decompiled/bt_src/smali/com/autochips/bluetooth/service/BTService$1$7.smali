.class Lcom/autochips/bluetooth/service/BTService$1$7;
.super Ljava/lang/Object;
.source "BTService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/service/BTService$1;->disconnect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/service/BTService$1;

.field final synthetic val$mac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/service/BTService$1;Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/autochips/bluetooth/service/BTService$1$7;->this$1:Lcom/autochips/bluetooth/service/BTService$1;

    iput-object p2, p0, Lcom/autochips/bluetooth/service/BTService$1$7;->val$mac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 153
    invoke-static {}, Lcom/autochips/bluetooth/info/BTExtendManager;->getInstance()Lcom/autochips/bluetooth/info/BTExtendManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTExtendManager;->clearLastConnectDevice()V

    .line 154
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/service/BTService$1$7;->val$mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->disconnect(Ljava/lang/String;)V

    return-void
.end method
