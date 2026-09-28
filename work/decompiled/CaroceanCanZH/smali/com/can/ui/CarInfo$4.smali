.class Lcom/can/ui/CarInfo$4;
.super Landroid/database/ContentObserver;
.source "CarInfo.java"


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
.method constructor <init>(Lcom/can/ui/CarInfo;Landroid/os/Handler;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/can/ui/CarInfo$4;->this$0:Lcom/can/ui/CarInfo;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 630
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 631
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "content://com.carocean.status.provider/sys/SYS_THEME"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 632
    iget-object p1, p0, Lcom/can/ui/CarInfo$4;->this$0:Lcom/can/ui/CarInfo;

    invoke-virtual {p1}, Lcom/can/ui/CarInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "content://com.carocean.status.provider/sys"

    const-string v1, "SYS_THEME"

    invoke-static {v0, p1, v1, p2}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 634
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/16 v0, 0x2710

    .line 635
    iput v0, p2, Landroid/os/Message;->what:I

    .line 636
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 637
    iget-object p1, p0, Lcom/can/ui/CarInfo$4;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p1}, Lcom/can/ui/CarInfo;->access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 638
    iget-object p0, p0, Lcom/can/ui/CarInfo$4;->this$0:Lcom/can/ui/CarInfo;

    invoke-static {p0}, Lcom/can/ui/CarInfo;->access$100(Lcom/can/ui/CarInfo;)Lcom/can/ui/CarInfo$UIHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/can/ui/CarInfo$UIHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
