.class public Lcom/can/tool/TrackData$SPonit;
.super Ljava/lang/Object;
.source "TrackData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/tool/TrackData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SPonit"
.end annotation


# instance fields
.field public sx:F

.field public sy:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/can/tool/TrackData$SPonit;->sx:F

    .line 35
    iput p2, p0, Lcom/can/tool/TrackData$SPonit;->sy:F

    return-void
.end method
