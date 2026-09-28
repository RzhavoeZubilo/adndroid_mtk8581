.class public Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;
.super Ljava/lang/Object;
.source "Navi.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carocean/navicar/Navi$Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothMusicInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4bddd475ae93d0d6L


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public bufferedPosition:J

.field public currentPosition:J

.field public duration:J

.field public musicTitle:Ljava/lang/String;

.field public playState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
