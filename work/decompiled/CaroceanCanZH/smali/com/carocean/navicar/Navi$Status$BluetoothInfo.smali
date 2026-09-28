.class public Lcom/carocean/navicar/Navi$Status$BluetoothInfo;
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
    name = "BluetoothInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3b04e8f6021c6eL


# instance fields
.field public a2dpState:I

.field public activeTime:J

.field public batteryLevel:I

.field public btNameVisibility:I

.field public callName:Ljava/lang/String;

.field public callNumber:Ljava/lang/String;

.field public callState:I

.field public connectMac:Ljava/lang/String;

.field public connectName:Ljava/lang/String;

.field public connectTime:J

.field public dialName:Ljava/lang/String;

.field public dialNumber:Ljava/lang/String;

.field public hfpState:I

.field public localMac:Ljava/lang/String;

.field public localName:Ljava/lang/String;

.field public missCallsNum:I

.field public openState:I

.field public operator:Ljava/lang/String;

.field public signalLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
