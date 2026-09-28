.class Lcom/autochips/bluetooth/CallActivity$4;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/CallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/CallActivity;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/CallActivity;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/autochips/bluetooth/CallActivity$4;->this$0:Lcom/autochips/bluetooth/CallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 382
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTCallManager;->getCurrentCall()Lcom/autochips/bluetooth/model/MyCall;

    move-result-object v0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->getCallTime(Lcom/autochips/bluetooth/model/MyCall;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTCallActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v1, p0, Lcom/autochips/bluetooth/CallActivity$4;->this$0:Lcom/autochips/bluetooth/CallActivity;

    iget-object v1, v1, Lcom/autochips/bluetooth/CallActivity;->timeTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->getCallTime(Lcom/autochips/bluetooth/model/MyCall;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    invoke-static {}, Lcom/autochips/bluetooth/info/BTCallManager;->getInstance()Lcom/autochips/bluetooth/info/BTCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autochips/bluetooth/info/BTCallManager;->getCallList()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 387
    iget-object v1, p0, Lcom/autochips/bluetooth/CallActivity$4;->this$0:Lcom/autochips/bluetooth/CallActivity;

    iget-object v1, v1, Lcom/autochips/bluetooth/CallActivity;->callAdapter:Lcom/autochips/bluetooth/adapter/CallAdapter;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/autochips/bluetooth/CallActivity$4;->this$0:Lcom/autochips/bluetooth/CallActivity;

    iget-object v1, v1, Lcom/autochips/bluetooth/CallActivity;->callAdapter:Lcom/autochips/bluetooth/adapter/CallAdapter;

    invoke-virtual {v1}, Lcom/autochips/bluetooth/adapter/CallAdapter;->notifyDataSetChanged()V

    :cond_0
    if-nez v0, :cond_1

    return-void

    .line 392
    :cond_1
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 393
    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyCall;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity$4;->this$0:Lcom/autochips/bluetooth/CallActivity;

    iget-object v0, v0, Lcom/autochips/bluetooth/CallActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autochips/bluetooth/CallActivity$4;->this$0:Lcom/autochips/bluetooth/CallActivity;

    iget-object v1, v1, Lcom/autochips/bluetooth/CallActivity;->updateTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
