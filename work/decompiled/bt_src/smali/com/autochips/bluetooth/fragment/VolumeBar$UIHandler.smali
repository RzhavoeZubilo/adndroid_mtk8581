.class Lcom/autochips/bluetooth/fragment/VolumeBar$UIHandler;
.super Lcom/carocean/navicar/HandlerWeakReference;
.source "VolumeBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/fragment/VolumeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/carocean/navicar/HandlerWeakReference<",
        "Lcom/autochips/bluetooth/fragment/VolumeBar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/autochips/bluetooth/fragment/VolumeBar;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/carocean/navicar/HandlerWeakReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/autochips/bluetooth/fragment/VolumeBar$UIHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autochips/bluetooth/fragment/VolumeBar;

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_1

    .line 60
    invoke-virtual {v0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/autochips/bluetooth/fragment/VolumeBar;->dismiss()V

    :cond_1
    return-void
.end method
