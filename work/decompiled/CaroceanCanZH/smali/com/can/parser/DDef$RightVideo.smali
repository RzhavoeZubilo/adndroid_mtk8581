.class public Lcom/can/parser/DDef$RightVideo;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RightVideo"
.end annotation


# instance fields
.field public mbRightVideoEnable:Z

.field public mbshow:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2281
    iput-boolean v0, p0, Lcom/can/parser/DDef$RightVideo;->mbRightVideoEnable:Z

    return-void
.end method
