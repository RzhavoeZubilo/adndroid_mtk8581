.class Lcom/can/ui/draw/Rgb$1;
.super Ljava/util/TimerTask;
.source "Rgb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/can/ui/draw/Rgb;->sendMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/draw/Rgb;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/can/ui/draw/Rgb;I)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/can/ui/draw/Rgb$1;->this$0:Lcom/can/ui/draw/Rgb;

    iput p2, p0, Lcom/can/ui/draw/Rgb$1;->val$value:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 201
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x64

    .line 202
    iput v1, v0, Landroid/os/Message;->what:I

    .line 203
    iget v1, p0, Lcom/can/ui/draw/Rgb$1;->val$value:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 204
    iget-object p0, p0, Lcom/can/ui/draw/Rgb$1;->this$0:Lcom/can/ui/draw/Rgb;

    invoke-static {p0}, Lcom/can/ui/draw/Rgb;->access$000(Lcom/can/ui/draw/Rgb;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
