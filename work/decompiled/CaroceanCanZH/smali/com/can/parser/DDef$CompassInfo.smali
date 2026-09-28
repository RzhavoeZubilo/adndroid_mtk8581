.class public Lcom/can/parser/DDef$CompassInfo;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompassInfo"
.end annotation


# instance fields
.field public CompassAdjust:Z

.field public Compassarea:B

.field public compassAngle:I

.field public mIsValid:B

.field public mbyCompassDir:B

.field public mbyCompassState:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
