.class public Lcom/can/parser/DDef$UsbIpodInfo;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsbIpodInfo"
.end annotation


# instance fields
.field public USBCurrentTrackH:B

.field public USBCurrentTrackL:B

.field public USBFolder:B

.field public USBPlayMin:B

.field public USBPlayRate:B

.field public USBPlaySec:B

.field public USBPlayState:B

.field public USBStatus:B

.field public USBTotalTrackH:B

.field public USBTotalTrackL:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
