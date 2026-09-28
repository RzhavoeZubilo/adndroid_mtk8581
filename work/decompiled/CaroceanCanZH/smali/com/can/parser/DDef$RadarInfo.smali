.class public Lcom/can/parser/DDef$RadarInfo;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadarInfo"
.end annotation


# instance fields
.field public mBackAllDis:B

.field public mBackLeftCenterDis:B

.field public mBackLeftDis:B

.field public mBackRightCenterDis:B

.field public mBackRightDis:B

.field public mDistance:B

.field public mFrontALLDis:B

.field public mFrontLeftCenterDis:B

.field public mFrontLeftDis:B

.field public mFrontRightCenterDis:B

.field public mFrontRightDis:B

.field public mLeftDnCenterDis:B

.field public mLeftDnDis:B

.field public mLeftUpCenterDis:B

.field public mLeftUpDis:B

.field public mRadarShowSwitch:B

.field public mRadarSwtich:B

.field public mReverseMode:B

.field public mRightDnCenterDis:B

.field public mRightDnDis:B

.field public mRightUpCenterDis:B

.field public mRightUpDis:B

.field public mViewoSwitch:B

.field public mVol:B

.field public mbVideoType:B

.field public mbyRightShowType:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1182
    iput-byte v0, p0, Lcom/can/parser/DDef$RadarInfo;->mbyRightShowType:B

    return-void
.end method
