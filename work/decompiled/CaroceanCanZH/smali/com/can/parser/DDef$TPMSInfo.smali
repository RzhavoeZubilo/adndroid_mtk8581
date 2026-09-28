.class public Lcom/can/parser/DDef$TPMSInfo;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TPMSInfo"
.end annotation


# instance fields
.field public mBLTirePressure:I

.field public mBLTireTemp:I

.field public mBRTirePressure:I

.field public mBRTireTemp:I

.field public mFLTirePressure:I

.field public mFLTireTemp:I

.field public mFRTirePressure:I

.field public mFRTireTemp:I

.field public mIsExistDevice:B

.field public mIsNormal:B

.field public mShowSpareTire:B

.field public mSpareTirePressure:I

.field public mTireShowMode:B

.field public mTireWarnInfo:I

.field public mTpmsUnit:B

.field public mfBLTirePressure:Ljava/lang/String;

.field public mfBRTirePressure:Ljava/lang/String;

.field public mfFLTirePressure:Ljava/lang/String;

.field public mfFRTirePressure:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
