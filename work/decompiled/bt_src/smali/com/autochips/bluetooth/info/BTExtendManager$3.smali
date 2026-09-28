.class Lcom/autochips/bluetooth/info/BTExtendManager$3;
.super Ljava/lang/Object;
.source "BTExtendManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/info/BTExtendManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/info/BTExtendManager;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/info/BTExtendManager;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/autochips/bluetooth/info/BTExtendManager$3;->this$0:Lcom/autochips/bluetooth/info/BTExtendManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 220
    new-instance v0, Lcom/autochips/bluetooth/info/BTExtendManager$3$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/info/BTExtendManager$3$1;-><init>(Lcom/autochips/bluetooth/info/BTExtendManager$3;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method
