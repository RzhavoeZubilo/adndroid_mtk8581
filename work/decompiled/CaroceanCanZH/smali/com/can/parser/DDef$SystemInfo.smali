.class public Lcom/can/parser/DDef$SystemInfo;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemInfo"
.end annotation


# instance fields
.field public mBackseat:B

.field public mMuteSwitch:B

.field public mPanoramicCamera:B

.field public mPanoramicView:B

.field public mPanoramicViewEnable:B

.field public mVehiclePowerAmplifier:B

.field public mVehiclePowerAmplifierSwitch:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1347
    iput-byte v0, p0, Lcom/can/parser/DDef$SystemInfo;->mPanoramicViewEnable:B

    return-void
.end method
