.class public interface abstract Lcom/can/assist/CanContant;
.super Ljava/lang/Object;
.source "CanContant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/can/assist/CanContant$CAN_DESCRIBE;,
        Lcom/can/assist/CanContant$CarType_Info;,
        Lcom/can/assist/CanContant$E_Update_Type;,
        Lcom/can/assist/CanContant$E_CANKEY_ACTION;
    }
.end annotation


# static fields
.field public static final ACTION_ACC_OFF:Ljava/lang/String; = "autochips.intent.action.QB_POWEROFF"

.field public static final ACTION_ACC_ON:Ljava/lang/String; = "autochips.intent.action.QB_POWERON"

.field public static final ACTION_BACKCAR_START:Ljava/lang/String; = "com.yecon.action.BACKCAR_START"

.field public static final ACTION_BACKCAR_STOP:Ljava/lang/String; = "com.yecon.action.BACKCAR_STOP"

.field public static final ACTION_BACKCAR_TRACK:Ljava/lang/String; = "com.yecon.action.DyncTrackData"

.field public static final ACTION_CALL_STATE_CHANGE:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfUtility.action.callStateChange"

.field public static final ACTION_CAN_AIRINFO:Ljava/lang/String; = "com.yecon.action.CAN_AIRINFO"

.field public static final ACTION_CAN_APP_INFO:Ljava/lang/String; = "com.yecon.action.ACTION_CAN_APP_INFO"

.field public static final ACTION_CAN_KEYS:Ljava/lang/String; = "com.yecon.can.keys"

.field public static final ACTION_CAN_SERVICE:Ljava/lang/String; = "yecon.intent.CanService"

.field public static final ACTION_CAN_UI_SERVICE:Ljava/lang/String; = "yecon.intent.CanUIService"

.field public static final ACTION_CAR_INFO:Ljava/lang/String; = "com.yecon.action.carinfo"

.field public static final ACTION_MEDIA_RANDOM:Ljava/lang/String; = "action.media.random"

.field public static final ACTION_MEDIA_REPEAT:Ljava/lang/String; = "action.media.repeat"

.field public static final ACTION_PACKET_ADD:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field public static final ACTION_PROFILESTATECHANGE:Ljava/lang/String; = "com.autochips.bluetooth.profilestatechange"

.field public static final ACTION_REVERSE_TRACK:Ljava/lang/String; = "youzi.service.intent.action.ACTION_REVERSE_TRACK"

.field public static final ACTION_RGB_SET_FINISH:Ljava/lang/String; = "com.yecon.action.ACTION_RGB_SET_FINISH"

.field public static final ACTION_RGB_SET_START:Ljava/lang/String; = "com.yecon.action.ACTION_RGB_SET"

.field public static final ACTION_SHOW_OR_HIDE_ICON:Ljava/lang/String; = "com.android.launcher.action.SHOW_OR_HIDE_ICON"

.field public static final ACTION_SOURCE_CHANGE:Ljava/lang/String; = "com.yecon.sourcemanager.source_changed_notify"

.field public static final ACTION_UPDATE_BACKCARINFO:Ljava/lang/String; = "com.hcn.Autobackcar.CANCMD"

.field public static final ACTION_UPDATE_MEDIA_INFO:Ljava/lang/String; = "com.hcn.AutoMediaPlayer.Info"

.field public static final ACTION_UPDATE_MEDIA_TIME_INFO:Ljava/lang/String; = "com.hcn.AutoMediaPlayer.Time.Info"

.field public static final ACTION_UPDATE_RADIOINFO:Ljava/lang/String; = "com.hcn.radioInfo.CANCMD"

.field public static final BACKCAR_SHOW:Ljava/lang/String; = "BackCarShow"

.field public static final BUND_CAN_RX:Ljava/lang/String; = "Msg_Can_Rx"

.field public static final BUND_CAN_TX:Ljava/lang/String; = "Msg_Can_Tx"

.field public static final BUND_CAN_TX_CMD:Ljava/lang/String; = "Msg_Can_Tx_Cmd"

.field public static final CAN_ICON:Ljava/lang/String; = "persist.sys.fun.canbus"

.field public static final CAN_MODE:Ljava/lang/String; = "Can_Mode"

.field public static final CAN_PHONE_MODE:Ljava/lang/String; = "Can_Phone_Mode"

.field public static final CAN_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.can.services.CanService"

.field public static final CAN_SHAREDPREFERENCES_DATA:Ljava/lang/String; = "CanSharedData"

.field public static final CAN_SOURCE_MODE:Ljava/lang/String; = "Can_Source_Mode"

.field public static final CAN_SPEECH_MODE:Ljava/lang/String; = "Can_Speech_Mode"

.field public static final CARTYPE_XML:Ljava/lang/String; = "cartype.xml"

.field public static final DOWNLOAD_STATUS_DOWNLOAD_FINISH:I = 0x8

.field public static final DOWNLOAD_STATUS_DOWNLOAD_ING:I = 0x7

