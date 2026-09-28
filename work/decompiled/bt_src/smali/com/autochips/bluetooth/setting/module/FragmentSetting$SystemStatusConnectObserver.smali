.class Lcom/autochips/bluetooth/setting/module/FragmentSetting$SystemStatusConnectObserver;
.super Landroid/database/ContentObserver;
.source "FragmentSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/setting/module/FragmentSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemStatusConnectObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;


# direct methods
.method public constructor <init>(Lcom/autochips/bluetooth/setting/module/FragmentSetting;Landroid/os/Handler;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$SystemStatusConnectObserver;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    .line 405
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 410
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

    const-string v0, "FragmentSetting"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "content://com.carocean.status.provider/sys/SYS_BT_CONNECT_STATUS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 412
    iget-object p1, p0, Lcom/autochips/bluetooth/setting/module/FragmentSetting$SystemStatusConnectObserver;->this$0:Lcom/autochips/bluetooth/setting/module/FragmentSetting;

    invoke-static {p1}, Lcom/autochips/bluetooth/setting/module/FragmentSetting;->access$800(Lcom/autochips/bluetooth/setting/module/FragmentSetting;)V

    :cond_0
    return-void
.end method
