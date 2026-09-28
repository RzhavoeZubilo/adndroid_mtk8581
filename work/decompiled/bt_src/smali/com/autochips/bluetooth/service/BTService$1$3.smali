.class Lcom/autochips/bluetooth/service/BTService$1$3;
.super Ljava/lang/Object;
.source "BTService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/service/BTService$1;->setDeviceName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/service/BTService$1;

.field final synthetic val$deviceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/service/BTService$1;Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/autochips/bluetooth/service/BTService$1$3;->this$1:Lcom/autochips/bluetooth/service/BTService$1;

    iput-object p2, p0, Lcom/autochips/bluetooth/service/BTService$1$3;->val$deviceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/service/BTService$1$3;->val$deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/info/BTStateManager;->setLocalBTName(Ljava/lang/String;)Z

    return-void
.end method
