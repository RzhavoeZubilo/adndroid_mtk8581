.class Lcom/can/ui/draw/Rgb$2;
.super Landroid/os/Handler;
.source "Rgb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/draw/Rgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/draw/Rgb;


# direct methods
.method constructor <init>(Lcom/can/ui/draw/Rgb;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/can/ui/draw/Rgb$2;->this$0:Lcom/can/ui/draw/Rgb;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 213
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x65

    .line 215
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_1

    .line 216
    iget-object p1, p0, Lcom/can/ui/draw/Rgb$2;->this$0:Lcom/can/ui/draw/Rgb;

    invoke-static {p1}, Lcom/can/ui/draw/Rgb;->access$100(Lcom/can/ui/draw/Rgb;)Lcom/can/ui/draw/Rgb$OnRGBlistener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 217
    iget-object p0, p0, Lcom/can/ui/draw/Rgb$2;->this$0:Lcom/can/ui/draw/Rgb;

    invoke-static {p0}, Lcom/can/ui/draw/Rgb;->access$100(Lcom/can/ui/draw/Rgb;)Lcom/can/ui/draw/Rgb$OnRGBlistener;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/can/ui/draw/Rgb$OnRGBlistener;->onShow(Z)V

    :cond_1
    :goto_0
    return-void
.end method
