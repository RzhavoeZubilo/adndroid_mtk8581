.class public final enum Lcom/can/assist/CanContant$E_CANKEY_ACTION;
.super Ljava/lang/Enum;
.source "CanContant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/assist/CanContant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "E_CANKEY_ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/can/assist/CanContant$E_CANKEY_ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/can/assist/CanContant$E_CANKEY_ACTION;

.field public static final enum eCanKey_Action_Complex:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

.field public static final enum eCanKey_Action_Invalid:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

.field public static final enum eCanKey_Action_Send:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

.field public static final enum eCanKey_Action_valid:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

.field public static final enum eCankey_Action_Knob:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

.field public static final enum eCankey_Action_Repeat:Lcom/can/assist/CanContant$E_CANKEY_ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 28
    new-instance v0, Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    const-string v1, "eCanKey_Action_Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/can/assist/CanContant$E_CANKEY_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->eCanKey_Action_Invalid:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    new-instance v1, Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    const-string v3, "eCanKey_Action_valid"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/can/assist/CanContant$E_CANKEY_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->eCanKey_Action_valid:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    new-instance v3, Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    const-string v5, "eCanKey_Action_Complex"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/can/assist/CanContant$E_CANKEY_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->eCanKey_Action_Complex:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    new-instance v5, Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    const-string v7, "eCanKey_Action_Send"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/can/assist/CanContant$E_CANKEY_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->eCanKey_Action_Send:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    new-instance v7, Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    const-string v9, "eCankey_Action_Knob"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/can/assist/CanContant$E_CANKEY_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->eCankey_Action_Knob:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    new-instance v9, Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    const-string v11, "eCankey_Action_Repeat"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/can/assist/CanContant$E_CANKEY_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->eCankey_Action_Repeat:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 27
    sput-object v11, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->$VALUES:[Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/can/assist/CanContant$E_CANKEY_ACTION;
    .locals 1

    .line 27
    const-class v0, Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    return-object p0
.end method

.method public static values()[Lcom/can/assist/CanContant$E_CANKEY_ACTION;
    .locals 1

    .line 27
    sget-object v0, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->$VALUES:[Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    invoke-virtual {v0}, [Lcom/can/assist/CanContant$E_CANKEY_ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    return-object v0
.end method
