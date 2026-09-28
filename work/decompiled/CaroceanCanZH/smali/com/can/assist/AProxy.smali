.class public abstract Lcom/can/assist/AProxy;
.super Landroid/os/Handler;
.source "AProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract Finish()V
.end method

.method public abstract Init(Lcom/can/parser/DDef$E_CMD_TYPE;)V
.end method

.method public abstract RegisterProxy(II)V
.end method

.method public abstract deInit()V
.end method

.method public abstract deregisterProxy(II)Z
.end method

.method public abstract getData(II)Ljava/lang/Object;
.end method

.method public abstract registerProxy(II)Z
.end method

.method public abstract sendMsg2Can(Landroid/os/Message;)Z
.end method

.method public abstract sendMsg2Proxy(Ljava/lang/Object;I)V
.end method

.method public abstract sendMsg2Proxy(Ljava/lang/Object;II)V
.end method

.method public abstract setProtocol()V
.end method

.method public abstract start(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
.end method
