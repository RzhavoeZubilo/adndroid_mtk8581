.class Lcom/can/ui/TouchActivity$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "TouchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/TouchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/TouchActivity;


# direct methods
.method constructor <init>(Lcom/can/ui/TouchActivity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/can/ui/TouchActivity$Receiver;->this$0:Lcom/can/ui/TouchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.yecon.bmw.video_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "video_mode"

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 102
    iget-object p2, p0, Lcom/can/ui/TouchActivity$Receiver;->this$0:Lcom/can/ui/TouchActivity;

    invoke-static {p2, p1}, Lcom/can/ui/TouchActivity;->access$002(Lcom/can/ui/TouchActivity;I)I

    if-nez p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/can/ui/TouchActivity$Receiver;->this$0:Lcom/can/ui/TouchActivity;

    invoke-virtual {p1}, Lcom/can/ui/TouchActivity;->finish()V

    .line 105
    iget-object p0, p0, Lcom/can/ui/TouchActivity$Receiver;->this$0:Lcom/can/ui/TouchActivity;

    invoke-virtual {p0, v0, v0}, Lcom/can/ui/TouchActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
