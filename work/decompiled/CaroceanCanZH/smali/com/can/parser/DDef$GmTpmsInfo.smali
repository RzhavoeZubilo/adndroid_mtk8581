.class public Lcom/can/parser/DDef$GmTpmsInfo;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GmTpmsInfo"
.end annotation


# instance fields
.field public mIsValid:B

.field public mbyCheckState:[B

.field public mbyHighAlram:[B

.field public mbyLowAlarm:[B

.field public miTireVal:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 2556
    iput-object v0, p0, Lcom/can/parser/DDef$GmTpmsInfo;->miTireVal:[I

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 2557
    iput-object v1, p0, Lcom/can/parser/DDef$GmTpmsInfo;->mbyCheckState:[B

    new-array v1, v0, [B

    .line 2558
    iput-object v1, p0, Lcom/can/parser/DDef$GmTpmsInfo;->mbyLowAlarm:[B

    new-array v0, v0, [B

    .line 2559
    iput-object v0, p0, Lcom/can/parser/DDef$GmTpmsInfo;->mbyHighAlram:[B

    return-void
.end method
