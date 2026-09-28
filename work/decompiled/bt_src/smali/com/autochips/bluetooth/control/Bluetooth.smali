.class public Lcom/autochips/bluetooth/control/Bluetooth;
.super Ljava/lang/Object;
.source "Bluetooth.java"

# interfaces
.implements Lcom/autochips/bluetooth/control/OnReceiveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;
    }
.end annotation


# static fields
.field public static final ACTION_AGSTATECHANGE:Ljava/lang/String; = "com.autochips.bluetooth.agstatechange"

.field public static final ACTION_AG_EVENT:Ljava/lang/String; = "com.autochiips.bluetooth.profile.action.AG_EVENT"

.field public static final ACTION_BLUETOOTH_CALLBACK:Ljava/lang/String; = "com.autochips.autobt.action.BLUETOOTH_CALLBACK"

.field public static final ACTION_BLUETOOTH_CALL_STATUS:Ljava/lang/String; = "com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_CALL_STATUS"

.field public static final ACTION_BLUETOOTH_CALL_STATUS_CHANGE:Ljava/lang/String; = "com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_CALL_STATUS_CHANGE"

.field public static final ACTION_BLUETOOTH_NEW_CALL:Ljava/lang/String; = "com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_NEW_CALL"

.field public static final ACTION_BTMUSIC_ACTION_MANAGE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.ACTION_BTMUSIC_ACTION_MANAGE"

.field public static final ACTION_BTMUSIC_INTERACTIVE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.action.ACTION_BTMUSIC_INTERACTIVE"

.field public static final ACTION_BT_UPDATED:Ljava/lang/String; = "com.autochips.bluetooth.BT_UPDATED"

.field public static final ACTION_CALLNAMEANDNUMCHANGE:Ljava/lang/String; = "com.autochips.bluetooth.callnameandnumchange"

.field public static final ACTION_CALL_STATE_CHANGE:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfUtility.action.callStateChange"

.field public static final ACTION_CHANGELOCALDEVICENAME:Ljava/lang/String; = "com.autochips.bluetooth.changelocaldevicename"

.field public static final ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "com.autochips.bluetooth.DISCOVERY_FINISHED"

.field public static final ACTION_DISCOVERY_STARTED:Ljava/lang/String; = "com.autochips.bluetooth.DISCOVERY_STARTED"

.field public static final ACTION_DOWNLOAD_FINISH:Ljava/lang/String; = "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_finish"

.field public static final ACTION_DOWNLOAD_ONESTEP:Ljava/lang/String; = "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_onestep"

.field public static final ACTION_FOUND:Ljava/lang/String; = "com.autochips.bluetooth.FOUND"

.field public static final ACTION_MEDIA_DATA_UPDATE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.action.ACTION_MEDIA_DATA_UPDATE"

.field public static final ACTION_MULTI_CALL_NUMBER_CHANGED:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.action.MULTI_CALL_NUMBER_CHANGED"

.field public static final ACTION_MUSIC_INFO:Ljava/lang/String; = "com.autochips.bluetooth.BluetoothA2dpService.MusicInfo"

.field public static final ACTION_MUTESTATECHANGE:Ljava/lang/String; = "com.autochips.bluetooth.mutestatechange"

.field public static final ACTION_NAVICALL:Ljava/lang/String; = "com.autochips.bluetooth.navicall"

.field public static final ACTION_PLAYBACK_DATA_UPDATE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.action.ACTION_PLAYBACK_DATA_UPDATE"

.field public static final ACTION_PROFILESTATECHANGE:Ljava/lang/String; = "com.autochips.bluetooth.profilestatechange"

.field public static final ACTION_PROFILE_STATE_UPDATE:Ljava/lang/String; = "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

.field public static final ACTION_QB_POWEROFF:Ljava/lang/String; = "autochips.intent.action.QB_POWEROFF"

.field public static final ACTION_QB_POWERON:Ljava/lang/String; = "autochips.intent.action.QB_POWERON"

.field public static final ACTION_RESETCONNECTING:Ljava/lang/String; = "com.autochips.bluetooth.RESETCONNECTING"

.field public static final ACTION_SCO_STATE_CHANGED:Ljava/lang/String; = "com.autochips.bluetooth.BluetoothHfService.action.SCO_STATE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "com.ckx.bluetooth.action.STATE_CHANGED"

.field public static final BT_PBAP_SYNC_PATH_ALL_CALLHISTORY:I = 0x6

.field public static final BT_PBAP_SYNC_PATH_ALL_PHONEBOOK:I = 0x2

.field public static final BT_PBAP_SYNC_PATH_DIALED_CALLHISTORY:I = 0x4

.field public static final BT_PBAP_SYNC_PATH_MISSED_CALLHISTORY:I = 0x5

.field public static final BT_PBAP_SYNC_PATH_RECEIVE_CALLHISTORY:I = 0x3

.field public static final CALL_STATE_FINISH:I = 0x0

.field public static final CALL_STATE_START:I = 0x1

.field public static final CMD_ANSWER:Ljava/lang/String; = "AT+CA\r\n"

.field public static final CMD_AUDIO2CAR:Ljava/lang/String; = "AT+2HF\r\n"

.field public static final CMD_AUDIO2PHONE:Ljava/lang/String; = "AT+2AG\r\n"

.field public static final CMD_AUDIOSWITCH:Ljava/lang/String; = "AT+TRN\r\n"

.field public static final CMD_CONNECTA2DP:Ljava/lang/String; = "AT+LA+\r\n"

.field public static final CMD_CONNECTA2DP2:Ljava/lang/String; = "AT+LA+"

.field public static final CMD_CONNECTHFP:Ljava/lang/String; = "AT+LH+\r\n"

.field public static final CMD_CONNECTHFP2:Ljava/lang/String; = "AT+LH"

.field public static final CMD_CV:Ljava/lang/String; = "AT+CV"

.field public static final CMD_CZ0:Ljava/lang/String; = "AT+CZ0\r\n"

.field public static final CMD_CZ1:Ljava/lang/String; = "AT+CZ1\r\n"

.field public static final CMD_DIAL:Ljava/lang/String; = "AT+D"

.field public static final CMD_DISCONNECTA2DP:Ljava/lang/String; = "AT+LA-\r\n"

.field public static final CMD_DISCONNECTA2DP_LA:Ljava/lang/String; = "AT+LA-"

.field public static final CMD_DISCONNECTHFP:Ljava/lang/String; = "AT+LH-\r\n"

.field public static final CMD_FIT:Ljava/lang/String; = "\r\n"

.field public static final CMD_GETACK:Ljava/lang/String; = "AT+ACK\r\n"

.field public static final CMD_GETADDR:Ljava/lang/String; = "AT+ADDR\r\n"

.field public static final CMD_GETAPPVER:Ljava/lang/String; = "AT+APP\r\n"

.field public static final CMD_GETNAME:Ljava/lang/String; = "AT+NAME\r\n"

.field public static final CMD_GETPADDR:Ljava/lang/String; = "AT+PADDR\r\n"

.field public static final CMD_GETPIN:Ljava/lang/String; = "AT+PIN\r\n"

.field public static final CMD_GETPNAME:Ljava/lang/String; = "AT+PNAME\r\n"

.field public static final CMD_GETPWR:Ljava/lang/String; = "AT+PWR\r\n"

.field public static final CMD_GETST:Ljava/lang/String; = "AT+ST\r\n"

.field public static final CMD_HANGUP:Ljava/lang/String; = "AT+CH\r\n"

.field public static final CMD_HANGUP_CUR_ACCEPT_WAIT:Ljava/lang/String; = "AT+CJ\r\n"

.field public static final CMD_MG:Ljava/lang/String; = "AT+MG\r\n"

.field public static final CMD_MH:Ljava/lang/String; = "AT+MH\r\n"

.field public static final CMD_MUSIC_INIT:I = -0x1

.field public static final CMD_MUTE:Ljava/lang/String; = "AT+MUTE="

.field public static final CMD_MV:Ljava/lang/String; = "AT+MV\r\n"

.field public static final CMD_NEXT:Ljava/lang/String; = "AT+FWD\r\n"

.field public static final CMD_NEXT_INT:I = 0x4

.field public static final CMD_P0:Ljava/lang/String; = "AT+P0\r\n"

.field public static final CMD_P1:Ljava/lang/String; = "AT+P1\r\n"

.field public static final CMD_PA:Ljava/lang/String; = "AT+PA\r\n"

.field public static final CMD_PAUSE:Ljava/lang/String; = "AT+PA\r\n"

.field public static final CMD_PAUSE_INT:I = 0x2

.field public static final CMD_PBDOWNLOAD:Ljava/lang/String; = "AT+PBDN\r\n"

.field public static final CMD_PBSTOPDOWNLOAD:Ljava/lang/String; = "AT+PBST\r\n"

.field public static final CMD_PF:Ljava/lang/String; = "AT+PF\r\n"

.field public static final CMD_PH:Ljava/lang/String; = "AT+PH\r\n"

.field public static final CMD_PI:Ljava/lang/String; = "AT+PI\r\n"

.field public static final CMD_PJ:Ljava/lang/String; = "AT+PJ\r\n"

.field public static final CMD_PL:Ljava/lang/String; = "AT+PL\r\n"

.field public static final CMD_PLAY:Ljava/lang/String; = "AT+PL\r\n"

.field public static final CMD_PLAYPAUSE_INT:I = 0x0

.field public static final CMD_PLAY_INT:I = 0x1

.field public static final CMD_PREV:Ljava/lang/String; = "AT+BWD\r\n"

.field public static final CMD_PREV_INT:I = 0x3

.field public static final CMD_REJECT:Ljava/lang/String; = "AT+CR\r\n"

.field public static final CMD_RING:Ljava/lang/String; = "AT+RING="

.field public static final CMD_SEARCH:Ljava/lang/String; = "AT+INQ=60\r\n"

.field public static final CMD_SEARCHEND:Ljava/lang/String; = "AT+INQEND\r\n"

.field public static final CMD_SENDDTMF:Ljava/lang/String; = "AT+DTMF"

.field public static final CMD_SETACK:Ljava/lang/String; = "AT+ACK=2\r\n"

.field public static final CMD_SETDB:Ljava/lang/String; = "AT+VS="

.field public static final CMD_SETNAME:Ljava/lang/String; = "AT+NAME="

.field public static final CMD_SETPIN:Ljava/lang/String; = "AT+PIN="

.field public static final CMD_SETPWR:Ljava/lang/String; = "AT+P"

.field public static final CMD_SHAKE:Ljava/lang/String; = "AT\r\n"

.field public static final CMD_STOP:Ljava/lang/String; = "AT+STP\r\n"

.field public static final CMD_STOP_INT:I = 0x5

.field public static final CMD_UNHOLD:Ljava/lang/String; = "AT+CS\r\n"

.field public static final CMD_VA:Ljava/lang/String; = "AT+VA\r\n"

.field public static final CMD_VB:Ljava/lang/String; = "AT+VB\r\n"

.field public static final CMD_VOIDDIAL:Ljava/lang/String; = "AT+DV\r\n"

.field public static final COMMAND_BTMUSIC_ACTION_SET:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.COMMAND_BTMUSIC_ACTION_SET"

.field public static final EXTRA_BATTERY_LEVEL:Ljava/lang/String; = "com.autochiips.bluetooth.headsetclient.extra.BATTERY_LEVEL"

.field public static final EXTRA_BTMUSIC_DEVICE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.BTMUSIC_DEVICE"

.field public static final EXTRA_BTMUSIC_INTERACTIVE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.BluetoothAvrcpCtService.extra.EXTRA_BTMUSIC_INTERACTIVE"

.field public static final EXTRA_CALLBACK_TYPE:Ljava/lang/String; = "CALLBACK_TYPE"

.field public static final EXTRA_CALL_NAME:Ljava/lang/String; = "com.autochips.bluetooth.PhoneCallActivity.extra.CALL_NAME"

.field public static final EXTRA_CALL_NUMBER:Ljava/lang/String; = "com.autochips.bluetooth.PhoneCallActivity.extra.CALL_NUMBER"

.field public static final EXTRA_CALL_STATE:Ljava/lang/String; = "com.autochips.bluetooth.hf.extra.callState"

.field public static final EXTRA_CALL_TIME:Ljava/lang/String; = "com.autochips.bluetooth.PhoneCallActivity.extra.CALL_TIME"

.field public static final EXTRA_CALL_TYPE:Ljava/lang/String; = "com.autochips.bluetooth.PhoneCallActivity.extra.CALL_TYPE"

.field public static final EXTRA_CURRENT_NUMBER:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.CURRENT_NUMBER"

.field public static final EXTRA_CURRENT_NUMBER_INDEX:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.CURRENT_NUMBER_INDEX"

.field public static final EXTRA_CURRENT_NUMBER_STATUS:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.CURRENT_NUMBER_STATUS"

.field public static final EXTRA_HFP_ISCONNECTED:Ljava/lang/String; = "com.autochips.bluetooth.hfp_isconnected"

.field public static final EXTRA_MAC:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_MAC"

.field public static final EXTRA_MUSIC_INFO:Ljava/lang/String; = "com.autochips.bluetooth.BluetoothA2dpService.extra.EXTRA_MUSIC_INFO"

.field public static final EXTRA_NETWORK_SIGNAL_STRENGTH:Ljava/lang/String; = "com.autochiips.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

.field public static final EXTRA_NEW_PHONE_NAME:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NAME"

.field public static final EXTRA_NEW_PHONE_NUMBER:Ljava/lang/String; = "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NUMBER"

.field public static final EXTRA_NEW_SCO_STATE:Ljava/lang/String; = "com.autochips.bluetooth.BluetoothHfService.extra.EXTRA_NEW_SCO_STATE"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

.field public static final EXTRA_PBSYNC_FOLDER:Ljava/lang/String; = "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_folder"

.field public static final EXTRA_PBSYNC_ONESTEP_COUNT:Ljava/lang/String; = "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_onestep_count"

.field public static final EXTRA_PBSYNC_SUPPORT_FOLDER:Ljava/lang/String; = "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_support_folder"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.profilemanager.extra.EXTRA_PREVIOUS_STATE"

.field public static final EXTRA_PROFILE:Ljava/lang/String; = "android.bluetooth.profilemanager.extra.ATCPROFILE"

.field public static final HFP_UTILITY_CALLSTATE_CLEAR:I = 0x0

.field public static final HFP_UTILITY_CALLSTATE_IDLE:I = 0x1

.field public static final HFP_UTILITY_CALLSTATE_INCOMING:I = 0x2

.field public static final HFP_UTILITY_CALLSTATE_OUTGOING:I = 0x3

.field public static final HFP_UTILITY_CALLSTATE_SPEAKING:I = 0x4

.field public static final HFP_UTILITY_CALLSTATE_WAITING:I = 0x5

.field public static final INDEX_HF_STATE_CONNECTED:I = 0x14

.field public static final INDEX_HF_STATE_DISCONNECTED:I = 0x15

.field public static final INDEX_STATE_OFF:I = 0xb

.field public static final INDEX_STATE_ON:I = 0xa

.field public static final MAC_RESETCONNECTING:Ljava/lang/String; = "MAC_RESETCONNECTING"

.field public static final MCU_ACTION_ACC_OFF:Ljava/lang/String; = "com.yecon.action.ACC_OFF"

.field public static final MCU_ACTION_ACC_ON:Ljava/lang/String; = "com.yecon.action.ACC_ON"

.field public static final MEDIA_ALBUM:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEIDA_ALBUM"

.field public static final MEDIA_ARTIST:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_ARTIST"

.field public static final MEDIA_LENGTH:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_LENGTH"

.field public static final MEDIA_POSITION:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_POSITION"

.field public static final MEDIA_TITLE:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_TITLE"

.field public static final NUM_OF_BT_PBAP_SYNC_PATH:I = 0x8

.field public static final PAUSED:I = 0x2

.field public static final PERSYS_BT_ADDR:Ljava/lang/String; = "persist.sys.bt_addr"

.field public static final PERSYS_BT_AUTO_ANSWER:Ljava/lang/String; = "persist.sys.bt_auto_answer"

.field public static final PERSYS_BT_AUTO_CONNECT:Ljava/lang/String; = "persist.sys.bt_auto_connect"

.field public static final PERSYS_BT_DEVICE:Ljava/lang/String; = "persist.sys.bt_device"

.field public static final PERSYS_BT_MODULE_VER:Ljava/lang/String; = "persist.sys.bt_module_ver"

.field public static final PERSYS_BT_PAIR:Ljava/lang/String; = "persist.sys.bt_pair"

.field public static final PERSYS_INTERNALBT_ENABLE:Ljava/lang/String; = "persist.sys.internalbt_enable"

.field private static final PHONEBOOK_PATH:Ljava/lang/String; = "com.autochips.bluetooth.PhonebookPath"

.field private static final PHONEBOOK_UPDATE:Ljava/lang/String; = "com.autochips.bluetooth.PhonebookUpdate"

.field public static final PLAYBACK_STATUS:Ljava/lang/String; = "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.PLAYBACK_STATUS"

.field public static final PLAYING:I = 0x1

.field public static final PROPERTY_KEY_BTPHONE_STARTUP:Ljava/lang/String; = "persist.sys.btphone_startup"

.field public static final PROPERTY_KEY_STARTBT:Ljava/lang/String; = "persist.sys.startbt"

.field public static final SCO_CONNECTED:I = 0x1

.field public static final SCO_DISCONNECTED:I = 0x2

.field public static final SCO_DISCONNECTING:I = 0x3

.field public static final STATE_ABNORMAL:I = 0xe

.field public static final STATE_ACTIVE:I = 0x0

.field public static final STATE_BROWSE_CONNECTED:I = 0x11

.field public static final STATE_BROWSE_DISCONNECTED:I = 0x12

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_CONNECTING:I = 0x3

.field public static final STATE_DISABLED:I = 0xd

