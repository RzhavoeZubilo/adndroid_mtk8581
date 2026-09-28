package com.can.platforms;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.util.Log;
import com.can.assist.CanContant;
import com.can.assist.Platforms;
import com.can.parser.DDef;
import com.can.tool.DataConvert;
import com.can.ui.CanPopWind;
import com.carocean.navicar.McuServiceManager;
import java.util.Calendar;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CanPlatforms8581 extends Platforms {
    private Platforms.OnCanAudioListener mCanAudioListener;
    private Platforms.OnGdDataListener mGdDataListener;
    final String ACTION_PROFILESTATECHANGE = CanContant.ACTION_PROFILESTATECHANGE;
    final String EXTRA_HFP_ISCONNECTED = CanContant.EXTRA_HFP_ISCONNECTED;
    final String ACTION_BLUETOOTH_CALL_STATUS_CHANGE = "com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_CALL_STATUS_CHANGE";
    final String ACTION_BLUETOOTH_CALL_STATUS = "com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_CALL_STATUS";
    private int miSource = -1;
    private int miVolume = -1;
    private int miPhoneSts = -1;
    private long mDelayMillis = 1000;
    private Context mContext = null;
    private CanRxTx mCanRxTx = null;
    private Object mObjSRCTocken = null;
    private MeInfo8581 mMeInfo8581 = null;
    private PfReceiver mPfReceiver = null;
    private Handler mObjHandler = new Handler();
    private AudioManager mObjAudioManager = null;
    private final String TAG = getClass().getName();
    Runnable runnable = new Runnable() { // from class: com.can.platforms.CanPlatforms8581.1
        @Override // java.lang.Runnable
        public void run() {
        }
    };

    @Override // com.can.assist.Platforms
    public void CloseAudio() {
    }

    @Override // com.can.assist.Platforms
    public void OpenAudio(String str) {
    }

    @Override // com.can.assist.Platforms
    public int getCarType() throws RemoteException {
        return 0;
    }

    @Override // com.can.assist.Platforms
    public boolean setCanDescribe(CanContant.CarType_Info carType_Info) {
        return true;
    }

    @Override // com.can.assist.Platforms
    public void Init(Context context) {
        this.mContext = context;
        this.mPfReceiver = new PfReceiver();
        this.mObjAudioManager = (AudioManager) context.getSystemService("audio");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(CanContant.ACTION_BACKCAR_START);
        intentFilter.addAction(CanContant.ACTION_BACKCAR_STOP);
        intentFilter.addAction(CanContant.ACTION_SOURCE_CHANGE);
        intentFilter.addAction(CanContant.ACTION_PROFILESTATECHANGE);
        intentFilter.addAction("com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_CALL_STATUS_CHANGE");
        intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
        intentFilter.addAction(CanContant.ACTION_ACC_OFF);
        intentFilter.addAction(CanContant.ACTION_ACC_ON);
        intentFilter.addAction(CanContant.ACTION_CAN_APP_INFO);
        intentFilter.addAction(CanContant.ACTION_CAN_KEYS);
        intentFilter.addAction("android.intent.action.LOCALE_CHANGED");
        intentFilter.addAction(CanContant.ACTION_REVERSE_TRACK);
        context.registerReceiver(this.mPfReceiver, intentFilter);
    }

    @Override // com.can.assist.Platforms
    public void DeInit() {
        this.mContext.unregisterReceiver(this.mPfReceiver);
    }

    @Override // com.can.assist.Platforms
    public void start(long j) {
        try {
            this.mDelayMillis = j;
            this.mObjHandler.post(this.runnable);
            InitSend();
        } catch (Exception unused) {
        }
    }

    @Override // com.can.assist.Platforms
    public void InitSend() {
        Platforms.OnGdDataListener onGdDataListener = this.mGdDataListener;
        if (onGdDataListener != null) {
            onGdDataListener.onVolInfo(getMediaInfo().getVol());
        }
    }

    @Override // com.can.assist.Platforms
    public CanContant.CAN_DESCRIBE getCanDescribe() {
        return new CanContant.CAN_DESCRIBE();
    }

    @Override // com.can.assist.Platforms
    public void ResetCanDescribe() throws RemoteException {
        Log.e(this.TAG, "ResetCanDescribe no find match cartype!");
    }

    @Override // com.can.assist.Platforms
    public void power() throws RemoteException {
        sendSysRestartKeyCMD();
        ((PowerManager) this.mContext.getSystemService("power")).reboot(AppConfigParser.ITEM_TIP);
    }

    public void sendSysRestartKeyCMD() {
        this.mCanRxTx.reboot(new byte[]{0, 0, 0, 0});
    }

    @Override // com.can.assist.Platforms
    public void setCanIcon(CanContant.CarType_Info carType_Info) throws RemoteException {
        SystemProperties.set("persist.sys.fun.canbus", carType_Info.iNeedIcon == 1 ? "1" : "0");
        Intent intent = new Intent();
        intent.setAction(CanContant.ACTION_SHOW_OR_HIDE_ICON);
        intent.putExtra(CanContant.EXTRA_PACHAGE_NAME, this.mContext.getPackageName());
        intent.putExtra(CanContant.EXTRA_SHOW_OR_HIDE, carType_Info.iNeedIcon == 1);
        intent.putExtra(CanContant.EXTRA_SHOW_OR_HIDE_AIR, carType_Info.iAirIcon == 1);
        this.mContext.sendBroadcast(intent);
    }

    @Override // com.can.assist.Platforms
    public void setOnGdDataListener(Platforms.OnGdDataListener onGdDataListener) {
        this.mGdDataListener = onGdDataListener;
    }

    @Override // com.can.assist.Platforms
    public Platforms.MediaInfo getMediaInfo() {
        if (this.mMeInfo8581 == null) {
            this.mMeInfo8581 = new MeInfo8581();
        }
        return this.mMeInfo8581;
    }

    private class MeInfo8581 implements Platforms.MediaInfo {
        private boolean mbAccPowerStatus;

        private int getCurrentStreamType() {
            return 3;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public void RightVideo(boolean z) {
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public byte getBand() {
            return (byte) 0;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public int getCurTrack() {
            return 1;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public byte getFreqIndex() {
            return (byte) 0;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public String getID3Album() {
            return AppConfigParser.ITEM_TIP;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public String getID3Author() {
            return AppConfigParser.ITEM_TIP;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public String getID3Title() {
            return AppConfigParser.ITEM_TIP;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public int getMainFreq() {
            return 0;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public int getPhoneConnects() {
            return 0;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public String getPhoneNumber() {
            return AppConfigParser.ITEM_TIP;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public int getPhonestate() {
            return 0;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public int getPlayTime() {
            return 0;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public int getSource() {
            return -1;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public int getTotalTrack() {
            return 1;
        }

        private MeInfo8581() {
            this.mbAccPowerStatus = true;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public DDef.TimeInfo getTimeInfo() {
            DDef.TimeInfo timeInfo = new DDef.TimeInfo();
            timeInfo.by24Mode = (byte) 0;
            if (DateFormat.is24HourFormat(CanPlatforms8581.this.mContext)) {
                timeInfo.by24Mode = (byte) 1;
            }
            Calendar calendar = Calendar.getInstance();
            timeInfo.iYear = calendar.get(1);
            timeInfo.byMonth = (byte) (calendar.get(2) + 1);
            timeInfo.byDay = (byte) calendar.get(5);
            timeInfo.byHour = (byte) calendar.get(10);
            timeInfo.byAmPm = (byte) calendar.get(9);
            if (timeInfo.by24Mode == 1 && timeInfo.byAmPm == 1) {
                timeInfo.byHour = (byte) (timeInfo.byHour + 12);
            } else if (timeInfo.by24Mode == 0 && timeInfo.byHour == 0) {
                timeInfo.byHour = (byte) 12;
            }
            timeInfo.byMinute = (byte) calendar.get(12);
            timeInfo.bySecond = (byte) calendar.get(13);
            return timeInfo;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public int getVol() {
            return CanPlatforms8581.this.mObjAudioManager.getStreamVolume(getCurrentStreamType());
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public boolean getMute(int i) {
            return CanPlatforms8581.this.mObjAudioManager.isStreamMute(i);
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public boolean checkVol() {
            int streamVolume = CanPlatforms8581.this.mObjAudioManager.getStreamVolume(getCurrentStreamType());
            if (CanPlatforms8581.this.miVolume == streamVolume) {
                return false;
            }
            CanPlatforms8581.this.miVolume = streamVolume;
            return true;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public int TranslateSource(int i) {
            int i2 = 8;
            if (getPhonestate() != 2 && getPhonestate() != 3 && getPhonestate() != 4) {
                switch (i) {
                    case 0:
                    case 1:
                    case 2:
                        i2 = 0;
                        break;
                    case 3:
                        i2 = 3;
                        break;
                    case 4:
                        i2 = 4;
                        break;
                    case 5:
                        i2 = 5;
                        break;
                    case 6:
                        i2 = 6;
                        break;
                    case 7:
                        i2 = 7;
                        break;
                    case 8:
                    case 14:
                    case 15:
                        break;
                    case 9:
                        i2 = 9;
                        break;
                    case 10:
                        i2 = 10;
                        break;
                    case 11:
                        i2 = 11;
                        break;
                    case 12:
                    case 13:
                    default:
                        i2 = 255;
                        break;
                }
            } else {
                i2 = 12;
            }
            if (i2 != 12) {
                CanPlatforms8581.this.miSource = i2;
            }
            if (getAccPowerStatus()) {
                return i2;
            }
            return 255;
        }

        public boolean isBackgroundRunning(String str) {
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) CanPlatforms8581.this.mContext.getSystemService("activity")).getRunningAppProcesses();
            if (runningAppProcesses == null || runningAppProcesses.size() <= 0) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.processName != null && runningAppProcessInfo.processName.equals(str)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public boolean getAssistFun(String str) {
            return SystemProperties.getBoolean(str, false);
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public void PanoramicVideo(boolean z) {
            Intent intent = new Intent();
            intent.setAction(z ? "show_360_video" : "close_360_video");
            CanPlatforms8581.this.mContext.sendBroadcast(intent);
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public void setAccPowerStatus(boolean z) {
            this.mbAccPowerStatus = z;
        }

        @Override // com.can.assist.Platforms.MediaInfo
        public boolean getAccPowerStatus() {
            return this.mbAccPowerStatus;
        }
    }

    private class PfReceiver extends BroadcastReceiver {
        private PfReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int[] intArrayExtra;
            if (context == null || intent == null) {
                return;
            }
            String action = intent.getAction();
            if (action.equals(CanContant.ACTION_BACKCAR_START)) {
                if (CanPlatforms8581.this.mGdDataListener != null) {
                    CanPlatforms8581.this.mGdDataListener.onReverse(true);
                    Log.i(CanPlatforms8581.this.TAG, "onReverse ing!");
                    return;
                }
                return;
            }
            if (action.equals(CanContant.ACTION_BACKCAR_STOP)) {
                if (CanPlatforms8581.this.mGdDataListener != null) {
                    CanPlatforms8581.this.mGdDataListener.onReverse(false);
                    Log.i(CanPlatforms8581.this.TAG, "onReverse stop!");
                    return;
                }
                return;
            }
            if (action.equals(CanContant.ACTION_SOURCE_CHANGE)) {
                return;
            }
            if (action.equals(CanContant.ACTION_PROFILESTATECHANGE)) {
                boolean booleanExtra = intent.getBooleanExtra(CanContant.EXTRA_HFP_ISCONNECTED, false);
                if (CanPlatforms8581.this.mGdDataListener != null) {
                    CanPlatforms8581.this.mGdDataListener.onBtInfo(0, booleanExtra ? 1 : 0);
                    return;
                }
                return;
            }
            int i = 2;
            if (action.equals("com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_CALL_STATUS_CHANGE")) {
                int intExtra = intent.getIntExtra("com.autochips.bluetooth.PhoneCallActivity.action.BLUETOOTH_CALL_STATUS", -1);
                if (intExtra < 2 || intExtra > 5 || intExtra == CanPlatforms8581.this.miPhoneSts) {
                    return;
                }
                CanPlatforms8581.this.miPhoneSts = intExtra;
                int i2 = CanPlatforms8581.this.miPhoneSts;
                if (i2 == 2) {
                    i = 3;
                } else if (i2 != 3) {
                    i = i2 != 4 ? 1 : 4;
                }
                if (CanPlatforms8581.this.mGdDataListener != null) {
                    CanPlatforms8581.this.mGdDataListener.onBtInfo(1, i);
                    return;
                }
                return;
            }
            if (action.equals("android.media.VOLUME_CHANGED_ACTION")) {
                if (CanPlatforms8581.this.mGdDataListener == null || CanPlatforms8581.this.miVolume == 0) {
                    return;
                }
                CanPlatforms8581.this.miVolume = 0;
                CanPlatforms8581.this.mGdDataListener.onVolInfo(0);
                return;
            }
            if (action.equals(CanContant.ACTION_CAN_APP_INFO)) {
                if (CanPlatforms8581.this.mGdDataListener != null) {
                    CanPlatforms8581.this.mGdDataListener.onAbout();
                }
            } else if (action.equals("android.intent.action.LOCALE_CHANGED")) {
                if (CanPlatforms8581.this.mGdDataListener != null) {
                    CanPlatforms8581.this.mGdDataListener.onLang();
                }
            } else if (!action.equals(CanContant.ACTION_CAN_KEYS) && action.equals(CanContant.ACTION_REVERSE_TRACK) && (intArrayExtra = intent.getIntArrayExtra("param")) != null && intArrayExtra.length >= 2 && intArrayExtra[0] == 1 && CanPlatforms8581.this.mGdDataListener != null) {
                CanPlatforms8581.this.mGdDataListener.onTrackData(intArrayExtra[1]);
            }
        }
    }

    @Override // com.can.assist.Platforms
    public void put(String str, int i) {
        try {
            DataConvert.putInt(this.mContext, str, i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.can.assist.Platforms
    public int get(String str) {
        try {
            return DataConvert.getInt(this.mContext, str);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.can.assist.Platforms
    public Platforms.Can getCanRxTx() {
        if (this.mCanRxTx == null) {
            this.mCanRxTx = new CanRxTx();
        }
        return this.mCanRxTx;
    }

    private class CanRxTx implements Platforms.Can {
        McuServiceManager.DataListener dataListener;
        private Platforms.Can.OnRxDataLister mDataLister;

        public void reboot(byte[] bArr) {
        }

        private CanRxTx() {
            this.mDataLister = null;
            this.dataListener = new McuServiceManager.DataListener() { // from class: com.can.platforms.CanPlatforms8581.CanRxTx.1
                @Override // com.carocean.navicar.McuServiceManager.DataListener
                public void onReceive(int i, byte[] bArr) {
                    if (i == 18 && CanRxTx.this.mDataLister != null) {
                        CanRxTx.this.mDataLister.OnDevicesStatusChanged(i, bArr);
                    }
                }
            };
        }

        @Override // com.can.assist.Platforms.Can
        public void Init(Context context) throws RemoteException {
            initMcu(context);
        }

        @Override // com.can.assist.Platforms.Can
        public void DeInit() throws RemoteException {
            McuServiceManager.getInstance().unregCallback(this.dataListener);
        }

        @Override // com.can.assist.Platforms.Can
        public void setEnvironment(int i) throws RemoteException {
            byte[] bArrHi2Lo2Byte = DataConvert.Hi2Lo2Byte(i);
            McuServiceManager.getInstance().RPCGeneralRpcCall(16, new byte[]{bArrHi2Lo2Byte[2], bArrHi2Lo2Byte[3], bArrHi2Lo2Byte[1], bArrHi2Lo2Byte[0]});
        }

        @Override // com.can.assist.Platforms.Can
        public void sendData(int i, byte[] bArr, int i2) throws RemoteException {
            McuServiceManager.getInstance().RPCGeneralRpcCall(i, bArr);
        }

        @Override // com.can.assist.Platforms.Can
        public void setRxDataLister(Platforms.Can.OnRxDataLister onRxDataLister) {
            this.mDataLister = onRxDataLister;
        }

        @Override // com.can.assist.Platforms.Can
        public void setRxReady() {
            if (CanPlatforms8581.this.mContext == null) {
                Log.e(CanPlatforms8581.this.TAG, "setRxReady mContext == null");
                return;
            }
            CanPlatforms8581.this.mContext.startService(new Intent(CanPlatforms8581.this.mContext, (Class<?>) CanPopWind.class));
            Log.i(CanPlatforms8581.this.TAG, "startService ACTION_CAN_UI_SERVICE");
        }

        private void initMcu(Context context) {
            McuServiceManager.getInstance().initialize(context, null);
            McuServiceManager.getInstance().regCallback(new int[]{18}, this.dataListener);
            McuServiceManager.getInstance().isServiceConnected();
        }
    }

    @Override // com.can.assist.Platforms
    public void setOnCanAudioListener(Platforms.OnCanAudioListener onCanAudioListener) {
        this.mCanAudioListener = onCanAudioListener;
    }
}
