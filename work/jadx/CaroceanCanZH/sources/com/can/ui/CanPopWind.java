package com.can.ui;

import android.app.ActivityManager;
import android.app.Instrumentation;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import com.can.activity.R;
import com.can.assist.CanContant;
import com.can.assist.CanKey;
import com.can.assist.CanXml;
import com.can.assist.Platforms;
import com.can.parser.DDef;
import com.can.platforms.AppConfigParser;
import com.can.services.CanUIService;
import com.can.tool.AudioFocusManager;
import com.can.ui.draw.Air;
import com.can.ui.draw.AvmSet;
import com.can.ui.draw.Door;
import com.can.ui.draw.LexusAir;
import com.can.ui.draw.ScreenSwitchStatus;
import com.can.ui.draw.SwicthView;
import com.can.ui.draw.TouchScreen;
import com.carocean.navicar.HandlerWeakReference;
import com.carocean.navicar.McuServiceManager;
import com.carocean.navicar.Navi;
import com.carocean.navicar.NaviStatus;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CanPopWind extends CanUIService {
    protected static final String TAG = "CanPopWind";
    public static String sFragmentSw = "";
    public static boolean sIsAirActivityShow = false;
    private AudioFocusManager mAudioManager;
    private UIHandler uiHandler;
    private Air mAirInfo = null;
    private LexusAir mLexusAirInfo = null;
    private Door mDoorInfo = null;
    private TouchScreen mTouchScreen = null;
    private AvmSet mAvmSet = null;
    private CanKey mCanKeyInfo = null;
    private Inquiry mInquiry = null;
    private SwicthView mSwicthView = null;
    private LayoutInflater mInflater = null;
    private Platforms mPlatformsXxx = null;
    private boolean mbInquiryFlag = false;
    private boolean mbShowRVideo = false;
    private boolean mbKey2Back = false;
    private boolean mbBackCar = false;
    private int miTrackType = 0;
    private byte[] mAirData = null;
    private ScreenSwitchStatus mScreenSwitchStatus = null;
    private McuServiceManager mcuServiceManager = McuServiceManager.getInstance();
    private boolean needShowLog = false;
    private int videoMode = 0;
    private BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.can.ui.CanPopWind.1
        /* JADX WARN: Type inference failed for: r2v4, types: [com.can.ui.CanPopWind$1$1] */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action == null) {
                return;
            }
            if (action.equals("com.ckx.lexus.origncar.media.open")) {
                try {
                    new Thread() { // from class: com.can.ui.CanPopWind.1.1
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            try {
                                new Instrumentation().sendKeyDownUpSync(3);
                            } catch (Exception unused) {
                            }
                            super.run();
                        }
                    }.start();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                CanPopWind.this.requestAudioFocus();
                return;
            }
            if (!Navi.Action.ACTION_SAVE_FACTORY_DATA.equals(intent.getAction()) || CanPopWind.this.mLexusAirInfo == null) {
                return;
            }
            CanPopWind.this.mLexusAirInfo.setTempTvVisibility();
            CanPopWind.this.mLexusAirInfo.updateTempTvUnit();
            CanPopWind.this.mObjHandler.sendMessage(CanPopWind.this.mObjHandler.obtainMessage(65, CanPopWind.this.mAirData));
        }
    };
    McuServiceManager.DataListener dataListener = new McuServiceManager.DataListener() { // from class: com.can.ui.CanPopWind.2
        @Override // com.carocean.navicar.McuServiceManager.DataListener
        public void onReceive(int i, byte[] bArr) {
            if (i != 32) {
                return;
            }
            CanPopWind.this.videoMode = bArr[0] & 15;
            if (CanPopWind.this.needShowLog) {
                int length = bArr.length + 3;
                byte[] bArr2 = new byte[length];
                bArr2[0] = 45;
                bArr2[1] = (byte) i;
                bArr2[2] = (byte) bArr.length;
                for (int i2 = 3; i2 < length; i2++) {
                    bArr2[i2] = bArr[i2 - 3];
                }
                CanPopWind.this.uiHandler.sendMessage(CanPopWind.this.uiHandler.obtainMessage(0, bArr2));
            }
        }
    };
    private AudioManager.OnAudioFocusChangeListener mAudioFocusListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.can.ui.CanPopWind.3
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            if (i == -3) {
                Log.i(CanPopWind.TAG, "origncarmediaopen---AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK");
                return;
            }
            if (i == -2) {
                Log.i(CanPopWind.TAG, "origncarmediaopen---AUDIOFOCUS_LOSS_TRANSIENT");
            } else if (i == -1) {
                Log.i(CanPopWind.TAG, "origncarmediaopen---AUDIOFOCUS_LOSS");
            } else {
                if (i != 1) {
                    return;
                }
                Log.i(CanPopWind.TAG, "origncarmediaopen---AUDIOFOCUS_GAIN");
            }
        }
    };
    private Platforms.OnGdDataListener onGdDataListener = new Platforms.OnGdDataListener() { // from class: com.can.ui.CanPopWind.4
        ArrayList<Message> mMsg = new ArrayList<>();
        private DDef.WheelInfo mWheelInfo = new DDef.WheelInfo();

        @Override // com.can.assist.Platforms.OnGdDataListener
        public void onAbout() {
        }

        @Override // com.can.assist.Platforms.OnGdDataListener
        public void onAcc(boolean z, boolean z2) {
        }

        @Override // com.can.assist.Platforms.OnGdDataListener
        public void onBtInfo(int i, int i2) {
        }

        @Override // com.can.assist.Platforms.OnGdDataListener
        public void onCycle2send() {
        }

        @Override // com.can.assist.Platforms.OnGdDataListener
        public void onLang() {
        }

        @Override // com.can.assist.Platforms.OnGdDataListener
        public void onReverse(boolean z) {
        }

        @Override // com.can.assist.Platforms.OnGdDataListener
        public void onTranslateKey(int i, int i2) {
        }

        @Override // com.can.assist.Platforms.OnGdDataListener
        public void onVolInfo(int i) {
        }

        @Override // com.can.assist.Platforms.OnGdDataListener
        public void onTrackData(int i) {
            if (CanPopWind.this.miTrackType == 0) {
                CanPopWind.this.miTrackType = 2;
            }
            if (CanPopWind.this.miTrackType == 2) {
                this.mWheelInfo.mEps = (i * 26) / 540;
            }
        }

        @Override // com.can.assist.Platforms.OnGdDataListener
        public void onScreenSwitch(int i) {
            if (CanPopWind.this.mScreenSwitchStatus != null) {
                if (i == 0) {
                    if (CanPopWind.this.mScreenSwitchStatus.IsShow()) {
                        CanPopWind.this.mScreenSwitchStatus.Hide();
                    }
                } else {
                    if (CanPopWind.this.mScreenSwitchStatus.IsShow()) {
                        return;
                    }
                    CanPopWind.this.mScreenSwitchStatus.show(!CanPopWind.this.getRadarShow());
                }
            }
        }
    };
    private CanKey.OnCanKeyListener onCanKeyListener = new CanKey.OnCanKeyListener() { // from class: com.can.ui.CanPopWind.5
        @Override // com.can.assist.CanKey.OnCanKeyListener
        public void onSeekKey(String str) {
        }

        @Override // com.can.assist.CanKey.OnCanKeyListener
        public void ondo(String str, boolean z) {
        }

        @Override // com.can.assist.CanKey.OnCanKeyListener
        public void onlongOver() {
        }

        @Override // com.can.assist.CanKey.OnCanKeyListener
        public void onRadomRepeatKey(String str) {
            if (str != null) {
                Intent intent = new Intent();
                if (str.equals(DDef.Random)) {
                    intent.setAction(CanContant.ACTION_MEDIA_RANDOM);
                } else if (str.equals(DDef.Repeat)) {
                    intent.setAction(CanContant.ACTION_MEDIA_REPEAT);
                }
                CanPopWind.this.sendBroadcast(intent);
            }
        }
    };
    private AvmSet.OnAvmlistener mAvmListner = new AvmSet.OnAvmlistener() { // from class: com.can.ui.CanPopWind.6
        @Override // com.can.ui.draw.AvmSet.OnAvmlistener
        public void sendData(int i, int i2) {
        }
    };
    private int test = 0;
    private Runnable mRblTestTouchScreen = new Runnable() { // from class: com.can.ui.CanPopWind.7
        @Override // java.lang.Runnable
        public void run() {
            CanPopWind.this.mTouchScreen.appendLog(CanPopWind.access$1508(CanPopWind.this) + " test\n");
            CanPopWind.this.uiHandler.postDelayed(CanPopWind.this.mRblTestTouchScreen, 1000L);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getRadarShow() {
        return false;
    }

    private void setSwicthView() {
    }

    static /* synthetic */ int access$1508(CanPopWind canPopWind) {
        int i = canPopWind.test;
        canPopWind.test = i + 1;
        return i;
    }

    @Override // com.can.services.CanUIService, android.app.Service
    public void onCreate() {
        super.onCreate();
        this.uiHandler = new UIHandler(this);
        CanKey canKey = new CanKey(getApplicationContext(), Integer.valueOf(R.xml.key));
        this.mCanKeyInfo = canKey;
        canKey.setOnCanKeyListener(this.onCanKeyListener);
        Platforms platforms = CanXml.getInstance(getApplicationContext()).getPlatforms();
        this.mPlatformsXxx = platforms;
        platforms.setOnGdDataListener(this.onGdDataListener);
        init();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.ckx.lexus.origncar.media.open");
        intentFilter.addAction(Navi.Action.ACTION_SAVE_FACTORY_DATA);
        registerReceiver(this.mReceiver, intentFilter);
        initMcu();
    }

    private void initMcu() {
        this.mcuServiceManager.regCallback(new int[]{32}, this.dataListener);
        this.mcuServiceManager.isServiceConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void requestAudioFocus() {
        if (this.mAudioManager == null) {
            this.mAudioManager = new AudioFocusManager();
        }
        Log.i(TAG, "origncarmediaopen---requestAudioFocus");
        int iRequestAudioFocus = this.mAudioManager.requestAudioFocus(this.mAudioFocusListener, 1, 3, 1, true);
        if (iRequestAudioFocus != 0 && iRequestAudioFocus == 1) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(Navi.Common.SOURCE_LOCK_FILE, true);
                try {
                    FileChannel channel = fileOutputStream.getChannel();
                    try {
                        FileLock fileLockLock = channel.lock();
                        NaviStatus.putInt(Navi.Status.STATUS_SYS_URI, getContentResolver(), Navi.Status.SYS_SOURCE_ID, 93);
                        fileLockLock.release();
                        if (channel != null) {
                            channel.close();
                        }
                        fileOutputStream.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            if (channel != null) {
                                try {
                                    channel.close();
                                } catch (Throwable th3) {
                                    th.addSuppressed(th3);
                                }
                            }
                            throw th2;
                        }
                    }
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th6) {
                            th4.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
            } catch (Exception e) {
                Log.e(TAG, e.toString());
            }
        }
    }

    private void releaseAudioFocus() {
        Log.i(TAG, "origncarmediaopen---releaseAudioFocus");
        AudioFocusManager audioFocusManager = this.mAudioManager;
        if (audioFocusManager != null) {
            audioFocusManager.abandonAudioFocusRequest(this.mAudioFocusListener);
            this.mAudioManager = null;
        }
    }

    @Override // com.can.services.CanUIService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.mcuServiceManager.unregCallback(this.dataListener);
        this.needShowLog = false;
    }

    private void init() {
        String str = TAG;
        Log.i(str, "++init++");
        LayoutInflater layoutInflater = (LayoutInflater) getApplicationContext().getSystemService("layout_inflater");
        this.mInflater = layoutInflater;
        this.mAirInfo = new Air(layoutInflater, getApplicationContext(), this.mObjHandler);
        this.mLexusAirInfo = new LexusAir(layoutInflater, getApplicationContext(), this.mObjHandler);
        this.mDoorInfo = new Door(layoutInflater, getApplicationContext(), this.mObjHandler);
        this.mTouchScreen = new TouchScreen(layoutInflater, getApplicationContext(), this.mObjHandler, this.mObjCanProxy);
        AvmSet avmSet = new AvmSet(layoutInflater, getApplicationContext(), this.mObjHandler);
        this.mAvmSet = avmSet;
        avmSet.setListener(this.mAvmListner);
        this.mInquiry = new Inquiry(this.mObjHandler);
        this.mScreenSwitchStatus = new ScreenSwitchStatus(layoutInflater, getApplicationContext(), this.mObjHandler);
        Log.i(str, "--init--");
    }

    private boolean getTouchScreenShow() {
        TouchScreen touchScreen = this.mTouchScreen;
        return touchScreen != null && touchScreen.IsShow();
    }

    private boolean getOriginalPageShow() {
        return NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, getContentResolver(), Navi.Status.SYS_ORIGINAL_PAGE_STATE, 0) == 1;
    }

    public boolean IsForeground(Context context, String str) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        return (context == null || TextUtils.isEmpty(str) || (runningTasks = ((ActivityManager) context.getSystemService("activity")).getRunningTasks(1)) == null || runningTasks.size() <= 0 || !str.equals(runningTasks.get(0).topActivity.getClassName())) ? false : true;
    }

    private void launch(DDef.CanAudio canAudio) {
        boolean z = canAudio.mbshow;
    }

    @Override // com.can.services.CanUIService
    public void doMessage(Message message) {
        int i = message.what;
        boolean z = false;
        if (i == 1) {
            Air air = this.mAirInfo;
            if (air != null) {
                DDef.AirInfo airInfo = (DDef.AirInfo) message.obj;
                if (!getTouchScreenShow() && !getRadarShow() && !sIsAirActivityShow) {
                    z = true;
                }
                air.show(airInfo, z);
                Intent intent = new Intent(CanContant.ACTION_CAN_AIRINFO);
                Bundle bundle = new Bundle();
                bundle.putParcelable("AirInfo", (DDef.AirInfo) message.obj);
                intent.putExtras(bundle);
                sendBroadcast(intent);
                return;
            }
            return;
        }
        if (i == 24) {
            Air air2 = this.mAirInfo;
            if (air2 != null) {
                air2.setOutTempInfo((DDef.OutTemputerInfo) message.obj);
                return;
            }
            return;
        }
        if (i == 30) {
            launch((DDef.CanAudio) message.obj);
            return;
        }
        if (i == 45) {
            Platforms platforms = this.mPlatformsXxx;
            if (platforms != null) {
                platforms.put("VideoType", ((DDef.IVideoState) message.obj).mbyVideoState);
                return;
            }
            return;
        }
        if (i == 48) {
            if (this.mPlatformsXxx != null) {
                this.mPlatformsXxx.getMediaInfo().RightVideo(((DDef.RightVideo) message.obj).mbshow);
                return;
            }
            return;
        }
        if (i == 50) {
            CanKey.OnCanKeyListener onCanKeyListener = this.onCanKeyListener;
            if (onCanKeyListener != null) {
                onCanKeyListener.ondo(DDef.AIR_SET, true);
                return;
            }
            return;
        }
        if (i == 3) {
            if (this.mDoorInfo == null || !(message.obj instanceof DDef.BaseInfo)) {
                return;
            }
            DDef.BaseInfo baseInfo = (DDef.BaseInfo) message.obj;
            if (baseInfo.mbDoorValid && 1 == SystemProperties.getInt("persist.sys.door_status_enable", 1)) {
                if (!this.mIsCarInfoShowing) {
                    Door door = this.mDoorInfo;
                    if (!getTouchScreenShow() && !getRadarShow()) {
                        z = true;
                    }
                    door.show(baseInfo, z);
                    return;
                }
                this.mDoorInfo.Hide();
                return;
            }
            return;
        }
        if (i == 4) {
            CanKey canKey = this.mCanKeyInfo;
            if (canKey != null) {
                canKey.sendCankey((DDef.WheelKeyInfo) message.obj);
                return;
            }
            return;
        }
        if (i == 57) {
            if (this.mPlatformsXxx != null) {
                DDef.SystemInfo systemInfo = (DDef.SystemInfo) message.obj;
                if (systemInfo.mPanoramicViewEnable == 1) {
                    this.mPlatformsXxx.getMediaInfo().PanoramicVideo(systemInfo.mPanoramicView == 1);
                    return;
                }
                return;
            }
            return;
        }
        if (i == 58) {
            DDef.AvmInfo avmInfo = (DDef.AvmInfo) message.obj;
            AvmSet avmSet = this.mAvmSet;
            if (avmSet != null) {
                avmSet.setAvmInfo(avmInfo);
                return;
            }
            return;
        }
        if (i != 64) {
            if (i == 65 && (message.obj instanceof byte[])) {
                byte[] bArr = (byte[]) message.obj;
                this.mAirData = bArr;
                LexusAir lexusAir = this.mLexusAirInfo;
                if (!getTouchScreenShow() && !getRadarShow() && !getOriginalPageShow()) {
                    z = true;
                }
                lexusAir.show(bArr, z);
                return;
            }
            return;
        }
        if (this.mTouchScreen != null) {
            if (message.arg1 > 0) {
                if (message.arg2 > 0 && 7 != message.arg1) {
                    Intent intent2 = new Intent(this, (Class<?>) TouchActivity.class);
                    intent2.setFlags(268435456);
                    startActivity(intent2);
                }
                this.mTouchScreen.show(true, message.arg1);
                this.needShowLog = true;
                checkMcuLogTimeout();
                checkMcuVideoMode(true);
                return;
            }
            Intent intent3 = new Intent("com.yecon.bmw.video_mode");
            intent3.setPackage(getPackageName());
            intent3.putExtra("video_mode", message.arg1);
            sendBroadcast(intent3);
            this.mTouchScreen.hide();
            this.needShowLog = false;
            closeMcuLogTimeout();
            checkMcuVideoMode(false);
        }
    }

    private class Inquiry {
        private Handler mHandler;
        private ArrayList<Message> mArrayList = null;
        private Runnable aRunnable = new Runnable() { // from class: com.can.ui.CanPopWind.Inquiry.1
            @Override // java.lang.Runnable
            public void run() {
                Message message;
                boolean z = false;
                if (Inquiry.this.mArrayList.size() > 0) {
                    message = (Message) Inquiry.this.mArrayList.get(0);
                    Inquiry.this.mArrayList.remove(0);
                    z = true;
                } else {
                    message = null;
                }
                if (!z || message == null) {
                    return;
                }
                Inquiry.this.mHandler.postDelayed(Inquiry.this.aRunnable, 800L);
            }
        };

        public Inquiry(Handler handler) {
            this.mHandler = null;
            this.mHandler = handler;
        }

        public void setInquiryInfo(ArrayList<Message> arrayList) {
            this.mArrayList = arrayList;
            if (arrayList != null) {
                this.mHandler.post(this.aRunnable);
            }
        }
    }

    private static class UIHandler extends HandlerWeakReference<CanPopWind> {
        public UIHandler(CanPopWind canPopWind) {
            super(canPopWind);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean z;
            CanPopWind canPopWind = (CanPopWind) this.mWeakReference.get();
            if (canPopWind == null) {
                return;
            }
            if (message.what == 0) {
                if (canPopWind.mTouchScreen.IsShow()) {
                    String strBytesToHexString = CanPopWind.bytesToHexString((byte[]) message.obj);
                    Log.i(CanPopWind.TAG, "mcu status: " + strBytesToHexString);
                    canPopWind.mTouchScreen.appendLog(strBytesToHexString);
                    canPopWind.checkMcuLogTimeout();
                }
            } else {
                if (message.what == 1) {
                    if (canPopWind.mTouchScreen.IsShow()) {
                        canPopWind.mTouchScreen.appendLog("waiting");
                        canPopWind.checkMcuLogTimeout();
                    }
                } else if (message.what == 2) {
                    if (canPopWind.videoMode == 0) {
                        canPopWind.mObjHandler.sendMessage(canPopWind.mObjHandler.obtainMessage(64, canPopWind.videoMode, 0));
                        z = false;
                    } else {
                        z = true;
                    }
                    canPopWind.checkMcuVideoMode(z && canPopWind.mTouchScreen.IsShow());
                }
            }
            super.handleMessage(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkMcuLogTimeout() {
        this.uiHandler.removeMessages(1);
        this.uiHandler.sendEmptyMessageDelayed(1, 5000L);
    }

    private void closeMcuLogTimeout() {
        this.uiHandler.removeMessages(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkMcuVideoMode(boolean z) {
        this.uiHandler.removeMessages(2);
        if (z) {
            this.uiHandler.sendEmptyMessageDelayed(2, 5000L);
        }
    }

    public static String bytesToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(AppConfigParser.ITEM_TIP);
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
            sb.append(" ");
        }
        return sb.toString();
    }
}
