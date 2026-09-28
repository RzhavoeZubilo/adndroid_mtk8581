.class Lcom/can/platforms/CanPlatforms8581$CanRxTx$1;
.super Ljava/lang/Object;
.source "CanPlatforms8581.java"

# interfaces
.implements Lcom/carocean/navicar/McuServiceManager$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/platforms/CanPlatforms8581$CanRxTx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/can/platforms/CanPlatforms8581$CanRxTx;


# direct methods
.method constructor <init>(Lcom/can/platforms/CanPlatforms8581$CanRxTx;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/can/platforms/CanPlatforms8581$CanRxTx$1;->this$1:Lcom/can/platforms/CanPlatforms8581$CanRxTx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(I[B)V
    .locals 1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/can/platforms/CanPlatforms8581$CanRxTx$1;->this$1:Lcom/can/platforms/CanPlatforms8581$CanRxTx;

    invoke-static {v0}, Lcom/can/platforms/CanPlatforms8581$CanRxTx;->access$1000(Lcom/can/platforms/CanPlatforms8581$CanRxTx;)Lcom/can/assist/Platforms$Can$OnRxDataLister;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 627
    iget-object p0, p0, Lcom/can/platforms/CanPlatforms8581$CanRxTx$1;->this$1:Lcom/can/platforms/CanPlatforms8581$CanRxTx;

    invoke-static {p0}, Lcom/can/platforms/CanPlatforms8581$CanRxTx;->access$1000(Lcom/can/platforms/CanPlatforms8581$CanRxTx;)Lcom/can/assist/Platforms$Can$OnRxDataLister;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/can/assist/Platforms$Can$OnRxDataLister;->OnDevicesStatusChanged(I[B)V

    :cond_1
    :goto_0
    return-void
.end method
