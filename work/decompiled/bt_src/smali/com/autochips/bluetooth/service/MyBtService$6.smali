.class Lcom/autochips/bluetooth/service/MyBtService$6;
.super Ljava/lang/Object;
.source "MyBtService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/service/MyBtService;->notifyProfileConnectState(Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/service/MyBtService;

.field final synthetic val$prevState:I

.field final synthetic val$profileType:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/service/MyBtService;III)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/autochips/bluetooth/service/MyBtService$6;->this$0:Lcom/autochips/bluetooth/service/MyBtService;

    iput p2, p0, Lcom/autochips/bluetooth/service/MyBtService$6;->val$profileType:I

    iput p3, p0, Lcom/autochips/bluetooth/service/MyBtService$6;->val$state:I

    iput p4, p0, Lcom/autochips/bluetooth/service/MyBtService$6;->val$prevState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 623
    iget v0, p0, Lcom/autochips/bluetooth/service/MyBtService$6;->val$profileType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget v2, p0, Lcom/autochips/bluetooth/service/MyBtService$6;->val$state:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/autochips/bluetooth/service/MyBtService$6;->val$prevState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 624
    iget-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService$6;->this$0:Lcom/autochips/bluetooth/service/MyBtService;

    invoke-static {v0}, Lcom/autochips/bluetooth/service/MyBtService;->access$100(Lcom/autochips/bluetooth/service/MyBtService;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 625
    iget v1, p0, Lcom/autochips/bluetooth/service/MyBtService$6;->val$state:I

    if-eq v1, v2, :cond_2

    :cond_1
    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/autochips/bluetooth/service/MyBtService$6;->val$state:I

    if-ne v0, v2, :cond_3

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/service/MyBtService$6;->this$0:Lcom/autochips/bluetooth/service/MyBtService;

    invoke-static {v0}, Lcom/autochips/bluetooth/service/MyBtService;->access$200(Lcom/autochips/bluetooth/service/MyBtService;)V

    .line 629
    :cond_3
    :goto_0
    invoke-static {}, Lcom/autochips/bluetooth/info/BTDeviceManager;->getInstance()Lcom/autochips/bluetooth/info/BTDeviceManager;

    move-result-object v0

    sget-object v1, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/info/BTDeviceManager;->logBondDevice(Lcom/google/gson/Gson;)V

    return-void
.end method
