.class Lcom/carocean/navicar/McuServiceManager$1;
.super Landroid/database/ContentObserver;
.source "McuServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/carocean/navicar/McuServiceManager;->initialize(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/carocean/navicar/McuServiceManager;


# direct methods
.method constructor <init>(Lcom/carocean/navicar/McuServiceManager;Landroid/os/Handler;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/carocean/navicar/McuServiceManager$1;->this$0:Lcom/carocean/navicar/McuServiceManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 269
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 270
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SYS_MCU_UPGRADING"

    .line 271
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 272
    iget-object p2, p0, Lcom/carocean/navicar/McuServiceManager$1;->this$0:Lcom/carocean/navicar/McuServiceManager;

    .line 273
    invoke-static {p2}, Lcom/carocean/navicar/McuServiceManager;->access$100(Lcom/carocean/navicar/McuServiceManager;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, -0x1

    const-string v1, "content://com.carocean.status.provider/sys"

    .line 272
    invoke-static {v1, p2, p1, v0}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 274
    iget-object p0, p0, Lcom/carocean/navicar/McuServiceManager$1;->this$0:Lcom/carocean/navicar/McuServiceManager;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p0, p2}, Lcom/carocean/navicar/McuServiceManager;->access$202(Lcom/carocean/navicar/McuServiceManager;Z)Z

    :cond_1
    return-void
.end method