.field public static final DOWNLOAD_STATUS_VERXML_ERROR:I = 0xa

.field public static final EXTRA_CALL_STATE:Ljava/lang/String; = "com.autochips.bluetooth.hf.extra.callState"

.field public static final EXTRA_HFP_ISCONNECTED:Ljava/lang/String; = "com.autochips.bluetooth.hfp_isconnected"

.field public static final EXTRA_PACHAGE_NAME:Ljava/lang/String; = "package"

.field public static final EXTRA_SHOW_OR_HIDE:Ljava/lang/String; = "show"

.field public static final EXTRA_SHOW_OR_HIDE_AIR:Ljava/lang/String; = "showair"

.field public static final INSTALL_STATUS_APPINFO_ERROR:I = 0x2

.field public static final INSTALL_STATUS_NONE:I = -0x1

.field public static final INSTALL_STATUS_NOT_FIND_FILE:I = 0x4

.field public static final INSTALL_STATUS_NOT_NEED_UPDATE:I = 0x5

.field public static final INSTALL_STATUS_NOT_NET_CONNECT:I = 0x6

.field public static final INSTALL_STATUS_PACKAGEINFO_ERROR:I = 0x9

.field public static final INSTALL_STATUS_PACKAGENAME_ERROR:I = 0x3

.field public static final INSTALL_STATUS_START:I = 0x0

.field public static final INSTALL_STATUS_STOP:I = 0x1

.field public static final KEY_CAN:I = 0x321

.field public static final KEY_DOWN:B = 0x1t

.field public static final KEY_KNOB:B = 0x5t

.field public static final KEY_UP:B = 0x0t

.field public static final KEY_XML:Ljava/lang/String; = "key_xml"

.field public static final MSG_CAN_GET_DATA:I = 0x6

.field public static final MSG_CAN_REG_USER:I = 0x3

.field public static final MSG_CAN_RX:I = 0x2

.field public static final MSG_CAN_SET_PROTOCOL:I = 0x5

.field public static final MSG_CAN_TX:I = 0x1

.field public static final MSG_CAN_UREG_USER:I = 0x4

.field public static final MSG_CARINFO_SHOW:I = 0x7

.field public static final MSG_CARMEDIA_AQUIRE_SOURCE:I = 0x8

.field public static final MSG_CARMEDIA_EXIT:I = 0xa

.field public static final MSG_CARMEDIA_START:I = 0x9

.field public static final PERSYS_DOOR_STATUS_EANBLE:Ljava/lang/String; = "persist.sys.door_status_enable"

.field public static final PERSYS_RGB_VIDEO:[[Ljava/lang/String;

.field public static final PERSYS_RGB_VIDEO_DEF:[[Ljava/lang/String;

.field public static final PER_CAN_CLOSE_SOURECE:Ljava/lang/String; = "persist.sys.can_closesource"

.field public static final PLATFORMS:Ljava/lang/String; = "platforms"

.field public static final PLATFORMS_3561:Ljava/lang/String; = "com.can.platforms.CanPlatforms3561"

.field public static final PLATFORMS_8127:Ljava/lang/String; = "com.can.platforms.CanPlatforms8127"

.field public static final PLATFORMS_8317:Ljava/lang/String; = "com.can.platforms.CanPlatforms8317"

.field public static final PLATFORMS_8581:Ljava/lang/String; = "com.can.platforms.CanPlatforms8581"

.field public static final PRV_NEXT_FAN:Ljava/lang/String; = "persist.sys.mirr_pri_next"

.field public static final REGISTER_USER:Ljava/lang/String; = "Msg_Can_Reg_User"

.field public static final UREGISTER_USER:Ljava/lang/String; = "Msg_Can_Reg_User"

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.VolumdChangeAuto"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "persist.sys.aux1_bright"

    const-string v3, "persist.sys.aux1_contrast"

    const-string v4, "persist.sys.aux1_hue"

    const-string v5, "persist.sys.aux1_saturation"

    .line 121
    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "persist.sys.backcar_bright"

    const-string v4, "persist.sys.backcar_contrast"

    const-string v5, "persist.sys.backcar_hue"

    const-string v6, "persist.sys.backcar_saturation"

    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/can/assist/CanContant;->PERSYS_RGB_VIDEO:[[Ljava/lang/String;

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "persist.sys.aux1_bright0"

    const-string v2, "persist.sys.aux1_contrast0"

    const-string v5, "persist.sys.aux1_hue0"

    const-string v6, "persist.sys.aux1_saturation0"

    .line 127
    filled-new-array {v1, v2, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "persist.sys.backcar_bright0"

    const-string v2, "persist.sys.backcar_contrast0"

    const-string v3, "persist.sys.backcar_hue0"

    const-string v5, "persist.sys.backcar_saturation0"

    filled-new-array {v1, v2, v3, v5}, [Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/can/assist/CanContant;->PERSYS_RGB_VIDEO_DEF:[[Ljava/lang/String;

    return-void
.end method
