.class Lcom/can/ui/draw/LexusAir$2;
.super Ljava/lang/Object;
.source "LexusAir.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/draw/LexusAir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/draw/LexusAir;


# direct methods
.method constructor <init>(Lcom/can/ui/draw/LexusAir;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/can/ui/draw/LexusAir$2;->this$0:Lcom/can/ui/draw/LexusAir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 110
    iget-object v2, p0, Lcom/can/ui/draw/LexusAir$2;->this$0:Lcom/can/ui/draw/LexusAir;

    invoke-static {v2}, Lcom/can/ui/draw/LexusAir;->access$000(Lcom/can/ui/draw/LexusAir;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/can/ui/draw/LexusAir$2;->this$0:Lcom/can/ui/draw/LexusAir;

    invoke-virtual {v0}, Lcom/can/ui/draw/LexusAir;->Hide()V

    .line 112
    iget-object p0, p0, Lcom/can/ui/draw/LexusAir$2;->this$0:Lcom/can/ui/draw/LexusAir;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/can/ui/draw/LexusAir;->access$102(Lcom/can/ui/draw/LexusAir;Z)Z

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/can/ui/draw/LexusAir$2;->this$0:Lcom/can/ui/draw/LexusAir;

    invoke-static {v0}, Lcom/can/ui/draw/LexusAir;->access$100(Lcom/can/ui/draw/LexusAir;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/can/ui/draw/LexusAir$2;->this$0:Lcom/can/ui/draw/LexusAir;

    invoke-static {v0}, Lcom/can/ui/draw/LexusAir;->access$200(Lcom/can/ui/draw/LexusAir;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/can/ui/draw/LexusAir$2;->this$0:Lcom/can/ui/draw/LexusAir;

    iget-object p0, p0, Lcom/can/ui/draw/LexusAir;->AirAutoClose:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
