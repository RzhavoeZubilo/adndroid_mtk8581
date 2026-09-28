.class public Lcom/can/parser/DDef$PsaMemSpeed;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PsaMemSpeed"
.end annotation


# instance fields
.field public mMemory:B

.field public mSpeeds:[I

.field public mSpeedsSel:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [B

    .line 2158
    iput-object v1, p0, Lcom/can/parser/DDef$PsaMemSpeed;->mSpeedsSel:[B

    new-array v0, v0, [I

    .line 2159
    iput-object v0, p0, Lcom/can/parser/DDef$PsaMemSpeed;->mSpeeds:[I

    return-void
.end method