.field public static final STATE_DISABLING:I = 0xc

.field public static final STATE_DISCONNECTED:I = 0x2

.field public static final STATE_DISCONNECTING:I = 0x4

.field public static final STATE_ENABLED:I = 0xb

.field public static final STATE_ENABLING:I = 0xa

.field public static final STATE_PLAYING:I = 0xf

.field public static final STATE_STANDSTILL:I = 0x13

.field public static final STATE_UNKNOWN:I = 0x5

.field public static final STOPPED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Bluetooth"

.field public static final TYPE_INCOMING:I = 0x1

.field public static final TYPE_MISSED:I = 0x2

.field public static final TYPE_OUTGOING:I = 0x0

.field public static bfirstsetdb:Z = false

.field public static bfirstsetdevicename:Z = false

.field public static final buffermax:I = 0x400

.field public static ispoweroff:Z

.field public static mBluetooth:Lcom/autochips/bluetooth/control/Bluetooth;

.field public static mStartTimer:I

.field public static mTimeoff:I

.field public static m_callStartTime:Landroid/text/format/Time;

.field public static mlastcallnum:Ljava/lang/String;

.field static final obj_autoconnect:Ljava/lang/Object;

.field static final obj_pairedlist:Ljava/lang/Object;

.field static final obj_phonebook:Ljava/lang/Object;

.field static final obj_record:Ljava/lang/Object;

.field static final obj_refreshsystemcontact:Ljava/lang/Object;

.field static final obj_resetbt:Ljava/lang/Object;

