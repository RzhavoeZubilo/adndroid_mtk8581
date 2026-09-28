.class public Lcom/can/parser/DDef$CheryCarInfo;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheryCarInfo"
.end annotation


# instance fields
.field public mAutoLock:B

.field public mAutoUnlock:B

.field public mDashBklight:B

.field public mDaytimeLights:B

.field public mEgenBrakeAlarm:B

.field public mEgenBrakingAlarm:B

.field public mHeadlampDelay:B

.field public mLang:B

.field public mPowerFlow:B

.field public mRemoteTrunk:B

.field public mSetPrompt:B

.field public mSpeedingAlarm:B

.field public mSteerLight:B

.field public mSteeringStartAnim:B

.field public mSteeringStartAvm:B

.field public mVehicleLine:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2272
    iput-byte v0, p0, Lcom/can/parser/DDef$CheryCarInfo;->mDashBklight:B

    return-void
.end method
