.class Lcom/android/launcher2/popuView/CompassManager$2;
.super Ljava/lang/Object;
.source "CompassManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popuView/CompassManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/CompassManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/popuView/CompassManager;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/launcher2/popuView/CompassManager$2;->this$0:Lcom/android/launcher2/popuView/CompassManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/launcher2/popuView/CompassManager$2;->this$0:Lcom/android/launcher2/popuView/CompassManager;

    invoke-static {v0}, Lcom/android/launcher2/popuView/CompassManager;->access$000(Lcom/android/launcher2/popuView/CompassManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher2/popuView/CompassManager$2;->this$0:Lcom/android/launcher2/popuView/CompassManager;

    invoke-static {p0}, Lcom/android/launcher2/popuView/CompassManager;->access$000(Lcom/android/launcher2/popuView/CompassManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/launcher2/popuView/CompassManager$2;->this$0:Lcom/android/launcher2/popuView/CompassManager;

    invoke-static {v0}, Lcom/android/launcher2/popuView/CompassManager;->access$000(Lcom/android/launcher2/popuView/CompassManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher2/popuView/CompassManager$2;->this$0:Lcom/android/launcher2/popuView/CompassManager;

    invoke-static {p0}, Lcom/android/launcher2/popuView/CompassManager;->access$000(Lcom/android/launcher2/popuView/CompassManager;)Landroid/os/Handler;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
