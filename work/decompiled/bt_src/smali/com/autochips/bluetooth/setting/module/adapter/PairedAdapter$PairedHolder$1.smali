.class Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;
.super Ljava/lang/Object;
.source "PairedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;Landroid/view/View;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;->this$1:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;

    iput-object p2, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 185
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PairedAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick gson="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/autochips/bluetooth/util/StaticUtil;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x10

    .line 189
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 190
    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 191
    invoke-static {}, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->getInstance()Lcom/autochips/bluetooth/setting/module/BTSettingModule;

    move-result-object v3

    iget-object v3, v3, Lcom/autochips/bluetooth/setting/module/BTSettingModule;->myService:Lcom/autochips/bluetooth/IBTService;

    invoke-interface {v3}, Lcom/autochips/bluetooth/IBTService;->isBusying()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "onClick module error isBusying"

    .line 192
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    const-string v4, "onClick error"

    .line 197
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/autochips/bluetooth/setting/module/R$id;->item_del:I

    if-ne v2, v3, :cond_3

    .line 202
    invoke-virtual {v0, v1}, Lcom/autochips/bluetooth/model/MyBluetoothDevice;->getConnectState(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 203
    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;->this$1:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->this$0:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;

    invoke-static {v1}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->access$100(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$1;

    invoke-direct {v2, p0, v0}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$1;-><init>(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;->this$1:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->this$0:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;

    invoke-static {v1}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->access$100(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2;

    invoke-direct {v2, p0, v0}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2;-><init>(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 236
    :cond_3
    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/autochips/bluetooth/setting/module/R$id;->item_top:I

    if-ne v1, v2, :cond_4

    goto :goto_0

    .line 239
    :cond_4
    new-instance v1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;

    invoke-direct {v1, p0, v0}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3;-><init>(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V

    invoke-static {v1}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
