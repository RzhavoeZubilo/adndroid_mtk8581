.class Lcom/can/services/CanService$1;
.super Landroid/os/Handler;
.source "CanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/services/CanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/services/CanService;


# direct methods
.method constructor <init>(Lcom/can/services/CanService;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/can/services/CanService$1;->this$0:Lcom/can/services/CanService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string p0, "CanService"

    const-string p1, "donot know msg what?"

    .line 101
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/can/services/CanService$1;->this$0:Lcom/can/services/CanService;

    invoke-static {p0, p1}, Lcom/can/services/CanService;->access$000(Lcom/can/services/CanService;Landroid/os/Message;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object p0, p0, Lcom/can/services/CanService$1;->this$0:Lcom/can/services/CanService;

    invoke-virtual {p0, p1}, Lcom/can/services/CanService;->deregisterUser(Landroid/os/Message;)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object p0, p0, Lcom/can/services/CanService$1;->this$0:Lcom/can/services/CanService;

    invoke-virtual {p0, p1}, Lcom/can/services/CanService;->registerUser(Landroid/os/Message;)V

    goto :goto_0

    .line 86
    :cond_3
    iget-object p0, p0, Lcom/can/services/CanService$1;->this$0:Lcom/can/services/CanService;

    invoke-virtual {p0, p1}, Lcom/can/services/CanService;->send2User(Landroid/os/Message;)Z

    goto :goto_0

    .line 89
    :cond_4
    iget-object p0, p0, Lcom/can/services/CanService$1;->this$0:Lcom/can/services/CanService;

    invoke-virtual {p0, p1}, Lcom/can/services/CanService;->send2Prot(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
