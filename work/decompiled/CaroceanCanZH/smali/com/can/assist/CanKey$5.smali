.class synthetic Lcom/can/assist/CanKey$5;
.super Ljava/lang/Object;
.source "CanKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/can/assist/CanKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$can$assist$CanContant$E_CANKEY_ACTION:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 103
    invoke-static {}, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->values()[Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/can/assist/CanKey$5;->$SwitchMap$com$can$assist$CanContant$E_CANKEY_ACTION:[I

    :try_start_0
    sget-object v1, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->eCanKey_Action_valid:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    invoke-virtual {v1}, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/can/assist/CanKey$5;->$SwitchMap$com$can$assist$CanContant$E_CANKEY_ACTION:[I

    sget-object v1, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->eCankey_Action_Knob:Lcom/can/assist/CanContant$E_CANKEY_ACTION;

    invoke-virtual {v1}, Lcom/can/assist/CanContant$E_CANKEY_ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
