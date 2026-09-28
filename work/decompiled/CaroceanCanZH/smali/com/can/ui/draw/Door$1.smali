.class Lcom/can/ui/draw/Door$1;
.super Ljava/lang/Object;
.source "Door.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/draw/Door;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/draw/Door;


# direct methods
.method constructor <init>(Lcom/can/ui/draw/Door;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/can/ui/draw/Door$1;->this$0:Lcom/can/ui/draw/Door;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 136
    iget-object v2, p0, Lcom/can/ui/draw/Door$1;->this$0:Lcom/can/ui/draw/Door;

    invoke-static {v2}, Lcom/can/ui/draw/Door;->access$000(Lcom/can/ui/draw/Door;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/can/ui/draw/Door$1;->this$0:Lcom/can/ui/draw/Door;

    invoke-virtual {v0}, Lcom/can/ui/draw/Door;->Hide()V

    .line 138
    iget-object v0, p0, Lcom/can/ui/draw/Door$1;->this$0:Lcom/can/ui/draw/Door;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/can/ui/draw/Door;->access$102(Lcom/can/ui/draw/Door;Z)Z

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/can/ui/draw/Door$1;->this$0:Lcom/can/ui/draw/Door;

    invoke-static {v0}, Lcom/can/ui/draw/Door;->access$100(Lcom/can/ui/draw/Door;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/can/ui/draw/Door$1;->this$0:Lcom/can/ui/draw/Door;

    invoke-static {v0}, Lcom/can/ui/draw/Door;->access$200(Lcom/can/ui/draw/Door;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/can/ui/draw/Door$1;->this$0:Lcom/can/ui/draw/Door;

    invoke-static {v0}, Lcom/can/ui/draw/Door;->access$200(Lcom/can/ui/draw/Door;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/can/ui/draw/Door$1;->this$0:Lcom/can/ui/draw/Door;

    iget-object p0, p0, Lcom/can/ui/draw/Door;->DoorAutoClose:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
