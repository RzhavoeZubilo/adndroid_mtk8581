.class Lcom/autochips/bluetooth/info/BTMusicManager$1$1;
.super Ljava/lang/Object;
.source "BTMusicManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/info/BTMusicManager$1;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/info/BTMusicManager$1;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/info/BTMusicManager$1;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTMusicManager$1$1;->this$1:Lcom/autochips/bluetooth/info/BTMusicManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTMusicManager$1$1;->this$1:Lcom/autochips/bluetooth/info/BTMusicManager$1;

    iget-object v0, v0, Lcom/autochips/bluetooth/info/BTMusicManager$1;->this$0:Lcom/autochips/bluetooth/info/BTMusicManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/info/BTMusicManager;->access$000(Lcom/autochips/bluetooth/info/BTMusicManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/sys"

    const-string v2, "SYS_GPS_GUIDING"

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYS_GPS_GUIDING state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTMusicManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTMusicManager$1$1;->this$1:Lcom/autochips/bluetooth/info/BTMusicManager$1;

    iget-object v0, v0, Lcom/autochips/bluetooth/info/BTMusicManager$1;->this$0:Lcom/autochips/bluetooth/info/BTMusicManager;

    .line 67
    invoke-static {v0}, Lcom/autochips/bluetooth/info/BTMusicManager;->access$000(Lcom/autochips/bluetooth/info/BTMusicManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.carocean.status.provider/status"

    const-string v3, "ST_SYSTEM_PARAM_INFO"

    invoke-static {v1, v0, v3}, Lcom/carocean/navicar/NaviStatus;->getObject(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;

    if-eqz v0, :cond_0

    .line 69
    iget v0, v0, Lcom/carocean/navicar/Navi$Status$SystemParamInfo;->gps_mixing:I

    mul-int/lit8 v1, v0, 0x3

    .line 70
    div-int/lit8 v1, v1, 0x2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "spi.gps_mixing :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "    gps_mixing:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/control/Bluetooth;->setA2dpLocalVolume(I)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/control/Bluetooth;->setA2dpLocalVolume(I)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/control/Bluetooth;->setA2dpLocalVolume(I)V

    :goto_0
    return-void
.end method
