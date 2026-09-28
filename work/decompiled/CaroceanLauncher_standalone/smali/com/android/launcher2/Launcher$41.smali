.class Lcom/android/launcher2/Launcher$41;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/carocean/navicar/McuServiceManager$DataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 0

    .line 6020
    iput-object p1, p0, Lcom/android/launcher2/Launcher$41;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(I[B)V
    .locals 5

    .line 6024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmdcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "0x%02X "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Launcher"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 6027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x12

    const/16 v3, 0xff

    if-eq p1, v0, :cond_3

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, " onServiceConnected:1"

    .line 6032
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6033
    iget-object p0, p0, Lcom/android/launcher2/Launcher$41;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/Launcher;->onServiceConnected()V

    goto :goto_0

    .line 6056
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Launcher$41;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$1500(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6057
    iget-object p0, p0, Lcom/android/launcher2/Launcher$41;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p0}, Lcom/android/launcher2/Launcher;->access$1500(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/popuView/MainCustomer;->refreshCarInfoViews(I[B)V

    goto :goto_0

    .line 6036
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Launcher$41;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$1500(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6037
    iget-object v0, p0, Lcom/android/launcher2/Launcher$41;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->access$1500(Lcom/android/launcher2/Launcher;)Lcom/android/launcher2/popuView/MainCustomer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/popuView/MainCustomer;->refreshCarInfoViews(I[B)V

    :cond_4
    if-eqz p2, :cond_5

    .line 6039
    array-length p1, p2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_5

    .line 6040
    aget-byte p1, p2, v1

    and-int/2addr p1, v3

    if-ne p1, v1, :cond_5

    const-string p1, "persist.sys.ivicar.avm.enable"

    .line 6041
    invoke-static {p1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 6042
    iget-object p1, p0, Lcom/android/launcher2/Launcher$41;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$2400(Lcom/android/launcher2/Launcher;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 6043
    iget-object p1, p0, Lcom/android/launcher2/Launcher$41;->this$0:Lcom/android/launcher2/Launcher;

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->access$2400(Lcom/android/launcher2/Launcher;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/launcher2/Launcher$41$1;

    invoke-direct {p2, p0}, Lcom/android/launcher2/Launcher$41$1;-><init>(Lcom/android/launcher2/Launcher$41;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_0
    return-void
.end method
