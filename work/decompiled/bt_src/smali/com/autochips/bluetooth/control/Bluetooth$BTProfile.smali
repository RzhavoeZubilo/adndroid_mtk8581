.class public final enum Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;
.super Ljava/lang/Enum;
.source "Bluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/control/Bluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BTProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_A2DP:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_A2DP_SINK:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_AVRCP:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_AVRCP_CT:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_BIP_Initiator:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_BIP_Responder:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_BPP_Sender:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_DUN:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_DUN_DT:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_FTP_Client:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_FTP_Server:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_HEADSET:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_HF:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_HID:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_MAP_Server:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_OPP_Client:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_OPP_Server:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_PAN_GN:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_PAN_NAP:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_PBAP:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_PBAP_Client:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_PRXM:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_PRXR:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

.field public static final enum Bluetooth_SIMAP:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;


# instance fields
.field public final localizedString:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 2999
    new-instance v0, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v1, "Bluetooth_HEADSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_HEADSET:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3000
    new-instance v1, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v3, "Bluetooth_A2DP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_A2DP:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3001
    new-instance v3, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v5, "Bluetooth_HID"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_HID:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3002
    new-instance v5, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v7, "Bluetooth_FTP_Client"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_FTP_Client:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3003
    new-instance v7, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v9, "Bluetooth_FTP_Server"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_FTP_Server:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3004
    new-instance v9, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v11, "Bluetooth_BIP_Initiator"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_BIP_Initiator:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3005
    new-instance v11, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v13, "Bluetooth_BIP_Responder"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_BIP_Responder:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3006
    new-instance v13, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v15, "Bluetooth_BPP_Sender"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_BPP_Sender:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3007
    new-instance v15, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v14, "Bluetooth_SIMAP"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_SIMAP:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3008
    new-instance v14, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v12, "Bluetooth_PBAP"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_PBAP:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3009
    new-instance v12, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v10, "Bluetooth_OPP_Server"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_OPP_Server:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3010
    new-instance v10, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v8, "Bluetooth_OPP_Client"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_OPP_Client:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3011
    new-instance v8, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v6, "Bluetooth_DUN"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_DUN:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3012
    new-instance v6, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v4, "Bluetooth_AVRCP"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_AVRCP:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3013
    new-instance v4, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v2, "Bluetooth_PRXM"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_PRXM:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3014
    new-instance v2, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v6, "Bluetooth_PRXR"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_PRXR:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3015
    new-instance v6, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v4, "Bluetooth_PAN_NAP"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_PAN_NAP:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3016
    new-instance v4, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v2, "Bluetooth_PAN_GN"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_PAN_GN:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3017
    new-instance v2, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v6, "Bluetooth_MAP_Server"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_MAP_Server:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3018
    new-instance v6, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v4, "Bluetooth_HF"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_HF:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3019
    new-instance v4, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v2, "Bluetooth_PBAP_Client"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6, v6}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_PBAP_Client:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3020
    new-instance v2, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v6, "Bluetooth_A2DP_SINK"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4, v4}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_A2DP_SINK:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3021
    new-instance v6, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v4, "Bluetooth_AVRCP_CT"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    move-object/from16 v25, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v2, v8}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_AVRCP_CT:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    .line 3022
    new-instance v2, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v4, "Bluetooth_DUN_DT"

    const/16 v8, 0x17

    move-object/from16 v26, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v8, v6}, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_DUN_DT:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const/16 v4, 0x18

    new-array v4, v4, [Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v25, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v2, v4, v0

    .line 2998
    sput-object v4, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->$VALUES:[Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3026
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3027
    iput p3, p0, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->localizedString:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;
    .locals 1

    .line 2998
    const-class v0, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    return-object p0
.end method

.method public static values()[Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;
    .locals 1

    .line 2998
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->$VALUES:[Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    invoke-virtual {v0}, [Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    return-object v0
.end method
