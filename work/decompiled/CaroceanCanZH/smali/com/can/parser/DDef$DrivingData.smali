.class public Lcom/can/parser/DDef$DrivingData;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrivingData"
.end annotation


# instance fields
.field public mbyAvgSpeedUnit:B

.field public mbyConsumptionUnit:B

.field public mbyConvConsumersUnit:B

.field public mbyDistanceUnit:B

.field public mbyInstantFuel:I

.field public mbyInstantFuelUnit:B

.field public mbyPageId:B

.field public mbyRangeUnit:B

.field public mfAvgConsLongTerm:F

.field public mfAvgConsSinceRefuel:F

.field public mfAvgConsSinceStart:F

.field public mfAvgSpeedLongTerm:F

.field public mfAvgSpeedSinceRefuel:F

.field public mfAvgSpeedSinceStart:F

.field public miConvConsumers:I

.field public miDistanceLongTerm:I

.field public miDistanceSinceRefuel:I

.field public miDistanceSinceStart:I

.field public miRange:I

.field public miRangeLongTerm:I

.field public miRangeSinceRefuel:I

.field public miRangeSinceStart:I

.field public miTravellTimeLongTerm:I

.field public miTravellTimeSinceRefuel:I

.field public miTravellTimeSinceStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
