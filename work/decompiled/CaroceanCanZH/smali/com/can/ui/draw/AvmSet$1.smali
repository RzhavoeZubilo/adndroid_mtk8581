.class Lcom/can/ui/draw/AvmSet$1;
.super Ljava/lang/Object;
.source "AvmSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/draw/AvmSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/draw/AvmSet;


# direct methods
.method constructor <init>(Lcom/can/ui/draw/AvmSet;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/can/ui/draw/AvmSet$1;->this$0:Lcom/can/ui/draw/AvmSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 87
    iget-object v2, p0, Lcom/can/ui/draw/AvmSet$1;->this$0:Lcom/can/ui/draw/AvmSet;

    invoke-static {v2}, Lcom/can/ui/draw/AvmSet;->access$000(Lcom/can/ui/draw/AvmSet;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/can/ui/draw/AvmSet$1;->this$0:Lcom/can/ui/draw/AvmSet;

    invoke-virtual {v0}, Lcom/can/ui/draw/AvmSet;->hide()V

    .line 89
    iget-object v0, p0, Lcom/can/ui/draw/AvmSet$1;->this$0:Lcom/can/ui/draw/AvmSet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/can/ui/draw/AvmSet;->access$102(Lcom/can/ui/draw/AvmSet;Z)Z

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/can/ui/draw/AvmSet$1;->this$0:Lcom/can/ui/draw/AvmSet;

    invoke-static {v0}, Lcom/can/ui/draw/AvmSet;->access$100(Lcom/can/ui/draw/AvmSet;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/can/ui/draw/AvmSet$1;->this$0:Lcom/can/ui/draw/AvmSet;

    invoke-static {v0}, Lcom/can/ui/draw/AvmSet;->access$200(Lcom/can/ui/draw/AvmSet;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/can/ui/draw/AvmSet$1;->this$0:Lcom/can/ui/draw/AvmSet;

    iget-object p0, p0, Lcom/can/ui/draw/AvmSet;->AutoClose:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
