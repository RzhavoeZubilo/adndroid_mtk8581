.class public Lcom/can/parser/DDef$CarService;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarService"
.end annotation


# instance fields
.field public mStrVehicleNo:Ljava/lang/String;

.field public mbyOilChangeSerivesDayType:B

.field public mbyOilChangeServiceDisType:B

.field public mbyOilChangeServiceDisUnit:B

.field public mbyVolksWagenDaysType:B

.field public mbyVolksWagenDisType:B

.field public mbyVolksWagenDisUnit:B

.field public miOilChangeSerivesDays:I

.field public miOilChangeServiceDistance:I

.field public miVolksWagenDays:I

.field public miVolksWagenDistance:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
