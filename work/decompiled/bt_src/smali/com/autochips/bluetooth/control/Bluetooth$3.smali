.class Lcom/autochips/bluetooth/control/Bluetooth$3;
.super Ljava/lang/Object;
.source "Bluetooth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/control/Bluetooth;->startresetbt()V
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

    .line 710
    iput-object p1, p0, Lcom/autochips/bluetooth/control/Bluetooth$3;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth$3;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->readLastBtState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth$3;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->resetbtmodule()V

    :cond_0
    return-void
.end method
