.class Lcom/can/ui/CarMedia$3;
.super Ljava/lang/Object;
.source "CarMedia.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 575
    iput-object p1, p0, Lcom/can/ui/CarMedia$3;->this$0:Lcom/can/ui/CarMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "CarAux"

    const-string v0, "onServiceConnected"

    .line 586
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object p0, p0, Lcom/can/ui/CarMedia$3;->this$0:Lcom/can/ui/CarMedia;

    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p0, p1}, Lcom/can/ui/CarMedia;->access$602(Lcom/can/ui/CarMedia;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/can/ui/CarMedia$3;->this$0:Lcom/can/ui/CarMedia;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/can/ui/CarMedia;->access$602(Lcom/can/ui/CarMedia;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
