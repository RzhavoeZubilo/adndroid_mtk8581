.class public Lcom/can/parser/DDef$SeatInfo;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeatInfo"
.end annotation


# instance fields
.field public mMsgStatus:[B

.field public mSeatValue:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 2235
    iput-object v0, p0, Lcom/can/parser/DDef$SeatInfo;->mSeatValue:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 2236
    iput-object v0, p0, Lcom/can/parser/DDef$SeatInfo;->mMsgStatus:[B

    return-void
.end method
