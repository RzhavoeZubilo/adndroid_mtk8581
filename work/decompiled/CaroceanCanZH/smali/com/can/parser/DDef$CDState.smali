.class public Lcom/can/parser/DDef$CDState;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CDState"
.end annotation


# instance fields
.field public mbshowTextInfo:Z

.field public mbyCDPlayHour:B

.field public mbyCDPlayMin:B

.field public mbyCDPlayMode:B

.field public mbyCDPlaySec:B

.field public mbyCDStatus:B

.field public mbyDisc1Status:B

.field public mbyDisc2Status:B

.field public mbyDisc3Status:B

.field public mbyDisc4Status:B

.field public mbyDisc5Status:B

.field public mbyDisc6Status:B

.field public mbyFolderStatus:B

.field public mbyMp3Status:B

.field public mbyScaneStatus:B

.field public mbyWmaStatus:B

.field public miCDCurTrack:I

.field public miCDCurTrackTime:I

.field public miCDCurTrackTimeNum:I

.field public miCDTotalTrack:I

.field public miCurDiskNo:I

.field public miDiskStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
