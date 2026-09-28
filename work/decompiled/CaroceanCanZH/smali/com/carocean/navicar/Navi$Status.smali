.class public Lcom/carocean/navicar/Navi$Status;
.super Ljava/lang/Object;
.source "Navi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/carocean/navicar/Navi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/carocean/navicar/Navi$Status$MotoSystemParamInfo;,
        Lcom/carocean/navicar/Navi$Status$SystemParamInfo;,
        Lcom/carocean/navicar/Navi$Status$SystemParamEQ;,
        Lcom/carocean/navicar/Navi$Status$MediaRadioInfo;,
        Lcom/carocean/navicar/Navi$Status$MediaVideoInfo;,
        Lcom/carocean/navicar/Navi$Status$MediaMusicInfo;,
        Lcom/carocean/navicar/Navi$Status$BluetoothMusicInfo;,
        Lcom/carocean/navicar/Navi$Status$BluetoothInfo;,
        Lcom/carocean/navicar/Navi$Status$Constant;
    }
.end annotation


# static fields
.field public static final AIR_INFO:Ljava/lang/String; = "AIR_INFO"

.field public static final BLUETOOTH_INFO:Ljava/lang/String; = "BLUETOOTH_INFO"

.field public static final BLUETOOTH_INFO_MIC:Ljava/lang/String; = "BLUETOOTH_INFO_MIC"

.field public static final BLUETOOTH_MUSIC_INFO:Ljava/lang/String; = "BLUETOOTH_MUSIC_INFO"

.field public static final CAN_INFO:Ljava/lang/String; = "CAN_INFO"

.field public static final KEY_AUTO_PLAY_USB:Ljava/lang/String; = "persist.setting.auto_play_usb"

.field public static final MEDIA_MUSIC_INFO:Ljava/lang/String; = "MEDIA_MUSIC_INFO"

.field public static final MEDIA_RADIO_INFO:Ljava/lang/String; = "MEDIA_RADIO_INFO"

.field public static final MEDIA_VIDEO_INFO:Ljava/lang/String; = "MEDIA_VIDEO_INFO"

.field public static final SP_TOUCH_STATE:Ljava/lang/String; = "SP_TOUCH_STATE"

.field public static final STATUS_MEDIA_URI:Ljava/lang/String; = "content://com.carocean.status.provider/media"

.field public static final STATUS_SYS_URI:Ljava/lang/String; = "content://com.carocean.status.provider/sys"

.field public static final STATUS_URI:Ljava/lang/String; = "content://com.carocean.status.provider/status"

.field public static final ST_DEFAULT_VOLUME_LEVEL:Ljava/lang/String; = "ST_DEFAULT_VOLUME_LEVEL"

.field public static final ST_EQ_TABLE:Ljava/lang/String; = "ST_EQ_TABLE"

.field public static final ST_MOTO_SYSTEM_PARAM_INFO:Ljava/lang/String; = "ST_MOTO_SYSTEM_PARAM_INFO"

.field public static final ST_RADIO_VOLUME_TABLE:Ljava/lang/String; = "ST_RADIO_VOLUME_TABLE"

.field public static final ST_SWC_TABLE:Ljava/lang/String; = "ST_SWC_TABLE"

.field public static final ST_SYSTEM_PARAM_EQ:Ljava/lang/String; = "ST_SYSTEM_PARAM_EQ"

.field public static final ST_SYSTEM_PARAM_INFO:Ljava/lang/String; = "ST_SYSTEM_PARAM_INFO"

.field public static final ST_VOLUME_TABLE:Ljava/lang/String; = "ST_VOLUME_TABLE"

.field public static final SYS_ACC_STATUS:Ljava/lang/String; = "SYS_ACC_STATUS"

.field public static final SYS_AUDIOFOCUS_MASK:Ljava/lang/String; = "SYS_AUDIOFOCUS_MASK"

.field public static final SYS_BLACKOUT_MASK:Ljava/lang/String; = "SYS_BLACKOUT_MASK"

.field public static final SYS_BRAKE_STATUS:Ljava/lang/String; = "SYS_BRAKE_STATUS"

.field public static final SYS_BT_A2DP_CONNECT_STATUS:Ljava/lang/String; = "SYS_BT_A2DP_CONNECT_STATUS"

