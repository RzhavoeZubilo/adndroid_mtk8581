.class public Lcom/can/parser/DDef$RadioInfo;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioInfo"
.end annotation


# instance fields
.field public mbAUTO:Z

.field public mbRDS:Z

.field public mbSCANE:Z

.field public mbST:Z

.field public mbTX:Z

.field public mbyBand:B

.field public mbyNum:B

.field public mbyStatus:B

.field public mstrFreq:Ljava/lang/String;

.field public mstrText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
