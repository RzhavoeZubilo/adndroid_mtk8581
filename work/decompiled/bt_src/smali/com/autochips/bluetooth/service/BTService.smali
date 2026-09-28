.class public Lcom/autochips/bluetooth/service/BTService;
.super Landroid/app/Service;
.source "BTService.java"


# instance fields
.field private final stub:Lcom/autochips/bluetooth/IBTService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Lcom/autochips/bluetooth/service/BTService$1;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/service/BTService$1;-><init>(Lcom/autochips/bluetooth/service/BTService;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/service/BTService;->stub:Lcom/autochips/bluetooth/IBTService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/autochips/bluetooth/service/BTService;->stub:Lcom/autochips/bluetooth/IBTService$Stub;

    return-object p1
.end method
