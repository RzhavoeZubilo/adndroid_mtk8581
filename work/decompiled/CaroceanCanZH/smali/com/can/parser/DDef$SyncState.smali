.class public Lcom/can/parser/DDef$SyncState;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncState"
.end annotation


# instance fields
.field public mbyConnBt:B

.field public mbyEnableKey:B

.field public mbyPower:B

.field public mbyPresentDev:B

.field public mbyShowMsg:B

.field public mbySignal:B

.field public mbySpeechOn:B

.field public mbySyncMode:B

.field public mbyTalking:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
