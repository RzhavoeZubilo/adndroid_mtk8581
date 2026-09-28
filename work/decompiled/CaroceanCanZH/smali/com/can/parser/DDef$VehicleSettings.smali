.class public Lcom/can/parser/DDef$VehicleSettings;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VehicleSettings"
.end annotation


# instance fields
.field public mAirCircleAndAutoLinkage:B

.field public mAirSwitchAndAutoLinkage:B

.field public mAutoLockBySHIFTFORMP:B

.field public mAutoLockBySHIFTToP:B

.field public mAutoLockBySpeed:B

.field public mAutoRelockTimer:B

.field public mDayTimeRunningLights:B

.field public mElectricdooradjust:B

.field public mFRadarDis:B

.field public mHeadlampsAutoOFFTimer:B

.field public mHeadlampsOnSensitivity:B

.field public mLightsOffTimer:B

.field public mLockDrivingSeatOpenDoor:B

.field public mLockHandleKeyTwoTimes:B

.field public mLockIntelligentDoor:B

.field public mLockIntelligentVehicle:B

.field public mLockUnLockFeedBackTONE:B

.field public mRRadarDis:B

.field public mRadarTrack:B

.field public mRadarVol:B

.field public mRemote2PressUnlock:B

.field public mUnLockFlash:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1514
    iput-byte v0, p0, Lcom/can/parser/DDef$VehicleSettings;->mRadarTrack:B

    return-void
.end method
