.class Lcom/can/ui/draw/TouchScreen$2;
.super Landroid/content/BroadcastReceiver;
.source "TouchScreen.java"


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

    .line 213
    iput-object p1, p0, Lcom/can/ui/draw/TouchScreen$2;->this$0:Lcom/can/ui/draw/TouchScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$TouchScreen$2()V
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/can/ui/draw/TouchScreen$2;->this$0:Lcom/can/ui/draw/TouchScreen;

    invoke-virtual {p0}, Lcom/can/ui/draw/TouchScreen;->updateClock()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 216
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 217
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TouchScreen"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.TIME_TICK"

    .line 218
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.TIME_SET"

    .line 219
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 221
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 222
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 223
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/can/ui/draw/TouchScreen$2;->this$0:Lcom/can/ui/draw/TouchScreen;

    invoke-static {p1}, Lcom/can/ui/draw/TouchScreen;->access$000(Lcom/can/ui/draw/TouchScreen;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/can/ui/draw/-$$Lambda$TouchScreen$2$Al0YODMTvMypPXau5CHwIgxwvuY;

    invoke-direct {p2, p0}, Lcom/can/ui/draw/-$$Lambda$TouchScreen$2$Al0YODMTvMypPXau5CHwIgxwvuY;-><init>(Lcom/can/ui/draw/TouchScreen$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
