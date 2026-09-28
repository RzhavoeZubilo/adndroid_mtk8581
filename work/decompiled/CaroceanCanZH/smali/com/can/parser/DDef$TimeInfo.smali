.class public Lcom/can/parser/DDef$TimeInfo;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeInfo"
.end annotation


# instance fields
.field public by24Mode:B

.field public byAmPm:B

.field public byDay:B

.field public byHour:B

.field public byMinute:B

.field public byMonth:B

.field public bySecond:B

.field public iYear:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Assignment(Lcom/can/parser/DDef$TimeInfo;)V
    .locals 1

    .line 357
    iget v0, p0, Lcom/can/parser/DDef$TimeInfo;->iYear:I

    iput v0, p1, Lcom/can/parser/DDef$TimeInfo;->iYear:I

    .line 358
    iget-byte v0, p0, Lcom/can/parser/DDef$TimeInfo;->byMonth:B

    iput-byte v0, p1, Lcom/can/parser/DDef$TimeInfo;->byMonth:B

    .line 359
    iget-byte v0, p0, Lcom/can/parser/DDef$TimeInfo;->byDay:B

    iput-byte v0, p1, Lcom/can/parser/DDef$TimeInfo;->byDay:B

    .line 360
    iget-byte v0, p0, Lcom/can/parser/DDef$TimeInfo;->byHour:B

    iput-byte v0, p1, Lcom/can/parser/DDef$TimeInfo;->byHour:B

    .line 361
    iget-byte v0, p0, Lcom/can/parser/DDef$TimeInfo;->byMinute:B

    iput-byte v0, p1, Lcom/can/parser/DDef$TimeInfo;->byMinute:B

    .line 362
    iget-byte v0, p0, Lcom/can/parser/DDef$TimeInfo;->by24Mode:B

    iput-byte v0, p1, Lcom/can/parser/DDef$TimeInfo;->by24Mode:B

    .line 363
    iget-byte p0, p0, Lcom/can/parser/DDef$TimeInfo;->byAmPm:B

    iput-byte p0, p1, Lcom/can/parser/DDef$TimeInfo;->byAmPm:B

    return-void
.end method

.method public equal(Lcom/can/parser/DDef$TimeInfo;)Z
    .locals 2

    .line 347
    iget v0, p1, Lcom/can/parser/DDef$TimeInfo;->iYear:I

    iget v1, p0, Lcom/can/parser/DDef$TimeInfo;->iYear:I

    if-ne v0, v1, :cond_1

    iget-byte v0, p1, Lcom/can/parser/DDef$TimeInfo;->byMonth:B

    iget-byte v1, p0, Lcom/can/parser/DDef$TimeInfo;->byMonth:B

    if-ne v0, v1, :cond_1

    iget-byte v0, p1, Lcom/can/parser/DDef$TimeInfo;->byDay:B

    iget-byte v1, p0, Lcom/can/parser/DDef$TimeInfo;->byDay:B

    if-ne v0, v1, :cond_1

    iget-byte v0, p1, Lcom/can/parser/DDef$TimeInfo;->byHour:B

    iget-byte v1, p0, Lcom/can/parser/DDef$TimeInfo;->byHour:B

    if-ne v0, v1, :cond_1

    iget-byte v0, p1, Lcom/can/parser/DDef$TimeInfo;->byMinute:B

    iget-byte v1, p0, Lcom/can/parser/DDef$TimeInfo;->byMinute:B

    if-ne v0, v1, :cond_1

    iget-byte v0, p1, Lcom/can/parser/DDef$TimeInfo;->by24Mode:B

    iget-byte v1, p0, Lcom/can/parser/DDef$TimeInfo;->by24Mode:B

    if-ne v0, v1, :cond_1

    iget-byte p1, p1, Lcom/can/parser/DDef$TimeInfo;->byAmPm:B

    iget-byte p0, p0, Lcom/can/parser/DDef$TimeInfo;->byAmPm:B

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
