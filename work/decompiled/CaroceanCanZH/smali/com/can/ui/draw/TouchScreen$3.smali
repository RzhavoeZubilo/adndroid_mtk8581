.class Lcom/can/ui/draw/TouchScreen$3;
.super Ljava/lang/Object;
.source "TouchScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/draw/TouchScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/draw/TouchScreen;


# direct methods
.method constructor <init>(Lcom/can/ui/draw/TouchScreen;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/can/ui/draw/TouchScreen$3;->this$0:Lcom/can/ui/draw/TouchScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/can/ui/draw/TouchScreen$3;->this$0:Lcom/can/ui/draw/TouchScreen;

    invoke-virtual {v0}, Lcom/can/ui/draw/TouchScreen;->updateClock()V

    .line 256
    iget-object v0, p0, Lcom/can/ui/draw/TouchScreen$3;->this$0:Lcom/can/ui/draw/TouchScreen;

    invoke-static {v0}, Lcom/can/ui/draw/TouchScreen;->access$000(Lcom/can/ui/draw/TouchScreen;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/can/ui/draw/TouchScreen$3;->this$0:Lcom/can/ui/draw/TouchScreen;

    invoke-static {p0}, Lcom/can/ui/draw/TouchScreen;->access$100(Lcom/can/ui/draw/TouchScreen;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
