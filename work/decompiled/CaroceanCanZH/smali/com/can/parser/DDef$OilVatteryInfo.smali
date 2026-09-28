.class public Lcom/can/parser/DDef$OilVatteryInfo;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OilVatteryInfo"
.end annotation


# instance fields
.field public mBatteryVoltage:B

.field public mEngineDriveMotor:B

.field public mEngineDriveWheel:B

.field public mHybridEleVehicle:B

.field public mMotorDriveVattery:B

.field public mMotorDriveWheel:B

.field public mVatteryDriveMotor:B

.field public mWheelDriveMotor:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
