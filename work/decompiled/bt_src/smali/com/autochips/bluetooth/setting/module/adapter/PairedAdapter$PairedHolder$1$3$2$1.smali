.class Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$2$1;
.super Ljava/lang/Object;
.source "PairedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$2;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$2;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$2$1;->this$4:Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 273
    new-instance v0, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$2$1$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$2$1$1;-><init>(Lcom/autochips/bluetooth/setting/module/adapter/PairedAdapter$PairedHolder$1$3$2$1;)V

    invoke-static {v0}, Lcom/autochips/bluetooth/util/StaticUtil;->startTask(Ljava/lang/Runnable;)V

    return-void
.end method
