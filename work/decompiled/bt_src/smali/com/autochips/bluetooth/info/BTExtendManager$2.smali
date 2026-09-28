.class Lcom/autochips/bluetooth/info/BTExtendManager$2;
.super Ljava/lang/Object;
.source "BTExtendManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/info/BTExtendManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/info/BTExtendManager;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/info/BTExtendManager;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTExtendManager$2;->this$0:Lcom/autochips/bluetooth/info/BTExtendManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "BTExtendManager"

    const-string v1, "autoAnswerRunnable 4"

    .line 203
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTExtendManager$2;->this$0:Lcom/autochips/bluetooth/info/BTExtendManager;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTExtendManager;->isAutoAnswer()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "autoAnswerRunnable 5"

    .line 205
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "autoAnswerRunnable 6"

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->acceptCall()V

    :cond_0
    return-void
.end method
