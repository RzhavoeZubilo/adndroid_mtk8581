.class Lcom/can/ui/draw/Radar$1;
.super Landroid/os/Handler;
.source "Radar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/draw/Radar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/draw/Radar;


# direct methods
.method constructor <init>(Lcom/can/ui/draw/Radar;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/can/ui/draw/Radar$1;->this$0:Lcom/can/ui/draw/Radar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 627
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 632
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 629
    :cond_0
    iget-object p0, p0, Lcom/can/ui/draw/Radar$1;->this$0:Lcom/can/ui/draw/Radar;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/can/ui/draw/Radar;->access$000(Lcom/can/ui/draw/Radar;Ljava/lang/Boolean;)V

    :goto_1
    return-void
.end method
