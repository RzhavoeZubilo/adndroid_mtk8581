.class Lcom/autochips/bluetooth/control/Bluetooth$2;
.super Ljava/lang/Object;
.source "Bluetooth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/control/Bluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/control/Bluetooth;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/control/Bluetooth;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/autochips/bluetooth/control/Bluetooth$2;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 673
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth$2;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    const-string v1, "AT\r\n"

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth$2;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    iget-object v0, v0, Lcom/autochips/bluetooth/control/Bluetooth;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth$2;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-static {v1}, Lcom/autochips/bluetooth/control/Bluetooth;->access$000(Lcom/autochips/bluetooth/control/Bluetooth;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
