.class public Lcom/can/parser/DDef$CarSetting;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarSetting"
.end annotation


# instance fields
.field public mAccPromptTone:Z

.field public mAdjustAlarm:I

.field public mAlarmSysVolume:I

.field public mAutoHeadLight:Z

.field public mAutoInSend:I

.field public mAutoLightSend:I

.field public mAutoLockDoor:I

.field public mAutoUnLockDoor:I

.field public mBackingTone:Z

.field public mDashBklight:B

.field public mDoorLockMode:I

.field public mDoorUnLock:I

.field public mEngineAutoMatic:Z

.field public mFuelBackLight:Z

.field public mFuelEffBL:I

.field public mHeadLightTime:I

.field public mInLightDimTime:I

.field public mKeyLockAnswer:Z

.field public mKeylessBeep:Z

.field public mKeylessLight:Z

.field public mLaneDeparture:I

.field public mLanguageSetting:B

.field public mMsgNotify:Z

.field public mOutTemp:I

.field public mPauseLKAS:Z

.field public mRelockTime:I

.field public mRemoteSys:Z

.field public mScreenDisplay:B

.field public mSmartKkeyGuide:Z

.field public mSpeedUnit:I

.field public mTachmeterSet:Z

.field public mTachometer:Z

.field public mTrafficSignSys:Z

.field public mTripAReset:I

.field public mTripBReset:I

.field public mWalkAwayLock:Z

.field public mWarnDisctance:I

.field public mbrightness:B

.field public mcontrast:B

.field public msaturation:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1642
    iput-byte v0, p0, Lcom/can/parser/DDef$CarSetting;->mDashBklight:B

    return-void
.end method
