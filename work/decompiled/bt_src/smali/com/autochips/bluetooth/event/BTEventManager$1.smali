.class Lcom/autochips/bluetooth/event/BTEventManager$1;
.super Landroid/database/ContentObserver;
.source "BTEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/event/BTEventManager;->registerEventCallback(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/event/BTEventManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/event/BTEventManager;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/autochips/bluetooth/event/BTEventManager$1;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    iput-object p3, p0, Lcom/autochips/bluetooth/event/BTEventManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 173
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 174
    iget-object p1, p0, Lcom/autochips/bluetooth/event/BTEventManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.carocean.status.provider/sys"

    const-string v1, "SYS_MCU_SERVICE_READY"

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/carocean/navicar/NaviStatus;->getInt(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SYS_MCU_SERVICE_READY change mcuState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTEventManager20210602"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/autochips/bluetooth/event/BTEventManager$1;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/event/BTEventManager;->access$000(Lcom/autochips/bluetooth/event/BTEventManager;)Lcom/carlos/eventlibrary/EventMail;

    move-result-object v0

    .line 177
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0xfa2

    invoke-virtual {v0, v1, p1}, Lcom/carlos/eventlibrary/EventMail;->putData(ILjava/lang/Object;)V

    .line 178
    invoke-static {}, Lcom/autochips/bluetooth/event/BTObserverManager;->getInstance()Lcom/autochips/bluetooth/event/BTObserverManager;

    move-result-object p1

    const/16 v1, 0xbdc

    invoke-virtual {p1, v1, v0}, Lcom/autochips/bluetooth/event/BTObserverManager;->sendEventChange(ILcom/carlos/eventlibrary/EventMail;)V

    return-void
.end method
