.class public abstract Lcom/can/assist/Platforms;
.super Ljava/lang/Object;
.source "Platforms.java"

# interfaces
.implements Lcom/can/assist/CanContant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/assist/Platforms$OnCanAudioListener;,
        Lcom/can/assist/Platforms$Can;,
        Lcom/can/assist/Platforms$MediaInfo;,
        Lcom/can/assist/Platforms$OnGdDataListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract CloseAudio()V
.end method

.method public abstract DeInit()V
.end method

.method public abstract Init(Landroid/content/Context;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract InitSend()V
.end method

.method public abstract OpenAudio(Ljava/lang/String;)V
.end method

.method public abstract ResetCanDescribe()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;)I
.end method

.method public abstract getCanDescribe()Lcom/can/assist/CanContant$CAN_DESCRIBE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCanRxTx()Lcom/can/assist/Platforms$Can;
.end method

.method public abstract getCarType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getMediaInfo()Lcom/can/assist/Platforms$MediaInfo;
.end method

.method public abstract power()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/String;I)V
.end method

.method public abstract setCanDescribe(Lcom/can/assist/CanContant$CarType_Info;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCanIcon(Lcom/can/assist/CanContant$CarType_Info;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setOnCanAudioListener(Lcom/can/assist/Platforms$OnCanAudioListener;)V
.end method

.method public abstract setOnGdDataListener(Lcom/can/assist/Platforms$OnGdDataListener;)V
.end method

.method public abstract start(J)V
.end method
