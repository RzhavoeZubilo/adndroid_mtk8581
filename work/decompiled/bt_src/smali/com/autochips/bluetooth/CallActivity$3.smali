.class Lcom/autochips/bluetooth/CallActivity$3;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/CallActivity;->initButtonView()V
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

    .line 196
    iput-object p1, p0, Lcom/autochips/bluetooth/CallActivity$3;->this$0:Lcom/autochips/bluetooth/CallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity$3;->this$0:Lcom/autochips/bluetooth/CallActivity;

    iget-object v0, v0, Lcom/autochips/bluetooth/CallActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autochips/bluetooth/CallActivity$3;->this$0:Lcom/autochips/bluetooth/CallActivity;

    iget-object v1, v1, Lcom/autochips/bluetooth/CallActivity;->updateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    iget-object v0, p0, Lcom/autochips/bluetooth/CallActivity$3;->this$0:Lcom/autochips/bluetooth/CallActivity;

    iget-object v0, v0, Lcom/autochips/bluetooth/CallActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autochips/bluetooth/CallActivity$3;->this$0:Lcom/autochips/bluetooth/CallActivity;

    iget-object v1, v1, Lcom/autochips/bluetooth/CallActivity;->updateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
