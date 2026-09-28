.class public Lcom/can/parser/DDef$BaseInfo;
.super Ljava/lang/Object;
.source "DDef.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseInfo"
.end annotation


# instance fields
.field public mACCLight:B

.field public mBT:B

.field public mBackCarState:B

.field public mFrontBoxDoor:B

.field public mIG:B

.field public mILLLight:B

.field public mKeyIn:B

.field public mLeftBackDoor:B

.field public mLeftFrontDoor:B

.field public mLightState:B

.field public mPStopBlockState:B

.field public mRadar:B

.field public mRightBackDoor:B

.field public mRightFrontDoor:B

.field public mSpeed:I

.field public mTailBoxDoor:B

.field public mTailElectricDoor:B

.field public mTailElectricDoorDirect:B

.field public mTurnLight:B

.field public mbDoorValid:Z

.field public mbyAmbientBright:B

.field public mbyAmbientColor:B

.field public mbyAotuBright:B

.field public mbyEngineHotPer:B

.field public mbyInteriorlight:B

.field public mbyMileUnit:B

.field public mbyMsgToneOn:B

.field public mbyParklockCtrl:B

.field public mbyPlan:B

.field public mbyRainSensor:B

.field public mbyShowEngineHot:B

.field public mbySpeed:B

.field public mbyToneType:B

.field public mbyTractionCtrl:B

.field public mbyTrunLightOnce:B

.field public mbyWarnToneOn:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1211
    iput-boolean v0, p0, Lcom/can/parser/DDef$BaseInfo;->mbDoorValid:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/can/parser/DDef$BaseInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1253
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/can/parser/DDef$BaseInfo;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1196
    invoke-virtual {p0}, Lcom/can/parser/DDef$BaseInfo;->clone()Lcom/can/parser/DDef$BaseInfo;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1259
    :cond_0
    instance-of v1, p1, Lcom/can/parser/DDef$BaseInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1260
    :cond_1
    check-cast p1, Lcom/can/parser/DDef$BaseInfo;

    .line 1261
    iget-byte v1, p1, Lcom/can/parser/DDef$BaseInfo;->mFrontBoxDoor:B

    iget-byte v3, p0, Lcom/can/parser/DDef$BaseInfo;->mFrontBoxDoor:B

    if-ne v1, v3, :cond_2

    iget-byte v1, p1, Lcom/can/parser/DDef$BaseInfo;->mTailBoxDoor:B

    iget-byte v3, p0, Lcom/can/parser/DDef$BaseInfo;->mTailBoxDoor:B

    if-ne v1, v3, :cond_2

    iget-byte v1, p1, Lcom/can/parser/DDef$BaseInfo;->mRightBackDoor:B

    iget-byte v3, p0, Lcom/can/parser/DDef$BaseInfo;->mRightBackDoor:B

    if-ne v1, v3, :cond_2

    iget-byte v1, p1, Lcom/can/parser/DDef$BaseInfo;->mLeftBackDoor:B

    iget-byte v3, p0, Lcom/can/parser/DDef$BaseInfo;->mLeftBackDoor:B

    if-ne v1, v3, :cond_2

    iget-byte v1, p1, Lcom/can/parser/DDef$BaseInfo;->mRightFrontDoor:B

    iget-byte v3, p0, Lcom/can/parser/DDef$BaseInfo;->mRightFrontDoor:B

    if-ne v1, v3, :cond_2

    iget-byte v1, p1, Lcom/can/parser/DDef$BaseInfo;->mLeftFrontDoor:B

    iget-byte v3, p0, Lcom/can/parser/DDef$BaseInfo;->mLeftFrontDoor:B

    if-ne v1, v3, :cond_2

    iget-boolean p1, p1, Lcom/can/parser/DDef$BaseInfo;->mbDoorValid:Z

    iget-boolean p0, p0, Lcom/can/parser/DDef$BaseInfo;->mbDoorValid:Z

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method
