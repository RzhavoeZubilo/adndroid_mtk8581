.class public Lcom/carocean/navicar/Navi$Status$MotoSystemParamInfo;
.super Ljava/lang/Object;
.source "Navi.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carocean/navicar/Navi$Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotoSystemParamInfo"
.end annotation


# instance fields
.field public speedCalibration:I

.field public tireHeight:I

.field public tireSize:I

.field public tireWidth:I

.field public voltageCalibration:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x78

    .line 1299
    iput v0, p0, Lcom/carocean/navicar/Navi$Status$MotoSystemParamInfo;->tireWidth:I

    const/16 v0, 0x46

    .line 1300
    iput v0, p0, Lcom/carocean/navicar/Navi$Status$MotoSystemParamInfo;->tireHeight:I

    const/16 v0, 0xc

    .line 1301
    iput v0, p0, Lcom/carocean/navicar/Navi$Status$MotoSystemParamInfo;->tireSize:I

    const/16 v0, 0x64

    .line 1302
    iput v0, p0, Lcom/carocean/navicar/Navi$Status$MotoSystemParamInfo;->speedCalibration:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1303
    iput v0, p0, Lcom/carocean/navicar/Navi$Status$MotoSystemParamInfo;->voltageCalibration:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MotoSystemParamInfo{tireWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/carocean/navicar/Navi$Status$MotoSystemParamInfo;->tireWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tireHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/carocean/navicar/Navi$Status$MotoSystemParamInfo;->tireHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tireSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/carocean/navicar/Navi$Status$MotoSystemParamInfo;->tireSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speedCalibration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/carocean/navicar/Navi$Status$MotoSystemParamInfo;->speedCalibration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", voltageCalibration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/carocean/navicar/Navi$Status$MotoSystemParamInfo;->voltageCalibration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
