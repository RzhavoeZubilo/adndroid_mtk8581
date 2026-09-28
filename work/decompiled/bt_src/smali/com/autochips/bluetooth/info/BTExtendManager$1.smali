.class Lcom/autochips/bluetooth/info/BTExtendManager$1;
.super Ljava/lang/Object;
.source "BTExtendManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/info/BTExtendManager;->handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/info/BTExtendManager;

.field final synthetic val$mac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/info/BTExtendManager;Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTExtendManager$1;->this$0:Lcom/autochips/bluetooth/info/BTExtendManager;

    iput-object p2, p0, Lcom/autochips/bluetooth/info/BTExtendManager$1;->val$mac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTExtendManager$1;->this$0:Lcom/autochips/bluetooth/info/BTExtendManager;

    iget-object v1, p0, Lcom/autochips/bluetooth/info/BTExtendManager$1;->val$mac:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/info/BTExtendManager;->access$000(Lcom/autochips/bluetooth/info/BTExtendManager;Ljava/lang/String;)V

    return-void
.end method
