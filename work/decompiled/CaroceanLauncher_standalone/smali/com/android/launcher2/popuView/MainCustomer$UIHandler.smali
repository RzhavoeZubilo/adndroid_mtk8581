.class Lcom/android/launcher2/popuView/MainCustomer$UIHandler;
.super Lcom/carocean/navicar/HandlerWeakReference;
.source "MainCustomer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popuView/MainCustomer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/carocean/navicar/HandlerWeakReference<",
        "Lcom/android/launcher2/popuView/MainCustomer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher2/popuView/MainCustomer;)V
    .locals 0

    .line 2462
    invoke-direct {p0, p1}, Lcom/carocean/navicar/HandlerWeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 2467
    iget-object p0, p0, Lcom/android/launcher2/popuView/MainCustomer$UIHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/popuView/MainCustomer;

    if-nez p0, :cond_0

    return-void

    .line 2471
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2711

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2473
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_2

    .line 2474
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    .line 2475
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/popuView/MainCustomer;->access$3700(Lcom/android/launcher2/popuView/MainCustomer;I[B)V

    :cond_2
    :goto_0
    return-void
.end method
