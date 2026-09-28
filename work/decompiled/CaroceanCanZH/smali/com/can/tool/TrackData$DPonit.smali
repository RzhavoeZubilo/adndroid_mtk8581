.class public Lcom/can/tool/TrackData$DPonit;
.super Ljava/lang/Object;
.source "TrackData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/tool/TrackData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DPonit"
.end annotation


# instance fields
.field public sx:F

.field public sy:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcom/can/tool/TrackData$DPonit;->sx:F

    .line 46
    iput p2, p0, Lcom/can/tool/TrackData$DPonit;->sy:F

    return-void
.end method
