.class Lcom/autochips/bluetooth/info/BTStateManager$1;
.super Ljava/lang/Object;
.source "BTStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/info/BTStateManager;->handleEvent(ILcom/carlos/eventlibrary/EventMail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/info/BTStateManager;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/info/BTStateManager;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTStateManager$1;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTStateManager$1;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/info/BTStateManager;->access$000(Lcom/autochips/bluetooth/info/BTStateManager;)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTStateManager$1;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/info/BTStateManager;->access$100(Lcom/autochips/bluetooth/info/BTStateManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviBTState(Landroid/content/Context;I)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTStateManager$1;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/info/BTStateManager;->access$000(Lcom/autochips/bluetooth/info/BTStateManager;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/autochips/bluetooth/info/BTStateManager$1;->this$0:Lcom/autochips/bluetooth/info/BTStateManager;

    invoke-static {v0}, Lcom/autochips/bluetooth/info/BTStateManager;->access$100(Lcom/autochips/bluetooth/info/BTStateManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/autochips/bluetooth/event/SystemNaviUtil;->setNaviBTState(Landroid/content/Context;I)V

    .line 153
    :cond_1
    :goto_0
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    const/16 v1, 0x7d1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->sendMainEvent(ILcom/carlos/eventlibrary/EventMail;)V

    return-void
.end method
