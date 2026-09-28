package com.carocean.navicar;

import android.util.SparseIntArray;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class Navi {
    public static final String[] MAP_WHITELIST = {"com.autonavi.amapauto", "com.google.android.apps.maps", "com.sygic.aura", "com.nng.igoprimoisr2013march24.javaclient", "com.kingwaytek.naviking3d.google.std", "navi", "sygic", "cld", "migo", "obile.mainframe", "map", "com.kingwaytek", "igoprimo", "com.waze", "igo", "papago", "kingwaytek", "com.baidu.BaiduMap", "Map"};

    public static class Action {
        public static final String ACTION_AIR = "navi.intent.action.ACTION_AIR";
        public static final String ACTION_ATE = "navi.intent.action.ACTION_ATE";
        public static final String ACTION_AVIN_CAMERA = "navi.intent.action.ACTION_AVIN_CAMERA";
        public static final String ACTION_BLUETOOTH_MUSIC = "navi.intent.action.ACTION_BLUETOOTH_MUSIC";
        public static final String ACTION_BLUETOOTH_NOT_ANSWER_CALL = "navi.intent.action.ACTION_BLUETOOTH_NOT_ANSWER_CALL";
        public static final String ACTION_BLUETOOTH_SERVICE = "navi.intent.action.ACTION_BLUETOOTH_SERVICE";
        public static final String ACTION_CKX_SETTINGS = "android.settings.CKX_SETTINGS";
        public static final String ACTION_DSPTYPE_CHANGED = "action.ckx.dsp_type.changed";
        public static final String ACTION_EXPORT_LOG = "navi.intent.action.ACTION_EXPORT_LOG";
        public static final String ACTION_FRONT_CAMERA = "navi.intent.action.ACTION_FRONT_CAMERA";
        public static final String ACTION_ISSSR_KEY = "com.yecon.action.ISSSR_KEY";
        public static final String ACTION_LT9211_RESOLUTION_CHANGED = "com.carocean.action.lt9211.resolution.changed";
        public static final String ACTION_MCU_KEY_COMMAND = "navi.intent.action.ACTION_MCU_KEY_COMMAND";
        public static final String ACTION_MCU_KEY_COMMAND_INTERCEPT = "navi.intent.action.ACTION_MCU_KEY_COMMAND_INTERCEPT";
        public static final String ACTION_MCU_SERVER = "navi.intent.action.ACTION_MCU_SERVER";
        public static final String ACTION_MONITOR_CENTER = "navi.intent.action.ACTION_MONITOR_CENTER";
        public static final String ACTION_MUSIC = "navi.intent.action.ACTION_MUSIC";
        public static final String ACTION_ORIGINAL_CAMERA = "navi.intent.action.ACTION_ORIGINAL_CAMERA";
        public static final String ACTION_PHONELINK = "navi.intent.action.ACTION_PHONELINK";
        public static final String ACTION_PICK_WIFI_NETWORK = "android.net.wifi.PICK_WIFI_NETWORK";
        public static final String ACTION_QUIT_APK = "com.carocean.action.ACTION_QUIT_APK";
        public static final String ACTION_RADIO = "navi.intent.action.ACTION_RADIO";
        public static final String ACTION_REAR_CAMERA = "navi.intent.action.ACTION_REAR_CAMERA";
        public static final String ACTION_SCREEN_SAVER = "navi.intent.action.ACTION_SCREEN_SAVER";
        public static final String ACTION_SETTING = "navi.intent.action.ACTION_SETTING";
        public static final String ACTION_SETTINGS_PQ = "navi.intent.action.ACTION_SETTINGS_PQ";
        public static final String ACTION_STATUS_PROVIDER = "navi.intent.action.ACTION_STATUS_PROVIDER";
        public static final String ACTION_SYSTEM_KEY_COMMAND = "navi.intent.action.ACTION_SYSTEM_KEY_COMMAND";
        public static final String ACTION_SYSTEM_KEY_COMMAND_INTERCEPT = "navi.intent.action.ACTION_SYSTEM_KEY_COMMAND_INTERCEPT";
        public static final String ACTION_SYSTEM_TO_AWAKE = "navi.intent.action.ACTION_SYSTEM_TO_AWAKE";
        public static final String ACTION_SYSTEM_TO_SLEEP = "navi.intent.action.ACTION_SYSTEM_TO_SLEEP";
        public static final String ACTION_VIDEO = "navi.intent.action.ACTION_VIDEO";
        public static final String ACTION_WIFI_SETTINGS = "android.settings.WIFI_SETTINGS";
        public static final String ACTION_WINDOW_BT_MOVE_TOP = "navi.intent.action.ACTION_BLUETOOTH_WINDOW_MOVE_TOP";
        public static final String ACTION_WINDOW_RADIO_MOVE_TOP = "navi.intent.action.ACTION_RADIO_WINDOW_MOVE_TOP";
        public static final String BT_CALL_PHONE_NUMBER = "bt.call.phoneNumber";
        public static final String BT_LOCAL_NAME = "bt.local.name";
        public static final int CMD_AC = -5374;
        public static final int CMD_AC_SPEED = -5373;
        public static final int CMD_BT_ACCEPT = 2;
        public static final int CMD_BT_CALL = 1;
        public static final int CMD_BT_CLEAR_BOND = 8;
        public static final int CMD_BT_CLOSE = 7;
        public static final int CMD_BT_END = 4;
        public static final int CMD_BT_OPEN = 6;
        public static final int CMD_BT_REDIAL = 5;
        public static final int CMD_BT_REJECT = 3;
        public static final int CMD_BT_SET_LOCAL_NAME = 10;
        public static final int CMD_BT_SWITCH_AUDIO = 9;
        public static final String CMD_CODE = "CMD_CODE";
        public static final int CMD_LINK_FULLSCREEN = -5356;
        public static final int CMD_LINK_MAP = -5359;
        public static final int CMD_LINK_MUSIC = -5357;
        public static final int CMD_LINK_SCHEDULE = -5358;
        public static final int CMD_LINK_WEATHER = -5360;
        public static final int CMD_LINK_WECHAT = -5355;
        public static final int CMD_MEDIA_NEXT = 16771848;
        public static final int CMD_MEDIA_PAUSE = 16771844;
        public static final int CMD_MEDIA_PLAY = 16771843;
        public static final int CMD_MEDIA_PLAY_PAUSE = 16771845;
        public static final int CMD_MEDIA_PREVIOUS = 16771847;
        public static final int CMD_MEDIA_STOP = 16771846;
        public static final int CMD_SETTING_CHANGE_WIFIAPSSID = -5352;
        public static final int CMD_SETTING_REFACTORY = -5354;
        public static final int CMD_SETTING_WIFIAPOPEN = -5353;
        public static final int CMD_SHOW_AIR = -5375;
        public static final int CMD_START_SOURCE = 16771841;
        public static final int CMD_START_SOURCE_BACKGROUND = 16771840;
        public static final int CMD_STOP_SOURCE = 16771842;
        public static final int CMD_TBOX_ECALL = 65285;
        public static final String CMD_TBOX_HUNGCALL_RESULT = "hung_call_result";
        public static final int CMD_TEMP_DEC = -5371;
        public static final int CMD_TEMP_INC = -5372;
        public static final String MCU_KEY_PARAM = "MCU_KEY_PARAM";
        public static final String MCU_KEY_VALUE = "MCU_KEY_VALUE";
        public static final int MEDIA_SET_REPEAT_MODE = 65025;
        public static final String MONITOR_BUNDLE_BEEP_TYPE = "type";
        public static final int MONITOR_CMD_BEEP = 65282;
        public static final int MONITOR_CMD_EXIT_SCREENSAVER = 65284;
        public static final int MONITOR_CMD_RADIO_AUDIOFOCUS_GAIN = 65285;
        public static final int MONITOR_CMD_RADIO_AUDIOFOCUS_LOSS = 65286;
        public static final int MONITOR_CMD_SIMULATE_MCU_KEY = 65281;
        public static final int MONITOR_CMD_START_SCREENSAVER = 65283;
        public static final String MUSIC_FILE_PATH = "music.file.path";
        public static final String MUSIC_LIST_TYPE = "music.list.type";
        public static final int MUSIC_PLAY_FILE = 65026;
        public static final String RADIO_BUNDLE_BAND = "band";
        public static final String RADIO_BUNDLE_FREQ = "frequency";
        public static final int RADIO_CMD_AUTO_SCAN = 65282;
        public static final int RADIO_CMD_BAND_AM = 65289;
        public static final int RADIO_CMD_BAND_AUTO = 65290;
        public static final int RADIO_CMD_BAND_FM = 65288;
        public static final int RADIO_CMD_FAVOURITE_ADD = 65286;
        public static final int RADIO_CMD_FAVOURITE_REMOVE = 65287;
        public static final int RADIO_CMD_PREVIEW_SCAN = 65283;
        public static final int RADIO_CMD_SEEK_DOWN = 65285;
        public static final int RADIO_CMD_SEEK_UP = 65284;
        public static final int RADIO_CMD_SET_FREQ = 65281;
        public static final int RADIO_CMD_STOP_SCAN = 65291;
        public static final String REPEAT_MODE = "repeat.mode";
        public static final int SPROVIDER_CMD_SAVE = 65281;
        public static final String SYSTEM_KEY_CODE = "SYSTEM_KEY_CODE";
        public static final String SYSTEM_KEY_DOWN = "SYSTEM_KEY_DOWN";
        public static final String SYSTEM_KEY_SOURCE = "SYSTEM_KEY_SOURCE";
        public static final String WIFIAP_PSD = "wifiap.psd";
        public static final String WIFIAP_SSID = "wifiap.ssid";
    }

    public static class Common {
        public static final String ZHTD_CHIP_TYPE_SC310K = "sc310k";
        public static final String ZHTD_CHIP_TYPE_SC665S = "sc665s";
        public static final String ZHTD_OEM_AUDI = "audi";
        public static final String ZHTD_OEM_BENZ = "benz";
        public static final String ZHTD_OEM_BMW = "bmw";
        public static final String ZHTD_OEM_KDLK = "kdlk";
        public static final String ZHTD_OEM_LANDROVER = "LandRover";
        public static final String ZHTD_OEM_LEXUS = "lexus";
        public static final String ZHTD_OEM_TOYOTA_CROWN = "crown";
        public static String SOURCE_LOCK_FILE = "/mnt/appconfig/lock.bin";
        public static String UUID_FILE = "/mnt/appconfig/serialnumber.ini";
        public static String PART_FILE = "/mnt/appconfig/partnumber.ini";
    }

    public static class PackageName {
        public static final String AIR_CONDITION = "com.ckx.aircondition";
        public static final String AVMPLAYER = "com.autochips.avmplayer";
        public static final String BLUETOOTH = "com.autochips.bluetooth";
        public static final String BLUETOOTH_MUSIC = "com.autochips.bluetooth";
        public static final String BTSERVICE = "com.carocean.btservice";
        public static final String CKX_AUDIO = "com.ckx.audio";
        public static final String CKX_CAR_INFO = "com.can.activity";
        public static final String CKX_GPS_TEST = "com.carocean.gpstest";
        public static final String CKX_SETTINGS = "com.carocean.settings";
        public static final String CKX_TOOLS = "com.carocean.tools";
        public static final String CKX_VOLUME_ADJUST = "com.carocean.volumeadjust";
        public static final String IMAGE = "com.ckx.image";
        public static final String MCU_SERVER = "com.carocean.mcuserver";
        public static final String MONITOR_CENTER = "com.carocean.monitorcenter";
        public static final String MUSIC = "com.ckx.music";
        public static final String PHONE_LINK = "com.ckx.phonelink";
        public static final String RADIO = "com.ckx.radio";
        public static final String RERA_CAMERA = "com.carocean.rearcamera";
        public static final String RERA_CAMERA_AVM = "com.autochips.avmplayer";
        public static final String SCREEN_SAVER = "com.carocean.screensaver";
        public static final String STATUS_PROVIDER = "com.carocean.statusprovider";
        public static final String SYSTEM_SETTING = "com.carocean.settings";
        public static final String VIDEO = "com.ckx.video";
    }

    public static class SourceID {
        public static final int A2DP = 1;
        public static final int AUX1 = 8;
        public static final int AUX2 = 9;
        public static final int AVIN1 = 6;
        public static final int AVIN2 = 7;
        public static final int BTCALL = 11;
        public static final int ExternalCarMediaAudio = 92;
        public static final int ExternalKuwo = 98;
        public static final int ExternalLexusOriginalCar = 93;
        public static final int ExternalMedia = 99;
        public static final int ExternalMinID = 90;
        public static final int ExternalOriginalCar = 91;
        public static final int INVALID = -1;
        public static final int MUSIC = 2;
        public static final int RADIO = 4;
        public static final int VIDEO = 3;
    }

    public static class ZHKeyEvent {
        public static final int KEYCODE_CKX_PHONE_OFF = 299;
        public static final int KEYCODE_START = 288;
        public static final int KEYCODE_ZH_ARM_OR_ORIGINAL_VEHICLE = 304;
        public static final int KEYCODE_ZH_BENZS_FRONT = 305;
        public static final int KEYCODE_ZH_BENZS_FUNCTION = 306;
        public static final int KEYCODE_ZH_BLUETOOTH = 292;
        public static final int KEYCODE_ZH_ENTER = 293;
        public static final int KEYCODE_ZH_ISSSR = 289;
        public static final int KEYCODE_ZH_LEXUS_PHONE_OFF = 302;
        public static final int KEYCODE_ZH_LEXUS_PHONE_ON = 301;
        public static final int KEYCODE_ZH_MMI_TURNB = 296;
        public static final int KEYCODE_ZH_MMI_TURNF = 297;
        public static final int KEYCODE_ZH_MUSIC = 295;
        public static final int KEYCODE_ZH_NAVI = 290;
        public static final int KEYCODE_ZH_PHONE_ON = 298;
        public static final int KEYCODE_ZH_SETTING = 300;
        public static final int KEYCODE_ZH_SOURCE_MODE = 291;
        public static final int KEYCODE_ZH_TO_ORIGINAL_VEHICLE = 303;
        public static final int KEYCODE_ZH_TUNER = 294;
    }

    public static class KeyCode {
        public static final int K_0 = 32;
        public static final int K_1 = 33;
        public static final int K_2 = 34;
        public static final int K_3 = 35;
        public static final int K_4 = 36;
        public static final int K_5 = 37;
        public static final int K_6 = 38;
        public static final int K_7 = 39;
        public static final int K_8 = 40;
        public static final int K_9 = 41;
        public static final int K_BLUETOOTH = 70;
        public static final int K_CLEAR = 50;
        public static final int K_DOWN = 43;
        public static final int K_DVD = 69;
        public static final int K_EJECT = 29;
        public static final int K_ENTER = 46;
        public static final int K_EQ = 3;
        public static final int K_HOME_FRONTSRC = 10;
        public static final int K_ISSSR = 11;
        public static final int K_LEFT = 44;
        public static final int K_MUSIC = 64;
        public static final int K_MUTE = 2;
        public static final int K_NAVI = 67;
        public static final int K_NONE = 0;
        public static final int K_NUMBER = 49;
        public static final int K_PHONE_OFF = 7;
        public static final int K_PHONE_ON = 6;
        public static final int K_PHONE_ON_OFF = 19;
        public static final int K_PHOTO = 65;
        public static final int K_POWER = 1;
        public static final int K_RECENT = 16;
        public static final int K_RETURN = 47;
        public static final int K_RIGHT = 45;
        public static final int K_SAVE_ALL = 253;
        public static final int K_SCREEN_SAVER = 14;
        public static final int K_SD_CARD = 74;
        public static final int K_SETTING = 71;
        public static final int K_SOURCE_HOME = 9;
        public static final int K_SOURCE_MODE = 8;
        public static final int K_STAR = 48;
        public static final int K_TOUCH_MENU = 79;
        public static final int K_TUNER = 68;
        public static final int K_TV = 72;
        public static final int K_UP = 42;
        public static final int K_USB = 73;
        public static final int K_USER = 255;
        public static final int K_VIDEO = 66;
        public static final int K_VOLUME_DOWN = 5;
        public static final int K_VOLUME_UP = 4;
        public static final int T_ANGLE = 126;
        public static final int T_BEEP = 163;
        public static final int T_BLACKOUT = 161;
        public static final int T_CAMERA_RECORD = 181;
        public static final int T_COMPOSITE = 144;
        public static final int T_DISPLAY_ON_OFF = 183;
        public static final int T_DSP_AUDIO_MUTE = 160;
        public static final int T_DVD_MENU = 130;
        public static final int T_FASTB = 117;
        public static final int T_FASTF = 116;
        public static final int T_FULL_SCREEN = 129;
        public static final int T_IR_GOTO = 177;
        public static final int T_KEY_DISP = 178;
        public static final int T_LOUDNESS = 170;
        public static final int T_MOUSE_POS = 180;
        public static final int T_NAVI_MUTE = 162;
        public static final int T_NEXT = 114;
        public static final int T_ONSTAR = 182;
        public static final int T_PBC = 125;
        public static final int T_PLAY = 113;
        public static final int T_PLAY_PAUSE = 121;
        public static final int T_PREV = 115;
        public static final int T_RADIO_AF = 90;
        public static final int T_RADIO_AM = 106;
        public static final int T_RADIO_AM_FREQ = 97;
        public static final int T_RADIO_AS = 85;
        public static final int T_RADIO_BAND = 80;
        public static final int T_RADIO_CT = 92;
        public static final int T_RADIO_DEL_PRESET = 104;
        public static final int T_RADIO_EON = 93;
        public static final int T_RADIO_FM = 105;
        public static final int T_RADIO_FM_FREQ = 96;
        public static final int T_RADIO_LOC = 87;
        public static final int T_RADIO_PRESET_LOAD = 99;
        public static final int T_RADIO_PRESET_NEXT = 103;
        public static final int T_RADIO_PRESET_PRE = 102;
        public static final int T_RADIO_PRESET_SAVE = 98;
        public static final int T_RADIO_PS = 86;
        public static final int T_RADIO_PTY = 89;
        public static final int T_RADIO_PTY_SEEK = 100;
        public static final int T_RADIO_RDS = 94;
        public static final int T_RADIO_RDS_TYPE = 95;
        public static final int T_RADIO_REG = 91;
        public static final int T_RADIO_SEEK_DOWN = 84;
        public static final int T_RADIO_SEEK_UP = 83;
        public static final int T_RADIO_STEREO_STATE_CHANGE = 101;
        public static final int T_RADIO_TA = 88;
        public static final int T_RADIO_TUNE_UP = 81;
        public static final int T_RADIO_TUNING_DOWN = 82;
        public static final int T_RDS_CONTROL_TA = 194;
        public static final int T_REARVIEW = 179;
        public static final int T_REPEAT = 118;
        public static final int T_SCAN = 120;
        public static final int T_SELECT = 164;
        public static final int T_SEND_WHEEL_STUDY = 166;
        public static final int T_SETTING_RESET = 165;
        public static final int T_SET_TQ = 169;
        public static final int T_SET_WHEEL_R_SW = 172;
        public static final int T_SHUFFLE = 119;
        public static final int T_SLEEP_STATUS = 201;
        public static final int T_STEP = 127;
        public static final int T_STOP = 112;
        public static final int T_SUBWOOFER = 171;
        public static final int T_SUB_T = 124;
        public static final int T_SYS_RESTART = 184;
        public static final int T_TITLE = 123;
        public static final int T_TRACK = 128;
        public static final int T_WHEEL_STUDY_OK = 167;
        public static final int T_WHEEL_STUDY_RESET = 168;
        public static final int T_ZOOM = 122;
        private static final SparseIntArray keyMap;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            keyMap = sparseIntArray;
            sparseIntArray.put(2, T_SELECT);
            sparseIntArray.put(4, 24);
            sparseIntArray.put(5, 25);
            sparseIntArray.put(112, 86);
            sparseIntArray.put(113, T_ANGLE);
            sparseIntArray.put(T_PLAY_PAUSE, 85);
            sparseIntArray.put(114, 87);
            sparseIntArray.put(115, 88);
            sparseIntArray.put(116, 90);
            sparseIntArray.put(117, 89);
            sparseIntArray.put(9, 3);
            sparseIntArray.put(47, 4);
        }

        public static int getSystemKeyCode(int keyCode) {
            return keyMap.get(keyCode, -1);
        }
    }

    public static class ZHKeyCode {
        private static final SparseIntArray KEYCODE_MAP;
        private static final SparseIntArray KEYCODE_MAP_MMI;
        public static final int K_BLUETOOTH = 20;
        public static final int K_ENTER = 23;
        public static final int K_ISSSR = 4;
        public static final int K_MUTE = 3;
        public static final int K_NAVI = 5;
        public static final int K_RETURN = 22;
        public static final int K_SOURCE_HOME = 21;
        public static final int K_SOURCE_MODE = 19;
        public static final int K_STAR = 6;
        public static final int K_VOL_DN = 2;
        public static final int K_VOL_UP = 1;
        public static final int MMI_ARM_OR_ORIGINAL_VEHICLE = 61;
        public static final int MMI_BACK = 34;
        public static final int MMI_BENZS_FRONT = 146;
        public static final int MMI_BENZS_FUNCTION = 147;
        public static final int MMI_BTON = 14;
        public static final int MMI_CAR = 12;
        public static final int MMI_DOWN = 18;
        public static final int MMI_FASTB = 2;
        public static final int MMI_FASTF = 3;
        public static final int MMI_LEFT = 19;
        public static final int MMI_LEFT_BRACKET = 58;
        public static final int MMI_LEVEL_DOWN = 130;
        public static final int MMI_LEVEL_UP = 129;
        public static final int MMI_LEXUS_PHONE_OFF = 145;
        public static final int MMI_LEXUS_PHONE_ON = 144;
        public static final int MMI_MEDIA = 11;
        public static final int MMI_MENU = 33;
        public static final int MMI_NAVI = 8;
        public static final int MMI_NUM1 = 50;
        public static final int MMI_NUM2 = 51;
        public static final int MMI_NUM3 = 52;
        public static final int MMI_NUM4 = 53;
        public static final int MMI_NUM5 = 54;
        public static final int MMI_NUM6 = 55;
        public static final int MMI_NUM7 = 56;
        public static final int MMI_NUM8 = 57;
        public static final int MMI_OK = 49;
        public static final int MMI_POW = 1;
        public static final int MMI_RADIO = 10;
        public static final int MMI_RIGHT = 20;
        public static final int MMI_RIGHT_BRACKET = 59;
        public static final int MMI_SETTING = 15;
        public static final int MMI_TEL = 9;
        public static final int MMI_TONE = 13;
        public static final int MMI_TO_ORIGINAL_VEHICLE = 60;
        public static final int MMI_TURNB = 131;
        public static final int MMI_TURNF = 132;
        public static final int MMI_UP = 17;
        public static final int T_FASTB = 18;
        public static final int T_FASTF = 17;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            KEYCODE_MAP = sparseIntArray;
            SparseIntArray sparseIntArray2 = new SparseIntArray();
            KEYCODE_MAP_MMI = sparseIntArray2;
            sparseIntArray.put(1, 24);
            sparseIntArray.put(2, 25);
            sparseIntArray.put(3, KeyCode.T_SELECT);
            sparseIntArray.put(4, ZHKeyEvent.KEYCODE_ZH_ISSSR);
            sparseIntArray.put(5, ZHKeyEvent.KEYCODE_ZH_NAVI);
            sparseIntArray.put(6, 17);
            sparseIntArray.put(17, 87);
            sparseIntArray.put(18, 88);
            sparseIntArray.put(19, ZHKeyEvent.KEYCODE_ZH_SOURCE_MODE);
            sparseIntArray.put(20, ZHKeyEvent.KEYCODE_ZH_BLUETOOTH);
            sparseIntArray.put(21, 3);
            sparseIntArray.put(22, 4);
            sparseIntArray.put(23, ZHKeyEvent.KEYCODE_ZH_ENTER);
            sparseIntArray2.put(2, 88);
            sparseIntArray2.put(3, 87);
            sparseIntArray2.put(8, ZHKeyEvent.KEYCODE_ZH_NAVI);
            sparseIntArray2.put(9, ZHKeyEvent.KEYCODE_ZH_BLUETOOTH);
            sparseIntArray2.put(10, ZHKeyEvent.KEYCODE_ZH_TUNER);
            sparseIntArray2.put(11, ZHKeyEvent.KEYCODE_ZH_MUSIC);
            sparseIntArray2.put(13, ZHKeyEvent.KEYCODE_ZH_ISSSR);
            sparseIntArray2.put(17, 19);
            sparseIntArray2.put(18, 20);
            sparseIntArray2.put(19, ZHKeyEvent.KEYCODE_ZH_MMI_TURNB);
            sparseIntArray2.put(20, ZHKeyEvent.KEYCODE_ZH_MMI_TURNF);
            sparseIntArray2.put(33, 3);
            sparseIntArray2.put(34, 4);
            sparseIntArray2.put(49, 66);
            sparseIntArray2.put(50, MMI_LEXUS_PHONE_OFF);
            sparseIntArray2.put(51, MMI_BENZS_FRONT);
            sparseIntArray2.put(52, MMI_BENZS_FUNCTION);
            sparseIntArray2.put(53, 148);
            sparseIntArray2.put(54, 149);
            sparseIntArray2.put(55, 150);
            sparseIntArray2.put(56, 151);
            sparseIntArray2.put(57, 152);
            sparseIntArray2.put(129, 71);
            sparseIntArray2.put(130, 72);
            sparseIntArray2.put(58, 71);
            sparseIntArray2.put(59, 72);
            sparseIntArray2.put(60, ZHKeyEvent.KEYCODE_ZH_TO_ORIGINAL_VEHICLE);
            sparseIntArray2.put(61, ZHKeyEvent.KEYCODE_ZH_ARM_OR_ORIGINAL_VEHICLE);
            sparseIntArray2.put(MMI_TURNB, 21);
            sparseIntArray2.put(MMI_TURNF, 22);
            sparseIntArray2.put(14, ZHKeyEvent.KEYCODE_ZH_PHONE_ON);
            sparseIntArray2.put(15, ZHKeyEvent.KEYCODE_ZH_SETTING);
            sparseIntArray2.put(144, ZHKeyEvent.KEYCODE_ZH_LEXUS_PHONE_ON);
            sparseIntArray2.put(MMI_LEXUS_PHONE_OFF, ZHKeyEvent.KEYCODE_ZH_LEXUS_PHONE_OFF);
            sparseIntArray2.put(MMI_BENZS_FRONT, ZHKeyEvent.KEYCODE_ZH_BENZS_FRONT);
            sparseIntArray2.put(MMI_BENZS_FUNCTION, ZHKeyEvent.KEYCODE_ZH_BENZS_FUNCTION);
        }

        public static int getKeyCode(int keyCode) {
            return KEYCODE_MAP.get(keyCode, -1);
        }

        public static int getMMIKeyCode(int keyCode) {
            return KEYCODE_MAP_MMI.get(keyCode, -1);
        }
    }

    public static class Status {
        public static final String AIR_INFO = "AIR_INFO";
        public static final String BLUETOOTH_INFO = "BLUETOOTH_INFO";
        public static final String BLUETOOTH_MUSIC_INFO = "BLUETOOTH_MUSIC_INFO";
        public static final String CAN_INFO = "CAN_INFO";
        public static final String KEY_AUTO_PLAY_USB = "persist.setting.auto_play_usb";
        public static final String MEDIA_MUSIC_INFO = "MEDIA_MUSIC_INFO";
        public static final String MEDIA_RADIO_INFO = "MEDIA_RADIO_INFO";
        public static final String MEDIA_VIDEO_INFO = "MEDIA_VIDEO_INFO";
        public static final String STATUS_MEDIA_URI = "content://com.carocean.status.provider/media";
        public static final String STATUS_SYS_URI = "content://com.carocean.status.provider/sys";
        public static final String STATUS_URI = "content://com.carocean.status.provider/status";
        public static final String ST_DEFAULT_VOLUME_LEVEL = "ST_DEFAULT_VOLUME_LEVEL";
        public static final String ST_EQ_TABLE = "ST_EQ_TABLE";
        public static final String ST_RADIO_VOLUME_TABLE = "ST_RADIO_VOLUME_TABLE";
        public static final String ST_SWC_TABLE = "ST_SWC_TABLE";
        public static final String ST_SYSTEM_PARAM_EQ = "ST_SYSTEM_PARAM_EQ";
        public static final String ST_SYSTEM_PARAM_INFO = "ST_SYSTEM_PARAM_INFO";
        public static final String ST_VOLUME_TABLE = "ST_VOLUME_TABLE";
        public static final String SYS_ACC_STATUS = "SYS_ACC_STATUS";
        public static final String SYS_AUDIOFOCUS_MASK = "SYS_AUDIOFOCUS_MASK";
        public static final String SYS_BLACKOUT_MASK = "SYS_BLACKOUT_MASK";
        public static final String SYS_BRAKE_STATUS = "SYS_BRAKE_STATUS";
        public static final String SYS_BT_AUDIO_CONNECT_STATUS = "SYS_BT_AUDIO_CONNECT_STATUS";
        public static final String SYS_BT_CALL_FOCUS_STATUS = "SYS_BT_CALL_FOCUS_STATUS";
        public static final String SYS_BT_CALL_STATUS = "SYS_BT_CALL_STATUS";
        public static final String SYS_BT_CONNECT_STATUS = "SYS_BT_CONNECT_STATUS";
        public static final String SYS_CP_CALL_STATUS = "SYS_CP_CALL_STATUS";
        public static final String SYS_FAST_REAR_CAMERA = "SYS_FAST_REAR_CAMERA";
        public static final String SYS_GPS_FOREGROUND = "SYS_GPS_FOREGROUND";
        public static final String SYS_GPS_GUIDING = "SYS_GPS_GUIDING";
        public static final String SYS_LIGHT_CHECK = "SYS_LIGHT_CHECK";
        public static final String SYS_MCU_SERVICE_READY = "SYS_MCU_SERVICE_READY";
        public static final String SYS_MCU_UPGRADING = "SYS_MCU_UPGRADING";
        public static final String SYS_MUTE_MASK = "SYS_MUTE_MASK";
        public static final String SYS_ORIGINAL_PAGE_STATE = "SYS_ORIGINAL_PAGE_STATE";
        public static final String SYS_PHONELINK_STATUS = "SYS_PHONELINK_STATUS";
        public static final String SYS_POWER_ON_CHECK_FLAG = "SYS_POWER_ON_CHECK_FLAG";
        public static final String SYS_POWER_ON_MODE = "SYS_POWER_ON_MODE";
        public static final String SYS_RADIO_ALARM = "SYS_RADIO_ALARM";
        public static final String SYS_RADIO_BAND = "SYS_RADIO_BAND";
        public static final String SYS_RADIO_TA = "SYS_RADIO_TA";
        public static final String SYS_REAR_CAMERA = "SYS_REAR_CAMERA";
        public static final String SYS_SCREENSAVER_STATUS = "SYS_SCREENSAVER_STATUS";
        public static final String SYS_SOURCE_ID = "SYS_SOURCE_ID";
        public static final String SYS_SOURCE_PACKAGE_NAME = "SYS_SOURCE_PACKAGE_NAME";
        public static final String SYS_SUSPEND_STATUS = "SYS_SUSPEND_STATUS";
        public static final String SYS_TTS_GUIDING = "SYS_TTS_GUIDING";
        public static final String SYS_UNMUTE_TRANSIENT_MASK = "SYS_UNMUTE_TRANSIENT_MASK";
        public static final String SYS_VR_GUIDING = "SYS_VR_GUIDING";

        public static class BluetoothInfo implements Serializable {
            private static final long serialVersionUID = 16612422232185966L;
            public int a2dpState;
            public long activeTime;
            public int batteryLevel;
            public int btNameVisibility;
            public String callName;
            public String callNumber;
            public int callState;
            public String connectMac;
            public String connectName;
            public long connectTime;
            public String dialName;
            public String dialNumber;
            public int hfpState;
            public String localMac;
            public String localName;
            public int missCallsNum;
            public int openState;
            public String operator;
            public int signalLevel;
        }

        public static class BluetoothMusicInfo implements Serializable {
            private static final long serialVersionUID = -5466759124602835158L;
            public String album;
            public String artist;
            public long bufferedPosition;
            public long currentPosition;
            public long duration;
            public String musicTitle;
            public int playState;
        }

        public static class Constant {
            public static final int AUDIOFOCUS_MASK_ACCOFF = 1;
            public static final int AUDIOFOCUS_MASK_BTCALL = 16;
            public static final int AUDIOFOCUS_MASK_MUTE = 32;
            public static final int AUDIOFOCUS_MASK_RADIO_TA = 64;
            public static final int AUDIOFOCUS_MASK_REARCAMERA = 8;
            public static final int AUDIOFOCUS_MASK_SLEEP = 2;
            public static final int AUDIOFOCUS_MASK_SUSPEND = 4;
            public static final boolean AUTO_PLAY_USB = false;
            public static final int BEEP_ENABLE_MASK_PANEL_KEY = 2;
            public static final int BEEP_ENABLE_MASK_SWC = 1;
            public static final int BEEP_ENABLE_MASK_TOUCHSCREEN = 4;
            public static final int BLACKOUT_MASK_ACCOFF = 1;
            public static final int BLACKOUT_MASK_SCREENSAVER = 8;
            public static final int BLACKOUT_MASK_SLEEP = 2;
            public static final int BLACKOUT_MASK_SUSPEND = 4;
            public static final int BT_CALLSTATE_DIALING = 2;
            public static final int BT_CALLSTATE_IDLE = 0;
            public static final int BT_CALLSTATE_INCOMING = 1;
            public static final int BT_CALLSTATE_SPEAKING = 3;
            public static final int BT_CALL_FOCUS_OFF = 0;
            public static final int BT_CALL_FOCUS_ON = 1;
            public static final int BT_CONNECTED = 1;
            public static final int BT_DISCONNECTED = 0;
            public static final int BT_OPENSTATE_OFF = 0;
            public static final int BT_OPENSTATE_ON = 1;
            public static final int CP_CALLSTATE_DIALING = 2;
            public static final int CP_CALLSTATE_IDLE = 0;
            public static final int CP_CALLSTATE_INCOMING = 1;
            public static final int CP_CALLSTATE_SPEAKING = 3;
            public static final int MEDIA_STATUS_PAUSE = 1;
            public static final int MEDIA_STATUS_PLAY = 0;
            public static final int MEDIA_STATUS_STOP = 2;
            public static final int MUTE_MASK_ACCOFF = 1;
            public static final int MUTE_MASK_REARCAMERA = 8;
            public static final int MUTE_MASK_RESTORE = 32;
            public static final int MUTE_MASK_SHOW_UI = Integer.MIN_VALUE;
            public static final int MUTE_MASK_SLEEP = 2;
            public static final int MUTE_MASK_SUSPEND = 4;
            public static final int MUTE_MASK_VOLUME = 16;
            public static final int NOT_ON_ORIGINAL_PAGE = 0;
            public static final int ON_ORIGINAL_PAGE = 1;
            public static final int SCAN_ANALYSIS = 2;
            public static final int SCAN_CANCEL = 4;
            public static final int SCAN_FINISH = 3;
            public static final int SCAN_START = 1;
            public static final int STATE_A2DP_CONNECTED = 1;
            public static final int STATE_A2DP_DISCONNECTED = 0;
            public static final int STATE_AUDIO_CONNECTED = 2;
            public static final int STATE_AUDIO_CONNECTING = 1;
            public static final int STATE_AUDIO_DISCONNECTED = 0;
            public static final int STATE_HFP_CONNECTED = 1;
            public static final int STATE_HFP_DISCONNECTED = 0;
            public static final int SUSPEND_STATUS_AWAKE = 2;
            public static final int SUSPEND_STATUS_NORMAL = 0;
            public static final int SUSPEND_STATUS_SLEEP = 1;
            public static final int UNMUTE_TRANSIENT_MASK_AUDIOFOCUS_LOSS = 4;
            public static final int UNMUTE_TRANSIENT_MASK_GPS = 2;
            public static final int UNMUTE_TRANSIENT_MASK_RADIO_TA = 8;
            public static final int UNMUTE_TRANSIENT_MASK_TTS = 1;
        }

        public static class SystemParamEQ implements Serializable {
            private static final long serialVersionUID = 355951478334207463L;
            public int[] eq_fc = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
            public int[] eq_q = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
            public int surround_type = 0;
            public int[][] surround_value = {new int[]{10, 10, 10, 10}, new int[]{10, 10, 10, 10}, new int[]{10, 10, 10, 10}, new int[]{10, 10, 10, 10}, new int[]{10, 10, 10, 10}, new int[]{10, 10, 10, 10}};
        }

        public static class MediaMusicInfo implements Serializable {
            private static final long serialVersionUID = 3559533001334206755L;
            public String album;
            public String artist;
            public int current;
            public String currentDirPath;
            public int currentTrack;
            public int duration;
            public int playListType;
            public int playPosition;
            public int playStatus;
            public int repeatmode;
            public String title;
            public int totalTrack;

            public String toString() {
                return "MusicInfo album = [" + this.album + "] artist = [" + this.artist + "] title = [" + this.title + "] current = [ " + this.current + "] duration = [ " + this.duration + "] playStatus = [ " + this.playStatus + "] repeatmode = [" + this.repeatmode + "] playListType = [" + this.playListType + "] playPosition = [" + this.playPosition + " ] currentDirPath = [" + this.currentDirPath + " ]";
            }
        }

        public static class MediaVideoInfo implements Serializable {
            private static final long serialVersionUID = 5993892083325298170L;
            public int current;
            public int currentTrack;
            public int duration;
            public int playStatus;
            public int repeatmode;
            public String title;
            public int totalTrack;

            public String toString() {
                return "MediaVideoInfo title = [" + this.title + "] current = [ " + this.current + "] duration = [ " + this.duration + "] playStatus = [ " + this.playStatus + "] repeatmode = [" + this.repeatmode + " ]";
            }
        }

        public static class MediaRadioInfo implements Serializable {
            private static final long serialVersionUID = 355951478334207462L;
            public int band;
            public int freqSignal;
            public int frequency;
            public int index;
            public List<String> mFreqList;
            public int playStatus;
            public int scanStatus;
            public int stereoStatus;

            public String toString() {
                return "RadioInfo: frequency = " + this.frequency + ", band = " + this.band + ", index = " + this.index + ", playStatus =  " + this.playStatus + ", scanStatus = " + this.scanStatus + ", freqSignal = " + this.freqSignal + ", stereoStatus = " + this.stereoStatus + ", mFreqList = " + this.mFreqList;
            }
        }

        public static class SystemParamInfo implements Serializable {
            public static final int GPS_MIXING_DEFAULT = 3;
            private static final long serialVersionUID = 355951474935201023L;
            public int gps_mixing = 3;
            public int bklight_normal = 102;
            public int bklight_night = 51;
            public int bklight_min = 31;
            public int beep_enable = 1;
            public byte[] default_volume = {18, 18, 18, 18, 23, 24, 18};
            public int media_volume = 22;
            public int bt_volume = 35;
            public int gis_volume = 30;
            public int rear_camera_mode = 0;
            public int loadsource_mode = 0;
            public String wallpaper_path = "system/wallpaper0";
            public byte pq_mode = 0;
            public byte[] pq_info_picture_mode = {0, 0, 0};
            public byte[] pq_info_brightness = {8, 8, 8};
            public byte[] pq_info_contrast = {8, 8, 8};
            public byte[] pq_info_sat = {4, 4, 4};
            public byte[] pq_info_skin_hue = {12, 12, 12};
            public byte[] pq_info_skin_sat = {6, 6, 6};
            public byte[] pq_info_sky_hue = {12, 12, 12};
            public byte[] pq_info_sky_sat = {10, 10, 10};
            public byte[] pq_info_grass_hue = {12, 12, 12};
            public byte[] pq_info_grass_sat = {10, 10, 10};
            public byte[] pq_info_sharpness = {2, 2, 2};
            public byte[] pq_info_gamma = {7, 7, 7};
            public byte[] pq_info_dynamic_contrast = {0, 0, 0};
            public boolean[] pq_info_enable_bluelight = {false, false, false};
            public int[] pq_info_bluelight = {128, 128, 128};
            public int forbid_video_driving = 0;
            public String system_version = "android 9.0";
            public String mcu_version = "MCU-VERSION";
            public String uuid = "CKX12345678";
            public int[] eq_info = {0, 0, 7, 7, 1, 7, 2, 0, 7, 7, 7, 0, 0, 0, 0, 0, 0};

            public String toString() {
                return "SystemParamInfo: gps_mixing = " + this.gps_mixing + ", bklight_normal = " + this.bklight_normal + ", bklight_night = " + this.bklight_night + ", bklight_min = " + this.bklight_min + ", system_version = " + this.system_version + ", mcu_version = " + this.mcu_version + ", uuid = " + this.uuid + ", eq_info = " + Arrays.toString(this.eq_info);
            }
        }
    }
}
