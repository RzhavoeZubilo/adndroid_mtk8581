.class Lcom/android/launcher2/popuView/CompassManager$1;
.super Landroid/os/Handler;
.source "CompassManager.java"


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

    .line 34
    iput-object p1, p0, Lcom/android/launcher2/popuView/CompassManager$1;->this$0:Lcom/android/launcher2/popuView/CompassManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 40
    iget-object p1, p0, Lcom/android/launcher2/popuView/CompassManager$1;->this$0:Lcom/android/launcher2/popuView/CompassManager;

    invoke-static {p1}, Lcom/android/launcher2/popuView/CompassManager;->access$000(Lcom/android/launcher2/popuView/CompassManager;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 41
    iget-object p1, p0, Lcom/android/launcher2/popuView/CompassManager$1;->this$0:Lcom/android/launcher2/popuView/CompassManager;

    invoke-static {p1}, Lcom/android/launcher2/popuView/CompassManager;->access$100(Lcom/android/launcher2/popuView/CompassManager;)F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/launcher2/popuView/CompassManager;->access$102(Lcom/android/launcher2/popuView/CompassManager;F)F

    .line 42
    iget-object p1, p0, Lcom/android/launcher2/popuView/CompassManager$1;->this$0:Lcom/android/launcher2/popuView/CompassManager;

    invoke-static {p1}, Lcom/android/launcher2/popuView/CompassManager;->access$100(Lcom/android/launcher2/popuView/CompassManager;)F

    move-result p1

    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/android/launcher2/popuView/CompassManager$1;->this$0:Lcom/android/launcher2/popuView/CompassManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher2/popuView/CompassManager;->access$102(Lcom/android/launcher2/popuView/CompassManager;F)F

    .line 43
    :cond_0
    iget-object p0, p0, Lcom/android/launcher2/popuView/CompassManager$1;->this$0:Lcom/android/launcher2/popuView/CompassManager;

    invoke-static {p0}, Lcom/android/launcher2/popuView/CompassManager;->access$100(Lcom/android/launcher2/popuView/CompassManager;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/launcher2/popuView/CompassManager;->access$200(Lcom/android/launcher2/popuView/CompassManager;F)V

    goto :goto_0

    .line 45
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 46
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/location/Location;

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/android/launcher2/popuView/CompassManager$1;->this$0:Lcom/android/launcher2/popuView/CompassManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/android/launcher2/popuView/CompassManager;->access$300(Lcom/android/launcher2/popuView/CompassManager;Landroid/location/Location;)V

    .line 48
    iget-object v0, p0, Lcom/android/launcher2/popuView/CompassManager$1;->this$0:Lcom/android/launcher2/popuView/CompassManager;

    invoke-static {v0}, Lcom/android/launcher2/popuView/CompassManager;->access$400(Lcom/android/launcher2/popuView/CompassManager;)Lcom/android/launcher2/popuView/CompassManager$OnCompassManagerCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 49
    iget-object p0, p0, Lcom/android/launcher2/popuView/CompassManager$1;->this$0:Lcom/android/launcher2/popuView/CompassManager;

    invoke-static {p0}, Lcom/android/launcher2/popuView/CompassManager;->access$400(Lcom/android/launcher2/popuView/CompassManager;)Lcom/android/launcher2/popuView/CompassManager$OnCompassManagerCallback;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/location/Location;

    invoke-interface {p0, p1}, Lcom/android/launcher2/popuView/CompassManager$OnCompassManagerCallback;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    .line 53
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 54
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 55
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/android/launcher2/popuView/CompassManager$1;->this$0:Lcom/android/launcher2/popuView/CompassManager;

    invoke-static {v0}, Lcom/android/launcher2/popuView/CompassManager;->access$500(Lcom/android/launcher2/popuView/CompassManager;)Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher2/popuView/CompassManager;->access$300(Lcom/android/launcher2/popuView/CompassManager;Landroid/location/Location;)V

    .line 57
    iget-object v0, p0, Lcom/android/launcher2/popuView/CompassManager$1;->this$0:Lcom/android/launcher2/popuView/CompassManager;

    invoke-static {v0}, Lcom/android/launcher2/popuView/CompassManager;->access$400(Lcom/android/launcher2/popuView/CompassManager;)Lcom/android/launcher2/popuView/CompassManager$OnCompassManagerCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 58
    iget-object p0, p0, Lcom/android/launcher2/popuView/CompassManager$1;->this$0:Lcom/android/launcher2/popuView/CompassManager;

    invoke-static {p0}, Lcom/android/launcher2/popuView/CompassManager;->access$400(Lcom/android/launcher2/popuView/CompassManager;)Lcom/android/launcher2/popuView/CompassManager$OnCompassManagerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher2/popuView/CompassManager$OnCompassManagerCallback;->onProviderEnabled(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
