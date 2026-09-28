package com.can.assist;

import com.can.platforms.AppConfigParser;

/* JADX INFO: loaded from: classes.dex */
public interface CanContant {
    public static final String ACTION_ACC_OFF = "autochips.intent.action.QB_POWEROFF";
    public static final String ACTION_ACC_ON = "autochips.intent.action.QB_POWERON";
    public static final String ACTION_BACKCAR_START = "com.yecon.action.BACKCAR_START";
    public static final String ACTION_BACKCAR_STOP = "com.yecon.action.BACKCAR_STOP";
    public static final String ACTION_BACKCAR_TRACK = "com.yecon.action.DyncTrackData";
    public static final String ACTION_CALL_STATE_CHANGE = "com.autochips.bluetooth.hf.BluetoothHfUtility.action.callStateChange";
    public static final String ACTION_CAN_AIRINFO = "com.yecon.action.CAN_AIRINFO";
    public static final String ACTION_CAN_APP_INFO = "com.yecon.action.ACTION_CAN_APP_INFO";
    public static final String ACTION_CAN_KEYS = "com.yecon.can.keys";
    public static final String ACTION_CAN_SERVICE = "yecon.intent.CanService";
    public static final String ACTION_CAN_UI_SERVICE = "yecon.intent.CanUIService";
    public static final String ACTION_CAR_INFO = "com.yecon.action.carinfo";
    public static final String ACTION_MEDIA_RANDOM = "action.media.random";
    public static final String ACTION_MEDIA_REPEAT = "action.media.repeat";
    public static final String ACTION_PACKET_ADD = "android.intent.action.PACKAGE_ADDED";
    public static final String ACTION_PROFILESTATECHANGE = "com.autochips.bluetooth.profilestatechange";
    public static final String ACTION_REVERSE_TRACK = "youzi.service.intent.action.ACTION_REVERSE_TRACK";
    public static final String ACTION_RGB_SET_FINISH = "com.yecon.action.ACTION_RGB_SET_FINISH";
    public static final String ACTION_RGB_SET_START = "com.yecon.action.ACTION_RGB_SET";
    public static final String ACTION_SHOW_OR_HIDE_ICON = "com.android.launcher.action.SHOW_OR_HIDE_ICON";
    public static final String ACTION_SOURCE_CHANGE = "com.yecon.sourcemanager.source_changed_notify";
    public static final String ACTION_UPDATE_BACKCARINFO = "com.hcn.Autobackcar.CANCMD";
    public static final String ACTION_UPDATE_MEDIA_INFO = "com.hcn.AutoMediaPlayer.Info";
    public static final String ACTION_UPDATE_MEDIA_TIME_INFO = "com.hcn.AutoMediaPlayer.Time.Info";
    public static final String ACTION_UPDATE_RADIOINFO = "com.hcn.radioInfo.CANCMD";
    public static final String BACKCAR_SHOW = "BackCarShow";
    public static final String BUND_CAN_RX = "Msg_Can_Rx";
    public static final String BUND_CAN_TX = "Msg_Can_Tx";
    public static final String BUND_CAN_TX_CMD = "Msg_Can_Tx_Cmd";
    public static final String CAN_ICON = "persist.sys.fun.canbus";
    public static final String CAN_MODE = "Can_Mode";
    public static final String CAN_PHONE_MODE = "Can_Phone_Mode";
    public static final String CAN_SERVICE_CLASS_NAME = "com.can.services.CanService";
    public static final String CAN_SHAREDPREFERENCES_DATA = "CanSharedData";
    public static final String CAN_SOURCE_MODE = "Can_Source_Mode";
    public static final String CAN_SPEECH_MODE = "Can_Speech_Mode";
    public static final String CARTYPE_XML = "cartype.xml";
    public static final int DOWNLOAD_STATUS_DOWNLOAD_FINISH = 8;
    public static final int DOWNLOAD_STATUS_DOWNLOAD_ING = 7;
    public static final int DOWNLOAD_STATUS_VERXML_ERROR = 10;
    public static final String EXTRA_CALL_STATE = "com.autochips.bluetooth.hf.extra.callState";
    public static final String EXTRA_HFP_ISCONNECTED = "com.autochips.bluetooth.hfp_isconnected";
    public static final String EXTRA_PACHAGE_NAME = "package";
    public static final String EXTRA_SHOW_OR_HIDE = "show";
    public static final String EXTRA_SHOW_OR_HIDE_AIR = "showair";
    public static final int INSTALL_STATUS_APPINFO_ERROR = 2;
    public static final int INSTALL_STATUS_NONE = -1;
    public static final int INSTALL_STATUS_NOT_FIND_FILE = 4;
    public static final int INSTALL_STATUS_NOT_NEED_UPDATE = 5;
    public static final int INSTALL_STATUS_NOT_NET_CONNECT = 6;
    public static final int INSTALL_STATUS_PACKAGEINFO_ERROR = 9;
    public static final int INSTALL_STATUS_PACKAGENAME_ERROR = 3;
    public static final int INSTALL_STATUS_START = 0;
    public static final int INSTALL_STATUS_STOP = 1;
    public static final int KEY_CAN = 801;
    public static final byte KEY_DOWN = 1;
    public static final byte KEY_KNOB = 5;
    public static final byte KEY_UP = 0;
    public static final String KEY_XML = "key_xml";
    public static final int MSG_CAN_GET_DATA = 6;
    public static final int MSG_CAN_REG_USER = 3;
    public static final int MSG_CAN_RX = 2;
    public static final int MSG_CAN_SET_PROTOCOL = 5;
    public static final int MSG_CAN_TX = 1;
    public static final int MSG_CAN_UREG_USER = 4;
    public static final int MSG_CARINFO_SHOW = 7;
    public static final int MSG_CARMEDIA_AQUIRE_SOURCE = 8;
    public static final int MSG_CARMEDIA_EXIT = 10;
    public static final int MSG_CARMEDIA_START = 9;
    public static final String PERSYS_DOOR_STATUS_EANBLE = "persist.sys.door_status_enable";
    public static final String[][] PERSYS_RGB_VIDEO = {new String[]{"persist.sys.aux1_bright", "persist.sys.aux1_contrast", "persist.sys.aux1_hue", "persist.sys.aux1_saturation"}, new String[]{"persist.sys.backcar_bright", "persist.sys.backcar_contrast", "persist.sys.backcar_hue", "persist.sys.backcar_saturation"}};
    public static final String[][] PERSYS_RGB_VIDEO_DEF = {new String[]{"persist.sys.aux1_bright0", "persist.sys.aux1_contrast0", "persist.sys.aux1_hue0", "persist.sys.aux1_saturation0"}, new String[]{"persist.sys.backcar_bright0", "persist.sys.backcar_contrast0", "persist.sys.backcar_hue0", "persist.sys.backcar_saturation0"}};
    public static final String PER_CAN_CLOSE_SOURECE = "persist.sys.can_closesource";
    public static final String PLATFORMS = "platforms";
    public static final String PLATFORMS_3561 = "com.can.platforms.CanPlatforms3561";
    public static final String PLATFORMS_8127 = "com.can.platforms.CanPlatforms8127";
    public static final String PLATFORMS_8317 = "com.can.platforms.CanPlatforms8317";
    public static final String PLATFORMS_8581 = "com.can.platforms.CanPlatforms8581";
    public static final String PRV_NEXT_FAN = "persist.sys.mirr_pri_next";
    public static final String REGISTER_USER = "Msg_Can_Reg_User";
    public static final String UREGISTER_USER = "Msg_Can_Reg_User";
    public static final String VOLUME_CHANGED_ACTION = "android.intent.action.VolumdChangeAuto";

