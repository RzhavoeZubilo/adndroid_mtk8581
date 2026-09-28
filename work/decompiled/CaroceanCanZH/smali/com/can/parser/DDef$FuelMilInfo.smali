.class public Lcom/can/parser/DDef$FuelMilInfo;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FuelMilInfo"
.end annotation


# instance fields
.field public mAverFuel:I

.field public mAverFuelUnit:B

.field public mCHAverFuelUnit:B

.field public mCanDriveMil:I

.field public mCanDriveMilUnit:B

.field public mCurrentAverFuel:I

.field public mFirstAverFuelRecord:I

.field public mFirstTripaRecord:I

.field public mFuelRange:B

.field public mHistoryAverFuel:I

.field public mImmediateFuel:B

.field public mImmediateFuelUnit:B

.field public mIndex:B

.field public mSecondAverFuelRecord:I

.field public mSecondTripaRecord:I

.field public mThirdAverFuelRecord:I

.field public mThirdTripaRecord:I

.field public mTripaIndex1:I

.field public mTripaUnit:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
