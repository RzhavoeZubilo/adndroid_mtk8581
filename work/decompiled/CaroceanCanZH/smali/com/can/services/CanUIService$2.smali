.class Lcom/can/services/CanUIService$2;
.super Landroid/os/Handler;
.source "CanUIService.java"


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

    .line 172
    iput-object p1, p0, Lcom/can/services/CanUIService$2;->this$0:Lcom/can/services/CanUIService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/can/services/CanUIService$2;->this$0:Lcom/can/services/CanUIService;

    invoke-virtual {v0, p1}, Lcom/can/services/CanUIService;->doMessage(Landroid/os/Message;)V

    .line 185
    iget-object p0, p0, Lcom/can/services/CanUIService$2;->this$0:Lcom/can/services/CanUIService;

    invoke-virtual {p0, p1}, Lcom/can/services/CanUIService;->send2UIUser(Landroid/os/Message;)V

    return-void
.end method
