.class Lcom/autochips/bluetooth/event/BTEventManager$3;
.super Landroid/database/ContentObserver;
.source "BTEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/bluetooth/event/BTEventManager;->registerEventCallback(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/bluetooth/event/BTEventManager;


# direct methods
.method constructor <init>(Lcom/autochips/bluetooth/event/BTEventManager;Landroid/os/Handler;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/autochips/bluetooth/event/BTEventManager$3;->this$0:Lcom/autochips/bluetooth/event/BTEventManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 194
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
