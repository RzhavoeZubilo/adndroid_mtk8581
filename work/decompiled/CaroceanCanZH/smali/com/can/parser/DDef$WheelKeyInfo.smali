.class public Lcom/can/parser/DDef$WheelKeyInfo;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WheelKeyInfo"
.end annotation


# instance fields
.field public bCombination:Z

.field public bInternal:Z

.field public bLongClick:Z

.field public bLongInternal:Z

.field public mExeOnceLongClick:Z

.field public mKeyCode:I

.field public mKeyStatus:I

.field public mKnobSteps:I

.field public mbyKeyRepeat:B

.field public mstrKeyCode:Ljava/lang/String;

.field public mstrLongKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 1381
    iput-object v0, p0, Lcom/can/parser/DDef$WheelKeyInfo;->mstrLongKey:Ljava/lang/String;

    .line 1382
    iput-object v0, p0, Lcom/can/parser/DDef$WheelKeyInfo;->mstrKeyCode:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1383
    iput-boolean v0, p0, Lcom/can/parser/DDef$WheelKeyInfo;->mExeOnceLongClick:Z

    const/4 v1, 0x0

    .line 1387
    iput-byte v1, p0, Lcom/can/parser/DDef$WheelKeyInfo;->mbyKeyRepeat:B

    .line 1388
    iput-boolean v1, p0, Lcom/can/parser/DDef$WheelKeyInfo;->bLongInternal:Z

    .line 1389
    iput-boolean v1, p0, Lcom/can/parser/DDef$WheelKeyInfo;->bInternal:Z

    .line 1390
    iput-boolean v0, p0, Lcom/can/parser/DDef$WheelKeyInfo;->bCombination:Z

    .line 1391
    iput-boolean v1, p0, Lcom/can/parser/DDef$WheelKeyInfo;->bLongClick:Z

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const-string v0, ""

    .line 1394
    iput-object v0, p0, Lcom/can/parser/DDef$WheelKeyInfo;->mstrLongKey:Ljava/lang/String;

    .line 1395
    iput-object v0, p0, Lcom/can/parser/DDef$WheelKeyInfo;->mstrKeyCode:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1396
    iput-boolean v0, p0, Lcom/can/parser/DDef$WheelKeyInfo;->mExeOnceLongClick:Z

    const/4 v1, 0x0

    .line 1397
    iput-boolean v1, p0, Lcom/can/parser/DDef$WheelKeyInfo;->bLongInternal:Z

    .line 1398
    iput-boolean v1, p0, Lcom/can/parser/DDef$WheelKeyInfo;->bInternal:Z

    .line 1399
    iput-boolean v0, p0, Lcom/can/parser/DDef$WheelKeyInfo;->bCombination:Z

    .line 1400
    iput-boolean v1, p0, Lcom/can/parser/DDef$WheelKeyInfo;->bLongClick:Z

    return-void
.end method
