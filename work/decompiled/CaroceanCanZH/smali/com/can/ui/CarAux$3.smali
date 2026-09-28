.class Lcom/can/ui/CarAux$3;
.super Landroid/content/BroadcastReceiver;
.source "CarAux.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/CarAux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/CarAux;


# direct methods
.method constructor <init>(Lcom/can/ui/CarAux;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/can/ui/CarAux$3;->this$0:Lcom/can/ui/CarAux;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 220
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.carocean.action.ACTION_QUIT_APK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "func"

    .line 221
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "aux"

    .line 222
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/can/ui/CarAux$3;->this$0:Lcom/can/ui/CarAux;

    invoke-static {p1}, Lcom/can/ui/CarAux;->access$000(Lcom/can/ui/CarAux;)V

    .line 224
    iget-object p0, p0, Lcom/can/ui/CarAux$3;->this$0:Lcom/can/ui/CarAux;

    invoke-virtual {p0}, Lcom/can/ui/CarAux;->finish()V

    :cond_0
    return-void
.end method
