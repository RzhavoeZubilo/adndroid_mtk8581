.class Lcom/autochips/bluetooth/service/BTService$1$12;
.super Ljava/lang/Object;
.source "BTService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/service/BTService$1;->sendAVRCPCmd(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/service/BTService$1;

.field final synthetic val$cmd:I


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/service/BTService$1;I)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/autochips/bluetooth/service/BTService$1$12;->this$1:Lcom/autochips/bluetooth/service/BTService$1;

    iput p2, p0, Lcom/autochips/bluetooth/service/BTService$1$12;->val$cmd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 231
    invoke-static {}, Lcom/autochips/bluetooth/info/BTMusicManager;->getInstance()Lcom/autochips/bluetooth/info/BTMusicManager;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/service/BTService$1$12;->val$cmd:I

    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/info/BTMusicManager;->sendAVRCPCmd(I)V

    return-void
.end method
