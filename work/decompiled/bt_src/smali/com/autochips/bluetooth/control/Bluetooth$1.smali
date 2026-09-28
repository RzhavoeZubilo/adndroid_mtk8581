.class Lcom/autochips/bluetooth/control/Bluetooth$1;
.super Ljava/lang/Object;
.source "Bluetooth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/control/Bluetooth;->connect(Ljava/lang/String;)V
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

    .line 594
    iput-object p1, p0, Lcom/autochips/bluetooth/control/Bluetooth$1;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth$1;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/control/Bluetooth;->resetconnecting(Z)V

    return-void
.end method
