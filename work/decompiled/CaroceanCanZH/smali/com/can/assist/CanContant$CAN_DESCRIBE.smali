.class public Lcom/can/assist/CanContant$CAN_DESCRIBE;
.super Ljava/lang/Object;
.source "CanContant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/assist/CanContant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CAN_DESCRIBE"
.end annotation


# instance fields
.field public iBoxID:I

.field public iCarTypeID:I

.field public iConfigID:I

.field public iSeriesID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iBoxID:I

    .line 81
    iput v0, p0, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iSeriesID:I

    .line 82
    iput v0, p0, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iCarTypeID:I

    .line 83
    iput v0, p0, Lcom/can/assist/CanContant$CAN_DESCRIBE;->iConfigID:I

    return-void
.end method
