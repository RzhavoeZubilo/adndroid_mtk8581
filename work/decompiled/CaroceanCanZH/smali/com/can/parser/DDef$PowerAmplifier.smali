.class public Lcom/can/parser/DDef$PowerAmplifier;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerAmplifier"
.end annotation


# instance fields
.field public mASL:B

.field public mBAL:B

.field public mBASS:B

.field public mBeep:B

.field public mBosePoint:B

.field public mCurVol:I

.field public mDriverSeat:B

.field public mDspDev:B

.field public mFAD:B

.field public mMID:B

.field public mMaxVol:I

.field public mMute:B

.field public mOpen:B

.field public mShowVolume:B

.field public mTRE:B

.field public mVolByASL:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
