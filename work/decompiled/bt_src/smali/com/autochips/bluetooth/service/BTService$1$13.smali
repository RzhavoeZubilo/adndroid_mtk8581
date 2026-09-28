.class Lcom/autochips/bluetooth/service/BTService$1$13;
.super Ljava/lang/Object;
.source "BTService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/service/BTService$1;->resumeBTMusic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autochips/bluetooth/service/BTService$1;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/service/BTService$1;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/autochips/bluetooth/service/BTService$1$13;->this$1:Lcom/autochips/bluetooth/service/BTService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 241
    invoke-static {}, Lcom/autochips/bluetooth/info/BTMusicManager;->getInstance()Lcom/autochips/bluetooth/info/BTMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTMusicManager;->resumeBTMusic()V

    return-void
.end method