    public static class CAN_DESCRIBE {
        public int iBoxID = 0;
        public int iSeriesID = 0;
        public int iCarTypeID = 0;
        public int iConfigID = 0;
    }

    public static class CarType_Info {
        public String strBoxName = null;
        public int iBoxId = 0;
        public int iBoxBand = 0;
        public String strSeriesName = AppConfigParser.ITEM_TIP;
        public int iSeriesId = 0;
        public String strTypeName = AppConfigParser.ITEM_TIP;
        public int iTypeId = 0;
        public String strCfgName = AppConfigParser.ITEM_TIP;
        public int iCfgId = 0;
        public int iNeedIcon = 0;
        public int iAudioPort = 0;
        public String strProClass = AppConfigParser.ITEM_TIP;
        public String strUIClass = AppConfigParser.ITEM_TIP;
        public String strAudioClass = AppConfigParser.ITEM_TIP;
        public String strPopClass = AppConfigParser.ITEM_TIP;
        public String strProVer = AppConfigParser.ITEM_TIP;
        public String strAirClass = AppConfigParser.ITEM_TIP;
        public int iAirIcon = 0;
    }

    public enum E_CANKEY_ACTION {
        eCanKey_Action_Invalid,
        eCanKey_Action_valid,
        eCanKey_Action_Complex,
        eCanKey_Action_Send,
        eCankey_Action_Knob,
        eCankey_Action_Repeat
    }

    public enum E_Update_Type {
        eUpdate_Type_CanBox,
        eUpdate_Type_CanSeries,
        eUpdate_Type_CanType,
        eUpdate_Type_CanCfg,
        eUpdate_Type_Save,
        eUpdate_Type_None
    }
}
