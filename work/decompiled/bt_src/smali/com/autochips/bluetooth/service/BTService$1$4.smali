.class Lcom/autochips/bluetooth/service/BTService$1$4;
.super Ljava/lang/Object;
.source "BTService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/service/BTService$1;->setAutoAnswer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/service/BTService$1;

.field final synthetic val$isAutoAnswer:Z


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/service/BTService$1;Z)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/autochips/bluetooth/service/BTService$1$4;->this$1:Lcom/autochips/bluetooth/service/BTService$1;

    iput-boolean p2, p0, Lcom/autochips/bluetooth/service/BTService$1$4;->val$isAutoAnswer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 123
    invoke-static {}, Lcom/autochips/bluetooth/info/BTExtendManager;->getInstance()Lcom/autochips/bluetooth/info/BTExtendManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/autochips/bluetooth/service/BTService$1$4;->val$isAutoAnswer:Z

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/info/BTExtendManager;->setAutoAnswer(Z)V

    return-void
.end method
