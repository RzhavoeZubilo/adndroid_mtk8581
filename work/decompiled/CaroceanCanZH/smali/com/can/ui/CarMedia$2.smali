.class Lcom/can/ui/CarMedia$2;
.super Landroid/content/BroadcastReceiver;
.source "CarMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/CarMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/CarMedia;


# direct methods
.method constructor <init>(Lcom/can/ui/CarMedia;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/can/ui/CarMedia$2;->this$0:Lcom/can/ui/CarMedia;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 560
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.carocean.action.ACTION_QUIT_APK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "func"

    .line 561
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "carmedia"

    .line 562
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 563
    iget-object p0, p0, Lcom/can/ui/CarMedia$2;->this$0:Lcom/can/ui/CarMedia;

    invoke-virtual {p0}, Lcom/can/ui/CarMedia;->finish()V

    :cond_0
    return-void
.end method
