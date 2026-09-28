.class public Lcom/can/parser/DDef$TripInfo;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TripInfo"
.end annotation


# instance fields
.field public mfAccumulatMileage:F

.field public mfFuelAverage:F

.field public mfOutCarTemp:F

.field public mfSpeedAverage:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
