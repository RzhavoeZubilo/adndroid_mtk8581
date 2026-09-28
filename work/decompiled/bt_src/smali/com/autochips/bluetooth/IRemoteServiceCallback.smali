.class public interface abstract Lcom/autochips/bluetooth/IRemoteServiceCallback;
.super Ljava/lang/Object;
.source "IRemoteServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/IRemoteServiceCallback$Stub;,
        Lcom/autochips/bluetooth/IRemoteServiceCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract notifyEventMail(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
