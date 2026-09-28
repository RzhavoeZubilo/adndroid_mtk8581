.class Lcom/can/ui/CarInfo$2;
.super Ljava/lang/Object;
.source "CarInfo.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 209
    iput-object p1, p0, Lcom/can/ui/CarInfo$2;->this$0:Lcom/can/ui/CarInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "CarInfo"

    const-string v0, "onServiceConnected"

    .line 220
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p1, p0, Lcom/can/ui/CarInfo$2;->this$0:Lcom/can/ui/CarInfo;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/can/ui/CarInfo;->access$602(Lcom/can/ui/CarInfo;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 222
    iget-object p0, p0, Lcom/can/ui/CarInfo$2;->this$0:Lcom/can/ui/CarInfo;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/can/ui/CarInfo;->access$700(Lcom/can/ui/CarInfo;Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/can/ui/CarInfo$2;->this$0:Lcom/can/ui/CarInfo;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/can/ui/CarInfo;->access$602(Lcom/can/ui/CarInfo;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
