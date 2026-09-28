.class public final enum Lcom/can/parser/DDef$E_CMD_TYPE;
.super Ljava/lang/Enum;
.source "DDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/parser/DDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "E_CMD_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/can/parser/DDef$E_CMD_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/can/parser/DDef$E_CMD_TYPE;

.field public static final enum eCmd_Type_AirSet:Lcom/can/parser/DDef$E_CMD_TYPE;

.field public static final enum eCmd_Type_BackCar:Lcom/can/parser/DDef$E_CMD_TYPE;

.field public static final enum eCmd_Type_CarInfo:Lcom/can/parser/DDef$E_CMD_TYPE;

.field public static final enum eCmd_Type_CarSet:Lcom/can/parser/DDef$E_CMD_TYPE;

.field public static final enum eCmd_Type_Compass:Lcom/can/parser/DDef$E_CMD_TYPE;

.field public static final enum eCmd_Type_Dsp:Lcom/can/parser/DDef$E_CMD_TYPE;

.field public static final enum eCmd_Type_FuelMil:Lcom/can/parser/DDef$E_CMD_TYPE;

.field public static final enum eCmd_Type_HisFuel:Lcom/can/parser/DDef$E_CMD_TYPE;

.field public static final enum eCmd_Type_Hybrid:Lcom/can/parser/DDef$E_CMD_TYPE;

.field public static final enum eCmd_Type_Other:Lcom/can/parser/DDef$E_CMD_TYPE;

.field public static final enum eCmd_Type_PopWind:Lcom/can/parser/DDef$E_CMD_TYPE;

.field public static final enum eCmd_Type_Tpms:Lcom/can/parser/DDef$E_CMD_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 284
    new-instance v0, Lcom/can/parser/DDef$E_CMD_TYPE;

    const-string v1, "eCmd_Type_PopWind"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/can/parser/DDef$E_CMD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/can/parser/DDef$E_CMD_TYPE;->eCmd_Type_PopWind:Lcom/can/parser/DDef$E_CMD_TYPE;

    .line 285
    new-instance v1, Lcom/can/parser/DDef$E_CMD_TYPE;

    const-string v3, "eCmd_Type_CarInfo"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/can/parser/DDef$E_CMD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/can/parser/DDef$E_CMD_TYPE;->eCmd_Type_CarInfo:Lcom/can/parser/DDef$E_CMD_TYPE;

    .line 286
    new-instance v3, Lcom/can/parser/DDef$E_CMD_TYPE;

    const-string v5, "eCmd_Type_BackCar"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/can/parser/DDef$E_CMD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/can/parser/DDef$E_CMD_TYPE;->eCmd_Type_BackCar:Lcom/can/parser/DDef$E_CMD_TYPE;

    .line 287
    new-instance v5, Lcom/can/parser/DDef$E_CMD_TYPE;

    const-string v7, "eCmd_Type_CarSet"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/can/parser/DDef$E_CMD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/can/parser/DDef$E_CMD_TYPE;->eCmd_Type_CarSet:Lcom/can/parser/DDef$E_CMD_TYPE;

    .line 288
    new-instance v7, Lcom/can/parser/DDef$E_CMD_TYPE;

    const-string v9, "eCmd_Type_AirSet"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/can/parser/DDef$E_CMD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/can/parser/DDef$E_CMD_TYPE;->eCmd_Type_AirSet:Lcom/can/parser/DDef$E_CMD_TYPE;

    .line 289
    new-instance v9, Lcom/can/parser/DDef$E_CMD_TYPE;

    const-string v11, "eCmd_Type_Compass"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/can/parser/DDef$E_CMD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/can/parser/DDef$E_CMD_TYPE;->eCmd_Type_Compass:Lcom/can/parser/DDef$E_CMD_TYPE;

    .line 290
    new-instance v11, Lcom/can/parser/DDef$E_CMD_TYPE;

    const-string v13, "eCmd_Type_FuelMil"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/can/parser/DDef$E_CMD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/can/parser/DDef$E_CMD_TYPE;->eCmd_Type_FuelMil:Lcom/can/parser/DDef$E_CMD_TYPE;

    .line 291
    new-instance v13, Lcom/can/parser/DDef$E_CMD_TYPE;

    const-string v15, "eCmd_Type_HisFuel"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/can/parser/DDef$E_CMD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/can/parser/DDef$E_CMD_TYPE;->eCmd_Type_HisFuel:Lcom/can/parser/DDef$E_CMD_TYPE;

    .line 292
    new-instance v15, Lcom/can/parser/DDef$E_CMD_TYPE;

    const-string v14, "eCmd_Type_Tpms"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/can/parser/DDef$E_CMD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/can/parser/DDef$E_CMD_TYPE;->eCmd_Type_Tpms:Lcom/can/parser/DDef$E_CMD_TYPE;

    .line 293
    new-instance v14, Lcom/can/parser/DDef$E_CMD_TYPE;

    const-string v12, "eCmd_Type_Hybrid"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/can/parser/DDef$E_CMD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/can/parser/DDef$E_CMD_TYPE;->eCmd_Type_Hybrid:Lcom/can/parser/DDef$E_CMD_TYPE;

    .line 294
    new-instance v12, Lcom/can/parser/DDef$E_CMD_TYPE;

    const-string v10, "eCmd_Type_Dsp"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/can/parser/DDef$E_CMD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/can/parser/DDef$E_CMD_TYPE;->eCmd_Type_Dsp:Lcom/can/parser/DDef$E_CMD_TYPE;

    .line 295
    new-instance v10, Lcom/can/parser/DDef$E_CMD_TYPE;

    const-string v8, "eCmd_Type_Other"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/can/parser/DDef$E_CMD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/can/parser/DDef$E_CMD_TYPE;->eCmd_Type_Other:Lcom/can/parser/DDef$E_CMD_TYPE;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/can/parser/DDef$E_CMD_TYPE;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 283
    sput-object v8, Lcom/can/parser/DDef$E_CMD_TYPE;->$VALUES:[Lcom/can/parser/DDef$E_CMD_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 283
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/can/parser/DDef$E_CMD_TYPE;
    .locals 1

    .line 283
    const-class v0, Lcom/can/parser/DDef$E_CMD_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/can/parser/DDef$E_CMD_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/can/parser/DDef$E_CMD_TYPE;
    .locals 1

    .line 283
    sget-object v0, Lcom/can/parser/DDef$E_CMD_TYPE;->$VALUES:[Lcom/can/parser/DDef$E_CMD_TYPE;

    invoke-virtual {v0}, [Lcom/can/parser/DDef$E_CMD_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/can/parser/DDef$E_CMD_TYPE;

    return-object v0
.end method
