.class public Lcom/can/parser/DDef$PsaTripComputer;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PsaTripComputer"
.end annotation


# instance fields
.field public mAccumulatMileage1:I

.field public mAccumulatMileage2:I

.field public mFuelAverage1:F

.field public mFuelAverage2:F

.field public mFuelConsumption:F

.field public mObjectiveTomileage:I

.field public mResidualOilMileage:I

.field public mSpeedAverage1:I

.field public mSpeedAverage2:I

.field public mTimingH:B

.field public mTimingM:B

.field public mTimingS:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
