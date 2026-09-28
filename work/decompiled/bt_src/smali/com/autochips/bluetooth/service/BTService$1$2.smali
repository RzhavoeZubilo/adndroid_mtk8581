.class Lcom/autochips/bluetooth/service/BTService$1$2;
.super Ljava/lang/Object;
.source "BTService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/service/BTService$1;->cancelDiscovery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/service/BTService$1;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/service/BTService$1;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/autochips/bluetooth/service/BTService$1$2;->this$1:Lcom/autochips/bluetooth/service/BTService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 60
    invoke-static {}, Lcom/autochips/bluetooth/info/BTStateManager;->getInstance()Lcom/autochips/bluetooth/info/BTStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTStateManager;->cancelDiscovery()V

    return-void
.end method
