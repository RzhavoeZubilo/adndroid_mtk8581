.class Lcom/autochips/bluetooth/info/BTDeviceManager$2;
.super Ljava/lang/Object;
.source "BTDeviceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/info/BTDeviceManager;->handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/info/BTDeviceManager;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/info/BTDeviceManager;)V
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTDeviceManager$2;->this$0:Lcom/autochips/bluetooth/info/BTDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTDeviceManager$2;->this$0:Lcom/autochips/bluetooth/info/BTDeviceManager;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTDeviceManager;->refreshPairedDevices2()V

    return-void
.end method
