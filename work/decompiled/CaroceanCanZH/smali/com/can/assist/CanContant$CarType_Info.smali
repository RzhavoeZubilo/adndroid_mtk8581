.class public Lcom/can/assist/CanContant$CarType_Info;
.super Ljava/lang/Object;
.source "CanContant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/assist/CanContant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarType_Info"
.end annotation


# instance fields
.field public iAirIcon:I

.field public iAudioPort:I

.field public iBoxBand:I

.field public iBoxId:I

.field public iCfgId:I

.field public iNeedIcon:I

.field public iSeriesId:I

.field public iTypeId:I

.field public strAirClass:Ljava/lang/String;

.field public strAudioClass:Ljava/lang/String;

.field public strBoxName:Ljava/lang/String;

.field public strCfgName:Ljava/lang/String;

.field public strPopClass:Ljava/lang/String;

.field public strProClass:Ljava/lang/String;

.field public strProVer:Ljava/lang/String;

.field public strSeriesName:Ljava/lang/String;

.field public strTypeName:Ljava/lang/String;

.field public strUIClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/can/assist/CanContant$CarType_Info;->strBoxName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/can/assist/CanContant$CarType_Info;->iBoxId:I

    .line 51
    iput v0, p0, Lcom/can/assist/CanContant$CarType_Info;->iBoxBand:I

    const-string v1, ""

    .line 52
    iput-object v1, p0, Lcom/can/assist/CanContant$CarType_Info;->strSeriesName:Ljava/lang/String;

    .line 53
    iput v0, p0, Lcom/can/assist/CanContant$CarType_Info;->iSeriesId:I

    .line 54
    iput-object v1, p0, Lcom/can/assist/CanContant$CarType_Info;->strTypeName:Ljava/lang/String;

    .line 55
    iput v0, p0, Lcom/can/assist/CanContant$CarType_Info;->iTypeId:I

    .line 56
    iput-object v1, p0, Lcom/can/assist/CanContant$CarType_Info;->strCfgName:Ljava/lang/String;

    .line 57
    iput v0, p0, Lcom/can/assist/CanContant$CarType_Info;->iCfgId:I

    .line 58
    iput v0, p0, Lcom/can/assist/CanContant$CarType_Info;->iNeedIcon:I

    .line 59
    iput v0, p0, Lcom/can/assist/CanContant$CarType_Info;->iAudioPort:I

    .line 60
    iput-object v1, p0, Lcom/can/assist/CanContant$CarType_Info;->strProClass:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/can/assist/CanContant$CarType_Info;->strUIClass:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/can/assist/CanContant$CarType_Info;->strAudioClass:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/can/assist/CanContant$CarType_Info;->strPopClass:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/can/assist/CanContant$CarType_Info;->strProVer:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/can/assist/CanContant$CarType_Info;->strAirClass:Ljava/lang/String;

    .line 66
    iput v0, p0, Lcom/can/assist/CanContant$CarType_Info;->iAirIcon:I

    return-void
.end method
