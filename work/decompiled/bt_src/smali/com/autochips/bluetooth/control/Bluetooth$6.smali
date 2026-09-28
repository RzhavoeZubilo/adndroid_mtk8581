.class Lcom/autochips/bluetooth/control/Bluetooth$6;
.super Ljava/lang/Thread;
.source "Bluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/control/Bluetooth;->refreshsystemcontact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/control/Bluetooth;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/control/Bluetooth;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/autochips/bluetooth/control/Bluetooth$6;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 808
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_refreshsystemcontact:Ljava/lang/Object;

    monitor-enter v0

    .line 809
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth$6;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    iget-object v1, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/autochips/bluetooth/control/SystemContactsManager;->cleanContacts(Landroid/content/Context;)V

    .line 810
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 811
    iget-object v2, p0, Lcom/autochips/bluetooth/control/Bluetooth$6;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-virtual {v2, v1}, Lcom/autochips/bluetooth/control/Bluetooth;->GetPhonebook(Ljava/util/List;)Z

    .line 812
    iget-object v2, p0, Lcom/autochips/bluetooth/control/Bluetooth$6;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    iget-object v2, v2, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/autochips/bluetooth/control/SystemContactsManager;->addContacts(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 813
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth$6;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    iget-object v1, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.PhonebookUpdate"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.autochips.bluetooth.PhonebookPath"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/autochips/bluetooth/control/DBManager;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/bt_phonebook.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 815
    :cond_0
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth$6;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    iget-object v1, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.PhonebookUpdate"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.autochips.bluetooth.PhonebookPath"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 817
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
