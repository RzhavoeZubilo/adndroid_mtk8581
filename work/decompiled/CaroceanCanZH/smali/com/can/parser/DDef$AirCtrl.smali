.class public Lcom/can/parser/DDef$AirCtrl;
.super Ljava/lang/Object;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirCtrl"
.end annotation


# static fields
.field public static final AC_STATE:I = 0x9

.field public static final AUTO:I = 0xe

.field public static final BACK_DEFOGGER:I = 0xb

.field public static final CIRCLE_STATE:I = 0xa

.field public static final DOWN_WIND:I = 0x11

.field public static final DUAL:I = 0xd

.field public static final FRONT_DEFOGGER:I = 0xc

.field public static final LEFT_SEAT_COLD:I = 0x15

.field public static final LEFT_SEAT_HOT:I = 0x14

.field public static final LEFT_TEMP_ADD:I = 0x2

.field public static final LEFT_TEMP_SUB:I = 0x1

.field public static final ON_OFF:I = 0x7

.field public static final PAR_WIND:I = 0x10

.field public static final RIGHT_SEAT_COLD:I = 0x17

.field public static final RIGHT_SEAT_HOT:I = 0x16

.field public static final RIGHT_TEMP_ADD:I = 0x4

.field public static final RIGHT_TEMP_SUB:I = 0x3

.field public static final UP_WIND:I = 0xf

.field public static final WIND_MODE:I = 0x8

.field public static final WIND_MODE_ADD:I = 0x12

.field public static final WIND_MODE_SUB:I = 0x13

.field public static final WIND_SPEED_ADD:I = 0x6

.field public static final WIND_SPEED_SUB:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
