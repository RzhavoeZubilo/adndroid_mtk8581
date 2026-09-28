package com.can.parser;

import android.os.Parcel;
import android.os.Parcelable;
import com.can.platforms.AppConfigParser;
import com.carocean.navicar.Navi;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class DDef {
    public static final int AIR_CMD_ID = 1;
    public static final int AIR_FUNC_SET = 11;
    public static final String AIR_SET = "Air_Set";
    public static final int AIR_SET_CMD_ID = 62;
    public static final String AMBIENT_MODE = "ambient_mode";
    public static final int AUDI_AIR_ID = 65;
    public static final int AVM_INFO_SET = 13;
    public static final String AVM_SW = "avm_sw";
    public static final int BASE_CMD_ID = 3;
    public static final String Back = "Back";
    public static final String BackCar = "BackCar";
    public static final String Blacklight = "Blacklight";
    public static final int CANKEY_CMD_ID = 4;
    public static final int CAN_AUDIO_INFO = 30;
    public static final int CAN_AVM_INFO = 58;
    public static final int CAN_FRAGMENT_SW = 44;
    public static final int CAN_RIGHT_VIDEO = 48;
    public static final int CAN_VER_INFO = 59;
    public static final int CAN_VIDEO_STATE = 45;
    public static final int CARINFO_CMD_ID = 2;
    public static final int CAR_SERVICE = 28;
    public static final int CAR_SET = 6;
    public static final int CAR_SET1 = 10;
    public static final int CAR_SET_CMD_ID = 19;
    public static final int CAR_SET_INQUIRY = 7;
    public static final int CAR_TIME_INFO = 23;
    public static final int CAR_VOLUME_ID = 55;
    public static final int CAR_WORKING_STATUS_ID = 56;
    public static final int CD_STATE_ID = 37;
    public static final int CD_STATUS_ID = 54;
    public static final int CD_TX_INFO_ID = 38;
    public static final int CLEAR_FUEL = 1;
    public static final int CLEAR_HISFUEL = 3;
    public static final int COLLISION_INFO_CMD = 60;
    public static final int COMPASS_CMD_ID = 18;
    public static final int CONTROLENABLE_INFO = 25;
    public static final int CONVENIENCE_INFO_CMD = 61;
    public static final int CONV_CONSUMERS = 27;
    public static final int CUROIL_CMD_ID = 13;
    public static final String DASHBOARA_SET = "dashboara_set";
    public static final int DRIVING_DATA = 26;
    public static final String DRIVING_SET = "driving_set";
    public static final int DSP_CMD_ID = 14;
    public static final int DSP_SET = 2;
    public static final String Down = "Down";
    public static final String Eject = "Eject";
    public static final String Enter = "Enter";
    public static final int FINISH_BIND = 546;
    public static final int FUELMIL_CMD_ID = 17;
    public static final int HYBRID_INQUIRY = 5;
    public static final int ID3_ALUM = 1;
    public static final int ID3_AUTHOR = 2;
    public static final int ID3_TITLE = 0;
    public static final int INQUIRY1 = 8;
    public static final int INQUIRY2 = 9;
    public static final int INQUIRY_CANVER = 14;
    public static final int INTANTOIL_CMD_ID = 11;
    public static final String K1 = "k1";
    public static final String K2 = "k2";
    public static final String K3 = "k3";
    public static final String K4 = "k4";
    public static final String LEFT_DASHBOARD = "left_dashboard";
    public static final int LIGHT_CMD_ID = 8;
    public static final String Left = "Left";
    public static final String List = "List";
    public static final String MEM_SPEED = "Mem_speed";
    public static final String Media_next = "Media_next";
    public static final String Media_pause = "Media_pause";
    public static final String Media_pre = "Media_pre";
    public static final String Num0 = "Num0";
    public static final String Num1 = "Num1";
    public static final String Num2 = "Num2";
    public static final String Num3 = "Num3";
    public static final String Num4 = "Num4";
    public static final String Num5 = "Num5";
    public static final String Num6 = "Num6";
    public static final String Num7 = "Num7";
    public static final String Num8 = "Num8";
    public static final String Num9 = "Num9";
    public static final String Numa = "Numa";
    public static final String Numb = "Numb";
    public static final int OILELE_CMD_ID = 16;
    public static final int ON_STAR_ID = 36;
    public static final int OUT_TEMP_ID = 24;
    public static final String PAGE_SW = "Page_sw";
    public static final int PANORAMIC_ID = 57;
    public static final int PARK_CMD_ID = 7;
    public static final int PHONESTS_CMD_ID = 10;
    public static final int PHONE_NONE = 0;
    public static final int PHONE_STATE_HELD = 6;
    public static final int PHONE_STATE_IDLE = 1;
    public static final int PHONE_STATE_INCOMING = 2;
    public static final int PHONE_STATE_OUTGOING = 3;
    public static final int PHONE_STATE_SPEAKING = 4;
    public static final int PHONE_STATE_WAITING = 5;
    public static final int PSA_CRU_SPEED = 42;
    public static final int PSA_DIOG_INFO = 40;
    public static final int PSA_FUNC_INFO = 41;
    public static final int PSA_MEM_SPEED = 43;
    public static final int PSA_WARN_INFO = 39;
    public static final String Phone_dial = "Phone_dial";
    public static final String Phone_hang = "Phone_hang";
    public static final String Power = "Power";
    public static final int RADAR_CMD_ID = 5;
    public static final int RADIO_INFO_ID = 52;
    public static final int RADIO_STATUS_ID = 51;
    public static final int RADIO_TEXT_ID = 53;
    public static final int REAR_AIR_ID = 49;
    public static final String RIGHT_DASHBOARD = "right_dashboard";
    public static final String RIGHT_VIDEO = "right_video";
    public static final String Radio_am = "Radio_am";
    public static final String Radio_as = "Radio_as";
    public static final String Radio_fm = "Radio_fm";
    public static final String Random = "Random";
    public static final String Repeat = "Repeat";
    public static final String Right = "Right";
    public static final int SCREEN_MODE_ID = 64;
    public static final int SCREEN_STATE = 46;
    public static final int SET_INFO_CMD_ID = 20;
    public static final int SHOW_AIR_PAGE = 50;
    public static final int SOURCE_CMD_ID = 9;
    public static final int SYNC_MEDTIME = 34;
    public static final int SYNC_MENU = 32;
    public static final int SYNC_OPTION = 33;
    public static final int SYNC_STATE = 31;
    public static final int SYNC_TALKTIME = 35;
    public static final int SYSINFO_CMD_ID = 15;
    public static final int SYSTEM_INFO = 47;
    public static final String Seek_next = "Seek_next";
    public static final String Seek_pre = "Seek_pre";
    public static final String Speech = "Speech";
    public static final String Src_aux = "Src_aux";
    public static final String Src_bt = "Src_bt";
    public static final String Src_dvd = "Src_dvd";
    public static final String Src_eq = "Src_eq";
    public static final String Src_home = "Src_home";
    public static final String Src_info = "Src_info";
    public static final String Src_mode = "Src_mode";
    public static final String Src_navi = "Src_navi";
    public static final String Src_radio = "Src_radio";
    public static final String Src_set = "Src_set";
    public static final String Src_usb = "Src_usb";
    public static final int TPMS_CMD_ID = 12;
    public static final int TPMS_WARN_INFO_ID = 63;
    public static final int TRACK_MAX = 26;
    public static final int TRIP_INFO_HISOIL = 22;
    public static final int TRIP_INFO_MINOIL = 21;
    public static final int TRIP_INFO_SET = 12;
    public static final int UPDATE_HISFUEL = 4;
    public static final int USB_IPOD_INFO = 29;
    public static final String Up = "Up";
    public static final String Volume_add = "Volume_add";
    public static final String Volume_del = "Volume_del";
    public static final String Volume_mute = "Volume_mute";
    public static final int WHEEL_CMD_ID = 6;
    public static int[] tbArIcon = {1, 40, 39, Navi.ZHKeyCode.MMI_LEXUS_PHONE_OFF, 147, 214, 213, 17, 118, 94, 76, 36, 33, 78, 79, 80, 81, 83, 84, 87, 88, 89, 90, 92, 3, 121, 21, 129, 119, 9, 205, 31, 11, 28, 73, 229, 38, 37};

    public static class AirCtrl {
        public static final int AC_STATE = 9;
        public static final int AUTO = 14;
        public static final int BACK_DEFOGGER = 11;
        public static final int CIRCLE_STATE = 10;
        public static final int DOWN_WIND = 17;
        public static final int DUAL = 13;
        public static final int FRONT_DEFOGGER = 12;
        public static final int LEFT_SEAT_COLD = 21;
        public static final int LEFT_SEAT_HOT = 20;
        public static final int LEFT_TEMP_ADD = 2;
        public static final int LEFT_TEMP_SUB = 1;
        public static final int ON_OFF = 7;
        public static final int PAR_WIND = 16;
        public static final int RIGHT_SEAT_COLD = 23;
        public static final int RIGHT_SEAT_HOT = 22;
        public static final int RIGHT_TEMP_ADD = 4;
        public static final int RIGHT_TEMP_SUB = 3;
        public static final int UP_WIND = 15;
        public static final int WIND_MODE = 8;
        public static final int WIND_MODE_ADD = 18;
        public static final int WIND_MODE_SUB = 19;
        public static final int WIND_SPEED_ADD = 6;
        public static final int WIND_SPEED_SUB = 5;
    }

    public static class AvmInfo {
        public int mCameraState;
        public byte mFirstStart;
        public byte mFoward;
        public byte mIntelligent;
        public byte mLeftTrigger;
        public byte mLogo;
        public byte mRightTrigger;
        public int mVideoState;
        public byte mWheelTrigger;
    }

    public static class BackLightInfo {
        public int mLight;
    }

    public static class BreakInfo {
        public byte mBreakFlag;
    }

    public static class BrillianceCarInfo {
        public byte mbyAutoClock;
        public byte mbyAutoJlock;
        public byte mbyAutoLlock;
        public byte mbyAutofoldrearmirror;
        public byte mbyBackCarCarme;
        public byte mbyBackCarMuteCtl;
        public byte mbyLatchflashing;
        public byte mbyOnlyDoorUnlock;
        public byte mbyUnlockflicker;
        public byte mbylang;
    }

    public static class CDState {
        public boolean mbshowTextInfo;
        public byte mbyCDPlayHour;
        public byte mbyCDPlayMin;
        public byte mbyCDPlayMode;
        public byte mbyCDPlaySec;
        public byte mbyCDStatus;
        public byte mbyDisc1Status;
        public byte mbyDisc2Status;
        public byte mbyDisc3Status;
        public byte mbyDisc4Status;
        public byte mbyDisc5Status;
        public byte mbyDisc6Status;
        public byte mbyFolderStatus;
        public byte mbyMp3Status;
        public byte mbyScaneStatus;
        public byte mbyWmaStatus;
        public int miCDCurTrack;
        public int miCDCurTrackTime;
        public int miCDCurTrackTimeNum;
        public int miCDTotalTrack;
        public int miCurDiskNo;
        public int miDiskStatus;
    }

    public static class CDTxInfo {
        public int miTrackNum;
        public int miType;
        public String mstrText;
    }

    public static class CQCarSet {
        public byte mAlramVol;
        public byte mAnionMode;
        public byte mAutoKey;
        public byte mAutoLock;
        public byte mAutoUnlock;
        public byte mAutoUnlock1;
        public byte mCompressor;
        public byte mCozy;
        public byte mCycleCtrl;
        public byte mDayLights;
        public byte mFogLights;
        public byte mFollowToHome;
        public byte mFrontWiper;
        public byte mLan;
        public byte mLeftAutoHeat;
        public byte mLeftHeatLv;
        public byte mLightSensitivity;
        public byte mLockBySpeed;
        public byte mOverSpeed;
        public byte mPowerTime;
        public byte mRearWiper;
        public byte mRearviewMirror;
        public byte mRemoteUnlock;
        public byte mRemoteWind;
        public byte mRightAutoHeat;
        public byte mRightHeatLv;
        public byte mStartTime;
        public byte mSteerMode;
        public byte mUnlockTone;
        public byte mWelcomeFunc;
    }

    public static class CanAudio {
        public boolean mbshow;
        public byte mbyAudioState;
        public byte mbyMode;
    }

    public static class CanBox {
        public static final int Bagoo = 5;
        public static final int Binarui = 8;
        public static final int CYTProtocol = 6;
        public static final int DaoJun = 11;
        public static final int General = 0;
        public static final int Hiworld = 2;
        public static final int InProtcol = 4;
        public static final int Luzhen = 10;
        public static final int OuDi = 7;
        public static final int Raise = 1;
        public static final int Simple = 3;
        public static final int Xbs = 9;
    }

    public static class CarBuickType {
        public static final int ENCORE = 1;
        public static final int GL8 = 2;
        public static final int GL8_17 = 3;
        public static final int GM = 0;
    }

    public static class CarCfgType {
        public static final int HIGH_CFG = 2;
        public static final int LOW_CFG = 0;
        public static final int RE2SP = 3;
    }

    public static class CarChanaType {
        public static final int CS75_15 = 0;
        public static final int OUSHANG = 3;
        public static final int RXV7 = 2;
        public static final int RXV7_15 = 1;
    }

    public static class CarCheryType {
        public static final int ARZ5 = 1;
        public static final int ARZ7 = 6;
        public static final int RUIHU3 = 2;
        public static final int RUIHU3X = 3;
        public static final int RUIHU5 = 4;
        public static final int RUIHU7 = 5;
    }

    public static class CarChevroletType {
        public static final int EQUNOIX = 2;
        public static final int GM = 0;
        public static final int MAIRUBAO = 1;
    }

    public static class CarCitroenType {
        public static final int C3_XR = 1;
        public static final int GM = 0;
    }

    public static class CarCqType {
        public static final int GS4 = 0;
        public static final int GS4_16 = 1;
        public static final int GS5_SUBO = 2;
        public static final int GS8_17 = 4;
        public static final int OTHER = 3;
    }

    public static class CarDomestic {
        public static final int AEOLUS = 1;
        public static final int BAOJUN = 0;
        public static final int BQD60 = 9;
        public static final int BQX55 = 10;
        public static final int BRILLIANCEV3 = 2;
        public static final int CHANACS75 = 3;
        public static final int CHANAV7 = 4;
        public static final int GEELYEC7 = 5;
        public static final int GREATWALLC30 = 6;
        public static final int GREATWALLH2 = 7;
        public static final int GREATWALLW6 = 8;
    }

    public static class CarFrodType {
        public static int EcoSprot_17 = 1;
        public static int Foucs = 0;
        public static int Taurus = 2;
    }

    public static class CarGeelyType {
        public static final int BOYUE = 2;
        public static final int EC7 = 0;
        public static final int GC7 = 1;
    }

    public static class CarGreatWallType {
        public static final int HAVAL_H1 = 3;
        public static final int HAVAL_H2 = 1;
        public static final int HAVAL_H2S = 2;
    }

    public static class CarHDToyotoType {
        public static final int CAMRY = 3;
        public static final int COROLLA = 4;
        public static final int PRADO = 0;
        public static final int RAV4 = 2;
        public static final int REIZ = 1;
    }

    public static class CarHaiMaType {
        public static final int FML_17 = 3;
        public static final int FML_OLD = 2;
        public static final int M5_14 = 0;
        public static final int M8_15 = 1;
        public static final int S5_YOUNG = 4;
    }

    public static class CarHondaType {
        public static final int HONDA_ACCORD = 3;
        public static final int HONDA_ACCORD7 = 5;
        public static final int HONDA_CITY15 = 6;
        public static final int HONDA_CIVA = 4;
        public static final int HONDA_CRIDER16 = 2;
        public static final int HONDA_CRV = 1;
        public static final int HONDA_GM = 0;
        public static final int HONDA_ODYSSEY = 7;
    }

    public static class CarInfo {
        public byte byProactiveoCcupation;
        public byte byTrafficRecognEnable;
        public byte mAntifreezeFluid;
        public float mAverageSpeed;
        public float mAverageSpeedMin;
        public byte mBackCarLight;
        public byte mBackDoorLockState;
        public byte mBackFogLamp;
        public float mBatteryVoltage;
        public float mBestOil;
        public byte mBrakeLight;
        public int mCruisingRangeMin;
        public float mCurrentHistoryOil;
        public float mCurrentSpeed;
        public byte mDoorFlag;
        public int mElapsedTimeMin;
        public byte mFarHeadlight;
        public byte mFontFogLamp;
        public byte mFrontLeftDoorLockState;
        public byte mFrontRightDoorLockState;
        public byte mGears;
        public byte mHandbrake;
        public byte mHistoryOilUnit;
        public byte mHoodBoxDoor;
        public float mIntantConsumeOil;
        public byte mLeftBackDoor;
        public byte mLeftFrontDoor;
        public byte mLeftTurnLight;
        public byte mLowBatVolWarn;
        public byte mLowOilWarn;
        public long mMileage;
        public long mMileageA;
        public long mMileageB;
        public byte mNearlyHeadlight;
        public float mOutCarTemp;
        public byte mOutCarTempFlag;
        public byte mRightBackDoor;
        public byte mRightFrontDoor;
        public byte mRightTurnLight;
        public int mRotationlSpeed;
        public byte mSafetyBelt;
        public float mSurplusmOil;
        public byte mTailBoxDoor;
        public long mTotalMileage;
        public int mTravelMileage;
        public float mTripFuel1;
        public float mTripFuel2;
        public float mTripFuel3;
        public float mTripFuel4;
        public float mTripFuel5;
        public byte mUintMin;
        public byte mUpWindowSwitch;
        public byte mWarningLight;
        public byte mWashLiquid;
        public byte mWidlelight;
        public byte mbyAccDistance;
        public byte mbyAccDriveProgram;
        public byte mbyAcousticConfirmation;
        public byte mbyActivateAutoMatically;
        public byte mbyAfterParksenseVol;
        public byte mbyAllowautobrakeser;
        public byte mbyAllregionlight;
        public byte mbyAtmospherelight;
        public byte mbyAtmospherelights;
        public byte mbyAutoHeadlightCtrlInRain;
        public byte mbyAutoantidazzlelight;
        public byte mbyAutobrakfrontcwarn;
        public byte mbyAutodriverseatvehicle;
        public byte mbyAutolightuphdlightclose;
        public byte mbyAutolock;
        public byte mbyAutomaticWiperInRain;
        public byte mbyAutomaticdoorlock;
        public byte mbyAutomaticlock;
        public byte mbyAutomaticparkbrake;
        public byte mbyAutomaticparkbrake1;
        public byte mbyAutounlockgetoff;
        public byte mbyAverageConsumption;
        public byte mbyAverageSpeed;
        public byte mbyBackCarMode;
        public byte mbyBackcarTiltMirror;
        public byte mbyBeforelightsens;
        public byte mbyBusywarning;
        public byte mbyBuzzerswitchonoff;
        public byte mbyCarkeysareactivated;
        public byte mbyCarlightColor;
        public byte mbyComeHomeFunction;
        public byte mbyConsumptionUnit;
        public byte mbyConvOpen;
        public byte mbyConvenienceConsumers;
        public byte mbyCornerAuxlamp;
        public byte mbyCornerLight;
        public byte mbyCurrentConsumption;
        public byte mbyDaytimeRunlight;
        public byte mbyDaytimeRunninglight;
        public byte mbyDigitalSpeedDisplay;
        public byte mbyDispsuspensioninfo;
        public byte mbyDistance1Unit;
        public byte mbyDistanceTraveled;
        public byte mbyDistanceUnit;
        public byte mbyDomedelay;
        public byte mbyDoorAmbientlight;
        public byte mbyDoorUnlock;
        public byte mbyDooralarm;
        public byte mbyDriverAlertSys;
        public byte mbyDrivingautolatch;
        public byte mbyDyncBiglightAssist;
        public byte mbyDynclightAssist;
        public byte mbyEcoTips;
        public byte mbyElectrictaildooralarm;
        public byte mbyEleparkbrake;
        public byte mbyEnginepoweroffdelay;
        public byte mbyEscSysState;
        public byte mbyFlashLightsWlock;
        public byte mbyFoldAwayAfterParking;
        public byte mbyFootwelllight;
        public byte mbyForfirstunlockcarkeys;
        public byte mbyForwardcollisionwarn;
        public byte mbyFrontAssistActive;
        public byte mbyFrontAssistAdvance;
        public byte mbyFrontAssistDisplay;
        public byte mbyFrontEnvlight;
        public byte mbyFrontParksenseVol;
        public byte mbyFrontToneSetting;
        public byte mbyFrontVolume;
        public byte mbyFuelUnit;
        public byte mbyHeadlightOffDelay1;
        public byte mbyHeadlightSen;
        public byte mbyHeadlightoffdelay;
        public byte mbyHornWLock;
        public byte mbyIndividualClimate;
        public byte mbyIndividualEngine;
        public byte mbyIndividualFlight;
        public byte mbyIndividualSteer;
        public byte mbyInstrumentSwlight;
        public byte mbyLaneAssist;
        public byte mbyLaneAssistEnable;
        public byte mbyLaneChangeFlash;
        public byte mbyLaneDepartureWarn;
        public byte mbyLanedevcorrection;
        public byte mbyLastDistance;
        public byte mbyLeaveHomeFunction;
        public byte mbyLockcarprompttone;
        public byte mbyLockcarturnlightflash;
        public byte mbyLockcarvoice;
        public byte mbyLowerWhileReverse;
        public byte mbyMirrorlightmirror;
        public byte mbyNokeyentry;
        public byte mbyOil1Unit;
        public byte mbyOilTemperature;
        public byte mbyParkMode;
        public byte mbyParkViewDelay;
        public byte mbyParksenseDynTrack;
        public byte mbyParksenseRadar;
        public byte mbyParksensestaTrack;
        public byte mbyPowerLiftgateAlert;
        public byte mbyPressureUnit;
        public byte mbyProlifeInfo;
        public byte mbyRadarContrastVal;
        public byte mbyRadarSound;
        public byte mbyRadarlightval;
        public byte mbyRadarsaturationval;
        public byte mbyRainsensingwipers;
        public byte mbyRampstartassist;
        public byte mbyRearParkSenseRadar;
        public byte mbyRearRadarparking;
        public byte mbyRearToneSetting;
        public byte mbyRearVolume;
        public byte mbyRearWindWiperIngrear;
        public byte mbyRemoteBootprompt;
        public byte mbyRemoteDoorUnlock;
        public byte mbyRemotekeymemmatch;
        public byte mbyRoofEnvlight;
        public byte mbySautowheadlightwiper;
        public byte mbySavingTime;
        public byte mbySeatconvenientinout;
        public byte mbyServicesMode;
        public byte mbySmartkeypersonal;
        public byte mbySpeedUnint;
        public byte mbySpeedUnit;
        public byte mbySpeedWarn;
        public byte mbySpeedWarning;
        public byte mbySpeedlock;
        public byte mbySwicthOnTime;
        public byte mbySynchronousAdjust;
        public byte mbyTempUnit;
        public byte mbyTemperatureUnit;
        public byte mbyTirecalibrationmodel;
        public byte mbyTirejack;
        public byte mbyTpmsCheckMode;
        public byte mbyTpmsUnit;
        public byte mbyTransportmode;
        public byte mbyTravellingTime;
        public byte mbyTravlMode;
        public byte mbyTurnlamp;
        public byte mbyUnitSetting;
        public byte mbyUnlockopenlamp;
        public byte mbyUpdownautosuspension;
        public byte mbyVolumeUnit;
        public byte mbyWellamp;
        public byte mbylangIndex;
        public byte mbylangSetting;
        public int miSpeedValue;
    }

    public static class CarJeepType {
        public static final int Cherokee = 0;
        public static final int Compass = 1;
        public static final int Renegade = 2;
    }

    public static class CarKoreaType {
        public static final int ELANTRA = 38;
        public static final int IX35 = 32;
        public static final int IX45 = 33;
        public static final int K5_16 = 39;
        public static final int KX5_16 = 40;
        public static final int MISTRA = 36;
        public static final int SONATA_8 = 34;
        public static final int SONATA_9 = 35;
        public static final int TUCSON = 37;
    }

    public static class CarLine {
        public static final int BaoJun = 15;
        public static final int BeiQi = 21;
        public static final int Besturn = 29;
        public static final int BiSU = 33;
        public static final int Buick = 8;
        public static final int Byd = 31;
        public static final int ChangAn = 18;
        public static final int Chery = 30;
        public static final int Chevrolet = 7;
        public static final int ChuanQi = 22;
        public static final int Citroen = 13;
        public static final int DongFen = 16;
        public static final int Dz = 1;
        public static final int Ford = 9;
        public static final int Geely = 19;
        public static final int GreetWall = 20;
        public static final int HaiMa = 23;
        public static final int Honda = 3;
        public static final int Hyundai = 5;
        public static final int Jac = 24;
        public static final int Jeep = 10;
        public static final int KIA = 6;
        public static final int LiFan = 25;
        public static final int Mazda = 11;
        public static final int Nissan = 2;
        public static final int Peugeot = 12;
        public static final int QiCheng = 32;
        public static final int Renault = 14;
        public static final int ShangQi = 27;
        public static final int SouAst = 28;
        public static final int Toyota = 4;
        public static final int ZhongHua = 17;
        public static final int Zotye = 26;
    }

    public static class CarNissanType {
        public static final int NISSAN_08TEANA = 3;
        public static final int NISSAN_15LL = 2;
        public static final int NISSAN_GM = 0;
        public static final int NISSAN_LL = 1;
    }

    public static class CarPeugeotType {
        public static final int GM = 0;
        public static final int P3008 = 3;
        public static final int P4008_17 = 2;
        public static final int P408 = 1;
    }

    public static class CarPsaType {
        public static final int PSA_2008 = 30;
        public static final int PSA_3008 = 27;
        public static final int PSA_3008_DISPLAY = 33;
        public static final int PSA_301 = 34;
        public static final int PSA_307 = 22;
        public static final int PSA_308 = 23;
        public static final int PSA_4008_17 = 36;
        public static final int PSA_408 = 24;
        public static final int PSA_408_2014 = 32;
        public static final int PSA_508_H = 26;
        public static final int PSA_508_L = 25;
        public static final int PSA_C3_XR = 35;
        public static final int PSA_C4 = 18;
        public static final int PSA_C4L = 19;
        public static final int PSA_C5 = 20;
        public static final int PSA_C5_2013 = 21;
        public static final int PSA_DS4 = 31;
        public static final int PSA_DS5 = 28;
        public static final int PSA_DS5LS = 29;
        public static final int PSA_SHIJIA = 17;
    }

    public static class CarService {
        public String mStrVehicleNo;
        public byte mbyOilChangeSerivesDayType;
        public byte mbyOilChangeServiceDisType;
        public byte mbyOilChangeServiceDisUnit;
        public byte mbyVolksWagenDaysType;
        public byte mbyVolksWagenDisType;
        public byte mbyVolksWagenDisUnit;
        public int miOilChangeSerivesDays;
        public int miOilChangeServiceDistance;
        public int miVolksWagenDays;
        public int miVolksWagenDistance;
    }

    public static class CarSetting {
        public boolean mAccPromptTone;
        public int mAdjustAlarm;
        public int mAlarmSysVolume;
        public boolean mAutoHeadLight;
        public int mAutoInSend;
        public int mAutoLightSend;
        public int mAutoLockDoor;
        public int mAutoUnLockDoor;
        public boolean mBackingTone;
        public byte mDashBklight = 1;
        public int mDoorLockMode;
        public int mDoorUnLock;
        public boolean mEngineAutoMatic;
        public boolean mFuelBackLight;
        public int mFuelEffBL;
        public int mHeadLightTime;
        public int mInLightDimTime;
        public boolean mKeyLockAnswer;
        public boolean mKeylessBeep;
        public boolean mKeylessLight;
        public int mLaneDeparture;
        public byte mLanguageSetting;
        public boolean mMsgNotify;
        public int mOutTemp;
        public boolean mPauseLKAS;
        public int mRelockTime;
        public boolean mRemoteSys;
        public byte mScreenDisplay;
        public boolean mSmartKkeyGuide;
        public int mSpeedUnit;
        public boolean mTachmeterSet;
        public boolean mTachometer;
        public boolean mTrafficSignSys;
        public int mTripAReset;
        public int mTripBReset;
        public boolean mWalkAwayLock;
        public int mWarnDisctance;
        public byte mbrightness;
        public byte mcontrast;
        public byte msaturation;
    }

    public static class CarTimeInfo {
        public byte mby24Mode;
        public byte mbyDay;
        public byte mbyFormat;
        public byte mbyHour;
        public byte mbyMinute;
        public byte mbyMonth;
        public byte mbySecond;
        public byte mbyState;
        public byte mbylang;
        public int miYear;
    }

    public static class CarToyotoType {
        public static final int CAMRY = 1;
        public static final int PRADO_14 = 0;
        public static final int RAV4_16 = 2;
    }

    public static class CarVenuciaType {
        public static final int T70 = 0;
        public static final int T90 = 1;
    }

    public static class CarWorkingStatus {
        public byte mbyPowerStatus;
        public byte mbySource;
    }

    public static class CheryCarInfo {
        public byte mAutoLock;
        public byte mAutoUnlock;
        public byte mDashBklight = 1;
        public byte mDaytimeLights;
        public byte mEgenBrakeAlarm;
        public byte mEgenBrakingAlarm;
        public byte mHeadlampDelay;
        public byte mLang;
        public byte mPowerFlow;
        public byte mRemoteTrunk;
        public byte mSetPrompt;
        public byte mSpeedingAlarm;
        public byte mSteerLight;
        public byte mSteeringStartAnim;
        public byte mSteeringStartAvm;
        public byte mVehicleLine;
    }

    public static class CompassInfo {
        public boolean CompassAdjust;
        public byte Compassarea;
        public int compassAngle;
        public byte mIsValid;
        public byte mbyCompassDir;
        public byte mbyCompassState;
    }

    public static class ControlEnable {
        public byte mbyAccDistanceEnable;
        public byte mbyAccDriveProgramEnable;
        public byte mbyAcousticConfirmationEnable;
        public byte mbyActivateAutoMaticallyEnable;
        public byte mbyActiveEnable;
        public byte mbyAllregionlightEnable;
        public byte mbyAudiolowerEnable;
        public byte mbyAutoHeadlightCtrlInRainEnable;
        public byte mbyAutomaticWiperInRainEnable;
        public byte mbyAutomaticlockEnable;
        public byte mbyAverageConsumptionEnable;
        public byte mbyAverageSpeedEnable;
        public byte mbyCarlightColorEnable;
        public byte mbyComeHomeFunctionEnable;
        public byte mbyConsumptionUnitEnable;
        public byte mbyConvOpenEnable;
        public byte mbyConvenienceConsumersEnable;
        public byte mbyCurrentConsumptionEnable;
        public byte mbyDaytimeRunlightEnable;
        public byte mbyDigitalSpeedDisplayEnable;
        public byte mbyDistanceTraveledEnable;
        public byte mbyDistanceUnitEnable;
        public byte mbyDoorAmbientlightEnable;
        public byte mbyDoorUnlockEnable;
        public byte mbyDriverAlertSysEnable;
        public byte mbyDriverAlertSystem;
        public byte mbyDyncBiglightAssistEnable;
        public byte mbyDynclightAssistEnable;
        public byte mbyEcoTipsEnable;
        public byte mbyEscSysStateEnable;
        public byte mbyFoldAwayAfterParkingEnable;
        public byte mbyFootwelllightEnable;
        public byte mbyFrontAssistActiveEnable;
        public byte mbyFrontAssistAdvanceEnable;
        public byte mbyFrontAssistDisplayEnable;
        public byte mbyFrontEnvlightEnable;
        public byte mbyFrontToneSettingEnable;
        public byte mbyFrontVolumeEnable;
        public byte mbyInstrumentSwlightEnable;
        public byte mbyLaneAssistEnable;
        public byte mbyLaneChangeFlashEnable;
        public byte mbyLastAssistEnable;
        public byte mbyLastDistanceEnable;
        public byte mbyLeaveHomeFunctionEnable;
        public byte mbyLowerWhileReverseEnable;
        public byte mbyOilTemperatureEnable;
        public byte mbyPressureUnitEnable;
        public byte mbyRearToneSettingEnable;
        public byte mbyRearVolumeEnable;
        public byte mbyRearWindWiperIngrearEnable;
        public byte mbyRemotekeymemmatchEnable;
        public byte mbyRoofEnvlightEnable;
        public byte mbySpeedUnintEnable;
        public byte mbySpeedWarnEnable;
        public byte mbySpeedWarningEnable;
        public byte mbySpeedatEnable;
        public byte mbySwicthOnTimeEnable;
        public byte mbySynchronousAdjustEnable;
        public byte mbyTemperatureUnitEnable;
        public byte mbyTravellingTimeEnable;
        public byte mbyTravlModeEnable;
        public byte mbyTyRessetEnable;
        public byte mbyVolumeUnitEnable;
        public byte mbyseatActiveEnable;
    }

    public static class ConvConsumers {
        public byte[] mbyConvConsumers;
        public byte mbyConvNum;
    }

    public static class CurOilInfo {
        public byte m15minOilFuelUint;
        public float m15minOilFuel_1;
        public float m15minOilFuel_10;
        public float m15minOilFuel_11;
        public float m15minOilFuel_12;
        public float m15minOilFuel_13;
        public float m15minOilFuel_14;
        public float m15minOilFuel_15;
        public float m15minOilFuel_2;
        public float m15minOilFuel_3;
        public float m15minOilFuel_4;
        public float m15minOilFuel_5;
        public float m15minOilFuel_6;
        public float m15minOilFuel_7;
        public float m15minOilFuel_8;
        public float m15minOilFuel_9;
    }

    public static class DrivingData {
        public byte mbyAvgSpeedUnit;
        public byte mbyConsumptionUnit;
        public byte mbyConvConsumersUnit;
        public byte mbyDistanceUnit;
        public int mbyInstantFuel;
        public byte mbyInstantFuelUnit;
        public byte mbyPageId;
        public byte mbyRangeUnit;
        public float mfAvgConsLongTerm;
        public float mfAvgConsSinceRefuel;
        public float mfAvgConsSinceStart;
        public float mfAvgSpeedLongTerm;
        public float mfAvgSpeedSinceRefuel;
        public float mfAvgSpeedSinceStart;
        public int miConvConsumers;
        public int miDistanceLongTerm;
        public int miDistanceSinceRefuel;
        public int miDistanceSinceStart;
        public int miRange;
        public int miRangeLongTerm;
        public int miRangeSinceRefuel;
        public int miRangeSinceStart;
        public int miTravellTimeLongTerm;
        public int miTravellTimeSinceRefuel;
        public int miTravellTimeSinceStart;
    }

    public static class EC180CarInfo {
        public byte mCarState;
        public long mTotalMileage;
        public int mbyEnergyUse;
        public int mbyPower;
    }

    public enum E_CMD_TYPE {
        eCmd_Type_PopWind,
        eCmd_Type_CarInfo,
        eCmd_Type_BackCar,
        eCmd_Type_CarSet,
        eCmd_Type_AirSet,
        eCmd_Type_Compass,
        eCmd_Type_FuelMil,
        eCmd_Type_HisFuel,
        eCmd_Type_Tpms,
        eCmd_Type_Hybrid,
        eCmd_Type_Dsp,
        eCmd_Type_Other
    }

    public static class FuelMilInfo {
        public int mAverFuel;
        public byte mAverFuelUnit;
        public byte mCHAverFuelUnit;
        public int mCanDriveMil;
        public byte mCanDriveMilUnit;
        public int mCurrentAverFuel;
        public int mFirstAverFuelRecord;
        public int mFirstTripaRecord;
        public byte mFuelRange;
        public int mHistoryAverFuel;
        public byte mImmediateFuel;
        public byte mImmediateFuelUnit;
        public byte mIndex;
        public int mSecondAverFuelRecord;
        public int mSecondTripaRecord;
        public int mThirdAverFuelRecord;
        public int mThirdTripaRecord;
        public int mTripaIndex1;
        public byte mTripaUnit;
    }

    public static class GeelyBoyue {
        public byte mAllOpen;
        public byte mAuxiliaryFollow;
        public byte mCloseLights;
        public byte mCloseWind;
        public byte mCorrection;
        public byte mDynamicTra;
        public byte mHelpMode;
        public byte mLan;
        public byte mQuitRDelay;
        public byte mRemoteLock;
        public byte mSingleVideo;
        public byte mStaticTra;
        public byte mUnlockByOff;
    }

    public static class GmAirSet {
        public byte mAUtoUnlockByPark;
        public byte mAirQualitySensor;
        public byte mAirQualitySensor2;
        public byte mAirSet;
        public byte mAutoAreaTemp;
        public byte mAutoCollision;
        public byte mAutoRelockDoor;
        public byte mAutoWindSet;
        public byte mAutoWiper;
        public byte mAutolockByAway;
        public byte mAutolockByStart;
        public byte mBackWiper;
        public byte mCarBodyCtrl;
        public byte mCarState;
        public byte mCruiseStart;
        public byte mDelayLock;
        public byte mFlankWarn;
        public byte mForgetKey;
        public byte mFrontAutoFog;
        public byte mHvAirQualitySensor;
        public byte mHvAirQualitySensor2;
        public byte mHvAirSet;
        public byte mHvAutoAreaTemp;
        public byte mHvAutoWindSet;
        public byte mHvFrontAutoFog;
        public byte mHvRearAreaTemp;
        public byte mHvRearAutoFog;
        public byte mHvRemoteSeatHeat;
        public byte mHvRemoteSeatHeat2;
        public byte mHvRemoteSeatVen;
        public byte mHvRemoteStartAir;
        public byte mHvSeatHeating;
        public byte mHvSeatVentilation;
        public byte mLan;
        public byte mNearCarUnlock;
        public byte mPresonByDriver;
        public byte mPreventDoorlock;
        public byte mRadar;
        public byte mRampStart;
        public byte mRearAreaTemp;
        public byte mRearAutoFog;
        public byte mRemoteSeatHeat;
        public byte mRemoteSeatHeat2;
        public byte mRemoteSeatVen;
        public byte mRemoteStart;
        public byte mRemoteStartAir;
        public byte mRemoteThenLock;
        public byte mRemoteUnlock;
        public byte mRemoteUnlockLight;
        public byte mRemoteWind;
        public byte mRemotelockLight;
        public byte mSeatHeating;
        public byte mSeatVentilation;
        public int mSpeed;
        public byte mWarnVol;
    }

    public static class GmCarCtrl {
        public byte mAutoLock;
        public byte mAutoUnlockA;
        public byte mAutoUnlockM;
        public byte mAwayLock;
        public byte mBacklightState;
        public byte mDelayLock;
        public byte mEngineState;
        public byte mHvAutoLock;
        public byte mHvAutoUnlockA;
        public byte mHvAutoUnlockM;
        public byte mHvAwayLock;
        public byte mHvBacklightState;
        public byte mHvDelayLock;
        public byte mHvEngineState;
        public byte mHvHybridEceo;
        public byte mHvKeyForget;
        public byte mHvKeyIdentify;
        public byte mHvLockLightsDelay;
        public byte mHvLookLights;
        public byte mHvMeterMedia;
        public byte mHvNearUnlock;
        public byte mHvOpenLock;
        public byte mHvRelockOpen;
        public byte mHvRemoteLockFb;
        public byte mHvRemoteRelock;
        public byte mHvRemoteSliderDoor;
        public byte mHvRemoteStart;
        public byte mHvRemoteUnlock;
        public byte mHvRemoteUnlockFb;
        public byte mHvRemoteWindows;
        public byte mHvSpeedRange;
        public byte mHvTurnLights;
        public byte mHybridEceo;
        public byte mKeyForget;
        public byte mKeyIdentify;
        public byte mLan;
        public byte mLeftTurnLights;
        public byte mLockLightsDelay;
        public byte mLookLights;
        public byte mMeterMedia;
        public byte mNearUnlock;
        public byte mOpenLock;
        public byte mRelockOpen;
        public byte mRemoteLockFb;
        public byte mRemoteRelock;
        public byte mRemoteSliderDoor;
        public byte mRemoteStart;
        public byte mRemoteUnlock;
        public byte mRemoteUnlockFb;
        public byte mRemoteWindows;
        public byte mRightTurnLights;
        public byte mSpeedRange;
    }

    public static class GmCarInfo {
        public byte mFootBrake;
        public byte mFuelConsumptionUnit;
        public byte mHandBrake;
        public byte mMileageUnit;
        public float mSubtotalMileage1;
        public float mSubtotalMileage2;
        public float mSubtotalMileage3;
        public float mTotalMileage;
        public float mfFuelAverage1;
        public float mfFuelAverage2;
        public float mfFuelAverage3;
    }

    public static class GmCarSet {
        public byte AutoMirror;
        public byte mAUtoUnlockByPark;
        public byte mAirQualitySensor;
        public byte mAutoCollision;
        public byte mAutoDefogF;
        public byte mAutoDefogR;
        public byte mAutoRelockDoor;
        public byte mAutoWindSet;
        public byte mAutoWiper;
        public byte mAutolockByAway;
        public byte mAutolockByStart;
        public byte mBackSeat;
        public byte mBackWiper;
        public byte mCarBodyCtrl;
        public byte mCarState;
        public byte mCruiseStart;
        public byte mDelayLock;
        public byte mDirection;
        public byte mDriverSeat;
        public byte mFlankWarn;
        public byte mForgetKey;
        public byte mForwardLight;
        public byte mHeadlampDelaylock;
        public byte mLRHandTraffic;
        public byte mLan;
        public byte mLookForLights;
        public byte mNearCarUnlock;
        public byte mPartTemp;
        public byte mPresonByDriver;
        public byte mPreventDoorlock;
        public byte mRadar;
        public byte mRampStart;
        public byte mRate;
        public byte mRearAirStart;
        public byte mRecall;
        public byte mRemoteSeatHeat;
        public byte mRemoteStart;
        public byte mRemoteStartAir;
        public byte mRemoteThenLock;
        public byte mRemoteUnlock;
        public byte mRemoteUnlockLight;
        public byte mRemoteWind;
        public byte mRemotelockLight;
        public byte mReverseMirror;
        public byte mSeatHeating;
        public byte mSeatingHairDryer;
        public int mSpeed;
        public byte mStartMode;
        public String mStrCurRoadInfo;
        public String mStrGoal;
        public float mToGoal;
        public float mToNextRoad;
        public byte mWarnVol;
    }

    public static class GmCollisionSet {
        public byte m24GhzRadar;
        public byte mAntiCollisionAlarm;
        public byte mAutoAntiCollision;
        public byte mCarState;
        public byte mFlankWarn;
        public byte mHv24GhzRadar;
        public byte mHvAntiCollisionAlarm;
        public byte mHvAutoAntiCollision;
        public byte mHvCarState;
        public byte mHvFlankWarn;
        public byte mHvParkingAssist;
        public byte mHvParkingAssist1;
        public byte mHvRampStart;
        public byte mParkingAssist;
        public byte mParkingAssist1;
        public byte mRampStart;
    }

    public static class GmConvenienceSet {
        public byte mAutoWiper;
        public byte mDriverPersonality;
        public byte mDriverSeatMove;
        public byte mHvAutoWiper;
        public byte mHvDriverPersonality;
        public byte mHvDriverSeatMove;
        public byte mHvRearviewMirror;
        public byte mHvRearviewMirror1;
        public byte mHvRerverWiper;
        public byte mHvSteeringColumn;
        public byte mHvSteeringColumn1;
        public byte mRearviewMirror;
        public byte mRearviewMirror1;
        public byte mRerverWiper;
        public byte mSteeringColumn;
        public byte mSteeringColumn1;
    }

    public static class GmOnStar {
        public String mStrNum;
        public String mStrWifiName;
        public String mStrWifiPwd;
        public String mStrWifiType;
    }

    public static class GmTpmsInfo {
        public byte mIsValid;
        public int[] miTireVal = new int[5];
        public byte[] mbyCheckState = new byte[4];
        public byte[] mbyLowAlarm = new byte[4];
        public byte[] mbyHighAlram = new byte[4];
    }

    public static class GmTripInfo {
        public byte mFuelConsumptionUnit;
        public float mIntantConsumeOil;
        public int mMileage;
        public byte mMileageUnit;
        public float mSubtotalMileage1;
        public float mSubtotalMileage2;
        public float mSubtotalMileage3;
        public float mTotalMileage;
        public float mfFuelAverage1;
        public float mfFuelAverage2;
        public float mfFuelAverage3;
    }

    public static class H2SCarInfo {
        public byte mbyCoolantTemp;
        public byte mbyOilTemp;
        public float mfVehicleCorner;
        public float mfVoltage;
    }

    public static class IVideoState {
        public byte mbyRightShowType;
        public byte mbyVideoState;
    }

    public static class IntantOilInfo {
        public float mIntantConsumeOil;
        public byte mIntantConsumeOilUint;
    }

    public static class JacTpmsWarnInfo {
        public byte[] mChecks;
        public byte[] mLFTires;
        public byte[] mLRTires;
        public byte[] mRFTires;
        public byte[] mRRTires;
    }

    public static class JeepFuelInfo {
        public float mAFuel;
        public int mASpeed;
        public int mATravelDis;
        public int mATravelTime;
        public int mBDDTravelTime;
        public float mBFuel;
        public int mBSpeed;
        public int mBTravelDis;
    }

    public static class KodiaqCarInfo {
        public byte mDrivingMode;
        public byte mOrClimate;
        public byte mOrDownhillSys;
        public byte mOrEngine;
        public byte mOrFourWheel;
        public byte mOrPakingAssit;
        public byte mOrRampStartSys;
        public byte mOrSteering;
        public byte mPClimate;
        public byte mPEngine;
        public byte mPFrontLight;
        public byte mPSteering;
        public byte mSlowDown;
    }

    public static class KoleosCarSet {
        public byte mAutocabinlamp;
        public byte mAutodoorlockdrive;
        public byte mAutostartcarstarted;
        public byte mDriveassistblindspotalert;
        public byte mEnvindicator;
        public byte mExternalwellight;
        public byte mFreshairqualitycycle;
        public byte mFrontparkingassist;
        public byte mIntellparkassistdefset;
        public byte mIongenerator;
        public byte mLateralparkingassist;
        public byte mPromptvolume;
        public byte mRearparkingassist;
        public byte mRevrearwiperopen;
        public byte mSystemdisplaynight;
        public byte mSystemdisplaystyle;
    }

    public static class Lang {
        public static final int CHINESE = 1;
        public static final int ENGLISH = 2;
    }

    public static class MGCarSet {
        public byte mCarFogLights;
        public byte mCarNearLights;
        public byte mCarReversLights;
        public byte mCarTime;
        public byte mCarcomehome;
        public byte mCarroutindicator;
        public byte mCarsteeringhandle;
        public byte mDrivingLatch;
        public byte mFogLights;
        public byte mNearLights;
        public byte mNearUnlock;
        public byte mReversLights;
        public byte mTime;
        public byte mUnlock;
        public byte mUnlockMode;
    }

    public static class OilVatteryInfo {
        public byte mBatteryVoltage;
        public byte mEngineDriveMotor;
        public byte mEngineDriveWheel;
        public byte mHybridEleVehicle;
        public byte mMotorDriveVattery;
        public byte mMotorDriveWheel;
        public byte mVatteryDriveMotor;
        public byte mWheelDriveMotor;
    }

    public static class OutTemputerInfo {
        public float mOutCTemp;
        public float mOutFTemp;
        public boolean mbEnable;
        public boolean mbFEndble;
    }

    public static class ParkAssistInfo {
        public byte mCarbarnPark;
        public byte mParkSystemState;
        public byte mRadarSoundState;
        public byte mRoadsidePark;
        public boolean mbPRadar = true;
    }

    public static class PhoneState {
        public static final int IDLE = 1;
        public static final int INCOMING = 2;
        public static final int OUTGOING = 3;
        public static final int SPEAKING = 4;
    }

    public static class PowerAmplifier {
        public byte mASL;
        public byte mBAL;
        public byte mBASS;
        public byte mBeep;
        public byte mBosePoint;
        public int mCurVol;
        public byte mDriverSeat;
        public byte mDspDev;
        public byte mFAD;
        public byte mMID;
        public int mMaxVol;
        public byte mMute;
        public byte mOpen;
        public byte mShowVolume;
        public byte mTRE;
        public byte mVolByASL;
    }

    public static class PsaCarState {
        public byte mAmbientMode;
        public byte mAromaConcentration;
        public byte mAromatherapyType;
        public byte mAutoPark;
        public byte mAutoRunILL;
        public byte mBackCarSts;
        public byte mBklightLv;
        public byte mBlindAreaProbe;
        public byte mCentDoorLockSts;
        public byte mDashbroad;
        public byte mDoorAutoLock;
        public byte mDoorLock;
        public byte mDoorOpenOptions;
        public byte mDoorUnLock;
        public byte mDriverAssist3008;
        public byte mDriverAssistOther;
        public byte mDrivingMode;
        public byte mEnginesstopfcdis;
        public byte mEqSet;
        public byte mFatigueDelection;
        public byte mFuelSet;
        public byte mGuestfunction;
        public byte mIonPurifier;
        public byte mIsPGear;
        public byte mLaneAssistance;
        public byte mLauguageSet;
        public byte mLeftDash;
        public byte mLightAtmosphere;
        public byte mLightAtmosphereOn;
        public byte mLightDelaySts;
        public byte mLightGoHome;
        public byte mLightHost;
        public byte mLightStuats;
        public byte mLowFuelWarm;
        public byte mPressure;
        public byte mRadarBeep;
        public byte mRadarStop;
        public byte mRearWiper;
        public byte mRightDash;
        public byte mRoadAssint;
        public byte mSmallLight;
        public byte mSpeedLimit;
        public byte mTempUnit;
        public byte mThemecolor;
        public byte mTractionSys;
        public byte mTripEcoPages;
        public byte mUnlockTrunk;
    }

    public static class PsaCruSpeed {
        public byte mSwitch;
        public byte[] mCruSpeedSel = new byte[6];
        public int[] mCruSpeed = new int[6];
        public int[] mLimitSpeed = new int[6];
    }

    public static class PsaDiagInfo {
        public int[] mDiagInfo;
        public int mDiagInfoTotal;
        public int mDiagState;
        public String mStrInfo;
    }

    public static class PsaFuncInfo {
        public ArrayList<String> mArrayList = new ArrayList<>();
        public int[] mFuncInfo;
        public int mFuncInfoTotal;
    }

    public static class PsaHdSetInfo {
        public byte mConsumption;
        public byte mEngine;
        public byte mLan;
        public byte mSosInfo;
        public byte mTemp;
    }

    public static class PsaMemSpeed {
        public byte mMemory;
        public byte[] mSpeedsSel = new byte[6];
        public int[] mSpeeds = new int[6];
    }

    public static class PsaTripComputer {
        public int mAccumulatMileage1;
        public int mAccumulatMileage2;
        public float mFuelAverage1;
        public float mFuelAverage2;
        public float mFuelConsumption;
        public int mObjectiveTomileage;
        public int mResidualOilMileage;
        public int mSpeedAverage1;
        public int mSpeedAverage2;
        public byte mTimingH;
        public byte mTimingM;
        public byte mTimingS;
    }

    public static class PsaWarnInfo {
        public ArrayList<String> mArrayList = new ArrayList<>();
        public int[] mWarnInfo;
        public int mWarnInfoTotal;
    }

    public static class RadarInfo {
        public byte mBackAllDis;
        public byte mBackLeftCenterDis;
        public byte mBackLeftDis;
        public byte mBackRightCenterDis;
        public byte mBackRightDis;
        public byte mDistance;
        public byte mFrontALLDis;
        public byte mFrontLeftCenterDis;
        public byte mFrontLeftDis;
        public byte mFrontRightCenterDis;
        public byte mFrontRightDis;
        public byte mLeftDnCenterDis;
        public byte mLeftDnDis;
        public byte mLeftUpCenterDis;
        public byte mLeftUpDis;
        public byte mRadarShowSwitch;
        public byte mRadarSwtich;
        public byte mReverseMode;
        public byte mRightDnCenterDis;
        public byte mRightDnDis;
        public byte mRightUpCenterDis;
        public byte mRightUpDis;
        public byte mViewoSwitch;
        public byte mVol;
        public byte mbVideoType;
        public byte mbyRightShowType = 0;
    }

    public static class RadioInfo {
        public boolean mbAUTO;
        public boolean mbRDS;
        public boolean mbSCANE;
        public boolean mbST;
        public boolean mbTX;
        public byte mbyBand;
        public byte mbyNum;
        public byte mbyStatus;
        public String mstrFreq;
        public String mstrText;
    }

    public static class RearviwInfo {
        public byte mRearviwFlag;
    }

    public static class RightVideo {
        public boolean mbRightVideoEnable = true;
        public boolean mbshow;
    }

    public enum SOURCE_DEF {
        ;

        public static final int Src_atv = 7;
        public static final int Src_avin = 8;
        public static final int Src_backcar = 11;
        public static final int Src_bluetooth = 3;
        public static final int Src_bt_phone = 12;
        public static final int Src_dtv = 6;
        public static final int Src_dummy = 14;
        public static final int Src_dvd = 4;
        public static final int Src_dvr = 5;
        public static final int Src_ipod = 9;
        public static final int Src_max = 16;
        public static final int Src_music = 1;
        public static final int Src_navi = 15;
        public static final int Src_off = 255;
        public static final int Src_phonelink = 10;
        public static final int Src_photo = 13;
        public static final int Src_radio = 0;
        public static final int Src_video = 2;
    }

    public static class SUB_DATA {
        public byte[] mbyOffset;
        public byte[] mbyPos;
        public int mid;
    }

    public static class SeatInfo {
        public byte[] mSeatValue = new byte[10];
        public byte[] mMsgStatus = new byte[4];
    }

    public static class SetInfo {
        public byte mbyColorTheme;
        public byte mbyFuelUnit;
        public byte mbyRadarDis;
    }

    public static class SyncMediaTime {
        public byte mbyHuor;
        public byte mbyMinute;
        public byte mbySecond;
    }

    public static class SyncMenu {
        public HashMap<Integer, Sync_listInfo> mHashMap;
        public boolean mbRefactorlist;
        public byte mbyMenuBar;
        public byte mbyMenuIcon;
        public byte mbyMenuPer;
        public byte mbyMenuType;
        public byte mbyMsgSelOption;
        public byte mbyMsgType;
        public byte mbySelOption;
    }

    public static class SyncOption {
        public byte mbyEnable;
        public byte mbyKeyState;
        public byte mbyLeftIcon;
        public byte mbyLineText;
        public byte mbyRightIcon;
        public byte mbyRowNum;
        public byte mbyTextType;
        public String strText;
    }

    public static class SyncState {
        public byte mbyConnBt;
        public byte mbyEnableKey;
        public byte mbyPower;
        public byte mbyPresentDev;
        public byte mbyShowMsg;
        public byte mbySignal;
        public byte mbySpeechOn;
        public byte mbySyncMode;
        public byte mbyTalking;
    }

    public static class SyncTalkTime {
        public byte mbyHuor;
        public byte mbyMinute;
        public byte mbySecond;
    }

    public static class Sync_listInfo {
        public int ilefticon;
        public int irighticon;
        public String strText;
    }

    public static class SystemInfo {
        public byte mBackseat;
        public byte mMuteSwitch;
        public byte mPanoramicCamera;
        public byte mPanoramicView;
        public byte mPanoramicViewEnable = 0;
        public byte mVehiclePowerAmplifier;
        public byte mVehiclePowerAmplifierSwitch;
    }

    public static class TPMSInfo {
        public int mBLTirePressure;
        public int mBLTireTemp;
        public int mBRTirePressure;
        public int mBRTireTemp;
        public int mFLTirePressure;
        public int mFLTireTemp;
        public int mFRTirePressure;
        public int mFRTireTemp;
        public byte mIsExistDevice;
        public byte mIsNormal;
        public byte mShowSpareTire;
        public int mSpareTirePressure;
        public byte mTireShowMode;
        public int mTireWarnInfo;
        public byte mTpmsUnit;
        public String mfBLTirePressure;
        public String mfBRTirePressure;
        public String mfFLTirePressure;
        public String mfFRTirePressure;
    }

    public static class TpmsWarn {
        public boolean bFlAbnormal;
        public boolean bFlHpressureW;
        public boolean bFlLpressureW;
        public boolean bFlSensorValid;
        public boolean bFrAbnormal;
        public boolean bFrHpressureW;
        public boolean bFrLpressureW;
        public boolean bFrSensorValid;
        public boolean bRlAbnormal;
        public boolean bRlHpressureW;
        public boolean bRlLpressureW;
        public boolean bRlSensorValid;
        public boolean bRrAbnormal;
        public boolean bRrHpressureW;
        public boolean bRrLpressureW;
        public boolean bRrSensorValid;
        public boolean bSysValid;
        public byte mbyBLTireWarn;
        public byte mbyBRTireWarn;
        public byte mbyFLTireWarn;
        public byte mbyFRTireWarn;
    }

    public static class TripInfo {
        public float mfAccumulatMileage;
        public float mfFuelAverage;
        public float mfOutCarTemp;
        public float mfSpeedAverage;
    }

    public static class UsbIpodInfo {
        public byte USBCurrentTrackH;
        public byte USBCurrentTrackL;
        public byte USBFolder;
        public byte USBPlayMin;
        public byte USBPlayRate;
        public byte USBPlaySec;
        public byte USBPlayState;
        public byte USBStatus;
        public byte USBTotalTrackH;
        public byte USBTotalTrackL;
    }

    public static class VehicleSettings {
        public byte mAirCircleAndAutoLinkage;
        public byte mAirSwitchAndAutoLinkage;
        public byte mAutoLockBySHIFTFORMP;
        public byte mAutoLockBySHIFTToP;
        public byte mAutoLockBySpeed;
        public byte mAutoRelockTimer;
        public byte mDayTimeRunningLights;
        public byte mElectricdooradjust;
        public byte mFRadarDis;
        public byte mHeadlampsAutoOFFTimer;
        public byte mHeadlampsOnSensitivity;
        public byte mLightsOffTimer;
        public byte mLockDrivingSeatOpenDoor;
        public byte mLockHandleKeyTwoTimes;
        public byte mLockIntelligentDoor;
        public byte mLockIntelligentVehicle;
        public byte mLockUnLockFeedBackTONE;
        public byte mRRadarDis;
        public byte mRadarTrack = 0;
        public byte mRadarVol;
        public byte mRemote2PressUnlock;
        public byte mUnLockFlash;
    }

    public static class VerInfo {
        public String mVersion;
    }

    public static class WheelInfo {
        public int mDirect;
        public int mEps;
    }

    public static class TimeInfo {
        public byte by24Mode;
        public byte byAmPm;
        public byte byDay;
        public byte byHour;
        public byte byMinute;
        public byte byMonth;
        public byte bySecond;
        public int iYear;

        public boolean equal(TimeInfo timeInfo) {
            return timeInfo.iYear == this.iYear && timeInfo.byMonth == this.byMonth && timeInfo.byDay == this.byDay && timeInfo.byHour == this.byHour && timeInfo.byMinute == this.byMinute && timeInfo.by24Mode == this.by24Mode && timeInfo.byAmPm == this.byAmPm;
        }

        public void Assignment(TimeInfo timeInfo) {
            timeInfo.iYear = this.iYear;
            timeInfo.byMonth = this.byMonth;
            timeInfo.byDay = this.byDay;
            timeInfo.byHour = this.byHour;
            timeInfo.byMinute = this.byMinute;
            timeInfo.by24Mode = this.by24Mode;
            timeInfo.byAmPm = this.byAmPm;
        }
    }

    public static class AirInfo implements Parcelable {
        public static final Parcelable.Creator<AirInfo> CREATOR = new Parcelable.Creator<AirInfo>() { // from class: com.can.parser.DDef.AirInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AirInfo createFromParcel(Parcel parcel) {
                return new AirInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AirInfo[] newArray(int i) {
                return new AirInfo[i];
            }
        };
        public boolean bAirUIShow;
        public byte m3Zone;
        public byte mAcMax;
        public byte mAcState;
        public byte mAirClear;
        public byte mAirHeat;
        public byte mAirIon;
        public byte mAirProfile;
        public byte mAiron;
        public byte mAqsInCircle;
        public byte mAutoLight1;
        public byte mAutoLight2;
        public byte mAutoWind;
        public byte mBWDefogger;
        public byte mBackAirAble;
        public byte mCircleState;
        public byte mClimate;
        public byte mDaulLight;
        public byte mDisplay;
        public byte mDowmWind;
        public byte mEco;
        public byte mFWDefogger;
        public byte mLTempMode;
        public byte mLeftCoolSeatTemp;
        public byte mLeftDowmWind;
        public byte mLeftHotSeatTemp;
        public byte mLeftParallelWind;
        public byte mLeftSeatState;
        public float mLeftTemp;
        public byte mLeftUpwardWind;
        public byte mLeftWindRate;
        public byte mManual;
        public byte mMaxForntLight;
        public float mMaxLeftTemp;
        public float mMaxRightTemp;
        public float mMaxTemp;
        public byte mMaxWindlv;
        public float mMinLeftTemp;
        public float mMinRightTemp;
        public float mMinTemp;
        public float mOutTemp;
        public boolean mOutTempEnable;
        public byte mParallelWind;
        public byte mPower;
        public byte mRTempMode;
        public byte mRearAir;
        public float mRearAirTemp;
        public byte mRearAutoState;
        public byte mRearDisplay;
        public byte mRearDowmWind;
        public byte mRearLight;
        public byte mRearLock;
        public byte mRearParallelWind;
        public boolean mRearTempEnable;
        public byte mRearUpwardWind;
        public byte mRearWindRate;
        public byte mRightCoolSeatTemp;
        public byte mRightDowmWind;
        public byte mRightHotSeatTemp;
        public byte mRightParallelWind;
        public byte mRightSeatState;
        public float mRightTemp;
        public byte mRightUpwardWind;
        public byte mRightWindRate;
        public byte mShowTempMode;
        public byte mShowWindStrength;
        public byte mSwitchState;
        public byte mSync;
        public byte mTempUnit;
        public byte mUpwardWind;
        public float mVaildTemp;
        public byte mWindMode;
        public byte mWindRate;
        public byte mWindStrength;
        public boolean mbFristShow;
        public boolean mbMaxMinDual;
        public boolean mbWindDual;
        public boolean mbshowLTemp;
        public boolean mbshowLTempLv;
        public boolean mbshowRTemp;
        public boolean mbshowRTempLv;
        public byte mbyLeftTemplv;
        public byte mbyRightTemplv;
        public int menergyuse;
        public int miId;
        public String mstrRearAirTemp;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public AirInfo() {
            this.mCircleState = (byte) -1;
            this.mMaxWindlv = (byte) 7;
            this.miId = -1;
            this.mRearTempEnable = false;
            this.mOutTempEnable = false;
            this.mbshowLTemp = true;
            this.mbshowRTemp = true;
            this.mbshowLTempLv = false;
            this.mbshowRTempLv = false;
            this.menergyuse = 0;
            this.mAirProfile = (byte) -1;
            this.mbWindDual = false;
            this.bAirUIShow = false;
            this.mbMaxMinDual = false;
            this.mVaildTemp = -1.0f;
            this.mClimate = (byte) 0;
            this.mbFristShow = false;
        }

        private AirInfo(Parcel parcel) {
            this.mCircleState = (byte) -1;
            this.mMaxWindlv = (byte) 7;
            this.miId = -1;
            this.mRearTempEnable = false;
            this.mOutTempEnable = false;
            this.mbshowLTemp = true;
            this.mbshowRTemp = true;
            this.mbshowLTempLv = false;
            this.mbshowRTempLv = false;
            this.menergyuse = 0;
            this.mAirProfile = (byte) -1;
            this.mbWindDual = false;
            this.bAirUIShow = false;
            this.mbMaxMinDual = false;
            this.mVaildTemp = -1.0f;
            this.mClimate = (byte) 0;
            this.mbFristShow = false;
            this.mAiron = parcel.readByte();
            this.mAirIon = parcel.readByte();
            this.mAcState = parcel.readByte();
            this.mCircleState = parcel.readByte();
            this.mAutoLight1 = parcel.readByte();
            this.mAutoLight2 = parcel.readByte();
            this.mDaulLight = parcel.readByte();
            this.mMaxForntLight = parcel.readByte();
            this.mRearLight = parcel.readByte();
            this.mSwitchState = parcel.readByte();
            this.mRearAir = parcel.readByte();
            this.mAirHeat = parcel.readByte();
            this.mAirClear = parcel.readByte();
            this.mUpwardWind = parcel.readByte();
            this.mDowmWind = parcel.readByte();
            this.mParallelWind = parcel.readByte();
            this.mDisplay = parcel.readByte();
            this.mWindRate = parcel.readByte();
            this.mMaxWindlv = parcel.readByte();
            this.mAutoWind = parcel.readByte();
            this.mEco = parcel.readByte();
            this.mWindStrength = parcel.readByte();
            this.mShowWindStrength = parcel.readByte();
            this.mLeftWindRate = parcel.readByte();
            this.mRightWindRate = parcel.readByte();
            this.mLeftTemp = parcel.readFloat();
            this.mRightTemp = parcel.readFloat();
            this.mbyLeftTemplv = parcel.readByte();
            this.mbyRightTemplv = parcel.readByte();
            this.miId = parcel.readInt();
            this.mOutTemp = parcel.readFloat();
            this.mstrRearAirTemp = parcel.readString();
            this.mRearTempEnable = parcel.readByte() == 1;
            this.mOutTempEnable = parcel.readByte() == 1;
            this.mbshowLTemp = parcel.readByte() == 1;
            this.mbshowRTemp = parcel.readByte() == 1;
            this.mbshowLTempLv = parcel.readByte() == 1;
            this.mbshowRTempLv = parcel.readByte() == 1;
            this.menergyuse = parcel.readInt();
            this.mAqsInCircle = parcel.readByte();
            this.mLeftHotSeatTemp = parcel.readByte();
            this.mRearLock = parcel.readByte();
            this.mAcMax = parcel.readByte();
            this.mRightHotSeatTemp = parcel.readByte();
            this.mAirProfile = parcel.readByte();
            this.mLeftSeatState = parcel.readByte();
            this.mRightSeatState = parcel.readByte();
            this.mLeftCoolSeatTemp = parcel.readByte();
            this.mRightCoolSeatTemp = parcel.readByte();
            this.mBackAirAble = parcel.readByte();
            this.mBWDefogger = parcel.readByte();
            this.mFWDefogger = parcel.readByte();
            this.mbWindDual = parcel.readByte() == 1;
            this.mLeftUpwardWind = parcel.readByte();
            this.mLeftDowmWind = parcel.readByte();
            this.mLeftParallelWind = parcel.readByte();
            this.mRightUpwardWind = parcel.readByte();
            this.mRightDowmWind = parcel.readByte();
            this.mRightParallelWind = parcel.readByte();
            this.mTempUnit = parcel.readByte();
            this.mManual = parcel.readByte();
            this.mLTempMode = parcel.readByte();
            this.mRTempMode = parcel.readByte();
            this.mShowTempMode = parcel.readByte();
            this.bAirUIShow = parcel.readByte() == 1;
            this.mSync = parcel.readByte();
            this.mMinTemp = parcel.readFloat();
            this.mMaxTemp = parcel.readFloat();
            this.mMinLeftTemp = parcel.readFloat();
            this.mMinRightTemp = parcel.readFloat();
            this.mMaxLeftTemp = parcel.readFloat();
            this.mMaxRightTemp = parcel.readFloat();
            this.mbMaxMinDual = parcel.readByte() == 1;
            this.mVaildTemp = parcel.readFloat();
            this.mClimate = parcel.readByte();
            this.mWindMode = parcel.readByte();
            this.mbFristShow = parcel.readByte() == 1;
            this.m3Zone = parcel.readByte();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeByte(this.mAiron);
            parcel.writeByte(this.mAirIon);
            parcel.writeByte(this.mAcState);
            parcel.writeByte(this.mCircleState);
            parcel.writeByte(this.mAutoLight1);
            parcel.writeByte(this.mAutoLight2);
            parcel.writeByte(this.mDaulLight);
            parcel.writeByte(this.mMaxForntLight);
            parcel.writeByte(this.mRearLight);
            parcel.writeByte(this.mSwitchState);
            parcel.writeByte(this.mRearAir);
            parcel.writeByte(this.mAirHeat);
            parcel.writeByte(this.mAirClear);
            parcel.writeByte(this.mUpwardWind);
            parcel.writeByte(this.mDowmWind);
            parcel.writeByte(this.mParallelWind);
            parcel.writeByte(this.mDisplay);
            parcel.writeByte(this.mWindRate);
            parcel.writeByte(this.mMaxWindlv);
            parcel.writeByte(this.mAutoWind);
            parcel.writeByte(this.mEco);
            parcel.writeByte(this.mWindStrength);
            parcel.writeByte(this.mShowWindStrength);
            parcel.writeByte(this.mLeftWindRate);
            parcel.writeByte(this.mRightWindRate);
            parcel.writeFloat(this.mLeftTemp);
            parcel.writeFloat(this.mRightTemp);
            parcel.writeByte(this.mbyLeftTemplv);
            parcel.writeByte(this.mbyRightTemplv);
            parcel.writeInt(this.miId);
            parcel.writeFloat(this.mOutTemp);
            parcel.writeString(this.mstrRearAirTemp);
            parcel.writeByte((byte) (this.mRearTempEnable ? 1 : 0));
            parcel.writeByte((byte) (this.mOutTempEnable ? 1 : 0));
            parcel.writeByte((byte) (this.mbshowLTemp ? 1 : 0));
            parcel.writeByte((byte) (this.mbshowRTemp ? 1 : 0));
            parcel.writeByte((byte) (this.mbshowLTempLv ? 1 : 0));
            parcel.writeByte((byte) (this.mbshowRTempLv ? 1 : 0));
            parcel.writeInt(this.menergyuse);
            parcel.writeByte(this.mAqsInCircle);
            parcel.writeByte(this.mLeftHotSeatTemp);
            parcel.writeByte(this.mRearLock);
            parcel.writeByte(this.mAcMax);
            parcel.writeByte(this.mRightHotSeatTemp);
            parcel.writeByte(this.mAirProfile);
            parcel.writeByte(this.mLeftSeatState);
            parcel.writeByte(this.mRightSeatState);
            parcel.writeByte(this.mLeftCoolSeatTemp);
            parcel.writeByte(this.mRightCoolSeatTemp);
            parcel.writeByte(this.mBackAirAble);
            parcel.writeByte(this.mBWDefogger);
            parcel.writeByte(this.mFWDefogger);
            parcel.writeByte((byte) (this.mbWindDual ? 1 : 0));
            parcel.writeByte(this.mLeftUpwardWind);
            parcel.writeByte(this.mLeftDowmWind);
            parcel.writeByte(this.mLeftParallelWind);
            parcel.writeByte(this.mRightUpwardWind);
            parcel.writeByte(this.mRightDowmWind);
            parcel.writeByte(this.mRightParallelWind);
            parcel.writeByte(this.mTempUnit);
            parcel.writeByte(this.mManual);
            parcel.writeByte(this.mLTempMode);
            parcel.writeByte(this.mRTempMode);
            parcel.writeByte(this.mShowTempMode);
            parcel.writeByte((byte) (this.bAirUIShow ? 1 : 0));
            parcel.writeByte(this.mSync);
            parcel.writeFloat(this.mMinTemp);
            parcel.writeFloat(this.mMaxTemp);
            parcel.writeFloat(this.mMinLeftTemp);
            parcel.writeFloat(this.mMinRightTemp);
            parcel.writeFloat(this.mMaxLeftTemp);
            parcel.writeFloat(this.mMaxRightTemp);
            parcel.writeByte((byte) (this.mbMaxMinDual ? 1 : 0));
            parcel.writeFloat(this.mVaildTemp);
            parcel.writeByte(this.mClimate);
            parcel.writeByte(this.mWindMode);
            parcel.writeByte((byte) (this.mbFristShow ? 1 : 0));
            parcel.writeByte(this.m3Zone);
        }
    }

    public static class BaseInfo implements Cloneable {
        public byte mACCLight;
        public byte mBT;
        public byte mBackCarState;
        public byte mFrontBoxDoor;
        public byte mIG;
        public byte mILLLight;
        public byte mKeyIn;
        public byte mLeftBackDoor;
        public byte mLeftFrontDoor;
        public byte mLightState;
        public byte mPStopBlockState;
        public byte mRadar;
        public byte mRightBackDoor;
        public byte mRightFrontDoor;
        public int mSpeed;
        public byte mTailBoxDoor;
        public byte mTailElectricDoor;
        public byte mTailElectricDoorDirect;
        public byte mTurnLight;
        public boolean mbDoorValid = false;
        public byte mbyAmbientBright;
        public byte mbyAmbientColor;
        public byte mbyAotuBright;
        public byte mbyEngineHotPer;
        public byte mbyInteriorlight;
        public byte mbyMileUnit;
        public byte mbyMsgToneOn;
        public byte mbyParklockCtrl;
        public byte mbyPlan;
        public byte mbyRainSensor;
        public byte mbyShowEngineHot;
        public byte mbySpeed;
        public byte mbyToneType;
        public byte mbyTractionCtrl;
        public byte mbyTrunLightOnce;
        public byte mbyWarnToneOn;

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public BaseInfo m5clone() throws CloneNotSupportedException {
            return (BaseInfo) super.clone();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BaseInfo)) {
                return false;
            }
            BaseInfo baseInfo = (BaseInfo) obj;
            return baseInfo.mFrontBoxDoor == this.mFrontBoxDoor && baseInfo.mTailBoxDoor == this.mTailBoxDoor && baseInfo.mRightBackDoor == this.mRightBackDoor && baseInfo.mLeftBackDoor == this.mLeftBackDoor && baseInfo.mRightFrontDoor == this.mRightFrontDoor && baseInfo.mLeftFrontDoor == this.mLeftFrontDoor && baseInfo.mbDoorValid == this.mbDoorValid;
        }
    }

    public static class WheelKeyInfo {
        public int mKeyCode;
        public int mKeyStatus;
        public int mKnobSteps;
        public String mstrLongKey = AppConfigParser.ITEM_TIP;
        public String mstrKeyCode = AppConfigParser.ITEM_TIP;
        public boolean mExeOnceLongClick = true;
        public byte mbyKeyRepeat = 0;
        public boolean bLongInternal = false;
        public boolean bInternal = false;
        public boolean bCombination = true;
        public boolean bLongClick = false;

        public void reset() {
            this.mstrLongKey = AppConfigParser.ITEM_TIP;
            this.mstrKeyCode = AppConfigParser.ITEM_TIP;
            this.mExeOnceLongClick = true;
            this.bLongInternal = false;
            this.bInternal = false;
            this.bCombination = true;
            this.bLongClick = false;
        }
    }
}