.field public static final SYS_BT_AUDIO_CONNECT_STATUS:Ljava/lang/String; = "SYS_BT_AUDIO_CONNECT_STATUS"

.field public static final SYS_BT_CALL_FOCUS_STATUS:Ljava/lang/String; = "SYS_BT_CALL_FOCUS_STATUS"

.field public static final SYS_BT_CALL_STATUS:Ljava/lang/String; = "SYS_BT_CALL_STATUS"

.field public static final SYS_BT_CONNECT_STATUS:Ljava/lang/String; = "SYS_BT_CONNECT_STATUS"

.field public static final SYS_CP_CALL_STATUS:Ljava/lang/String; = "SYS_CP_CALL_STATUS"

.field public static final SYS_FAST_REAR_CAMERA:Ljava/lang/String; = "SYS_FAST_REAR_CAMERA"

.field public static final SYS_GPS_FOREGROUND:Ljava/lang/String; = "SYS_GPS_FOREGROUND"

.field public static final SYS_GPS_GUIDING:Ljava/lang/String; = "SYS_GPS_GUIDING"

.field public static final SYS_LIGHT_CHECK:Ljava/lang/String; = "SYS_LIGHT_CHECK"

.field public static final SYS_MCU_SERVICE_READY:Ljava/lang/String; = "SYS_MCU_SERVICE_READY"

.field public static final SYS_MCU_UPGRADING:Ljava/lang/String; = "SYS_MCU_UPGRADING"

.field public static final SYS_MOTO_AUTO_ADJUST_BRIGHTNESS_MASK:Ljava/lang/String; = "SYS_MOTO_AUTO_ADJUST_BRIGHTNESS_MASK"

.field public static final SYS_MOTO_BT_CALL_STATUS:Ljava/lang/String; = "SYS_MOTO_BT_CALL_STATUS"

.field public static final SYS_MOTO_BT_CONNECT_STATUS:Ljava/lang/String; = "SYS_MOTO_BT_CONNECT_STATUS"

.field public static final SYS_MOTO_THEME:Ljava/lang/String; = "SYS_MOTO_THEME"

.field public static final SYS_MUTE_MASK:Ljava/lang/String; = "SYS_MUTE_MASK"

.field public static final SYS_ORIGINAL_PAGE_STATE:Ljava/lang/String; = "SYS_ORIGINAL_PAGE_STATE"

.field public static final SYS_PHONELINK_STATUS:Ljava/lang/String; = "SYS_PHONELINK_STATUS"

.field public static final SYS_POWER_ON_CHECK_FLAG:Ljava/lang/String; = "SYS_POWER_ON_CHECK_FLAG"

.field public static final SYS_POWER_ON_MODE:Ljava/lang/String; = "SYS_POWER_ON_MODE"

.field public static final SYS_RADIO_ALARM:Ljava/lang/String; = "SYS_RADIO_ALARM"

.field public static final SYS_RADIO_BAND:Ljava/lang/String; = "SYS_RADIO_BAND"

.field public static final SYS_RADIO_TA:Ljava/lang/String; = "SYS_RADIO_TA"

.field public static final SYS_REAR_CAMERA:Ljava/lang/String; = "SYS_REAR_CAMERA"

.field public static final SYS_SCREENSAVER_STATUS:Ljava/lang/String; = "SYS_SCREENSAVER_STATUS"

.field public static final SYS_SOURCE_ID:Ljava/lang/String; = "SYS_SOURCE_ID"

.field public static final SYS_SOURCE_PACKAGE_NAME:Ljava/lang/String; = "SYS_SOURCE_PACKAGE_NAME"

.field public static final SYS_SUSPEND_STATUS:Ljava/lang/String; = "SYS_SUSPEND_STATUS"

.field public static final SYS_THEME:Ljava/lang/String; = "SYS_THEME"

.field public static final SYS_TTS_GUIDING:Ljava/lang/String; = "SYS_TTS_GUIDING"

.field public static final SYS_UNMUTE_TRANSIENT_MASK:Ljava/lang/String; = "SYS_UNMUTE_TRANSIENT_MASK"

.field public static final SYS_VR_GUIDING:Ljava/lang/String; = "SYS_VR_GUIDING"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