.field public static remaindata:[B

.field public static remaindatalen:I

.field public static whenconnected:J


# instance fields
.field public HFPconnectingMac:Ljava/lang/String;

.field private battery:I

.field public btState:I

.field public buffer:[B

.field call_state_change_intent:Landroid/content/Intent;

.field call_type_intent:Landroid/content/Intent;

.field public callingname:Ljava/lang/String;

.field public callingnum:Ljava/lang/String;

.field public connectforpoweroffevent:Z

.field public downCalllogloadnum:I

.field public downloadnum:I

.field public isAG:Z

.field public isHFPdisconnecting:Z

.field public isPhCallLogdownloading:Z

.field public isbtupdating:Z

.field public iscompletecall:Z

.field public ismicmute:Z

.field public ismusicplaying:Z

.field public ispbdownloading:Z

.field private issearching:Z

.field public isspeakingfirst:Z

.field private lastHfpConnectMac:Ljava/lang/String;

.field public mAlbumName:Ljava/lang/String;

.field public mArtistName:Ljava/lang/String;

.field public mConnectedA2DPMac:Ljava/lang/String;

.field public mConnectedA2DPName:Ljava/lang/String;

.field public mConnectedHFPMac:Ljava/lang/String;

.field public mConnectedHFPName:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mMusicName:Ljava/lang/String;

.field public mNumberTime:Ljava/lang/String;

.field public mPlayTime:Ljava/lang/String;

.field public mSerialPort:Lcom/goodocom/gocsdk/SerialPort;

.field public mTimerAutoconnect:Ljava/util/TimerTask;

.field public mTotalTime:Ljava/lang/String;

.field public mbConnectedA2DP:Z

.field public mbConnectedAvrcp:Z

.field public mbConnectedHFP:Z

.field public mcallstatus:I

.field public mcallstatus_last:I

.field private mdbmanager:Lcom/autochips/bluetooth/control/DBManager;

.field myHandler:Landroid/os/Handler;

.field nConnectSpace:I

.field nConnectTimers:I

.field nDelay:I

.field public preBtState:I

.field public preNotifyBtState:I

.field public receiveThread:Lcom/autochips/bluetooth/control/ReceiveThread;

.field public reconnectA2DP:I

.field public reconnectAVRCP:I

.field private signal:I

.field private timer_heartbeat:Ljava/lang/Runnable;

.field timer_resetbt:Ljava/lang/Runnable;

.field timer_resetconnect:Ljava/lang/Runnable;

.field public waiteCallingnum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 169
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->m_callStartTime:Landroid/text/format/Time;

    const-string v0, ""

    .line 205
    sput-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->mlastcallnum:Ljava/lang/String;

    const/4 v0, 0x0

    .line 225
    sput-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->mBluetooth:Lcom/autochips/bluetooth/control/Bluetooth;

    const/4 v0, 0x0

    .line 231
    sput-boolean v0, Lcom/autochips/bluetooth/control/Bluetooth;->ispoweroff:Z

    .line 237
    sput v0, Lcom/autochips/bluetooth/control/Bluetooth;->mTimeoff:I

    const/4 v1, 0x1

    .line 248
    sput-boolean v1, Lcom/autochips/bluetooth/control/Bluetooth;->bfirstsetdevicename:Z

    .line 249
    sput-boolean v1, Lcom/autochips/bluetooth/control/Bluetooth;->bfirstsetdb:Z

    const-wide/16 v1, 0x0

    .line 534
    sput-wide v1, Lcom/autochips/bluetooth/control/Bluetooth;->whenconnected:J

    .line 703
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/control/Bluetooth;->obj_resetbt:Ljava/lang/Object;

    .line 732
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/control/Bluetooth;->obj_autoconnect:Ljava/lang/Object;

    .line 803
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/control/Bluetooth;->obj_refreshsystemcontact:Ljava/lang/Object;

    .line 832
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/control/Bluetooth;->obj_phonebook:Ljava/lang/Object;

    .line 915
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/control/Bluetooth;->obj_pairedlist:Ljava/lang/Object;

    .line 1046
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/autochips/bluetooth/control/Bluetooth;->obj_record:Ljava/lang/Object;

    const/16 v1, 0x800

    new-array v1, v1, [B

    .line 1904
    sput-object v1, Lcom/autochips/bluetooth/control/Bluetooth;->remaindata:[B

    .line 1905
    sput v0, Lcom/autochips/bluetooth/control/Bluetooth;->remaindatalen:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 97
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mMusicName:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mArtistName:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mPlayTime:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mNumberTime:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mTotalTime:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mAlbumName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 203
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isbtupdating:Z

    const/4 v2, 0x2

    .line 206
    iput v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->reconnectA2DP:I

    .line 207
    iput v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->reconnectAVRCP:I

    .line 208
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isHFPdisconnecting:Z

    .line 209
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->HFPconnectingMac:Ljava/lang/String;

    .line 213
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->downloadnum:I

    .line 214
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->downCalllogloadnum:I

    .line 215
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPName:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPName:Ljava/lang/String;

    .line 217
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    .line 218
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPMac:Ljava/lang/String;

    .line 219
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->callingname:Ljava/lang/String;

    .line 220
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    .line 221
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->waiteCallingnum:Ljava/lang/String;

    .line 222
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->ispbdownloading:Z

    .line 223
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isPhCallLogdownloading:Z

    .line 227
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus:I

    .line 228
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus_last:I

    .line 229
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->connectforpoweroffevent:Z

    .line 232
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->iscompletecall:Z

    const/4 v3, 0x1

    .line 233
    iput-boolean v3, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isspeakingfirst:Z

    .line 234
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->ismicmute:Z

    .line 235
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isAG:Z

    .line 236
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->ismusicplaying:Z

    const/4 v3, 0x0

    .line 238
    iput-object v3, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mTimerAutoconnect:Ljava/util/TimerTask;

    .line 250
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->issearching:Z

    .line 252
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->signal:I

    .line 253
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->battery:I

    .line 254
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->lastHfpConnectMac:Ljava/lang/String;

    .line 582
    iput-object v3, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_resetconnect:Ljava/lang/Runnable;

    .line 583
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->myHandler:Landroid/os/Handler;

    .line 670
    new-instance v0, Lcom/autochips/bluetooth/control/Bluetooth$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/control/Bluetooth$2;-><init>(Lcom/autochips/bluetooth/control/Bluetooth;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_heartbeat:Ljava/lang/Runnable;

    .line 702
    iput-object v3, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_resetbt:Ljava/lang/Runnable;

    .line 733
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->nDelay:I

    const/16 v0, 0xbb8

    .line 734
    iput v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->nConnectSpace:I

    .line 735
    iput v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->nConnectTimers:I

    .line 1679
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_NEW_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->call_type_intent:Landroid/content/Intent;

    .line 1723
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_CALL_STATUS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->call_state_change_intent:Landroid/content/Intent;

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 2064
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->buffer:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 97
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mMusicName:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mArtistName:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mPlayTime:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mNumberTime:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mTotalTime:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mAlbumName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 203
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isbtupdating:Z

    const/4 v2, 0x2

    .line 206
    iput v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->reconnectA2DP:I

    .line 207
    iput v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->reconnectAVRCP:I

    .line 208
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isHFPdisconnecting:Z

    .line 209
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->HFPconnectingMac:Ljava/lang/String;

    .line 213
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->downloadnum:I

    .line 214
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->downCalllogloadnum:I

    .line 215
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPName:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPName:Ljava/lang/String;

    .line 217
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    .line 218
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPMac:Ljava/lang/String;

    .line 219
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->callingname:Ljava/lang/String;

    .line 220
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    .line 221
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->waiteCallingnum:Ljava/lang/String;

    .line 222
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->ispbdownloading:Z

    .line 223
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isPhCallLogdownloading:Z

    .line 227
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus:I

    .line 228
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus_last:I

    .line 229
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->connectforpoweroffevent:Z

    .line 232
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->iscompletecall:Z

    const/4 v3, 0x1

    .line 233
    iput-boolean v3, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isspeakingfirst:Z

    .line 234
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->ismicmute:Z

    .line 235
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isAG:Z

    .line 236
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->ismusicplaying:Z

    const/4 v3, 0x0

    .line 238
    iput-object v3, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mTimerAutoconnect:Ljava/util/TimerTask;

    .line 250
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->issearching:Z

    .line 252
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->signal:I

    .line 253
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->battery:I

    .line 254
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->lastHfpConnectMac:Ljava/lang/String;

    .line 582
    iput-object v3, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_resetconnect:Ljava/lang/Runnable;

    .line 583
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->myHandler:Landroid/os/Handler;

    .line 670
    new-instance v0, Lcom/autochips/bluetooth/control/Bluetooth$2;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/control/Bluetooth$2;-><init>(Lcom/autochips/bluetooth/control/Bluetooth;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_heartbeat:Ljava/lang/Runnable;

    .line 702
    iput-object v3, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_resetbt:Ljava/lang/Runnable;

    .line 733
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->nDelay:I

    const/16 v0, 0xbb8

    .line 734
    iput v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->nConnectSpace:I

    .line 735
    iput v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->nConnectTimers:I

    .line 1679
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_NEW_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->call_type_intent:Landroid/content/Intent;

    .line 1723
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_CALL_STATUS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->call_state_change_intent:Landroid/content/Intent;

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 2064
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->buffer:[B

    .line 261
    iput-object p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static Byte2Unicode([BII)Ljava/lang/String;
    .locals 3

    .line 1908
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    if-ge p1, p2, :cond_2

    add-int/lit8 v1, p1, 0x1

    .line 1910
    aget-byte p1, p0, p1

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x100

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 1913
    aget-byte v1, p0, v1

    if-gez v1, :cond_1

    add-int/lit16 v1, v1, 0x100

    :cond_1
    shl-int/lit8 p1, p1, 0x8

    add-int/2addr v1, p1

    int-to-char p1, v1

    .line 1917
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p1, v2

    goto :goto_0

    .line 1919
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ReadPreDevicename()Ljava/lang/String;
    .locals 1

    .line 1563
    invoke-static {}, Lcom/autochips/bluetooth/control/AppConfigParser;->getInstance()Lcom/autochips/bluetooth/control/AppConfigParser;

    invoke-static {}, Lcom/autochips/bluetooth/control/AppConfigParser;->getBTDeviceNameOEM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/autochips/bluetooth/control/Bluetooth;)Ljava/lang/Runnable;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_heartbeat:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/autochips/bluetooth/control/Bluetooth;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->lastHfpConnectMac:Ljava/lang/String;

    return-object p0
.end method

.method public static appendfile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1200
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1201
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1207
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 1203
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 1207
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 1210
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_1

    .line 1207
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 1210
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1212
    :cond_1
    :goto_3
    throw p0
.end method

.method public static getInstance()Lcom/autochips/bluetooth/control/Bluetooth;
    .locals 1

    .line 265
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->mBluetooth:Lcom/autochips/bluetooth/control/Bluetooth;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-direct {v0}, Lcom/autochips/bluetooth/control/Bluetooth;-><init>()V

    sput-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->mBluetooth:Lcom/autochips/bluetooth/control/Bluetooth;

    .line 268
    :cond_0
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->mBluetooth:Lcom/autochips/bluetooth/control/Bluetooth;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/autochips/bluetooth/control/Bluetooth;
    .locals 1

    .line 272
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->mBluetooth:Lcom/autochips/bluetooth/control/Bluetooth;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lcom/autochips/bluetooth/control/Bluetooth;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/control/Bluetooth;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->mBluetooth:Lcom/autochips/bluetooth/control/Bluetooth;

    .line 275
    :cond_0
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->mBluetooth:Lcom/autochips/bluetooth/control/Bluetooth;

    iput-object p0, v0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private inittelzonedatabase()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mdbmanager:Lcom/autochips/bluetooth/control/DBManager;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Lcom/autochips/bluetooth/control/DBManager;

    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/autochips/bluetooth/control/DBManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mdbmanager:Lcom/autochips/bluetooth/control/DBManager;

    .line 283
    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/DBManager;->openDatabase()V

    :cond_0
    return-void
.end method

.method private notifyA2DPStatus()V
    .locals 3

    .line 2919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyA2DPStatus mbConnectedA2DP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedA2DP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2921
    sget-object v1, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_A2DP_SINK:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v2, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2922
    iget-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedA2DP:Z

    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 2923
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 2924
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->ismusicplaying()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xf

    .line 2925
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 2927
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2929
    :goto_0
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyui(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyAvrcpStatus()V
    .locals 3

    .line 2936
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2937
    sget-object v1, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_AVRCP_CT:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    const-string v2, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAvrcpStatus mbConnectedAvrcp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedAvrcp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bluetooth"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    iget-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedAvrcp:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    const-string v2, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2940
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyui(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyMusicInfo()V
    .locals 7

    .line 2947
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.action.ACTION_MEDIA_DATA_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2948
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mMusicName:Ljava/lang/String;

    const-string v2, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2949
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mArtistName:Ljava/lang/String;

    const-string v2, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_ARTIST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2950
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mAlbumName:Ljava/lang/String;

    const-string v2, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEIDA_ALBUM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2951
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyui(Landroid/content/Intent;)V

    .line 2953
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.action.ACTION_PLAYBACK_DATA_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMusicPlay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->ismusicplaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bluetooth"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->ismusicplaying()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    const-string v3, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.PLAYBACK_STATUS"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 2960
    :try_start_0
    iget-object v3, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mPlayTime:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2961
    iget-object v3, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mPlayTime:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_1
    move v3, v1

    .line 2963
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mNumberTime:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2964
    iget-object v4, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mNumberTime:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    move-object v6, v4

    move v4, v3

    move-object v3, v6

    goto :goto_2

    :catch_1
    move-exception v3

    move v4, v1

    .line 2967
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    :cond_2
    :goto_3
    const-string v4, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_LENGTH"

    .line 2969
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "com.autochips.bluetooth.avrcpct.AvrcpCtPlayerUtility.extra.MEDIA_POSITION"

    .line 2970
    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2971
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPlayTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mPlayTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    mediaLength:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   mNumberTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mNumberTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   mediaPosition:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyui(Landroid/content/Intent;)V

    return-void
.end method

.method private parseNodeString([BII)Ljava/lang/String;
    .locals 2

    .line 2874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNodeString dataSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  lenght:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_0

    .line 2875
    array-length v0, p1

    if-ge p2, v0, :cond_0

    if-ltz p3, :cond_0

    .line 2876
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private queryEndSeparateNode([BIIC)I
    .locals 1

    :goto_0
    if-le p3, p2, :cond_1

    .line 2823
    aget-byte v0, p1, p3

    if-ne v0, p4, :cond_0

    return p3

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private queryEndSeparateNode([BIII)I
    .locals 1

    :goto_0
    if-le p3, p2, :cond_1

    .line 2840
    aget-byte v0, p1, p3

    if-ne v0, p4, :cond_0

    return p3

    :cond_0
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private queryMusicInfoNode([BII)I
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 2858
    aget-byte v0, p1, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private queryStartSeparateNode([BIIC)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_1

    .line 2805
    aget-byte v0, p1, p2

    if-ne v0, p4, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private resetMusicInfo()V
    .locals 1

    const-string v0, ""

    .line 2990
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mMusicName:Ljava/lang/String;

    .line 2991
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mArtistName:Ljava/lang/String;

    .line 2992
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mPlayTime:Ljava/lang/String;

    .line 2993
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mNumberTime:Ljava/lang/String;

    .line 2994
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mTotalTime:Ljava/lang/String;

    .line 2995
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mAlbumName:Ljava/lang/String;

    return-void
.end method

.method private setDeviceName(Ljava/lang/String;)V
    .locals 2

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+NAME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    .line 1440
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->setDeviceName2systemproperties(Ljava/lang/String;)V

    return-void
.end method

.method public static unicodeToChinese(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    .line 1924
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_0

    .line 1925
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\\u"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int/lit8 v2, v1, 0x4

    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1927
    :cond_0
    invoke-static {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->unicodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unicodeToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "(\\\\u(\\p{XDigit}{4}))"

    .line 1932
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1933
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1935
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 1936
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-char v1, v1

    const/4 v2, 0x1

    .line 1937
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private uninittelzonedatabase()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mdbmanager:Lcom/autochips/bluetooth/control/DBManager;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/DBManager;->closeDatabase()V

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mdbmanager:Lcom/autochips/bluetooth/control/DBManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public GetCallingName()Ljava/lang/String;
    .locals 1

    .line 1298
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->callingname:Ljava/lang/String;

    return-object v0
.end method

.method public GetCallingNum()Ljava/lang/String;
    .locals 1

    .line 1294
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    return-object v0
.end method

.method public GetPairedList(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/control/PBRecord;",
            ">;)Z"
        }
    .end annotation

    .line 918
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_pairedlist:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 920
    :try_start_0
    monitor-exit v0

    return v1

    .line 922
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/autochips/bluetooth/control/DBManager;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/bt_paired.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 924
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 925
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 926
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :cond_1
    const/4 v2, 0x1

    .line 929
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 930
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 932
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 946
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 947
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr p1, v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p1

    :cond_2
    :try_start_3
    const-string v5, "\\|"

    .line 936
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 938
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    goto :goto_0

    .line 941
    :cond_3
    new-instance v5, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-direct {v5}, Lcom/autochips/bluetooth/control/PBRecord;-><init>()V

    .line 942
    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Lcom/autochips/bluetooth/control/PBRecord;->setName(Ljava/lang/String;)Lcom/autochips/bluetooth/control/PBRecord;

    .line 943
    aget-object v4, v4, v2

    invoke-virtual {v5, v4}, Lcom/autochips/bluetooth/control/PBRecord;->setNumber(Ljava/lang/String;)Lcom/autochips/bluetooth/control/PBRecord;

    .line 944
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 951
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 949
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 954
    :goto_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public GetPhonebook(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/control/PBRecord;",
            ">;)Z"
        }
    .end annotation

    .line 850
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_phonebook:Ljava/lang/Object;

    monitor-enter v0

    .line 851
    :try_start_0
    iget-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedHFP:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 854
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/autochips/bluetooth/control/DBManager;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/bt_phonebook.txt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 855
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "Bluetooth"

    const-string v1, "GetPhonebook no file"

    .line 858
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_1
    const/4 v1, 0x1

    .line 862
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 863
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 865
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v2, "Bluetooth"

    const-string v4, "getphonebook break readLine=null"

    .line 867
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v5, "\\|"

    .line 870
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 872
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    const-string v2, "Bluetooth"

    const-string v4, "getphonebook break children.length != 2"

    .line 873
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 883
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr p1, v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p1

    .line 876
    :cond_3
    :try_start_3
    new-instance v5, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-direct {v5}, Lcom/autochips/bluetooth/control/PBRecord;-><init>()V

    .line 877
    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Lcom/autochips/bluetooth/control/PBRecord;->setName(Ljava/lang/String;)Lcom/autochips/bluetooth/control/PBRecord;

    const-string v6, "Bluetooth"

    .line 878
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getphonebook phonebookname="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    aget-object v4, v4, v1

    invoke-virtual {v5, v4}, Lcom/autochips/bluetooth/control/PBRecord;->setNumber(Ljava/lang/String;)Lcom/autochips/bluetooth/control/PBRecord;

    .line 880
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 887
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 885
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 890
    :goto_2
    monitor-exit v0

    return v1

    .line 852
    :cond_4
    :goto_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 890
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public GetPhonebookRecCnt()I
    .locals 1

    .line 825
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedHFP:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 828
    :cond_0
    iget v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->downloadnum:I

    return v0
.end method

.method public GetRecord(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/control/PBRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1049
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_record:Ljava/lang/Object;

    monitor-enter v0

    .line 1050
    :try_start_0
    iget-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedHFP:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 1053
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/autochips/bluetooth/control/DBManager;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/bt_record.txt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1054
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "Bluetooth"

    const-string v1, "GetRecord no file"

    .line 1056
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_1
    const/4 v1, 0x1

    .line 1060
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1061
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1063
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "\\|"

    .line 1067
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1069
    array-length v5, v4

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    .line 1079
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 1080
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr p1, v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p1

    .line 1072
    :cond_3
    :try_start_3
    new-instance v5, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-direct {v5}, Lcom/autochips/bluetooth/control/PBRecord;-><init>()V

    .line 1073
    aget-object v6, v4, v2

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/autochips/bluetooth/control/PBRecord;->setType(I)Lcom/autochips/bluetooth/control/PBRecord;

    .line 1074
    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Lcom/autochips/bluetooth/control/PBRecord;->setName(Ljava/lang/String;)Lcom/autochips/bluetooth/control/PBRecord;

    const/4 v6, 0x2

    .line 1075
    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/autochips/bluetooth/control/PBRecord;->setNumber(Ljava/lang/String;)Lcom/autochips/bluetooth/control/PBRecord;

    const/4 v6, 0x3

    .line 1076
    aget-object v4, v4, v6

    invoke-virtual {v5, v4}, Lcom/autochips/bluetooth/control/PBRecord;->setCalltime(Ljava/lang/String;)Lcom/autochips/bluetooth/control/PBRecord;

    .line 1077
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1082
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1085
    monitor-exit v0

    return v1

    .line 1051
    :cond_4
    :goto_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 1085
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public ReadBTUpdateState()Ljava/lang/String;
    .locals 2

    const-string v0, "persist.sys.bt_upgrade"

    const-string v1, "0"

    .line 1567
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ReadCustomerName()Ljava/lang/String;
    .locals 1

    .line 1571
    invoke-static {}, Lcom/autochips/bluetooth/control/AppConfigParser;->getInstance()Lcom/autochips/bluetooth/control/AppConfigParser;

    invoke-static {}, Lcom/autochips/bluetooth/control/AppConfigParser;->getBTCustomerNameOEM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ReadInitedDevicename(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public SendDTMFCode(Ljava/lang/String;)V
    .locals 2

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+DTMF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public WriteInitedDevicename(Landroid/content/Context;)V
    .locals 2

    const-string v0, "BT_memory"

    const/4 v1, 0x0

    .line 1494
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "BT_inited_devicename"

    const/4 v1, 0x1

    .line 1495
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1496
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public addpaired(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 959
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_pairedlist:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Bluetooth"

    .line 960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addpaired:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   mac:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 961
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 964
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xc

    if-le v1, v3, :cond_1

    .line 965
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 967
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 968
    invoke-virtual {p0, v1}, Lcom/autochips/bluetooth/control/Bluetooth;->GetPairedList(Ljava/util/List;)Z

    .line 970
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/autochips/bluetooth/control/DBManager;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/bt_paired.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 971
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 973
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 975
    :cond_2
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 977
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 981
    :goto_0
    :try_start_3
    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 983
    invoke-virtual {v4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 984
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_4

    .line 985
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object p1

    .line 986
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 989
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {v3}, Lcom/autochips/bluetooth/control/PBRecord;->getName()Ljava/lang/String;

    move-result-object v3

    .line 990
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 991
    invoke-virtual {v4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 994
    :cond_4
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p1

    .line 997
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 999
    :goto_3
    monitor-exit v0

    return-void

    .line 962
    :cond_5
    :goto_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 999
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public addphonebook(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 895
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_phonebook:Ljava/lang/Object;

    monitor-enter v0

    .line 896
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/autochips/bluetooth/control/DBManager;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bt_phonebook.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bluetooth"

    .line 897
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "8127 addphonebook:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "|"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "line.separator"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 899
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 901
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 903
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 907
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 905
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 910
    :cond_0
    invoke-static {v1, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->appendfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public addrecord(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1121
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_record:Ljava/lang/Object;

    monitor-enter v0

    .line 1122
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/autochips/bluetooth/control/DBManager;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bt_record.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1123
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 1124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "|"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "|"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "|"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "line.separator"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1125
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 1127
    :try_start_1
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1129
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1133
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1131
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1136
    :cond_0
    invoke-static {v1, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->appendfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public answercall()V
    .locals 1

    const-string v0, "AT+CA\r\n"

    .line 1341
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1360
    :cond_0
    sput-object p1, Lcom/autochips/bluetooth/control/Bluetooth;->mlastcallnum:Ljava/lang/String;

    const-string v0, "*"

    .line 1361
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1364
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AT+D"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->mlastcallnum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "AT+LH39680ce41800\r\n"

    .line 1362
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public checkcmd([BII)Z
    .locals 4

    sub-int v0, p3, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_3

    .line 2026
    aget-byte v3, p1, p2

    if-eq v3, v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 2031
    aget-byte v3, p1, p2

    add-int/2addr v0, v3

    int-to-byte v0, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2033
    :cond_1
    aget-byte p1, p1, p3

    if-eq v0, p1, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v2
.end method

.method public closebt()V
    .locals 2

    const-string v0, "Bluetooth"

    const-string v1, "closebt"

    .line 429
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    .line 430
    iput v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->btState:I

    .line 431
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifybar(I)V

    const-string v0, "AT+P0\r\n"

    .line 432
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->disconnectbeforeclosebt()V

    const/4 v0, 0x0

    .line 434
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->writeLastBtState(Z)V

    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 5

    .line 586
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->isConnected()Z

    move-result v0

    const-string v1, "com.autochips.bluetooth.profilestatechange"

    const-string v2, "Bluetooth"

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->HFPconnectingMac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect device:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iput-object p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->HFPconnectingMac:Ljava/lang/String;

    .line 594
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->myHandler:Landroid/os/Handler;

    new-instance v2, Lcom/autochips/bluetooth/control/Bluetooth$1;

    invoke-direct {v2, p0}, Lcom/autochips/bluetooth/control/Bluetooth$1;-><init>(Lcom/autochips/bluetooth/control/Bluetooth;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_resetconnect:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+LH"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    .line 604
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    return-void

    .line 587
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isconnected="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->isConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " when connect"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    return-void
.end method

.method public connectA2DP()V
    .locals 1

    .line 645
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedA2DP:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedHFP:Z

    if-eqz v0, :cond_0

    const-string v0, "AT+LA+\r\n"

    .line 646
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public connectAVRCP()V
    .locals 0

    return-void
.end method

.method public delephonebook()V
    .locals 4

    .line 842
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_phonebook:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/autochips/bluetooth/control/DBManager;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/bt_phonebook.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 844
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 845
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 846
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteBondDevice(Ljava/lang/String;)V
    .locals 2

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+CV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public delpaired(Ljava/lang/String;)V
    .locals 7

    .line 1003
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_pairedlist:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    invoke-virtual {p0, v1}, Lcom/autochips/bluetooth/control/Bluetooth;->GetPairedList(Ljava/util/List;)Z

    const/4 v2, 0x0

    move v3, v2

    .line 1007
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 1008
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {v4}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1009
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move p1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_1
    const-string v3, "Bluetooth"

    .line 1014
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteBondDevice: del"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    .line 1016
    monitor-exit v0

    return-void

    :cond_2
    const-string p1, "Bluetooth"

    .line 1018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteBondDevice: size;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/autochips/bluetooth/control/DBManager;->DB_PATH:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "/bt_paired.txt"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1020
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1022
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    :cond_3
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 1026
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1030
    :goto_2
    :try_start_3
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 1031
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_4

    .line 1032
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/PBRecord;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1033
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {v4}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 1034
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, "|"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1035
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1038
    :cond_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception p1

    .line 1041
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1043
    :goto_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public delrecord()V
    .locals 4

    .line 1142
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_record:Ljava/lang/Object;

    monitor-enter v0

    .line 1143
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/autochips/bluetooth/control/DBManager;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/bt_record.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1145
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1146
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public delrecord(Lcom/autochips/bluetooth/control/PBRecord;)V
    .locals 8

    .line 1150
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_record:Ljava/lang/Object;

    monitor-enter v0

    .line 1151
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1152
    invoke-virtual {p0, v1}, Lcom/autochips/bluetooth/control/Bluetooth;->GetRecord(Ljava/util/List;)Z

    const/4 v2, 0x0

    move v3, v2

    .line 1154
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    .line 1155
    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/PBRecord;->getCalltime()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {v6}, Lcom/autochips/bluetooth/control/PBRecord;->getCalltime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1156
    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/PBRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {v6}, Lcom/autochips/bluetooth/control/PBRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1157
    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {v6}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1158
    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/PBRecord;->getType()I

    move-result v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {v6}, Lcom/autochips/bluetooth/control/PBRecord;->getType()I

    move-result v6

    if-ne v4, v6, :cond_0

    .line 1159
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move p1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_1
    if-nez p1, :cond_2

    .line 1165
    monitor-exit v0

    return-void

    .line 1168
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/autochips/bluetooth/control/DBManager;->DB_PATH:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "/bt_record.txt"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1169
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1171
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1173
    :cond_3
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 1175
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1179
    :goto_2
    :try_start_3
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 1180
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_4

    .line 1181
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/PBRecord;->getType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 1182
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {v4}, Lcom/autochips/bluetooth/control/PBRecord;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1183
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {v5}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 1184
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {v6}, Lcom/autochips/bluetooth/control/PBRecord;->getCalltime()Ljava/lang/String;

    move-result-object v6

    .line 1185
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v7, "|"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "|"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "|"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1186
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1189
    :cond_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception p1

    .line 1192
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1194
    :goto_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public disconnect()V
    .locals 1

    .line 624
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedHFP:Z

    if-eqz v0, :cond_0

    const-string v0, "AT+LH-\r\n"

    .line 625
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 626
    iput-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isHFPdisconnecting:Z

    goto :goto_0

    .line 628
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->stopAutoconnect()V

    const/4 v0, 0x0

    .line 629
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->resetconnecting(Z)V

    :goto_0
    return-void
.end method

.method public disconnectA2DP()V
    .locals 1

    .line 651
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedA2DP:Z

    if-eqz v0, :cond_0

    const-string v0, "AT+LA-\r\n"

    .line 652
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public disconnectHFP()V
    .locals 1

    .line 657
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedHFP:Z

    if-eqz v0, :cond_0

    const-string v0, "AT+LH-\r\n"

    .line 658
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public disconnectbeforeclosebt()V
    .locals 3

    .line 439
    new-instance v0, Ljava/lang/String;

    const-string v1, "HFP=0"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->handlecmd([BII)Z

    .line 440
    new-instance v0, Ljava/lang/String;

    const-string v2, "A2DP=0"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->handlecmd([BII)Z

    const/16 v0, 0xb

    .line 441
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifybar(I)V

    return-void
.end method

.method public doDiscovery()Z
    .locals 1

    .line 449
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->issearching:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 450
    iput-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->issearching:Z

    .line 451
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->stopDiscovery()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 453
    iput-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->issearching:Z

    const-string v0, "AT+INQ=60\r\n"

    .line 454
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    .line 456
    :goto_0
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->issearching:Z

    return v0
.end method

.method public downloadCallLog()V
    .locals 2

    .line 1252
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedHFP:Z

    if-nez v0, :cond_0

    return-void

    .line 1255
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadCallLog isPhCallLogdownloading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isPhCallLogdownloading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isPhCallLogdownloading:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1257
    iput-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isPhCallLogdownloading:Z

    const-string v0, "AT+PF\r\n"

    .line 1258
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public downloadphonebook()V
    .locals 2

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadphonebook:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedHFP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   ispbdownloading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->ispbdownloading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedHFP:Z

    if-nez v0, :cond_0

    return-void

    .line 1241
    :cond_0
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->ispbdownloading:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1242
    iput-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->ispbdownloading:Z

    const-string v0, "downloadphonebook"

    .line 1243
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AT+PBDN\r\n"

    .line 1244
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public downloadphonebookwhenconnect(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1263
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1266
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->readLastDownLoadMac()Ljava/lang/String;

    move-result-object v0

    .line 1267
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1268
    :cond_2
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->downloadphonebook()V

    :cond_3
    :goto_0
    return-void
.end method

.method public getA2dpStatus()V
    .locals 2

    const-string v0, "Bluetooth"

    const-string v1, "getA2dpStatus"

    .line 377
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AT+MV\r\n"

    .line 378
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public getConnectedA2DPAddr()Ljava/lang/String;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPMac:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getConnectedA2DPName()Ljava/lang/String;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPName:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectedHFPAddr()Ljava/lang/String;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getConnectedHFPName()Ljava/lang/String;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurBtState()I
    .locals 1

    .line 518
    iget v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->btState:I

    return v0
.end method

.method public getDbManager()Lcom/autochips/bluetooth/control/DBManager;
    .locals 1

    .line 295
    invoke-direct {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->inittelzonedatabase()V

    .line 296
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mdbmanager:Lcom/autochips/bluetooth/control/DBManager;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 1444
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->readDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceNamefromcmd()V
    .locals 1

    const-string v0, "AT+NAME\r\n"

    .line 1431
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public getDevicePin()Ljava/lang/String;
    .locals 1

    .line 1448
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->readDevicePin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaAlbum()Ljava/lang/String;
    .locals 1

    .line 1381
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaArtist()Ljava/lang/String;
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaTitle()Ljava/lang/String;
    .locals 1

    .line 1373
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mMusicName:Ljava/lang/String;

    return-object v0
.end method

.method public getack()V
    .locals 1

    const-string v0, "AT+ACK\r\n"

    .line 319
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public getconnectedmac()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    return-object v0
.end method

.method public getconnectingmac()Ljava/lang/String;
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->HFPconnectingMac:Ljava/lang/String;

    return-object v0
.end method

.method public getlastcallnum()Ljava/lang/String;
    .locals 1

    .line 1282
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->mlastcallnum:Ljava/lang/String;

    return-object v0
.end method

.method public getlastcalltype()I
    .locals 1

    .line 1286
    iget v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus_last:I

    return v0
.end method

.method public getnamefromcallnum(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 523
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->GetPhonebook(Ljava/util/List;)Z

    .line 524
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 525
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 526
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {v2}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {p1}, Lcom/autochips/bluetooth/control/PBRecord;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getpowerstate()V
    .locals 1

    const-string v0, "AT+PWR\r\n"

    .line 331
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public getwhenconnected()J
    .locals 2

    .line 537
    sget-wide v0, Lcom/autochips/bluetooth/control/Bluetooth;->whenconnected:J

    return-wide v0
.end method

.method public handleCallStateUpdate(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "com.autochips.bluetooth.hf.extra.callState"

    const/4 v1, 0x0

    .line 1792
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1793
    iget v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus:I

    if-eq v2, v0, :cond_0

    .line 1794
    iput v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus_last:I

    :cond_0
    const-string v2, "Bluetooth"

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_7

    if-eq p1, v0, :cond_7

    .line 1799
    iget-boolean v6, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isspeakingfirst:Z

    if-nez v6, :cond_1

    .line 1800
    iput-boolean v3, p0, Lcom/autochips/bluetooth/control/Bluetooth;->iscompletecall:Z

    goto :goto_0

    .line 1802
    :cond_1
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->iscompletecall:Z

    .line 1804
    :goto_0
    iget v6, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus:I

    if-eq v6, v5, :cond_5

    if-eq v6, v4, :cond_4

    if-eq v6, v0, :cond_2

    goto :goto_1

    .line 1806
    :cond_2
    iget v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus_last:I

    if-ne v0, v4, :cond_3

    .line 1807
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus_last:I

    goto :goto_1

    :cond_3
    if-ne v0, v5, :cond_6

    .line 1809
    iput v3, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus_last:I

    goto :goto_1

    .line 1813
    :cond_4
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus_last:I

    goto :goto_1

    .line 1816
    :cond_5
    iput v5, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus_last:I

    .line 1822
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->handlecallidle()V

    goto :goto_3

    :cond_7
    if-eq p1, v5, :cond_9

    if-ne p1, v4, :cond_8

    goto :goto_2

    :cond_8
    if-ne p1, v0, :cond_a

    .line 1831
    sput v1, Lcom/autochips/bluetooth/control/Bluetooth;->mStartTimer:I

    .line 1832
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->handlecallactive()V

    goto :goto_3

    .line 1825
    :cond_9
    :goto_2
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->m_callStartTime:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1826
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isspeakingfirst:Z

    .line 1827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCallStateUpdate callstatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    invoke-static {}, Lcom/carocean/navicar/McuServiceManager;->getInstance()Lcom/carocean/navicar/McuServiceManager;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, v3}, Lcom/carocean/navicar/McuServiceManager;->RPCKeyCommand(II)V

    .line 1829
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->handlecallactive()V

    .line 1834
    :cond_a
    :goto_3
    iput p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus:I

    .line 1835
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleCallStateUpdate mcallstatus="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handlecallactive()V
    .locals 3

    const-string v0, "persist.sys.startbt"

    const-string v1, "true"

    .line 1726
    # invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.sys.btphone_startup"

    .line 1727
    # invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->call_state_change_intent:Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_CALL_STATUS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1731
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->call_state_change_intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public handlecallidle()V
    .locals 3

    const-string v0, "persist.sys.btphone_startup"

    const-string v1, "false"

    .line 1735
    # invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyUpdateCallHistory()V

    .line 1737
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->call_state_change_intent:Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_CALL_STATUS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1739
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->call_state_change_intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    const-string v2, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NUMBER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1740
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->call_state_change_intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->callingname:Ljava/lang/String;

    const-string v2, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1742
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->call_state_change_intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public declared-synchronized handlecmd([BII)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    monitor-enter p0

    .line 2124
    :try_start_0
    aget-byte v5, v2, v3

    const/16 v6, 0x45

    const/16 v7, 0x49

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ne v5, v7, :cond_0

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    if-ne v5, v6, :cond_0

    .line 2125
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x2

    sub-int v3, v4, v3

    sub-int/2addr v3, v10

    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v2, "Bluetooth"

    .line 2126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ie num:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    invoke-virtual {v1, v5}, Lcom/autochips/bluetooth/control/Bluetooth;->getnamefromcallnum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2128
    iput-object v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->waiteCallingnum:Ljava/lang/String;

    .line 2130
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.autochips.bluetooth.callnameandnumchange"

    .line 2131
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NUMBER"

    .line 2132
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NAME"

    .line 2133
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.autochips.bluetooth.hf.extra.callState"

    .line 2134
    invoke-virtual {v3, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2135
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    goto/16 :goto_12

    .line 2137
    :cond_0
    aget-byte v5, v2, v3

    const/16 v11, 0x4a

    if-ne v5, v11, :cond_1

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v11, 0x4b

    if-ne v5, v11, :cond_1

    .line 2138
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x2

    sub-int v3, v4, v3

    sub-int/2addr v3, v10

    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v2, "Bluetooth"

    .line 2139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JK num:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   waiteCallingnum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->waiteCallingnum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  callingnum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfUtility.action.callStateChange"

    .line 2142
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NUMBER"

    .line 2143
    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NAME"

    .line 2144
    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingname:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.hf.extra.callState"

    .line 2145
    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2146
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    .line 2148
    iput-object v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    .line 2149
    invoke-virtual {v1, v5}, Lcom/autochips/bluetooth/control/Bluetooth;->getnamefromcallnum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingname:Ljava/lang/String;

    goto/16 :goto_12

    .line 2151
    :cond_1
    aget-byte v5, v2, v3

    const/4 v11, 0x5

    if-ne v5, v7, :cond_2

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v12, 0x4c

    if-ne v5, v12, :cond_2

    .line 2152
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x2

    sub-int v3, v4, v3

    sub-int/2addr v3, v10

    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v2, "Bluetooth"

    .line 2153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IL num:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->waiteCallingnum:Ljava/lang/String;

    iput-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    .line 2156
    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->getnamefromcallnum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingname:Ljava/lang/String;

    .line 2157
    iput-object v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->waiteCallingnum:Ljava/lang/String;

    .line 2159
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfUtility.action.callStateChange"

    .line 2160
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NUMBER"

    .line 2161
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NAME"

    .line 2162
    invoke-virtual {v1, v5}, Lcom/autochips/bluetooth/control/Bluetooth;->getnamefromcallnum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.hf.extra.callState"

    .line 2163
    invoke-virtual {v2, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2165
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    goto/16 :goto_12

    .line 2167
    :cond_2
    aget-byte v5, v2, v3

    const/16 v12, 0x30

    const/16 v13, 0x4e

    if-ne v5, v7, :cond_3

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    if-ne v5, v13, :cond_3

    add-int/lit8 v5, v3, 0x2

    aget-byte v14, v2, v5

    if-lt v14, v12, :cond_3

    aget-byte v14, v2, v5

    const/16 v15, 0x39

    if-gt v14, v15, :cond_3

    .line 2169
    new-instance v6, Ljava/lang/String;

    sub-int v3, v4, v3

    sub-int/2addr v3, v10

    invoke-direct {v6, v2, v5, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v2, "Bluetooth"

    .line 2170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IN num:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    .line 2171
    iput-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->waiteCallingnum:Ljava/lang/String;

    .line 2172
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfUtility.action.callStateChange"

    .line 2173
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NUMBER"

    .line 2174
    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NAME"

    .line 2175
    invoke-virtual {v1, v6}, Lcom/autochips/bluetooth/control/Bluetooth;->getnamefromcallnum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.hf.extra.callState"

    .line 2176
    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2178
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    goto/16 :goto_12

    .line 2180
    :cond_3
    aget-byte v5, v2, v3

    const/16 v14, 0x4d

    if-ne v5, v14, :cond_5

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    if-ne v5, v7, :cond_5

    .line 2182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    sub-int v7, v4, v3

    add-int/2addr v7, v10

    invoke-direct {v6, v2, v3, v7}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Bluetooth"

    .line 2183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pri bodyfirstindex:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "  bodyendindex:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " handlecmd MI:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v4, 0x1

    .line 2186
    invoke-direct {v1, v2, v5, v6}, Lcom/autochips/bluetooth/control/Bluetooth;->queryMusicInfoNode([BII)I

    move-result v7

    sub-int v3, v7, v3

    sub-int/2addr v3, v9

    .line 2187
    invoke-direct {v1, v2, v5, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->parseNodeString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mMusicName:Ljava/lang/String;

    add-int/lit8 v3, v7, 0x1

    .line 2189
    invoke-direct {v1, v2, v3, v6}, Lcom/autochips/bluetooth/control/Bluetooth;->queryMusicInfoNode([BII)I

    move-result v5

    sub-int v7, v5, v7

    sub-int/2addr v7, v10

    .line 2190
    invoke-direct {v1, v2, v3, v7}, Lcom/autochips/bluetooth/control/Bluetooth;->parseNodeString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mArtistName:Ljava/lang/String;

    add-int/lit8 v3, v5, 0x1

    .line 2192
    invoke-direct {v1, v2, v3, v6}, Lcom/autochips/bluetooth/control/Bluetooth;->queryMusicInfoNode([BII)I

    move-result v7

    sub-int v5, v7, v5

    sub-int/2addr v5, v10

    .line 2193
    invoke-direct {v1, v2, v3, v5}, Lcom/autochips/bluetooth/control/Bluetooth;->parseNodeString([BII)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v7, 0x1

    .line 2195
    invoke-direct {v1, v2, v5, v6}, Lcom/autochips/bluetooth/control/Bluetooth;->queryMusicInfoNode([BII)I

    move-result v9

    sub-int v7, v9, v7

    sub-int/2addr v7, v10

    .line 2196
    invoke-direct {v1, v2, v5, v7}, Lcom/autochips/bluetooth/control/Bluetooth;->parseNodeString([BII)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v7, v9, 0x1

    .line 2198
    invoke-direct {v1, v2, v7, v6}, Lcom/autochips/bluetooth/control/Bluetooth;->queryMusicInfoNode([BII)I

    move-result v11

    sub-int v9, v11, v9

    sub-int/2addr v9, v10

    .line 2199
    invoke-direct {v1, v2, v7, v9}, Lcom/autochips/bluetooth/control/Bluetooth;->parseNodeString([BII)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mTotalTime:Ljava/lang/String;

    add-int/lit8 v7, v11, 0x1

    .line 2201
    invoke-direct {v1, v2, v7, v6}, Lcom/autochips/bluetooth/control/Bluetooth;->queryMusicInfoNode([BII)I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    move v4, v6

    :goto_0
    sub-int/2addr v4, v11

    .line 2205
    invoke-direct {v1, v2, v7, v4}, Lcom/autochips/bluetooth/control/Bluetooth;->parseNodeString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mAlbumName:Ljava/lang/String;

    const-string v2, "Bluetooth"

    .line 2206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMusicName:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mMusicName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "  mArtistName:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mArtistName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "  mAlbumName:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "  mTotalTime:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mTotalTime:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "  numberTime:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  playTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    invoke-direct/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyMusicInfo()V

    goto/16 :goto_12

    .line 2209
    :cond_5
    aget-byte v5, v2, v3

    const/16 v15, 0x50

    if-ne v5, v14, :cond_8

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    if-ne v5, v15, :cond_8

    const-string v5, "Bluetooth"

    const-string v6, "handlecmd mp music position"

    .line 2211
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v4, 0x1

    .line 2212
    invoke-direct {v1, v2, v5, v6}, Lcom/autochips/bluetooth/control/Bluetooth;->queryMusicInfoNode([BII)I

    move-result v7

    sub-int v3, v7, v3

    sub-int/2addr v3, v9

    .line 2213
    invoke-direct {v1, v2, v5, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->parseNodeString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mPlayTime:Ljava/lang/String;

    add-int/lit8 v3, v7, 0x1

    .line 2215
    invoke-direct {v1, v2, v3, v6}, Lcom/autochips/bluetooth/control/Bluetooth;->queryMusicInfoNode([BII)I

    move-result v5

    sub-int v6, v5, v7

    sub-int/2addr v6, v10

    .line 2216
    invoke-direct {v1, v2, v3, v6}, Lcom/autochips/bluetooth/control/Bluetooth;->parseNodeString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mNumberTime:Ljava/lang/String;

    const-string v3, "Bluetooth"

    .line 2217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MP mPlayTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mPlayTime:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mNumberTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mNumberTime:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v5, v10

    if-ne v5, v4, :cond_7

    .line 2220
    aget-byte v2, v2, v5

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(I)I

    move-result v2

    const-string v3, "Bluetooth"

    .line 2221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v2, v10, :cond_6

    goto :goto_1

    :cond_6
    move v10, v8

    .line 2222
    :goto_1
    iput-boolean v10, v1, Lcom/autochips/bluetooth/control/Bluetooth;->ismusicplaying:Z

    .line 2225
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyMusicInfo()V

    goto/16 :goto_12

    .line 2226
    :cond_8
    aget-byte v5, v2, v3

    const/16 v7, 0x53

    if-ne v5, v15, :cond_9

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    if-ne v5, v7, :cond_9

    const-string v4, "Bluetooth"

    .line 2227
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlecmd ps sign mConnectedHFPMac:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v3, 0x3

    .line 2228
    aget-byte v4, v2, v4

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(I)I

    move-result v4

    iput v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->signal:I

    add-int/2addr v3, v11

    .line 2229
    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(I)I

    move-result v2

    iput v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->battery:I

    const-string v2, "Bluetooth"

    .line 2230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlecmd ps signal:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->signal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  battery:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->battery:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyAG()V

    goto/16 :goto_12

    .line 2232
    :cond_9
    aget-byte v5, v2, v3

    const/16 v16, 0xa

    const/16 v6, 0xc

    const/16 v14, 0x54

    const/4 v13, 0x6

    const/16 v15, 0x3d

    const/4 v11, 0x4

    if-ne v5, v7, :cond_13

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    if-ne v5, v14, :cond_13

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    if-ne v5, v15, :cond_13

    const-string v5, "Bluetooth"

    const-string v7, "handlecmd ST"

    .line 2234
    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->startheartbeat()V

    .line 2236
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v7, v3, 0x3

    sub-int v3, v4, v3

    sub-int/2addr v3, v9

    invoke-direct {v5, v2, v7, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v2, "Bluetooth"

    .line 2238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ST value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v9

    .line 2241
    iget v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->btState:I

    iput v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->preBtState:I

    if-ne v2, v12, :cond_a

    move/from16 v3, v16

    goto :goto_2

    :cond_a
    move v3, v6

    .line 2243
    :goto_2
    iput v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->btState:I

    if-ne v3, v6, :cond_b

    move v3, v10

    goto :goto_3

    :cond_b
    move v3, v8

    .line 2244
    :goto_3
    invoke-virtual {v1, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->writeLastBtState(Z)V

    .line 2245
    iget v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->btState:I

    if-ne v3, v6, :cond_c

    goto :goto_4

    :cond_c
    const/16 v16, 0xb

    :goto_4
    move/from16 v3, v16

    invoke-virtual {v1, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->notifybar(I)V

    const-string v3, "Bluetooth"

    .line 2246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "btopen b:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v11

    if-eq v2, v12, :cond_d

    const/16 v3, 0x31

    if-eq v2, v3, :cond_d

    move v2, v10

    goto :goto_5

    :cond_d
    move v2, v8

    .line 2251
    :goto_5
    iget-boolean v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedHFP:Z

    if-nez v3, :cond_e

    if-eqz v2, :cond_e

    const-string v3, "AT+PNAME\r\n"

    .line 2252
    invoke-virtual {v1, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    const-string v3, "AT+PADDR\r\n"

    .line 2253
    invoke-virtual {v1, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    if-nez v3, :cond_f

    if-nez v2, :cond_f

    .line 2255
    invoke-virtual {v1, v8}, Lcom/autochips/bluetooth/control/Bluetooth;->startautoconnect(Z)V

    .line 2257
    :cond_f
    :goto_6
    iput-boolean v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedHFP:Z

    .line 2258
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aget-byte v2, v2, v13

    if-eq v2, v12, :cond_10

    const/16 v3, 0x31

    if-eq v2, v3, :cond_10

    move v3, v10

    goto :goto_7

    :cond_10
    move v3, v8

    .line 2259
    :goto_7
    iput-boolean v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedA2DP:Z

    const/16 v3, 0x33

    if-ne v2, v3, :cond_11

    .line 2261
    iput-boolean v10, v1, Lcom/autochips/bluetooth/control/Bluetooth;->ismusicplaying:Z

    goto :goto_8

    .line 2263
    :cond_11
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->ismusicplaying:Z

    .line 2265
    :goto_8
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x8

    aget-byte v2, v2, v3

    if-eq v2, v12, :cond_12

    const/16 v3, 0x31

    if-eq v2, v3, :cond_12

    move v8, v10

    .line 2266
    :cond_12
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedAvrcp:Z

    .line 2267
    invoke-direct/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyAvrcpStatus()V

    .line 2269
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.autochips.bluetooth.profilestatechange"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2270
    monitor-exit p0

    return v10

    .line 2271
    :cond_13
    :try_start_1
    aget-byte v5, v2, v3

    const/16 v14, 0x43

    const/16 v7, 0x41

    if-ne v5, v14, :cond_15

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    if-ne v5, v7, :cond_15

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    const/16 v14, 0x4c

    if-ne v5, v14, :cond_15

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    const/16 v14, 0x4c

    if-ne v5, v14, :cond_15

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, v2, v5

    if-ne v5, v15, :cond_15

    const-string v4, "Bluetooth"

    const-string v5, "handlecmd call"

    .line 2274
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x5

    add-int/2addr v3, v4

    .line 2275
    aget-byte v2, v2, v3

    if-ne v2, v12, :cond_14

    .line 2276
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.autochips.bluetooth.hf.extra.callState"

    .line 2277
    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2278
    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->handleCallStateUpdate(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2280
    :cond_14
    monitor-exit p0

    return v10

    .line 2281
    :cond_15
    :try_start_2
    aget-byte v5, v2, v3

    const/16 v14, 0x44

    if-ne v5, v7, :cond_19

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v13, 0x32

    if-ne v5, v13, :cond_19

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    if-ne v5, v14, :cond_19

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    const/16 v13, 0x50

    if-ne v5, v13, :cond_19

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, v2, v5

    if-ne v5, v15, :cond_19

    const-string v4, "Bluetooth"

    const-string v5, "handlecmd a2dp"

    .line 2284
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x5

    add-int/2addr v3, v4

    .line 2285
    aget-byte v2, v2, v3

    .line 2286
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.bluetooth.profilemanager.action.PROFILE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.bluetooth.profilemanager.extra.ATCPROFILE"

    .line 2287
    sget-object v5, Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;->Bluetooth_A2DP_SINK:Lcom/autochips/bluetooth/control/Bluetooth$BTProfile;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-ne v2, v12, :cond_16

    const-string v4, "Bluetooth"

    const-string v5, "a2dp status:disconnect"

    .line 2289
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->ismusicplaying:Z

    .line 2291
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedA2DP:Z

    .line 2292
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedAvrcp:Z

    const-string v4, ""

    .line 2293
    iput-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPName:Ljava/lang/String;

    iput-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPMac:Ljava/lang/String;

    .line 2294
    invoke-direct/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->resetMusicInfo()V

    const-string v4, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    .line 2295
    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9

    :cond_16
    const/16 v4, 0x33

    if-ne v2, v4, :cond_17

    const-string v4, "Bluetooth"

    const-string v5, "a2dp status:playing"

    .line 2297
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    iput-boolean v10, v1, Lcom/autochips/bluetooth/control/Bluetooth;->ismusicplaying:Z

    .line 2299
    iput-boolean v10, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedA2DP:Z

    const-string v4, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    const/16 v5, 0xf

    .line 2300
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9

    :cond_17
    const-string v4, "Bluetooth"

    const-string v5, "a2dp status:b connect"

    .line 2302
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->ismusicplaying:Z

    .line 2304
    iput-boolean v10, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedA2DP:Z

    const-string v4, "android.bluetooth.profilemanager.extra.EXTRA_NEW_STATE"

    .line 2305
    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2307
    :goto_9
    invoke-virtual {v1, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyui(Landroid/content/Intent;)V

    .line 2308
    invoke-direct/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyA2DPStatus()V

    .line 2309
    invoke-direct/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyAvrcpStatus()V

    if-ne v2, v12, :cond_18

    .line 2311
    invoke-direct/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyMusicInfo()V

    .line 2314
    :cond_18
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.autochips.bluetooth.profilestatechange"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2315
    monitor-exit p0

    return v10

    .line 2316
    :cond_19
    :try_start_3
    aget-byte v5, v2, v3

    const/16 v13, 0x48

    const/4 v12, 0x3

    if-ne v5, v13, :cond_24

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v13, 0x46

    if-ne v5, v13, :cond_24

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    const/16 v13, 0x50

    if-ne v5, v13, :cond_24

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    if-ne v5, v15, :cond_24

    const-string v4, "Bluetooth"

    .line 2318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlecmd hfp "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2, v3, v11}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v3, v11

    .line 2319
    aget-byte v2, v2, v3

    .line 2320
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.autochips.bluetooth.hf.BluetoothHfUtility.action.callStateChange"

    .line 2321
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Bluetooth"

    .line 2323
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlecmd hfp b:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "  HFPconnectingMac:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/autochips/bluetooth/control/Bluetooth;->HFPconnectingMac:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "    mConnectedHFPMac:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "   mConnectedA2DPMac:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPMac:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "    lastHfpConnectMac:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/autochips/bluetooth/control/Bluetooth;->lastHfpConnectMac:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    const-string v4, "Bluetooth"

    .line 2404
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callingnum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  waiteCallingnum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/autochips/bluetooth/control/Bluetooth;->waiteCallingnum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "com.autochips.bluetooth.hf.extra.callState"

    .line 2405
    invoke-virtual {v3, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2406
    invoke-virtual {v1, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->handleCallStateUpdate(Landroid/content/Intent;)V

    goto/16 :goto_b

    :pswitch_1
    const-string v4, "com.autochips.bluetooth.hf.extra.callState"

    .line 2399
    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2400
    invoke-virtual {v1, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->handleCallStateUpdate(Landroid/content/Intent;)V

    goto/16 :goto_b

    :pswitch_2
    const-string v4, "com.autochips.bluetooth.hf.extra.callState"

    .line 2393
    invoke-virtual {v3, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2394
    invoke-virtual {v1, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->handleCallStateUpdate(Landroid/content/Intent;)V

    const-string v4, "AT+2HF\r\n"

    .line 2395
    invoke-virtual {v1, v4}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_3
    const-string v4, "com.autochips.bluetooth.hf.extra.callState"

    .line 2378
    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NUMBER"

    .line 2379
    iget-object v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NAME"

    .line 2380
    iget-object v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingname:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Bluetooth"

    .line 2381
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "11callingnum:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   callingname\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    invoke-virtual {v1, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->handleCallStateUpdate(Landroid/content/Intent;)V

    const-string v4, ""

    .line 2383
    iput-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->waiteCallingnum:Ljava/lang/String;

    iput-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingname:Ljava/lang/String;

    iput-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    .line 2384
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->connectforpoweroffevent:Z

    .line 2385
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->isHFPdisconnecting:Z

    const-string v4, ""

    .line 2386
    iput-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->lastHfpConnectMac:Ljava/lang/String;

    .line 2387
    invoke-virtual {v1, v10}, Lcom/autochips/bluetooth/control/Bluetooth;->resetconnecting(Z)V

    .line 2389
    invoke-direct/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyA2DPStatus()V

    goto/16 :goto_b

    .line 2361
    :pswitch_4
    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->HFPconnectingMac:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2362
    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 2363
    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    iput-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->HFPconnectingMac:Ljava/lang/String;

    .line 2364
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.autochips.bluetooth.profilestatechange"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    goto :goto_a

    .line 2365
    :cond_1a
    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPMac:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 2366
    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPMac:Ljava/lang/String;

    iput-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->HFPconnectingMac:Ljava/lang/String;

    .line 2367
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.autochips.bluetooth.profilestatechange"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    goto :goto_a

    .line 2368
    :cond_1b
    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->lastHfpConnectMac:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 2369
    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->lastHfpConnectMac:Ljava/lang/String;

    iput-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->HFPconnectingMac:Ljava/lang/String;

    .line 2370
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.autochips.bluetooth.profilestatechange"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    .line 2373
    :cond_1c
    :goto_a
    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->HFPconnectingMac:Ljava/lang/String;

    iput-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->lastHfpConnectMac:Ljava/lang/String;

    const-string v4, "Bluetooth"

    .line 2374
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastHfpConnectMac11:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/autochips/bluetooth/control/Bluetooth;->lastHfpConnectMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2326
    :pswitch_5
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->ispbdownloading:Z

    .line 2327
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->isPhCallLogdownloading:Z

    .line 2328
    iput v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->signal:I

    .line 2329
    iput v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->battery:I

    .line 2331
    invoke-virtual {v1, v8}, Lcom/autochips/bluetooth/control/Bluetooth;->resetconnecting(Z)V

    .line 2332
    sget v4, Lcom/autochips/bluetooth/control/Bluetooth;->mTimeoff:I

    if-le v4, v10, :cond_1d

    .line 2333
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->stopAutoconnect()V

    .line 2335
    :cond_1d
    iget-boolean v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedHFP:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_1e

    .line 2336
    monitor-exit p0

    return v10

    .line 2338
    :cond_1e
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->iscallidle()Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "com.autochips.bluetooth.hf.extra.callState"

    .line 2339
    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NUMBER"

    .line 2340
    iget-object v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NAME"

    .line 2341
    iget-object v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingname:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2342
    invoke-virtual {v1, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->handleCallStateUpdate(Landroid/content/Intent;)V

    const-string v4, ""

    .line 2343
    iput-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->waiteCallingnum:Ljava/lang/String;

    iput-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingname:Ljava/lang/String;

    iput-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    .line 2345
    :cond_1f
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->isHFPdisconnecting:Z

    .line 2346
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedHFP:Z

    .line 2347
    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    const-string v5, ""

    .line 2348
    iput-object v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPName:Ljava/lang/String;

    iput-object v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    .line 2350
    iget v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->btState:I

    if-ne v5, v6, :cond_20

    const/16 v5, 0xb

    .line 2351
    invoke-virtual {v1, v5}, Lcom/autochips/bluetooth/control/Bluetooth;->notifybar(I)V

    .line 2354
    :cond_20
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.autochips.bluetooth.profilestatechange"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.autochips.bluetooth.hfp_isconnected"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_MAC"

    .line 2355
    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2356
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    .line 2357
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyAG()V

    :goto_b
    const/16 v4, 0x35

    if-ne v2, v4, :cond_21

    .line 2412
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v4

    iget-boolean v4, v4, Lcom/autochips/bluetooth/control/Bluetooth;->isspeakingfirst:Z

    if-eqz v4, :cond_21

    .line 2413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v6

    invoke-virtual {v6}, Lcom/autochips/bluetooth/control/Bluetooth;->getwhenconnected()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_21

    .line 2414
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autochips/bluetooth/control/Bluetooth;->isHFPconnected()Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_21

    .line 2415
    monitor-exit p0

    return v10

    :cond_21
    const/16 v4, 0x33

    if-eq v2, v4, :cond_22

    const/16 v4, 0x34

    if-eq v2, v4, :cond_22

    const/16 v4, 0x35

    if-ne v2, v4, :cond_23

    .line 2418
    :cond_22
    :try_start_5
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->ismicmute:Z

    :cond_23
    const-string v2, "Bluetooth"

    .line 2420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2ismicmute:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->ismicmute:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2422
    monitor-exit p0

    return v10

    .line 2423
    :cond_24
    :try_start_6
    aget-byte v5, v2, v3

    const/16 v13, 0x52

    const/16 v6, 0x50

    if-ne v5, v6, :cond_28

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x48

    if-ne v5, v6, :cond_28

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    if-ne v5, v7, :cond_28

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    if-ne v5, v14, :cond_28

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, v2, v5

    if-ne v5, v14, :cond_28

    add-int/lit8 v5, v3, 0x5

    aget-byte v5, v2, v5

    if-ne v5, v13, :cond_28

    add-int/lit8 v5, v3, 0x6

    aget-byte v5, v2, v5

    if-ne v5, v15, :cond_28

    const-string v5, "Bluetooth"

    const-string v6, "handlecmd phaddr"

    .line 2427
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x7

    sub-int v3, v4, v3

    const/4 v4, 0x6

    sub-int/2addr v3, v4

    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V

    .line 2429
    iput-object v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    .line 2430
    iput-boolean v10, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedHFP:Z

    .line 2431
    invoke-virtual {v1, v10}, Lcom/autochips/bluetooth/control/Bluetooth;->resetconnecting(Z)V

    .line 2432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/autochips/bluetooth/control/Bluetooth;->whenconnected:J

    .line 2433
    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPMac:Ljava/lang/String;

    iget-object v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_25

    .line 2434
    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPName:Ljava/lang/String;

    iput-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPName:Ljava/lang/String;

    :cond_25
    const-string v2, "Bluetooth"

    .line 2436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addpaired mConnectedHFPName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    mConnectedHFPMac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    .line 2438
    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPName:Ljava/lang/String;

    iget-object v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->addpaired(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.autochips.bluetooth.profilestatechange"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.autochips.bluetooth.hfp_isconnected"

    invoke-virtual {v3, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    .line 2441
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->readLastConnectedMac()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 2442
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->delephonebook()V

    .line 2443
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->delrecord()V

    .line 2444
    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->writeLastConnectedMac(Ljava/lang/String;)V

    .line 2446
    :cond_27
    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->writeAutoConnectedMac(Ljava/lang/String;)V

    .line 2447
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->stopAutoconnect()V

    const/16 v2, 0x14

    .line 2448
    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->notifybar(I)V

    .line 2449
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyAG()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2450
    monitor-exit p0

    return v10

    .line 2451
    :cond_28
    :try_start_7
    aget-byte v5, v2, v3

    const/16 v6, 0x50

    if-ne v5, v6, :cond_2f

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    if-ne v5, v7, :cond_2f

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    if-ne v5, v7, :cond_2f

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    if-ne v5, v14, :cond_2f

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, v2, v5

    if-ne v5, v14, :cond_2f

    add-int/lit8 v5, v3, 0x5

    aget-byte v5, v2, v5

    if-ne v5, v13, :cond_2f

    add-int/lit8 v5, v3, 0x6

    aget-byte v5, v2, v5

    if-ne v5, v15, :cond_2f

    const-string v5, "Bluetooth"

    const-string v6, "handlecmd paaddr"

    .line 2455
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x7

    sub-int v3, v4, v3

    const/4 v4, 0x6

    sub-int/2addr v3, v4

    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v2, "Bluetooth"

    .line 2457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "11mConnectedA2DPMac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    mConnectedHFPMac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    HFPconnectingMac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->HFPconnectingMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->HFPconnectingMac:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->HFPconnectingMac:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_29
    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    :cond_2a
    const-string v2, "Bluetooth"

    const-string v3, "handlecmd dis a2dp"

    .line 2460
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+LA-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2462
    monitor-exit p0

    return v10

    .line 2465
    :cond_2b
    :try_start_8
    iput-object v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPMac:Ljava/lang/String;

    .line 2466
    iput-boolean v10, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedA2DP:Z

    .line 2468
    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 2469
    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPName:Ljava/lang/String;

    iput-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPName:Ljava/lang/String;

    :cond_2c
    const-string v2, "Bluetooth"

    .line 2472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addpaired mConnectedA2DPName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    mConnectedA2DPName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPMac:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 2474
    :cond_2d
    iget-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPName:Ljava/lang/String;

    iget-object v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPMac:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->addpaired(Ljava/lang/String;Ljava/lang/String;)V

    .line 2475
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.autochips.bluetooth.profilestatechange"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    .line 2477
    :cond_2e
    invoke-direct/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyA2DPStatus()V

    .line 2478
    invoke-direct/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyAvrcpStatus()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2479
    monitor-exit p0

    return v10

    .line 2480
    :cond_2f
    :try_start_9
    aget-byte v5, v2, v3

    const/16 v6, 0x50

    if-ne v5, v6, :cond_33

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x4e

    if-ne v5, v6, :cond_33

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    if-ne v5, v7, :cond_33

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    const/16 v6, 0x4d

    if-ne v5, v6, :cond_33

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, v2, v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_33

    add-int/lit8 v5, v3, 0x5

    aget-byte v5, v2, v5

    if-ne v5, v15, :cond_33

    add-int/lit8 v5, v3, 0x6

    aget-byte v5, v2, v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_33

    const-string v5, "Bluetooth"

    const-string v6, "handlecmd pname"

    .line 2484
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x7

    .line 2486
    invoke-static {v2, v3, v4}, Lcom/autochips/bluetooth/control/Bluetooth;->Byte2Unicode([BII)Ljava/lang/String;

    move-result-object v2

    .line 2487
    iget-object v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_30

    .line 2488
    monitor-exit p0

    return v10

    .line 2490
    :cond_30
    :try_start_a
    iput-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPName:Ljava/lang/String;

    iput-object v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPName:Ljava/lang/String;

    .line 2491
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_31

    iget-object v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_31

    .line 2492
    iget-object v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPName:Ljava/lang/String;

    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/autochips/bluetooth/control/Bluetooth;->addpaired(Ljava/lang/String;Ljava/lang/String;)V

    .line 2493
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.autochips.bluetooth.profilestatechange"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.autochips.bluetooth.hfp_isconnected"

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    goto :goto_c

    .line 2494
    :cond_31
    iget-object v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_32

    iget-object v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPMac:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_32

    .line 2495
    iget-object v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPName:Ljava/lang/String;

    iget-object v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPMac:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/autochips/bluetooth/control/Bluetooth;->addpaired(Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.autochips.bluetooth.profilestatechange"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    :cond_32
    :goto_c
    const-string v3, "Bluetooth"

    .line 2498
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "8127 pname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2499
    monitor-exit p0

    return v10

    .line 2500
    :cond_33
    :try_start_b
    aget-byte v5, v2, v3

    const/16 v6, 0x4e

    if-ne v5, v6, :cond_34

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    if-ne v5, v7, :cond_34

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    const/16 v6, 0x4d

    if-ne v5, v6, :cond_34

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_34

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, v2, v5

    if-ne v5, v15, :cond_34

    const-string v5, "Bluetooth"

    const-string v6, "handlecmd name"

    .line 2503
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x5

    sub-int v3, v4, v3

    sub-int/2addr v3, v11

    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v2, "\""

    const-string v3, ""

    .line 2505
    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2506
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.autochips.bluetooth.changelocaldevicename"

    .line 2507
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "device_name"

    .line 2508
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2509
    invoke-virtual {v1, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->handlelocaldevicenamechange(Landroid/content/Intent;)V

    .line 2510
    invoke-virtual {v1, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyui(Landroid/content/Intent;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2511
    monitor-exit p0

    return v10

    .line 2512
    :cond_34
    :try_start_c
    aget-byte v5, v2, v3

    const/16 v6, 0x50

    if-ne v5, v6, :cond_3c

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    if-ne v5, v14, :cond_3c

    const-string v5, "Bluetooth"

    .line 2514
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handlecmd pbap CALLLOG downing:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    iget v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->downCalllogloadnum:I

    add-int/2addr v5, v10

    iput v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->downCalllogloadnum:I

    add-int/lit8 v5, v3, 0x2

    .line 2516
    aget-byte v5, v2, v5

    const-string v6, "Bluetooth"

    .line 2517
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CALLLOG type:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x34

    if-ne v5, v6, :cond_35

    goto :goto_d

    :cond_35
    const/16 v6, 0x35

    if-ne v5, v6, :cond_36

    move v8, v10

    goto :goto_d

    :cond_36
    move v8, v9

    :goto_d
    add-int/2addr v3, v12

    const/4 v5, -0x1

    .line 2527
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autochips/bluetooth/control/Bluetooth;->queryEndSeparateNode([BIII)I

    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-ne v4, v5, :cond_37

    .line 2529
    monitor-exit p0

    return v10

    :cond_37
    add-int/lit8 v6, v5, 0x1

    sub-int/2addr v4, v5

    sub-int/2addr v4, v10

    .line 2532
    :try_start_d
    invoke-direct {v1, v2, v6, v4}, Lcom/autochips/bluetooth/control/Bluetooth;->parseNodeString([BII)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v5, -0x1

    const/4 v7, -0x1

    .line 2534
    invoke-direct {v1, v2, v3, v6, v7}, Lcom/autochips/bluetooth/control/Bluetooth;->queryEndSeparateNode([BIII)I

    move-result v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez v6, :cond_38

    move v6, v3

    :cond_38
    if-ne v5, v6, :cond_39

    .line 2539
    monitor-exit p0

    return v10

    :cond_39
    add-int/lit8 v7, v6, 0x1

    sub-int/2addr v5, v6

    sub-int/2addr v5, v10

    .line 2542
    :try_start_e
    invoke-direct {v1, v2, v7, v5}, Lcom/autochips/bluetooth/control/Bluetooth;->parseNodeString([BII)Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    sub-int/2addr v6, v10

    if-le v6, v3, :cond_3a

    .line 2546
    invoke-static {v2, v3, v6}, Lcom/autochips/bluetooth/control/Bluetooth;->Byte2Unicode([BII)Ljava/lang/String;

    move-result-object v7

    :cond_3a
    const-string v2, "Bluetooth"

    .line 2549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CALLLOG phoneName:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    invoke-static {v4}, Lcom/autochips/bluetooth/util/StaticUtil;->getCalllogTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v7, v5, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->addrecord(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Bluetooth"

    .line 2551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "8127 addcalllog phoneNumber="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " date="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Lcom/autochips/bluetooth/util/StaticUtil;->getCalllogTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  tempType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   downCalllogloadnum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->downCalllogloadnum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    iget v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->downCalllogloadnum:I

    if-lez v2, :cond_3b

    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_3b

    .line 2553
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_onestep"

    .line 2554
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_folder"

    const/4 v4, 0x6

    .line 2555
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_onestep_count"

    .line 2557
    iget v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->downCalllogloadnum:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2559
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 2561
    :cond_3b
    monitor-exit p0

    return v10

    .line 2562
    :cond_3c
    :try_start_f
    aget-byte v5, v2, v3

    const/16 v6, 0x50

    if-ne v5, v6, :cond_40

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x42

    if-ne v5, v6, :cond_40

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    if-ne v5, v15, :cond_40

    const-string v5, "Bluetooth"

    const-string v6, "handlecmd pbap downing"

    .line 2565
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    iget v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->downloadnum:I

    add-int/2addr v5, v10

    iput v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->downloadnum:I

    add-int/lit8 v5, v3, 0x3

    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x2c

    .line 2568
    invoke-direct {v1, v2, v5, v6, v7}, Lcom/autochips/bluetooth/control/Bluetooth;->queryStartSeparateNode([BIIC)I

    move-result v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-nez v6, :cond_3d

    .line 2570
    monitor-exit p0

    return v10

    :cond_3d
    sub-int v3, v6, v3

    sub-int/2addr v3, v12

    .line 2573
    :try_start_10
    invoke-direct {v1, v2, v5, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->parseNodeString([BII)Ljava/lang/String;

    move-result-object v3

    const-string v5, " "

    if-ge v6, v4, :cond_3e

    add-int/2addr v6, v10

    .line 2577
    invoke-static {v2, v6, v4}, Lcom/autochips/bluetooth/control/Bluetooth;->Byte2Unicode([BII)Ljava/lang/String;

    move-result-object v5

    .line 2579
    :cond_3e
    invoke-virtual {v1, v5, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->addphonebook(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Bluetooth"

    .line 2581
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "8127 addphonebook, phoneNumber="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   downloadnum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->downloadnum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Bluetooth"

    .line 2582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "8127 addphonebook, phoneName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    iget v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->downloadnum:I

    if-lez v2, :cond_3f

    rem-int/lit8 v2, v2, 0xa

    if-nez v2, :cond_3f

    .line 2585
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_onestep"

    .line 2586
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_folder"

    .line 2587
    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_onestep_count"

    .line 2588
    iget v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->downloadnum:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2589
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 2591
    :cond_3f
    monitor-exit p0

    return v10

    .line 2592
    :cond_40
    :try_start_11
    aget-byte v5, v2, v3

    const/16 v6, 0x50

    if-ne v5, v6, :cond_42

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x42

    if-ne v5, v6, :cond_42

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    const/16 v6, 0x53

    if-ne v5, v6, :cond_42

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    const/16 v6, 0x54

    if-ne v5, v6, :cond_42

    const-string v2, "Bluetooth"

    const-string v3, "handlecmd pbap start"

    .line 2594
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    iget-boolean v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->isPhCallLogdownloading:Z

    if-eqz v2, :cond_41

    .line 2596
    iput v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->downCalllogloadnum:I

    .line 2597
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->delrecord()V

    goto :goto_e

    .line 2599
    :cond_41
    iput v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->downloadnum:I

    .line 2600
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->delephonebook()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 2602
    :goto_e
    monitor-exit p0

    return v10

    .line 2603
    :cond_42
    :try_start_12
    aget-byte v5, v2, v3

    const/16 v6, 0x50

    if-ne v5, v6, :cond_44

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x42

    if-ne v5, v6, :cond_44

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_44

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    const/16 v6, 0x4e

    if-ne v5, v6, :cond_44

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, v2, v5

    if-ne v5, v14, :cond_44

    const-string v2, "Bluetooth"

    const-string v3, "handlecmd pbap end"

    .line 2606
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2607
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.action.download_finish"

    .line 2608
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2609
    iget-boolean v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->isPhCallLogdownloading:Z

    if-eqz v3, :cond_43

    .line 2610
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->isPhCallLogdownloading:Z

    const-string v3, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_folder"

    const/4 v4, 0x6

    .line 2611
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2613
    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyui(Landroid/content/Intent;)V

    .line 2614
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    goto :goto_f

    :cond_43
    const-string v3, "com.autochips.bluetooth.PbSyncManager.PbSyncManagerService.extra.pbsync_folder"

    .line 2616
    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2618
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->getConnectedHFPAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/autochips/bluetooth/control/Bluetooth;->writeLastDownLoadMac(Ljava/lang/String;)V

    .line 2620
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    .line 2621
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->refreshsystemcontact()V

    .line 2622
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->ispbdownloading:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 2624
    :goto_f
    monitor-exit p0

    return v10

    .line 2625
    :cond_44
    :try_start_13
    aget-byte v5, v2, v3

    if-eq v5, v14, :cond_45

    aget-byte v5, v2, v3

    const/16 v6, 0x43

    if-ne v5, v6, :cond_46

    :cond_45
    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x4c

    if-ne v5, v6, :cond_46

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    const/16 v6, 0x49

    if-ne v5, v6, :cond_46

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    if-ne v5, v14, :cond_46

    const-string v5, "Bluetooth"

    const-string v6, "callback phone dclid"

    .line 2628
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x4

    sub-int v3, v4, v3

    sub-int/2addr v3, v12

    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V

    .line 2630
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.autochips.bluetooth.callnameandnumchange"

    .line 2631
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NUMBER"

    .line 2632
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.hf.extra.callState"

    .line 2633
    iget v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2634
    iput-object v5, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    .line 2635
    invoke-virtual {v1, v5}, Lcom/autochips/bluetooth/control/Bluetooth;->getnamefromcallnum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/autochips/bluetooth/control/Bluetooth;->callingname:Ljava/lang/String;

    const-string v4, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_NEW_PHONE_NAME"

    .line 2636
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2638
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 2640
    monitor-exit p0

    return v10

    .line 2641
    :cond_46
    :try_start_14
    aget-byte v5, v2, v3

    if-ne v5, v7, :cond_47

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x50

    if-ne v5, v6, :cond_47

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    if-ne v5, v6, :cond_47

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    if-ne v5, v15, :cond_47

    const-string v5, "Bluetooth"

    const-string v6, "handlecmd app"

    .line 2643
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x4

    sub-int v3, v4, v3

    sub-int/2addr v3, v12

    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v2, "persist.sys.bt_module_ver"

    .line 2645
    # invoke-static {v2, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 2646
    monitor-exit p0

    return v10

    .line 2647
    :cond_47
    :try_start_15
    aget-byte v5, v2, v3

    if-ne v5, v7, :cond_4a

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    if-ne v5, v14, :cond_4a

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    if-ne v5, v14, :cond_4a

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    if-ne v5, v13, :cond_4a

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, v2, v5

    if-ne v5, v15, :cond_4a

    const-string v5, "Bluetooth"

    const-string v6, "handlecmd addr "

    .line 2650
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x5

    sub-int v3, v4, v3

    sub-int/2addr v3, v11

    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V

    .line 2652
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    const/16 v3, 0xc

    if-eq v2, v3, :cond_48

    .line 2653
    monitor-exit p0

    return v10

    .line 2655
    :cond_48
    :try_start_16
    invoke-virtual {v1, v5}, Lcom/autochips/bluetooth/control/Bluetooth;->tranMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2656
    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->writeAddr(Ljava/lang/String;)V

    const/16 v4, 0x8

    .line 2657
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->ReadPreDevicename()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2661
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->readCustomDevicename()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bluetooth"

    .line 2662
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDeviceName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 2664
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->setCustomDeviceName()V

    goto :goto_10

    .line 2666
    :cond_49
    invoke-direct {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->setDeviceName(Ljava/lang/String;)V

    .line 2668
    :goto_10
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.changelocaldevicename"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyui(Landroid/content/Intent;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 2669
    monitor-exit p0

    return v10

    .line 2670
    :cond_4a
    :try_start_17
    aget-byte v5, v2, v3

    const/16 v6, 0x4d

    if-ne v5, v6, :cond_4b

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x55

    if-ne v5, v6, :cond_4b

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    const/16 v6, 0x54

    if-ne v5, v6, :cond_4b

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_4b

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, v2, v5

    if-ne v5, v15, :cond_4b

    const-string v5, "Bluetooth"

    const-string v6, "handlecmd mute"

    .line 2673
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x5

    sub-int v3, v4, v3

    sub-int/2addr v3, v11

    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v2, "1"

    .line 2675
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->ismicmute:Z

    const-string v2, "Bluetooth"

    .line 2676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ismicmute:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->ismicmute:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.mutestatechange"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyui(Landroid/content/Intent;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 2678
    monitor-exit p0

    return v10

    .line 2679
    :cond_4b
    :try_start_18
    aget-byte v5, v2, v3

    const/16 v6, 0x53

    if-ne v5, v6, :cond_4c

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x43

    if-ne v5, v6, :cond_4c

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    const/16 v6, 0x4f

    if-ne v5, v6, :cond_4c

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    if-ne v5, v15, :cond_4c

    const-string v5, "Bluetooth"

    const-string v6, "handlecmd sco"

    .line 2681
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x4

    sub-int v3, v4, v3

    sub-int/2addr v3, v12

    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v2, "0"

    .line 2683
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->isAG:Z

    .line 2684
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.autochips.bluetooth.agstatechange"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyui(Landroid/content/Intent;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 2685
    monitor-exit p0

    return v10

    .line 2686
    :cond_4c
    :try_start_19
    aget-byte v5, v2, v3

    const/16 v6, 0x49

    if-ne v5, v6, :cond_51

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v11, 0x4e

    if-ne v5, v11, :cond_51

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    if-ne v5, v6, :cond_51

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    const/16 v6, 0x54

    if-ne v5, v6, :cond_51

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, v2, v5

    const/16 v6, 0x4f

    if-ne v5, v6, :cond_51

    add-int/lit8 v5, v3, 0x5

    aget-byte v5, v2, v5

    const/16 v6, 0x4b

    if-ne v5, v6, :cond_51

    const-string v2, "Bluetooth"

    const-string v3, "handlecmd initok"

    .line 2689
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->issearching:Z

    .line 2692
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.autochips.bluetooth.DISCOVERY_FINISHED"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    .line 2693
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->startheartbeat()V

    .line 2694
    iget-boolean v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->connectforpoweroffevent:Z

    if-eqz v2, :cond_4d

    .line 2695
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->connectforpoweroffevent:Z

    .line 2698
    :cond_4d
    sget-boolean v2, Lcom/autochips/bluetooth/control/Bluetooth;->bfirstsetdevicename:Z

    if-nez v2, :cond_4e

    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 2699
    :cond_4e
    sput-boolean v8, Lcom/autochips/bluetooth/control/Bluetooth;->bfirstsetdevicename:Z

    const-string v2, "AT+ADDR\r\n"

    .line 2700
    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    const-string v2, "AT+APP\r\n"

    .line 2701
    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    .line 2702
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->getDevicePin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->setDevicePin(Ljava/lang/String;)V

    .line 2704
    :cond_4f
    sget-boolean v2, Lcom/autochips/bluetooth/control/Bluetooth;->bfirstsetdb:Z

    if-eqz v2, :cond_50

    .line 2705
    sput-boolean v8, Lcom/autochips/bluetooth/control/Bluetooth;->bfirstsetdb:Z

    const-string v2, "AT+VS=15,15\r\n"

    .line 2706
    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 2708
    :cond_50
    monitor-exit p0

    return v10

    .line 2709
    :cond_51
    :try_start_1a
    aget-byte v5, v2, v3

    if-ne v5, v7, :cond_52

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x54

    if-ne v5, v6, :cond_52

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_52

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    if-ne v5, v13, :cond_52

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, v2, v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_52

    add-int/lit8 v5, v3, 0x5

    aget-byte v5, v2, v5

    const/16 v6, 0x43

    if-ne v5, v6, :cond_52

    add-int/lit8 v5, v3, 0x6

    aget-byte v5, v2, v5

    const/16 v6, 0x4f

    if-ne v5, v6, :cond_52

    add-int/lit8 v5, v3, 0x7

    aget-byte v5, v2, v5

    const/16 v6, 0x4e

    if-ne v5, v6, :cond_52

    add-int/lit8 v5, v3, 0x8

    aget-byte v5, v2, v5

    if-ne v5, v6, :cond_52

    add-int/lit8 v5, v3, 0x9

    aget-byte v5, v2, v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_52

    add-int/lit8 v5, v3, 0xa

    aget-byte v5, v2, v5

    const/16 v6, 0x43

    if-ne v5, v6, :cond_52

    add-int/lit8 v5, v3, 0xb

    aget-byte v5, v2, v5

    const/16 v6, 0x54

    if-ne v5, v6, :cond_52

    const-string v2, "Bluetooth"

    const-string v3, "handlecmd at+reconnct"

    .line 2715
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    invoke-virtual {v1, v10}, Lcom/autochips/bluetooth/control/Bluetooth;->startautoconnect(Z)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 2717
    monitor-exit p0

    return v10

    .line 2718
    :cond_52
    :try_start_1b
    aget-byte v5, v2, v3

    if-ne v5, v7, :cond_53

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x43

    if-ne v5, v6, :cond_53

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    const/16 v6, 0x4b

    if-ne v5, v6, :cond_53

    const-string v2, "Bluetooth"

    const-string v3, "handlecmd ack"

    .line 2720
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->startresetbt()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 2722
    monitor-exit p0

    return v10

    .line 2723
    :cond_53
    :try_start_1c
    aget-byte v5, v2, v3

    if-ne v5, v7, :cond_54

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x56

    if-ne v5, v6, :cond_54

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    if-ne v5, v13, :cond_54

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    const/16 v6, 0x43

    if-ne v5, v6, :cond_54

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, v2, v5

    const/16 v6, 0x50

    if-ne v5, v6, :cond_54

    add-int/lit8 v5, v3, 0x5

    aget-byte v5, v2, v5

    if-ne v5, v15, :cond_54

    const-string v5, "Bluetooth"

    const-string v6, "handlecmd avrcp"

    .line 2726
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v3, 0x6

    sub-int v3, v4, v3

    const/4 v4, 0x5

    sub-int/2addr v3, v4

    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v2, "2"

    .line 2728
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedAvrcp:Z

    .line 2729
    invoke-direct/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyAvrcpStatus()V

    const-string v2, "Bluetooth"

    .line 2730
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mbConnectedAvrcp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedAvrcp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.autochips.bluetooth.profilestatechange"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 2733
    monitor-exit p0

    return v10

    .line 2734
    :cond_54
    :try_start_1d
    aget-byte v5, v2, v3

    const/16 v6, 0x55

    if-ne v5, v6, :cond_55

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x50

    if-ne v5, v6, :cond_55

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    if-ne v5, v14, :cond_55

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    if-ne v5, v7, :cond_55

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, v2, v5

    const/16 v6, 0x54

    if-ne v5, v6, :cond_55

    add-int/lit8 v5, v3, 0x5

    aget-byte v5, v2, v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_55

    const-string v2, "Bluetooth"

    const-string v3, "handlecmd update"

    .line 2737
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    sput-boolean v10, Lcom/autochips/bluetooth/control/Bluetooth;->bfirstsetdevicename:Z

    sput-boolean v10, Lcom/autochips/bluetooth/control/Bluetooth;->bfirstsetdb:Z

    .line 2739
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.autochips.bluetooth.BT_UPDATED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyui(Landroid/content/Intent;)V

    .line 2740
    invoke-virtual/range {p0 .. p0}, Lcom/autochips/bluetooth/control/Bluetooth;->startresetbt()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 2741
    monitor-exit p0

    return v10

    .line 2742
    :cond_55
    :try_start_1e
    aget-byte v5, v2, v3

    const/16 v6, 0x49

    if-ne v5, v6, :cond_56

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x4e

    if-ne v5, v6, :cond_56

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    const/16 v6, 0x51

    if-ne v5, v6, :cond_56

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_56

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, v2, v5

    const/16 v6, 0x4e

    if-ne v5, v6, :cond_56

    add-int/lit8 v5, v3, 0x5

    aget-byte v5, v2, v5

    if-ne v5, v14, :cond_56

    const-string v2, "Bluetooth"

    const-string v3, "handlecmd inqend"

    .line 2745
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    iput-boolean v8, v1, Lcom/autochips/bluetooth/control/Bluetooth;->issearching:Z

    .line 2748
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.autochips.bluetooth.DISCOVERY_FINISHED"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 2749
    monitor-exit p0

    return v10

    .line 2750
    :cond_56
    :try_start_1f
    aget-byte v5, v2, v3

    const/16 v6, 0x49

    if-ne v5, v6, :cond_57

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x4e

    if-ne v5, v6, :cond_57

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    const/16 v6, 0x51

    if-ne v5, v6, :cond_57

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    const/16 v6, 0x53

    if-ne v5, v6, :cond_57

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, v2, v5

    const/16 v6, 0x54

    if-ne v5, v6, :cond_57

    const-string v2, "Bluetooth"

    const-string v3, "handlecmd inqst"

    .line 2753
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.autochips.bluetooth.DISCOVERY_STARTED"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 2756
    monitor-exit p0

    return v10

    .line 2757
    :cond_57
    :try_start_20
    aget-byte v5, v2, v3

    const/16 v6, 0x49

    if-ne v5, v6, :cond_59

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v2, v5

    const/16 v6, 0x4e

    if-ne v5, v6, :cond_59

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v2, v5

    const/16 v6, 0x51

    if-ne v5, v6, :cond_59

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v2, v5

    const/16 v6, 0x49

    if-ne v5, v6, :cond_59

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, v2, v5

    const/16 v6, 0x4e

    if-ne v5, v6, :cond_59

    add-int/lit8 v5, v3, 0x5

    aget-byte v5, v2, v5

    const/16 v6, 0x46

    if-ne v5, v6, :cond_59

    add-int/lit8 v5, v3, 0x6

    aget-byte v5, v2, v5

    const/16 v6, 0x4f

    if-ne v5, v6, :cond_59

    add-int/lit8 v5, v3, 0x7

    aget-byte v6, v2, v5

    if-ne v6, v15, :cond_59

    const-string v6, "Bluetooth"

    const-string v7, "handlecmd INQINFO"

    .line 2761
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x2c

    .line 2763
    invoke-direct {v1, v2, v5, v4, v6}, Lcom/autochips/bluetooth/control/Bluetooth;->queryEndSeparateNode([BIIC)I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    sub-int/2addr v4, v5

    .line 2765
    invoke-direct {v1, v2, v6, v4}, Lcom/autochips/bluetooth/control/Bluetooth;->parseNodeString([BII)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x8

    if-le v5, v3, :cond_58

    sub-int/2addr v5, v10

    .line 2770
    invoke-static {v2, v3, v5}, Lcom/autochips/bluetooth/control/Bluetooth;->Byte2Unicode([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    :cond_58
    move-object v2, v4

    .line 2773
    :goto_11
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.autochips.bluetooth.FOUND"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.bluetooth.device.extra.DEVICE"

    new-instance v7, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-direct {v7}, Lcom/autochips/bluetooth/control/PBRecord;-><init>()V

    .line 2774
    invoke-virtual {v7, v4}, Lcom/autochips/bluetooth/control/PBRecord;->setNumber(Ljava/lang/String;)Lcom/autochips/bluetooth/control/PBRecord;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/autochips/bluetooth/control/PBRecord;->setName(Ljava/lang/String;)Lcom/autochips/bluetooth/control/PBRecord;

    move-result-object v7

    .line 2773
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    const-string v3, "Bluetooth"

    .line 2775
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "8127 search deviceName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " deviceMac ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 2776
    monitor-exit p0

    return v10

    .line 2777
    :cond_59
    :try_start_21
    aget-byte v4, v2, v3

    const/16 v5, 0x54

    if-ne v4, v5, :cond_5a

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_5a

    .line 2779
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.autochips.bluetooth.BluetoothHfService.action.SCO_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.autochips.bluetooth.BluetoothHfService.extra.EXTRA_NEW_SCO_STATE"

    .line 2780
    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2781
    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyui(Landroid/content/Intent;)V

    goto :goto_12

    .line 2782
    :cond_5a
    aget-byte v4, v2, v3

    const/16 v5, 0x54

    if-ne v4, v5, :cond_5b

    add-int/2addr v3, v10

    aget-byte v2, v2, v3

    const/16 v3, 0x30

    if-ne v2, v3, :cond_5b

    .line 2784
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.autochips.bluetooth.BluetoothHfService.action.SCO_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.autochips.bluetooth.BluetoothHfService.extra.EXTRA_NEW_SCO_STATE"

    .line 2785
    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2786
    invoke-virtual {v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyui(Landroid/content/Intent;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 2788
    :cond_5b
    :goto_12
    monitor-exit p0

    return v8

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handlelocaldevicenamechange(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "device_name"

    .line 1787
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1788
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->setDeviceName2systemproperties(Ljava/lang/String;)V

    return-void
.end method

.method public handlesystemtimechange()V
    .locals 8

    .line 1747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/autochips/bluetooth/control/Bluetooth;->whenconnected:J

    .line 1748
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_resetbt:Ljava/lang/Object;

    monitor-enter v0

    .line 1760
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mTimerAutoconnect:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 1761
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 1762
    new-instance v1, Lcom/autochips/bluetooth/control/Bluetooth$7;

    invoke-direct {v1, p0}, Lcom/autochips/bluetooth/control/Bluetooth$7;-><init>(Lcom/autochips/bluetooth/control/Bluetooth;)V

    iput-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mTimerAutoconnect:Ljava/util/TimerTask;

    .line 1781
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iget-object v3, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mTimerAutoconnect:Ljava/util/TimerTask;

    iget v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->nDelay:I

    int-to-long v4, v1

    iget v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->nConnectSpace:I

    int-to-long v6, v1

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1783
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hangupCurAcceptWait()V
    .locals 1

    const-string v0, "AT+CJ\r\n"

    .line 1353
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public initcallstate()V
    .locals 2

    const-string v0, "persist.sys.btphone_startup"

    const-string v1, "false"

    .line 1469
    # invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initisspeakingfirst()V
    .locals 1

    const/4 v0, 0x1

    .line 1274
    iput-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isspeakingfirst:Z

    return-void
.end method

.method public installBt()V
    .locals 2

    const-string v0, "Bluetooth"

    const-string v1, "installBt"

    .line 393
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AT+CZ1\r\n"

    .line 394
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public isA2DPconnected()Z
    .locals 1

    .line 566
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedA2DP:Z

    return v0
.end method

.method public isAG()Z
    .locals 1

    .line 480
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isAG:Z

    return v0
.end method

.method public isAVRCPconnected()Z
    .locals 1

    .line 570
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedAvrcp:Z

    return v0
.end method

.method public isAutoconnect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isBluetoothBond(Ljava/lang/String;)Z
    .locals 5

    .line 2888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2889
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->GetPairedList(Ljava/util/List;)Z

    .line 2890
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 2891
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2892
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {v4}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2896
    :cond_0
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->isConnected()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 2897
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->isHFPconnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->getConnectedHFPAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2898
    :cond_1
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->isA2DPconnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->getConnectedA2DPAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 2904
    :cond_2
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->isHFPconnected()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 2906
    :cond_3
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->isA2DPconnected()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 2899
    :cond_4
    :goto_1
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    :goto_2
    move v2, v3

    .line 2909
    :cond_5
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth;->getconnectingmac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    return v3
.end method

.method public isConnected()Z
    .locals 1

    .line 578
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedHFP:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedA2DP:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isHFPconnected()Z
    .locals 1

    .line 574
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedHFP:Z

    return v0
.end method

.method public isMicMute()Z
    .locals 1

    .line 476
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->ismicmute:Z

    return v0
.end method

.method public isSearching()Z
    .locals 1

    .line 464
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->issearching:Z

    return v0
.end method

.method public isautoanswer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isbtopened()Z
    .locals 2

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isbtopened btState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->btState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->btState:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public iscallidle()Z
    .locals 1

    .line 1290
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->isoutgoing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->isincoming()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->isspeaking()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iscompletecall()Z
    .locals 1

    .line 1278
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->iscompletecall:Z

    return v0
.end method

.method public isdownloadidle()Z
    .locals 1

    .line 1230
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->ispbdownloading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isPhCallLogdownloading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isincoming()Z
    .locals 2

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isincoming:mcallstatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    iget v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ismusicplaying()Z
    .locals 1

    .line 488
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->ismusicplaying:Z

    return v0
.end method

.method public isoutgoing()Z
    .locals 2

    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isoutgoing:mcallstatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isphonebookexist()Z
    .locals 4

    .line 835
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_phonebook:Ljava/lang/Object;

    monitor-enter v0

    .line 836
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/autochips/bluetooth/control/DBManager;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/bt_phonebook.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 837
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 838
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isspeaking()Z
    .locals 2

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isspeaking:mcallstatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mcallstatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyAG()V
    .locals 3

    .line 2979
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autochiips.bluetooth.profile.action.AG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2980
    iget v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->signal:I

    const-string v2, "com.autochiips.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2981
    iget v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->battery:I

    const-string v2, "com.autochiips.bluetooth.headsetclient.extra.BATTERY_LEVEL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2982
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    const-string v2, "com.autochips.bluetooth.hf.BluetoothHfAtHandler.extra.EXTRA_MAC"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2983
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    return-void
.end method

.method public notifyUpdateCallHistory()V
    .locals 6

    .line 1682
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->iscompletecall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1683
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->initisspeakingfirst()V

    return-void

    .line 1686
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->initisspeakingfirst()V

    .line 1687
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->m_callStartTime:Landroid/text/format/Time;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->callingname:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1688
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 1692
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->callingname:Ljava/lang/String;

    .line 1693
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    .line 1695
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, " "

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->callingname:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1696
    :cond_2
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->callingnum:Ljava/lang/String;

    .line 1700
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/autochips/bluetooth/control/Bluetooth;->m_callStartTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->year:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/autochips/bluetooth/control/Bluetooth;->m_callStartTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, 0x1

    .line 1702
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/autochips/bluetooth/control/Bluetooth;->m_callStartTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    .line 1704
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1707
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/autochips/bluetooth/control/Bluetooth;->m_callStartTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->hour:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/autochips/bluetooth/control/Bluetooth;->m_callStartTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->minute:I

    .line 1709
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/autochips/bluetooth/control/Bluetooth;->m_callStartTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->second:I

    .line 1711
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1713
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->getlastcalltype()I

    move-result v3

    .line 1714
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/autochips/bluetooth/control/Bluetooth;->addrecord(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyUpdateCallHistory call_time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->call_type_intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public declared-synchronized notifybar(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Bluetooth"

    .line 2113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifybar state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "    btState:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->btState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "  preIsBtOpen:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->preBtState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "   preNotifyBtState:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->preNotifyBtState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->preNotifyBtState:I

    iget v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->btState:I

    if-eq p1, v0, :cond_0

    .line 2115
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.ckx.bluetooth.action.STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 2116
    iget v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->btState:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    .line 2117
    iget v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->preBtState:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2118
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    .line 2119
    iget p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->btState:I

    iput p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->preNotifyBtState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2121
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public notifyui(Landroid/content/Intent;)V
    .locals 1

    .line 1654
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1655
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onReceive(I[B)I
    .locals 9

    const/4 v0, 0x0

    const-string v1, ""

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 1953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1954
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1956
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start 8127 portdata receive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Bluetooth"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "8127 portdata receive:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/autochips/bluetooth/control/BtLog;->Log(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 1959
    sget-object v2, Lcom/autochips/bluetooth/control/Bluetooth;->remaindata:[B

    sget v3, Lcom/autochips/bluetooth/control/Bluetooth;->remaindatalen:I

    add-int/2addr v3, v1

    aget-byte v4, p2, v1

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1961
    :cond_1
    sget p2, Lcom/autochips/bluetooth/control/Bluetooth;->remaindatalen:I

    add-int/2addr p2, p1

    sput p2, Lcom/autochips/bluetooth/control/Bluetooth;->remaindatalen:I

    const/4 p1, 0x5

    if-ge p2, p1, :cond_2

    return v0

    .line 1967
    :cond_2
    sget p1, Lcom/autochips/bluetooth/control/Bluetooth;->remaindatalen:I

    move p2, v0

    :goto_2
    const/16 v1, 0xa

    const/16 v2, 0xd

    const/4 v3, 0x1

    if-ge p2, p1, :cond_4

    .line 1971
    sget-object v4, Lcom/autochips/bluetooth/control/Bluetooth;->remaindata:[B

    aget-byte v5, v4, p2

    if-ne v5, v2, :cond_3

    add-int/lit8 v5, p1, -0x1

    if-ge p2, v5, :cond_3

    add-int/lit8 v5, p2, 0x1

    aget-byte v4, v4, v5

    if-ne v4, v1, :cond_3

    add-int/lit8 p2, p2, 0x2

    move v4, v3

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    move p2, v0

    move v4, p2

    :goto_3
    if-nez v4, :cond_5

    .line 1978
    sput v0, Lcom/autochips/bluetooth/control/Bluetooth;->remaindatalen:I

    return v0

    :cond_5
    move v4, p2

    :goto_4
    if-ge v4, p1, :cond_9

    .line 1986
    sget-object v5, Lcom/autochips/bluetooth/control/Bluetooth;->remaindata:[B

    aget-byte v6, v5, v4

    if-ne v6, v1, :cond_6

    add-int/lit8 v6, p1, -0x1

    if-ge v4, v6, :cond_6

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v5, v6

    if-ne v6, v2, :cond_6

    add-int/lit8 v4, v4, -0x1

    .line 1988
    invoke-virtual {p0, v5, p2, v4}, Lcom/autochips/bluetooth/control/Bluetooth;->checkcmd([BII)Z

    move-result p1

    goto :goto_5

    .line 1995
    :cond_6
    aget-byte v6, v5, v4

    if-ne v6, v2, :cond_8

    add-int/lit8 v6, p1, -0x1

    if-ge v4, v6, :cond_8

    add-int/lit8 v7, v4, 0x1

    aget-byte v8, v5, v7

    if-ne v8, v1, :cond_8

    .line 1996
    aget-byte v8, v5, v4

    if-ne v8, v2, :cond_7

    if-ge v4, v6, :cond_7

    aget-byte v6, v5, v7

    if-ne v6, v1, :cond_7

    add-int/lit8 v6, p1, -0x2

    if-ge v4, v6, :cond_7

    add-int/lit8 v6, v4, 0x2

    aget-byte v5, v5, v6

    if-ne v5, v2, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v4, v4, -0x1

    move p1, v0

    :goto_5
    move v2, v3

    goto :goto_7

    :cond_8
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    move v4, p2

    move p1, v0

    move v2, p1

    :goto_7
    if-eqz v2, :cond_b

    if-eqz p1, :cond_a

    .line 2007
    sget-object p1, Lcom/autochips/bluetooth/control/Bluetooth;->remaindata:[B

    add-int/lit8 v2, p2, 0x1

    sub-int p2, v4, p2

    sub-int/2addr p2, v3

    invoke-virtual {p0, p1, v2, p2}, Lcom/autochips/bluetooth/control/Bluetooth;->showdata([BII)V

    .line 2008
    sget-object p1, Lcom/autochips/bluetooth/control/Bluetooth;->remaindata:[B

    add-int/lit8 p2, v4, -0x1

    invoke-virtual {p0, p1, v2, p2}, Lcom/autochips/bluetooth/control/Bluetooth;->handlecmd([BII)Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->btState:I

    const/16 p2, 0xc

    if-ne p1, p2, :cond_a

    .line 2010
    invoke-virtual {p0, v1}, Lcom/autochips/bluetooth/control/Bluetooth;->notifybar(I)V

    .line 2013
    :cond_a
    sget-object p1, Lcom/autochips/bluetooth/control/Bluetooth;->remaindata:[B

    add-int/lit8 v4, v4, 0x3

    sget p2, Lcom/autochips/bluetooth/control/Bluetooth;->remaindatalen:I

    invoke-virtual {p0, p1, v4, p2}, Lcom/autochips/bluetooth/control/Bluetooth;->resortdata([BII)I

    move-result p1

    sput p1, Lcom/autochips/bluetooth/control/Bluetooth;->remaindatalen:I

    const/4 p2, 0x7

    if-ge p1, p2, :cond_2

    :cond_b
    return v0
.end method

.method public openbt()V
    .locals 2

    const-string v0, "Bluetooth"

    const-string v1, "openbt"

    .line 401
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    .line 402
    iput v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->btState:I

    .line 403
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifybar(I)V

    const-string v0, "AT+P1\r\n"

    .line 405
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 406
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->writeLastBtState(Z)V

    return-void
.end method

.method public queryContacts()V
    .locals 1

    .line 796
    new-instance v0, Lcom/autochips/bluetooth/control/Bluetooth$5;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/control/Bluetooth$5;-><init>(Lcom/autochips/bluetooth/control/Bluetooth;)V

    .line 800
    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth$5;->start()V

    return-void
.end method

.method public readAutoConnectedMac()Ljava/lang/String;
    .locals 4

    .line 1555
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    const-string v3, "BT_memory"

    .line 1558
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "BT_AutoConnectedMac"

    .line 1559
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readCustomDevicename()Ljava/lang/String;
    .locals 4

    .line 1513
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    const-string v3, "BT_memory"

    .line 1517
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "BT_custom_devicename"

    .line 1518
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1519
    invoke-static {}, Lcom/carocean/navicar/util/ZHTDOEMManager;->isMotorcycle()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "persist.sys.bt_device_name_oem"

    .line 1520
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public readDeviceName()Ljava/lang/String;
    .locals 4

    .line 1623
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    const-string v1, ""

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const-string v3, "BT_memory"

    .line 1624
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "DeviceName"

    .line 1625
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1627
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "persist.sys.bt_device_name_oem"

    .line 1628
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1629
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 1630
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xc

    add-int/lit8 v3, v2, 0x8

    .line 1631
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public readDevicePin()Ljava/lang/String;
    .locals 3

    .line 1606
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "BT_memory"

    .line 1607
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "DevicePin"

    const-string v2, "0000"

    .line 1608
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public readLastBtState()Z
    .locals 4

    .line 1584
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    const-string v3, "BT_memory"

    .line 1587
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "BT_Isopen"

    .line 1588
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public readLastConnectedMac()Ljava/lang/String;
    .locals 4

    .line 1538
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    const-string v3, "BT_memory"

    .line 1541
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "BT_LastConnectedMac"

    .line 1542
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLastDownLoadMac()Ljava/lang/String;
    .locals 4

    .line 1646
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    const-string v3, "BT_memory"

    .line 1649
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "BT_LastDownLoadMac"

    .line 1650
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recall()V
    .locals 2

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autochips/bluetooth/control/Bluetooth;->mlastcallnum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public refreshrecord(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autochips/bluetooth/control/PBRecord;",
            ">;)V"
        }
    .end annotation

    .line 1090
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_record:Ljava/lang/Object;

    monitor-enter v0

    .line 1091
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/autochips/bluetooth/control/DBManager;->DB_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/bt_record.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1092
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1094
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1098
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1102
    :goto_0
    :try_start_3
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    .line 1103
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1104
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {v3}, Lcom/autochips/bluetooth/control/PBRecord;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1105
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {v4}, Lcom/autochips/bluetooth/control/PBRecord;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1106
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {v5}, Lcom/autochips/bluetooth/control/PBRecord;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 1107
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autochips/bluetooth/control/PBRecord;

    invoke-virtual {v6}, Lcom/autochips/bluetooth/control/PBRecord;->getCalltime()Ljava/lang/String;

    move-result-object v6

    .line 1108
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "|"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1109
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1112
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1115
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1117
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public refreshsystemcontact()V
    .locals 1

    .line 806
    new-instance v0, Lcom/autochips/bluetooth/control/Bluetooth$6;

    invoke-direct {v0, p0}, Lcom/autochips/bluetooth/control/Bluetooth$6;-><init>(Lcom/autochips/bluetooth/control/Bluetooth;)V

    .line 821
    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/Bluetooth$6;->start()V

    return-void
.end method

.method public resetbtmodule()V
    .locals 2

    const-string v0, "Bluetooth"

    const-string v1, "resetbtmodule"

    .line 413
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->stopheartbeat()V

    .line 415
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->closebt()V

    const-wide/16 v0, 0x1f4

    .line 417
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 422
    :goto_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->openbt()V

    return-void
.end method

.method public resetconnecting(Z)V
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_resetconnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_resetconnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    if-nez p1, :cond_1

    .line 616
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.RESETCONNECTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->HFPconnectingMac:Ljava/lang/String;

    const-string v2, "MAC_RESETCONNECTING"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    :cond_1
    const-string p1, ""

    .line 618
    iput-object p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->HFPconnectingMac:Ljava/lang/String;

    .line 619
    invoke-static {}, Lcom/autochips/bluetooth/event/BTEventManager;->getInstance()Lcom/autochips/bluetooth/event/BTEventManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autochips.bluetooth.profilestatechange"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/autochips/bluetooth/event/BTEventManager;->notifyBtStatus(Landroid/content/Intent;)V

    return-void
.end method

.method public resortdata([BII)I
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 2043
    aget-byte v0, p1, p2

    aput-byte v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public sendAvrcpCommand(I)V
    .locals 3

    const-string v0, "AT+PL\r\n"

    const-string v1, "AT+PA\r\n"

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 1422
    invoke-direct {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyA2DPStatus()V

    .line 1423
    invoke-direct {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyAvrcpStatus()V

    goto :goto_1

    .line 1419
    :cond_0
    invoke-virtual {p0, v1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "AT+FWD\r\n"

    .line 1416
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "AT+BWD\r\n"

    .line 1413
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    goto :goto_1

    .line 1407
    :cond_3
    invoke-virtual {p0, v1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    goto :goto_1

    .line 1410
    :cond_4
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    goto :goto_1

    .line 1399
    :cond_5
    iget-boolean p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->ismusicplaying:Z

    if-eqz p1, :cond_6

    .line 1400
    invoke-virtual {p0, v1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-nez p1, :cond_7

    .line 1402
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    .line 1404
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->notifyMusicInfo()V

    :goto_1
    return-void
.end method

.method public sendcmd(Ljava/lang/String;)V
    .locals 3

    const-string v0, "8127 sendcmd:"

    const-string v1, "Bluetooth"

    .line 2067
    iget-object v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mSerialPort:Lcom/goodocom/gocsdk/SerialPort;

    if-nez v2, :cond_0

    return-void

    .line 2071
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autochips/bluetooth/control/BtLog;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mSerialPort:Lcom/goodocom/gocsdk/SerialPort;

    invoke-virtual {v0}, Lcom/goodocom/gocsdk/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2075
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setA2DPActive(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "AT+VB\r\n"

    .line 1386
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "AT+VA\r\n"

    .line 1388
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setA2dpLocalVolume(I)V
    .locals 2

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setA2dpLocalVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 370
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+VS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",15"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public setBtAutoConnect(Z)V
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBtAutoConnect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string p1, "AT+MG\r\n"

    .line 352
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "AT+MH\r\n"

    .line 354
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCustomDeviceName()V
    .locals 1

    const-string v0, "persist.sys.bt_device_name_oem"

    .line 1473
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->setCustomDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method public setCustomDeviceName(Ljava/lang/String;)V
    .locals 3

    .line 1483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCustomDeviceName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 1485
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xc

    add-int/lit8 v2, v1, 0x8

    .line 1486
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1488
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->setDeviceName(Ljava/lang/String;)V

    .line 1489
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->writeCustomDevicename(Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceName2systemproperties(Ljava/lang/String;)V
    .locals 0

    .line 1435
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->writeDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method public setDevicePin(Ljava/lang/String;)V
    .locals 2

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+PIN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    .line 1457
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->writeDevicePin(Ljava/lang/String;)V

    return-void
.end method

.method public setDevicePin2systemproperties(Ljava/lang/String;)V
    .locals 0

    .line 1452
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->writeDevicePin(Ljava/lang/String;)V

    return-void
.end method

.method public setLocalDeviceName(Ljava/lang/String;)V
    .locals 2

    .line 1477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocalDeviceName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-direct {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->setDeviceName(Ljava/lang/String;)V

    .line 1479
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->writeCustomDevicename(Ljava/lang/String;)V

    return-void
.end method

.method public setMicMute(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "AT+MUTE=1\r\n"

    .line 497
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "AT+MUTE=0\r\n"

    .line 499
    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setack()V
    .locals 1

    const-string v0, "AT+ACK=2\r\n"

    .line 323
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public setpowerstate(I)V
    .locals 2

    const-string v0, "persist.sys.internalbt_enable"

    const/4 v1, 0x0

    .line 335
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public shake()V
    .locals 1

    const-string v0, "AT\r\n"

    .line 327
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public showdata([BII)V
    .locals 4

    .line 1945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "8127 showdata:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Bluetooth"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/autochips/bluetooth/control/BtLog;->Log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startautoconnect(Z)V
    .locals 7

    const-string v0, "Bluetooth"

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startautoconnect isbtopen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->btState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-static {}, Lcom/autochips/bluetooth/info/BTExtendManager;->getInstance()Lcom/autochips/bluetooth/info/BTExtendManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autochips/bluetooth/info/BTExtendManager;->isAutoConnect()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Bluetooth"

    const-string v0, "startautoconnect isAutoConnect=false"

    .line 740
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 743
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->isHFPconnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 744
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->isAutoconnect()Z

    move-result v0

    if-nez v0, :cond_2

    .line 745
    iget-object p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mTimerAutoconnect:Ljava/util/TimerTask;

    if-eqz p1, :cond_1

    .line 746
    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    const/4 p1, 0x0

    .line 747
    iput-object p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mTimerAutoconnect:Ljava/util/TimerTask;

    :cond_1
    return-void

    .line 751
    :cond_2
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_autoconnect:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mTimerAutoconnect:Ljava/util/TimerTask;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/16 p1, 0xfa0

    .line 754
    iput p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->nDelay:I

    const/16 p1, 0x7530

    .line 755
    iput p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->nConnectSpace:I

    const/16 p1, 0x3c

    .line 756
    iput p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->nConnectTimers:I

    goto :goto_0

    .line 758
    :cond_3
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->nDelay:I

    const/16 p1, 0xbb8

    .line 759
    iput p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->nConnectSpace:I

    const/4 p1, 0x2

    .line 760
    iput p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->nConnectTimers:I

    .line 762
    :goto_0
    sput v1, Lcom/autochips/bluetooth/control/Bluetooth;->mTimeoff:I

    .line 763
    new-instance p1, Lcom/autochips/bluetooth/control/Bluetooth$4;

    invoke-direct {p1, p0}, Lcom/autochips/bluetooth/control/Bluetooth$4;-><init>(Lcom/autochips/bluetooth/control/Bluetooth;)V

    iput-object p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mTimerAutoconnect:Ljava/util/TimerTask;

    .line 786
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iget-object v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mTimerAutoconnect:Ljava/util/TimerTask;

    iget p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->nDelay:I

    int-to-long v3, p1

    iget p1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->nConnectSpace:I

    int-to-long v5, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1

    :cond_4
    const-string p1, "Bluetooth"

    const-string v1, "mTimerAutoconnect!=null"

    .line 788
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method public startbtrc()V
    .locals 5

    .line 2082
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mSerialPort:Lcom/goodocom/gocsdk/SerialPort;

    if-nez v0, :cond_1

    .line 2084
    :try_start_0
    new-instance v0, Lcom/goodocom/gocsdk/SerialPort;

    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/BT_serial"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const v2, 0x1c200

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/goodocom/gocsdk/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mSerialPort:Lcom/goodocom/gocsdk/SerialPort;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2088
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2086
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 2090
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mSerialPort:Lcom/goodocom/gocsdk/SerialPort;

    const-string v1, "Bluetooth"

    if-eqz v0, :cond_0

    const-string v0, "8127 openport success"

    .line 2091
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    invoke-static {v1, v0}, Lcom/autochips/bluetooth/control/BtLog;->Log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "8127 openport fail"

    .line 2094
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    invoke-static {v1, v0}, Lcom/autochips/bluetooth/control/BtLog;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    :goto_1
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mSerialPort:Lcom/goodocom/gocsdk/SerialPort;

    if-eqz v0, :cond_1

    .line 2098
    new-instance v0, Lcom/autochips/bluetooth/control/ReceiveThread;

    iget-object v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mSerialPort:Lcom/goodocom/gocsdk/SerialPort;

    invoke-virtual {v2}, Lcom/goodocom/gocsdk/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v3, 0x400

    const-string v4, ""

    invoke-direct {v0, v4, v2, v3}, Lcom/autochips/bluetooth/control/ReceiveThread;-><init>(Ljava/lang/String;Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->receiveThread:Lcom/autochips/bluetooth/control/ReceiveThread;

    .line 2099
    invoke-static {}, Lcom/autochips/bluetooth/control/Bluetooth;->getInstance()Lcom/autochips/bluetooth/control/Bluetooth;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/autochips/bluetooth/control/ReceiveThread;->setReceiveListener(Lcom/autochips/bluetooth/control/OnReceiveListener;)V

    .line 2100
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->receiveThread:Lcom/autochips/bluetooth/control/ReceiveThread;

    invoke-virtual {v0}, Lcom/autochips/bluetooth/control/ReceiveThread;->start()V

    const-string v0, "AT+ST\r\n"

    .line 2101
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    .line 2102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "8127 devicename="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/autochips/bluetooth/control/BtLog;->Log(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AT+ADDR\r\n"

    .line 2104
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    const-string v0, "AT+APP\r\n"

    .line 2105
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    .line 2106
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->getDevicePin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->setDevicePin(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public startheartbeat()V
    .locals 4

    .line 682
    iget-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isbtupdating:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->ReadBTUpdateState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_heartbeat:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->myHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_heartbeat:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 689
    :cond_2
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->startresetbt()V

    return-void

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 683
    iput-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isbtupdating:Z

    return-void
.end method

.method public startresetbt()V
    .locals 5

    const-string v0, "Bluetooth"

    const-string v1, "startresetbt"

    .line 706
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_resetbt:Ljava/lang/Object;

    monitor-enter v0

    .line 708
    :try_start_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->stopresetbt()V

    .line 709
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_resetbt:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->myHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 710
    :cond_0
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->myHandler:Landroid/os/Handler;

    new-instance v2, Lcom/autochips/bluetooth/control/Bluetooth$3;

    invoke-direct {v2, p0}, Lcom/autochips/bluetooth/control/Bluetooth$3;-><init>(Lcom/autochips/bluetooth/control/Bluetooth;)V

    iput-object v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_resetbt:Ljava/lang/Runnable;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 720
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopAutoconnect()V
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mTimerAutoconnect:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 666
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mTimerAutoconnect:Ljava/util/TimerTask;

    :cond_0
    return-void
.end method

.method public stopDiscovery()V
    .locals 1

    const-string v0, "AT+INQEND\r\n"

    .line 471
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public stopalldownload()V
    .locals 1

    const/4 v0, 0x0

    .line 1216
    iput-boolean v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->ispbdownloading:Z

    const-string v0, "AT+PBST\r\n"

    .line 1217
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public stopheartbeat()V
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_heartbeat:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->myHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_heartbeat:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 699
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->stopresetbt()V

    return-void
.end method

.method public stoppbapdownload()V
    .locals 0

    return-void
.end method

.method public stopresetbt()V
    .locals 3

    .line 724
    sget-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->obj_resetbt:Ljava/lang/Object;

    monitor-enter v0

    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_resetbt:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->myHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->myHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_resetbt:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 727
    iput-object v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->timer_resetbt:Ljava/lang/Runnable;

    .line 729
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopsmsdownload()V
    .locals 0

    return-void
.end method

.method public switchcallaudio()V
    .locals 1

    const-string v0, "AT+TRN\r\n"

    .line 1317
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public switchcallaudiotocar()V
    .locals 1

    const-string v0, "AT+2HF\r\n"

    .line 1325
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public switchcallaudiotophone()V
    .locals 1

    const-string v0, "AT+2AG\r\n"

    .line 1321
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public terminatecall()V
    .locals 2

    .line 1329
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->isoutgoing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->isspeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1335
    :cond_0
    invoke-virtual {p0}, Lcom/autochips/bluetooth/control/Bluetooth;->isincoming()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AT+CR\r\n"

    .line 1336
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    goto :goto_1

    .line 1330
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPMac:Ljava/lang/String;

    const-string v1, "39680ce41800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AT+LH-\r\n"

    .line 1331
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "AT+CH\r\n"

    .line 1333
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public tranMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_1

    .line 2052
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2055
    :cond_0
    new-instance v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    .line 2056
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x6

    .line 2057
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    .line 2058
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x2

    .line 2059
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 2060
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public unHold()V
    .locals 1

    const-string v0, "AT+CS\r\n"

    .line 1349
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public uninitdata()V
    .locals 2

    const-string v0, ""

    .line 300
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mMusicName:Ljava/lang/String;

    .line 301
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mArtistName:Ljava/lang/String;

    .line 302
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mAlbumName:Ljava/lang/String;

    .line 303
    sput-object v0, Lcom/autochips/bluetooth/control/Bluetooth;->mlastcallnum:Ljava/lang/String;

    const/4 v1, 0x2

    .line 304
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->reconnectA2DP:I

    .line 305
    iput v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->reconnectAVRCP:I

    const/4 v1, 0x0

    .line 306
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->isHFPdisconnecting:Z

    .line 307
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedHFP:Z

    .line 308
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedA2DP:Z

    .line 309
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mbConnectedAvrcp:Z

    .line 310
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedHFPName:Ljava/lang/String;

    .line 311
    iput-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mConnectedA2DPName:Ljava/lang/String;

    .line 312
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->ismusicplaying:Z

    .line 313
    iput-boolean v1, p0, Lcom/autochips/bluetooth/control/Bluetooth;->issearching:Z

    return-void
.end method

.method public uninstallBt()V
    .locals 2

    const-string v0, "Bluetooth"

    const-string v1, "uninstallBt"

    .line 385
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AT+CZ0\r\n"

    .line 386
    invoke-virtual {p0, v0}, Lcom/autochips/bluetooth/control/Bluetooth;->sendcmd(Ljava/lang/String;)V

    return-void
.end method

.method public writeAddr(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "persist.sys.bt_addr"

    .line 1593
    # invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeAutoConnectedMac(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1546
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "BT_memory"

    .line 1549
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BT_AutoConnectedMac"

    .line 1550
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1551
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public writeCustomDevicename(Ljava/lang/String;)V
    .locals 3

    .line 1504
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "BT_memory"

    .line 1507
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BT_custom_devicename"

    .line 1508
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1509
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public writeDeviceName(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "BT_memory"

    .line 1615
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DeviceName"

    .line 1616
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1617
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public writeDevicePin(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "BT_memory"

    .line 1599
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DevicePin"

    .line 1600
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1601
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public writeLastBtState(Z)V
    .locals 3

    .line 1575
    sget-boolean v0, Lcom/autochips/bluetooth/control/Bluetooth;->ispoweroff:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "BT_memory"

    .line 1578
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BT_Isopen"

    .line 1579
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1580
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public writeLastConnectedMac(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1529
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v2, "BT_memory"

    .line 1532
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BT_LastConnectedMac"

    .line 1533
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1534
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public writeLastDownLoadMac(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1638
    iget-object v0, p0, Lcom/autochips/bluetooth/control/Bluetooth;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "BT_memory"

    .line 1639
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BT_LastDownLoadMac"

    .line 1640
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1641
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
