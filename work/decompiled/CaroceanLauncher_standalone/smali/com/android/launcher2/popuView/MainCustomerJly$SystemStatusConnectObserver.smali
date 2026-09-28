.class Lcom/android/launcher2/popuView/MainCustomerJly$SystemStatusConnectObserver;
.super Landroid/database/ContentObserver;
.source "MainCustomerJly.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popuView/MainCustomerJly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemStatusConnectObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/popuView/MainCustomerJly;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/popuView/MainCustomerJly;Landroid/os/Handler;)V
    .locals 0

    .line 1699
    iput-object p1, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SystemStatusConnectObserver;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    .line 1700
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1705
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainCustomerJly"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "content://com.carocean.status.provider/sys/SYS_BT_CONNECT_STATUS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1707
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomerJly$SystemStatusConnectObserver;->this$0:Lcom/android/launcher2/popuView/MainCustomerJly;

    invoke-static {p0}, Lcom/android/launcher2/popuView/MainCustomerJly;->access$1700(Lcom/android/launcher2/popuView/MainCustomerJly;)Lcom/android/launcher2/Launcher;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher2/uitl/Utils;->isBTConnected(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popuView/MainCustomerJly;->updateBluetooth(Z)V

    :cond_0
    return-void
.end method
