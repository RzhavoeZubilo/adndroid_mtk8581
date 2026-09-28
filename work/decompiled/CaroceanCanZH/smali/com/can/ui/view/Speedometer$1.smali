.class Lcom/can/ui/view/Speedometer$1;
.super Landroid/os/Handler;
.source "Speedometer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/ui/view/Speedometer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/can/ui/view/Speedometer;


# direct methods
.method constructor <init>(Lcom/can/ui/view/Speedometer;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/can/ui/view/Speedometer$1;->this$0:Lcom/can/ui/view/Speedometer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
