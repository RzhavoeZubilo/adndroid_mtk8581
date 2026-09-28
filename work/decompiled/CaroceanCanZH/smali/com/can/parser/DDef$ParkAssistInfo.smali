.class public Lcom/can/parser/DDef$ParkAssistInfo;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParkAssistInfo"
.end annotation


# instance fields
.field public mCarbarnPark:B

.field public mParkSystemState:B

.field public mRadarSoundState:B

.field public mRoadsidePark:B

.field public mbPRadar:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1277
    iput-boolean v0, p0, Lcom/can/parser/DDef$ParkAssistInfo;->mbPRadar:Z

    return-void
.end method
