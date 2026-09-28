.class public final enum Lcom/can/parser/DDef$SOURCE_DEF;
.super Ljava/lang/Enum;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SOURCE_DEF"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/can/parser/DDef$SOURCE_DEF;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/can/parser/DDef$SOURCE_DEF;

.field public static final Src_atv:I = 0x7

.field public static final Src_avin:I = 0x8

.field public static final Src_backcar:I = 0xb

.field public static final Src_bluetooth:I = 0x3

.field public static final Src_bt_phone:I = 0xc

.field public static final Src_dtv:I = 0x6

.field public static final Src_dummy:I = 0xe

.field public static final Src_dvd:I = 0x4

.field public static final Src_dvr:I = 0x5

.field public static final Src_ipod:I = 0x9

.field public static final Src_max:I = 0x10

.field public static final Src_music:I = 0x1

.field public static final Src_navi:I = 0xf

.field public static final Src_off:I = 0xff

.field public static final Src_phonelink:I = 0xa

.field public static final Src_photo:I = 0xd

.field public static final Src_radio:I = 0x0

.field public static final Src_video:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/can/parser/DDef$SOURCE_DEF;

    .line 299
    sput-object v0, Lcom/can/parser/DDef$SOURCE_DEF;->$VALUES:[Lcom/can/parser/DDef$SOURCE_DEF;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 299
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/can/parser/DDef$SOURCE_DEF;
    .locals 1

    .line 299
    const-class v0, Lcom/can/parser/DDef$SOURCE_DEF;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/can/parser/DDef$SOURCE_DEF;

    return-object p0
.end method

.method public static values()[Lcom/can/parser/DDef$SOURCE_DEF;
    .locals 1

    .line 299
    sget-object v0, Lcom/can/parser/DDef$SOURCE_DEF;->$VALUES:[Lcom/can/parser/DDef$SOURCE_DEF;

    invoke-virtual {v0}, [Lcom/can/parser/DDef$SOURCE_DEF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/can/parser/DDef$SOURCE_DEF;

    return-object v0
.end method
