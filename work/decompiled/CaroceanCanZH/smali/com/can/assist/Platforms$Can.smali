.class public interface abstract Lcom/can/assist/Platforms$Can;
.super Ljava/lang/Object;
.source "Platforms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/assist/Platforms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Can"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/assist/Platforms$Can$OnRxDataLister;
    }
.end annotation


# virtual methods
.method public abstract DeInit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract Init(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendData(I[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setEnvironment(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRxDataLister(Lcom/can/assist/Platforms$Can$OnRxDataLister;)V
.end method

.method public abstract setRxReady()V
.end method
