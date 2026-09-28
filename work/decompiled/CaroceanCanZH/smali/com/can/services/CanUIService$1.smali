.class Lcom/can/services/CanUIService$1;
.super Ljava/lang/Object;
.source "CanUIService.java"

# interfaces
.implements Lcom/carocean/navicar/McuServiceManager$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/services/CanUIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/services/CanUIService;


# direct methods
.method constructor <init>(Lcom/can/services/CanUIService;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/can/services/CanUIService$1;->this$0:Lcom/can/services/CanUIService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(I[B)V
    .locals 3

    const/16 v0, 0x1e

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    array-length p1, p2

    const/16 v0, 0xd

    if-lt p1, v0, :cond_3

    .line 102
    iget-object p1, p0, Lcom/can/services/CanUIService$1;->this$0:Lcom/can/services/CanUIService;

    invoke-static {p1}, Lcom/can/services/CanUIService;->access$100(Lcom/can/services/CanUIService;)I

    move-result p1

    aget-byte v0, p2, v2

    if-eq p1, v0, :cond_3

    .line 103
    iget-object p1, p0, Lcom/can/services/CanUIService$1;->this$0:Lcom/can/services/CanUIService;

    aget-byte p2, p2, v2

    and-int/lit16 p2, p2, 0xff

    invoke-static {p1, p2}, Lcom/can/services/CanUIService;->access$102(Lcom/can/services/CanUIService;I)I

    const/4 p1, 0x1

    .line 104
    iget-object p2, p0, Lcom/can/services/CanUIService$1;->this$0:Lcom/can/services/CanUIService;

    invoke-static {p2}, Lcom/can/services/CanUIService;->access$100(Lcom/can/services/CanUIService;)I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 105
    iget-object p0, p0, Lcom/can/services/CanUIService$1;->this$0:Lcom/can/services/CanUIService;

    iget-object p0, p0, Lcom/can/services/CanUIService;->mObjUserHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 86
    :cond_1
    array-length p1, p2

    const/4 v0, 0x6

    if-lt p1, v0, :cond_3

    .line 87
    iget-object p1, p0, Lcom/can/services/CanUIService$1;->this$0:Lcom/can/services/CanUIService;

    invoke-static {p1}, Lcom/can/services/CanUIService;->access$000(Lcom/can/services/CanUIService;)I

    move-result p1

    aget-byte v0, p2, v2

    if-eq p1, v0, :cond_3

    .line 88
    iget-object p1, p0, Lcom/can/services/CanUIService$1;->this$0:Lcom/can/services/CanUIService;

    aget-byte p2, p2, v2

    and-int/lit16 p2, p2, 0xff

    invoke-static {p1, p2}, Lcom/can/services/CanUIService;->access$002(Lcom/can/services/CanUIService;I)I

    const/16 p1, 0x11

    .line 89
    iget-object p2, p0, Lcom/can/services/CanUIService$1;->this$0:Lcom/can/services/CanUIService;

    invoke-static {p2}, Lcom/can/services/CanUIService;->access$000(Lcom/can/services/CanUIService;)I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 90
    iget-object p1, p0, Lcom/can/services/CanUIService$1;->this$0:Lcom/can/services/CanUIService;

    iget-object p1, p1, Lcom/can/services/CanUIService;->mObjUserHandler:Landroid/os/Handler;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    iget-object p1, p0, Lcom/can/services/CanUIService$1;->this$0:Lcom/can/services/CanUIService;

    iget-object p1, p1, Lcom/can/services/CanUIService;->mObjUserHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object p0, p0, Lcom/can/services/CanUIService$1;->this$0:Lcom/can/services/CanUIService;

    iget-object p0, p0, Lcom/can/services/CanUIService;->mObjUserHandler:Landroid/os/Handler;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 95
    :cond_2
    iget-object p0, p0, Lcom/can/services/CanUIService$1;->this$0:Lcom/can/services/CanUIService;

    iget-object p0, p0, Lcom/can/services/CanUIService;->mObjUserHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method
