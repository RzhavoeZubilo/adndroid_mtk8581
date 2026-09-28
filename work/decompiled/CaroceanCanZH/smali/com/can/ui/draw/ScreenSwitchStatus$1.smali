.class Lcom/can/ui/draw/ScreenSwitchStatus$1;
.super Landroid/os/Handler;
.source "ScreenSwitchStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/draw/ScreenSwitchStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/draw/ScreenSwitchStatus;


# direct methods
.method constructor <init>(Lcom/can/ui/draw/ScreenSwitchStatus;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/can/ui/draw/ScreenSwitchStatus$1;->this$0:Lcom/can/ui/draw/ScreenSwitchStatus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 30
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 31
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-lez p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/can/ui/draw/ScreenSwitchStatus$1;->this$0:Lcom/can/ui/draw/ScreenSwitchStatus;

    invoke-static {p1}, Lcom/can/ui/draw/ScreenSwitchStatus;->access$000(Lcom/can/ui/draw/ScreenSwitchStatus;)Lcom/can/ui/draw/PopWind;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 33
    iget-object p1, p0, Lcom/can/ui/draw/ScreenSwitchStatus$1;->this$0:Lcom/can/ui/draw/ScreenSwitchStatus;

    invoke-static {p1}, Lcom/can/ui/draw/ScreenSwitchStatus;->access$000(Lcom/can/ui/draw/ScreenSwitchStatus;)Lcom/can/ui/draw/PopWind;

    move-result-object p1

    iget-object v0, p0, Lcom/can/ui/draw/ScreenSwitchStatus$1;->this$0:Lcom/can/ui/draw/ScreenSwitchStatus;

    invoke-static {v0}, Lcom/can/ui/draw/ScreenSwitchStatus;->access$100(Lcom/can/ui/draw/ScreenSwitchStatus;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/can/ui/draw/ScreenSwitchStatus$1;->this$0:Lcom/can/ui/draw/ScreenSwitchStatus;

    invoke-static {v1}, Lcom/can/ui/draw/ScreenSwitchStatus;->access$200(Lcom/can/ui/draw/ScreenSwitchStatus;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/can/ui/draw/PopWind;->show(Landroid/content/Context;Landroid/view/View;)J

    .line 34
    iget-object p1, p0, Lcom/can/ui/draw/ScreenSwitchStatus$1;->this$0:Lcom/can/ui/draw/ScreenSwitchStatus;

    invoke-static {p1}, Lcom/can/ui/draw/ScreenSwitchStatus;->access$300(Lcom/can/ui/draw/ScreenSwitchStatus;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/can/ui/draw/ScreenSwitchStatus$1;->this$0:Lcom/can/ui/draw/ScreenSwitchStatus;

    iget-object v0, v0, Lcom/can/ui/draw/ScreenSwitchStatus;->AutoClose:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    iget-object p1, p0, Lcom/can/ui/draw/ScreenSwitchStatus$1;->this$0:Lcom/can/ui/draw/ScreenSwitchStatus;

    invoke-static {p1}, Lcom/can/ui/draw/ScreenSwitchStatus;->access$300(Lcom/can/ui/draw/ScreenSwitchStatus;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/can/ui/draw/ScreenSwitchStatus$1;->this$0:Lcom/can/ui/draw/ScreenSwitchStatus;

    iget-object p0, p0, Lcom/can/ui/draw/ScreenSwitchStatus;->AutoClose:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/can/ui/draw/ScreenSwitchStatus$1;->this$0:Lcom/can/ui/draw/ScreenSwitchStatus;

    invoke-virtual {p1}, Lcom/can/ui/draw/ScreenSwitchStatus;->IsShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/can/ui/draw/ScreenSwitchStatus$1;->this$0:Lcom/can/ui/draw/ScreenSwitchStatus;

    invoke-static {p1}, Lcom/can/ui/draw/ScreenSwitchStatus;->access$000(Lcom/can/ui/draw/ScreenSwitchStatus;)Lcom/can/ui/draw/PopWind;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/can/ui/draw/ScreenSwitchStatus$1;->this$0:Lcom/can/ui/draw/ScreenSwitchStatus;

    invoke-static {p1}, Lcom/can/ui/draw/ScreenSwitchStatus;->access$000(Lcom/can/ui/draw/ScreenSwitchStatus;)Lcom/can/ui/draw/PopWind;

    move-result-object p1

    iget-object p0, p0, Lcom/can/ui/draw/ScreenSwitchStatus$1;->this$0:Lcom/can/ui/draw/ScreenSwitchStatus;

    invoke-static {p0}, Lcom/can/ui/draw/ScreenSwitchStatus;->access$200(Lcom/can/ui/draw/ScreenSwitchStatus;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/can/ui/draw/PopWind;->hide(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
