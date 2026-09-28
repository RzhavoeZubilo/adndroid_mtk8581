.class Lcom/can/ui/CarInfo$5;
.super Landroid/content/BroadcastReceiver;
.source "CarInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/CarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/CarInfo;


# direct methods
.method constructor <init>(Lcom/can/ui/CarInfo;)V
    .locals 0

    .line 1220
    iput-object p1, p0, Lcom/can/ui/CarInfo$5;->this$0:Lcom/can/ui/CarInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1223
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.carocean.action.ACTION_QUIT_APK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "func"

    .line 1224
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "carinfo"

    .line 1225
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1226
    iget-object p0, p0, Lcom/can/ui/CarInfo$5;->this$0:Lcom/can/ui/CarInfo;

    invoke-virtual {p0}, Lcom/can/ui/CarInfo;->finish()V

    goto/16 :goto_2

    .line 1228
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.carocean.action.SAVE_FACTORY_DATA"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1229
    iget-object p1, p0, Lcom/can/ui/CarInfo$5;->this$0:Lcom/can/ui/CarInfo;

    const-string p2, "persist.sys.oil_uint_gal"

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    invoke-static {p1, p2}, Lcom/can/ui/CarInfo;->access$2002(Lcom/can/ui/CarInfo;Z)Z

    .line 1230
    iget-object p1, p0, Lcom/can/ui/CarInfo$5;->this$0:Lcom/can/ui/CarInfo;

    const-string p2, "persist.sys.temp_unit_f"

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v1, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    invoke-static {p1, p2}, Lcom/can/ui/CarInfo;->access$402(Lcom/can/ui/CarInfo;Z)Z

    .line 1231
    iget-object p1, p0, Lcom/can/ui/CarInfo$5;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p1}, Lcom/can/ui/CarInfo;->access$000(Lcom/can/ui/CarInfo;)[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1232
    iget-object p1, p0, Lcom/can/ui/CarInfo$5;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p1}, Lcom/can/ui/CarInfo;->access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/can/ui/CarInfo$5;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p2}, Lcom/can/ui/CarInfo;->access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;

    move-result-object p2

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/can/ui/CarInfo$5;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {v3}, Lcom/can/ui/CarInfo;->access$000(Lcom/can/ui/CarInfo;)[B

    move-result-object v3

    invoke-virtual {p2, v1, v2, v0, v3}, Lcom/can/ui/CarInfo$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/can/ui/CarInfo$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1234
    :cond_3
    iget-object p1, p0, Lcom/can/ui/CarInfo$5;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p1}, Lcom/can/ui/CarInfo;->access$200(Lcom/can/ui/CarInfo;)[B

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1235
    iget-object p1, p0, Lcom/can/ui/CarInfo$5;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p1}, Lcom/can/ui/CarInfo;->access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/can/ui/CarInfo$5;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p2}, Lcom/can/ui/CarInfo;->access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;

    move-result-object p2

    const/16 v2, 0x18

    iget-object p0, p0, Lcom/can/ui/CarInfo$5;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$200(Lcom/can/ui/CarInfo;)[B

    move-result-object p0

    invoke-virtual {p2, v1, v2, v0, p0}, Lcom/can/ui/CarInfo$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/can/ui/CarInfo$UIHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_2
    return-void
.end method
