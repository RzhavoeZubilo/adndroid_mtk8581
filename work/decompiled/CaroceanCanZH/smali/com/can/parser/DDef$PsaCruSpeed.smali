.class public Lcom/can/parser/DDef$PsaCruSpeed;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PsaCruSpeed"
.end annotation


# instance fields
.field public mCruSpeed:[I

.field public mCruSpeedSel:[B

.field public mLimitSpeed:[I

.field public mSwitch:B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [B

    .line 2164
    iput-object v1, p0, Lcom/can/parser/DDef$PsaCruSpeed;->mCruSpeedSel:[B

    new-array v1, v0, [I

    .line 2165
    iput-object v1, p0, Lcom/can/parser/DDef$PsaCruSpeed;->mCruSpeed:[I

    new-array v0, v0, [I

    .line 2166
    iput-object v0, p0, Lcom/can/parser/DDef$PsaCruSpeed;->mLimitSpeed:[I

    return-void
.end method
