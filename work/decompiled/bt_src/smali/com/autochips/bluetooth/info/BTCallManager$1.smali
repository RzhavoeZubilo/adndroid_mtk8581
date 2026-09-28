.class Lcom/autochips/bluetooth/info/BTCallManager$1;
.super Ljava/lang/Object;
.source "BTCallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/info/BTCallManager;->handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/info/BTCallManager;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/info/BTCallManager;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTCallManager$1;->this$0:Lcom/autochips/bluetooth/info/BTCallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "BTCallManager"

    const-string v1, "clear mute SCO_CONNECTED"

    .line 375
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v0

    const/16 v1, 0xa0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/carocean/navicar/McuServiceManager;->RPCKeyCommand(II)V

    .line 377
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    const/16 v1, 0xbbc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    return-void
.end method
