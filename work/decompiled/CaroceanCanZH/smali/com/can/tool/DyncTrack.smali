.class public Lcom/can/tool/DyncTrack;
.super Ljava/lang/Object;
.source "DyncTrack.java"

# interfaces
.implements Lcom/can/tool/TrackData;


# static fields
.field private static msInstance:Lcom/can/tool/DyncTrack;


# instance fields
.field private mTrackParam:Lcom/can/tool/TrackData$TrackParam;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/can/tool/DyncTrack;->mTrackParam:Lcom/can/tool/TrackData$TrackParam;

    .line 30
    new-instance v0, Lcom/can/tool/TrackData$TrackParam;

    invoke-direct {v0}, Lcom/can/tool/TrackData$TrackParam;-><init>()V

    iput-object v0, p0, Lcom/can/tool/DyncTrack;->mTrackParam:Lcom/can/tool/TrackData$TrackParam;

    return-void
.end method

.method public static getInstance()Lcom/can/tool/DyncTrack;
    .locals 1

    .line 22
    sget-object v0, Lcom/can/tool/DyncTrack;->msInstance:Lcom/can/tool/DyncTrack;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/can/tool/DyncTrack;

    invoke-direct {v0}, Lcom/can/tool/DyncTrack;-><init>()V

    sput-object v0, Lcom/can/tool/DyncTrack;->msInstance:Lcom/can/tool/DyncTrack;

    .line 25
    :cond_0
    sget-object v0, Lcom/can/tool/DyncTrack;->msInstance:Lcom/can/tool/DyncTrack;

    return-object v0
.end method


# virtual methods
.method public CreatePoint()Z
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/can/tool/DyncTrack;->mTrackParam:Lcom/can/tool/TrackData$TrackParam;

    invoke-virtual {p0}, Lcom/can/tool/TrackData$TrackParam;->CreatePoint()Z

    move-result p0

    return p0
.end method

.method public DrawTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;D)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/can/tool/DyncTrack;->mTrackParam:Lcom/can/tool/TrackData$TrackParam;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/can/tool/TrackData$TrackParam;->DrawTrack(Landroid/graphics/Canvas;Landroid/graphics/Paint;D)V

    return-void
.end method

.method public setParam(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xd

    if-gt v0, v1, :cond_0

    .line 44
    iget-object p0, p0, Lcom/can/tool/DyncTrack;->mTrackParam:Lcom/can/tool/TrackData$TrackParam;

    invoke-virtual {p0, p1}, Lcom/can/tool/TrackData$TrackParam;->put(Ljava/util/ArrayList;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
