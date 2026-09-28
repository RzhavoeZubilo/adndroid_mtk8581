.class Lcom/can/ui/CanPopWind$1;
.super Landroid/content/BroadcastReceiver;
.source "CanPopWind.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/CanPopWind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/CanPopWind;


# direct methods
.method constructor <init>(Lcom/can/ui/CanPopWind;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/can/ui/CanPopWind$1;->this$0:Lcom/can/ui/CanPopWind;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "com.ckx.lexus.origncar.media.open"

    .line 132
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 134
    :try_start_0
    new-instance p1, Lcom/can/ui/CanPopWind$1$1;

    invoke-direct {p1, p0}, Lcom/can/ui/CanPopWind$1$1;-><init>(Lcom/can/ui/CanPopWind$1;)V

    .line 147
    invoke-virtual {p1}, Lcom/can/ui/CanPopWind$1$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    :goto_0
    iget-object p0, p0, Lcom/can/ui/CanPopWind$1;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {p0}, Lcom/can/ui/CanPopWind;->access$000(Lcom/can/ui/CanPopWind;)V

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.carocean.action.SAVE_FACTORY_DATA"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 154
    iget-object p1, p0, Lcom/can/ui/CanPopWind$1;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {p1}, Lcom/can/ui/CanPopWind;->access$100(Lcom/can/ui/CanPopWind;)Lcom/can/ui/draw/LexusAir;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 155
    iget-object p1, p0, Lcom/can/ui/CanPopWind$1;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {p1}, Lcom/can/ui/CanPopWind;->access$100(Lcom/can/ui/CanPopWind;)Lcom/can/ui/draw/LexusAir;

    move-result-object p1

    invoke-virtual {p1}, Lcom/can/ui/draw/LexusAir;->setTempTvVisibility()V

    .line 156
    iget-object p1, p0, Lcom/can/ui/CanPopWind$1;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {p1}, Lcom/can/ui/CanPopWind;->access$100(Lcom/can/ui/CanPopWind;)Lcom/can/ui/draw/LexusAir;

    move-result-object p1

    invoke-virtual {p1}, Lcom/can/ui/draw/LexusAir;->updateTempTvUnit()V

    .line 157
    iget-object p1, p0, Lcom/can/ui/CanPopWind$1;->this$0:Lcom/can/ui/CanPopWind;

    iget-object p1, p1, Lcom/can/ui/CanPopWind;->mObjHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/can/ui/CanPopWind$1;->this$0:Lcom/can/ui/CanPopWind;

    iget-object p2, p2, Lcom/can/ui/CanPopWind;->mObjHandler:Landroid/os/Handler;

    const/16 v0, 0x41

    iget-object p0, p0, Lcom/can/ui/CanPopWind$1;->this$0:Lcom/can/ui/CanPopWind;

    invoke-static {p0}, Lcom/can/ui/CanPopWind;->access$200(Lcom/can/ui/CanPopWind;)[B

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_1
    return-void
.end method
