.class Lcom/autochips/bluetooth/control/Bluetooth$5;
.super Ljava/lang/Thread;
.source "Bluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/control/Bluetooth;->queryContacts()V
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

    .line 796
    iput-object p1, p0, Lcom/autochips/bluetooth/control/Bluetooth$5;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth$5;->this$0:Lcom/autochips/bluetooth/control/Bluetooth;

    iget-object v0, v0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autochips/bluetooth/control/SystemContactsManager;->queryContacts(Landroid/content/Context;)V

    return-void
.end method
