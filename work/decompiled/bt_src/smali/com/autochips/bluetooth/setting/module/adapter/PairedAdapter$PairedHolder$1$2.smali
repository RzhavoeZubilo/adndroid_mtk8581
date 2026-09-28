.class Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2;
.super Ljava/lang/Object;
.source "PairedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;

.field final synthetic val$myBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;Lcom/autochips/bluetooth/model/MyBluetoothDevice;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2;->this$2:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;

    iput-object p2, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2;->val$myBluetoothDevice:Lcom/autochips/bluetooth/model/MyBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2;->this$2:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;->this$1:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;

    iget-object v0, v0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->this$0:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;

    invoke-static {v0}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->access$000(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2;->this$2:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1;->this$1:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;

    iget-object v1, v1, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder;->this$0:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;

    invoke-static {v1}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;->access$000(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter;)Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/autochips/bluetooth/setting/module/R$string;->dialog_disconnect_del:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2$1;

    invoke-direct {v2, p0}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2$1;-><init>(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$2;)V

    invoke-static {v0, v1, v2}, Lcom/autochips/bluetooth/setting/module/FragmentUtil;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
