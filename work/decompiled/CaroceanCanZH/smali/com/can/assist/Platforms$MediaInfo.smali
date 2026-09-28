.class public interface abstract Lcom/can/assist/Platforms$MediaInfo;
.super Ljava/lang/Object;
.source "Platforms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/assist/Platforms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaInfo"
.end annotation


# virtual methods
.method public abstract PanoramicVideo(Z)V
.end method

.method public abstract RightVideo(Z)V
.end method

.method public abstract TranslateSource(I)I
.end method

.method public abstract checkVol()Z
.end method

.method public abstract getAccPowerStatus()Z
.end method

.method public abstract getAssistFun(Ljava/lang/String;)Z
.end method

.method public abstract getBand()B
.end method

.method public abstract getCurTrack()I
.end method

.method public abstract getFreqIndex()B
.end method

.method public abstract getID3Album()Ljava/lang/String;
.end method

.method public abstract getID3Author()Ljava/lang/String;
.end method

.method public abstract getID3Title()Ljava/lang/String;
.end method

.method public abstract getMainFreq()I
.end method

.method public abstract getMute(I)Z
.end method

.method public abstract getPhoneConnects()I
.end method

.method public abstract getPhoneNumber()Ljava/lang/String;
.end method

.method public abstract getPhonestate()I
.end method

.method public abstract getPlayTime()I
.end method

.method public abstract getSource()I
.end method

.method public abstract getTimeInfo()Lcom/can/parser/DDef$TimeInfo;
.end method

.method public abstract getTotalTrack()I
.end method

.method public abstract getVol()I
.end method

.method public abstract setAccPowerStatus(Z)V
.end method
