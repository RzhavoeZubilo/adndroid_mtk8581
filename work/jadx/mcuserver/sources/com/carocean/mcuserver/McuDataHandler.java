package com.carocean.mcuserver;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.support.v4.view.InputDeviceCompat;
import android.util.Log;
import com.carocean.navicar.Navi;
import com.carocean.navicar.NaviStatus;
import com.carocean.navicar.NaviUtil;
import com.carocean.navicar.PerSysDef;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Calendar;

/* JADX INFO: loaded from: classes2.dex */
public class McuDataHandler {
    private static McuDataHandler thiz;
    private BufferedWriter mBWMapGpio;
    McuDataReceived mCallback;
    private static final String TAG = McuDataHandler.class.getSimpleName();
    private static final Object mLockMapIo = new Object();
    static String MAP_GPIO_PATH = "/sys/ext_attr/mapaudio_gpio";
    private static final Object mLockDDR_FLAG = new Object();
    static String DDR_FLAG_PATH = "/sys/ext_attr/memsize_2g";
    private boolean onHandShake = false;
    private int vedioMode = 0;
    public int audioMode = 0;
    public int auxStatus = 1;
    public int mDspType = -1;
    public int mSysBTCallStaus = 0;
    public int mSysCPCallStaus = 0;
    public int mSysGPSGuidance = 0;
    public int mSysTTSGuiding = 0;
    private int mAccStatus = -1;
    private int mRearStatus = -1;
    private int mLightStatus = -1;
    private int mBrakeStatus = -1;
    private int mHostType = -1;
    private int mOriginalRadarShow = -1;
    private boolean oldOriginalPageShow = false;
    private int armMuteStatus = 0;
    private int mMagGpioValue = 0;

    public interface McuDataReceived {
        void onReceived(int i, byte[] bArr);
    }

    private McuDataHandler() {
    }

    public static McuDataHandler getInstance() {
        if (thiz == null) {
            thiz = new McuDataHandler();
        }
        return thiz;
    }

    public void regCallback(McuDataReceived callback) {
        this.mCallback = callback;
    }

    public void unregCallback(McuDataReceived callback) {
        if (this.mCallback == callback) {
            this.mCallback = null;
        }
    }

    public void handleData(ObexObject obexObject) {
        byte[] data;
        Log.v(TAG, "handle package, command code = " + Integer.toHexString(obexObject.getCmdCode()));
        McuDataReceived mcuDataReceived = this.mCallback;
        if (mcuDataReceived != null) {
            mcuDataReceived.onReceived(obexObject.getCmdCode(), obexObject.getData());
        }
        if (!this.onHandShake) {
            this.onHandShake = true;
            onHandShake();
        }
        int cmdCode = obexObject.getCmdCode();
        if (cmdCode == 18) {
            onAccChange(obexObject.getData(2));
            onStatusChange(obexObject.getData());
            return;
        }
        if (cmdCode == 32) {
            int data2 = obexObject.getData(1) & 15;
            if (this.vedioMode != data2) {
                this.vedioMode = data2;
                callCanZHUiService(data2, true);
            }
            int data3 = (obexObject.getData(1) >> 4) & 15;
            if (data3 != this.audioMode) {
                this.audioMode = data3;
                if (data3 != 0) {
                    setMuteGpio(false, true);
                }
            }
            int data4 = obexObject.getData(2) & 255;
            if (this.auxStatus != data4) {
                this.auxStatus = data4;
                if (data4 == 0) {
                    if (isMapPlay()) {
                        setMapGpio(1, false);
                    }
                } else {
                    setMapGpio(0, true);
                }
            }
            if (obexObject.getDataLength() >= 5) {
                int data5 = obexObject.getData(3) & 255;
                if (this.mHostType != data5) {
                    this.mHostType = data5;
                    SystemProperties.set(PerSysDef.PERSYS_HOST_TYPE, String.valueOf(data5));
                    if (SystemProperties.getInt(PerSysDef.PERSYS_LT9211_ENABLE, 0) == 1) {
                        LT9211Util.writeLT9211CameraResolution(this.mHostType);
                    }
                }
                int data6 = obexObject.getData(4) & 255;
                if (isBtCall() != (data6 & 1)) {
                    McuRpc.getInstance().RPCSetBTCallStatus(isBtCall() ? 1 : 0);
                }
                int i = (data6 & 16) == 0 ? 0 : 1;
                if (this.mDspType != i) {
                    this.mDspType = i;
                    SystemProperties.set(PerSysDef.PERSYS_DSP_TYPE, String.valueOf(i));
                    MyApplication.getInstance().sendBroadcastAsUser(new Intent(Navi.Action.ACTION_DSPTYPE_CHANGED), UserHandle.ALL);
                }
                if (((data6 & 4) >> 2) != this.armMuteStatus) {
                    McuRpc.getInstance().sendMute(this.armMuteStatus);
                }
            }
            if (obexObject.getDataLength() >= 6) {
                int data7 = obexObject.getData(5) & 255;
                int i2 = (data7 & 4) >> 2;
                if (i2 != this.mOriginalRadarShow) {
                    this.mOriginalRadarShow = i2;
                    callOriginalActivityByRadarPage(i2);
                }
                if (this.mMagGpioValue != ((data7 & 32) >> 5)) {
                    McuRpc.getInstance().sendMapGpioStatus(this.mMagGpioValue);
                    return;
                }
                return;
            }
            return;
        }
        if (cmdCode == 36 && obexObject.getDataLength() >= 6 && (data = obexObject.getData()) != null) {
            if (MyApplication.isLexus() && SystemProperties.getInt(PerSysDef.PERSYS_AIR_TEMP_REVERSE, 0) == 1) {
                byte b = data[1];
                data[1] = data[2];
                data[2] = b;
            }
            callCanZHUiService(data);
        }
    }

    void onHandShake() {
        NaviStatus.putInt(Navi.Status.STATUS_SYS_URI, MyApplication.getInstance().getContentResolver(), Navi.Status.SYS_MCU_SERVICE_READY, 1);
    }

    void onAccChange(int status) {
        int accStatus = ((status & (-128)) == 0 && (status & 16) == 0) ? 0 : 1;
        if (this.mAccStatus != accStatus) {
            this.mAccStatus = accStatus;
            NaviStatus.putInt(Navi.Status.STATUS_SYS_URI, MyApplication.getInstance().getContentResolver(), Navi.Status.SYS_ACC_STATUS, accStatus);
        }
    }

    void onSysParameters(byte[] params) {
        if (params[1] == 2) {
            int year = NaviUtil.DateTimeUtils.BCD2Int(params, 2, 2);
            int month = NaviUtil.DateTimeUtils.BCD2Int(params, 4, 1);
            int day = NaviUtil.DateTimeUtils.BCD2Int(params, 5, 1);
            int hour = NaviUtil.DateTimeUtils.BCD2Int(params, 6, 1);
            int minute = NaviUtil.DateTimeUtils.BCD2Int(params, 7, 1);
            int second = NaviUtil.DateTimeUtils.BCD2Int(params, 8, 1);
            Calendar c = Calendar.getInstance();
            c.set(1, year);
            c.set(2, month - 1);
            c.set(5, day);
            c.set(11, hour);
            c.set(12, minute);
            c.set(13, second);
            c.set(14, 0);
            Calendar current = Calendar.getInstance();
            if (c.compareTo(current) > 0) {
                NaviUtil.DateTimeUtils.setSysDate(MyApplication.getInstance(), year, month, day);
                NaviUtil.DateTimeUtils.setSysTime(MyApplication.getInstance(), hour, minute, second);
            } else {
                Log.v(TAG, "ignore MCU date : " + year + month + day);
            }
        }
    }

    void onStatusChange(byte[] status) {
        if (status != null) {
            boolean putvalues = false;
            int lightstatus = ((status[0] & 64) == 0 && (status[0] & 32) == 0) ? 0 : 1;
            int brakestatus = ((status[2] & 1) == 0 && (status[2] & 2) == 0) ? 0 : 1;
            int rearstatus = (status[2] & 64) >> 6;
            ContentValues values = new ContentValues();
            if (this.mRearStatus != rearstatus) {
                this.mRearStatus = rearstatus;
                values.put(Navi.Status.SYS_REAR_CAMERA, Integer.valueOf(rearstatus));
                putvalues = true;
            }
            if (this.mLightStatus != lightstatus) {
                this.mLightStatus = lightstatus;
                values.put(Navi.Status.SYS_LIGHT_CHECK, Integer.valueOf(lightstatus));
                putvalues = true;
            }
            if (this.mBrakeStatus != brakestatus) {
                this.mBrakeStatus = brakestatus;
                values.put(Navi.Status.SYS_BRAKE_STATUS, Integer.valueOf(brakestatus));
                putvalues = true;
            }
            if (putvalues) {
                NaviStatus.putValues(Navi.Status.STATUS_SYS_URI, MyApplication.getInstance().getContentResolver(), values);
            }
        }
    }

    void onRearStatusChange(byte[] status) {
        if (status != null) {
            boolean putvalues = false;
            int rearstatus = (status[1] & 15) != 7 ? 0 : 1;
            ContentValues values = new ContentValues();
            if (this.mRearStatus != rearstatus) {
                this.mRearStatus = rearstatus;
                values.put(Navi.Status.SYS_REAR_CAMERA, Integer.valueOf(rearstatus));
                putvalues = true;
            }
            if (putvalues) {
                NaviStatus.putValues(Navi.Status.STATUS_SYS_URI, MyApplication.getInstance().getContentResolver(), values);
            }
        }
    }

    void onVolumeTable(byte[] data) {
        byte b = data[1];
        if (data[5] == 1) {
        }
    }

    static class MCU_STATUS {
        static final int MCU_STATUS_DATA_LENGTH = 9;
        private byte[] data;

        MCU_STATUS(byte[] data) {
            if (data == null || data.length != 9) {
                Log.e(McuDataHandler.TAG, "MCU_STATUS data length is invalid.");
            }
            this.data = data;
        }

        boolean is_CDC_exist() {
            return (this.data[0] & 1) != 0;
        }

        boolean is_DISK_exist() {
            return (this.data[0] & 2) != 0;
        }

        boolean is_DISK_autoin() {
            return (this.data[0] & 4) != 0;
        }

        boolean is_camera_on() {
            return (this.data[1] & 1) != 0;
        }

        boolean is_light_on() {
            return (this.data[1] & 2) != 0;
        }

        boolean is_brake_on() {
            return (this.data[1] & 4) == 0;
        }

        int get_source_id() {
            return this.data[3];
        }

        boolean is_sleep() {
            return (this.data[3] & 1) != 0;
        }
    }

    void onKeyCommand(int key, int param) {
        if (key == 9) {
            key = 8;
        }
        if (handleBTCallKey(key, param) || handleRearCameraKey(key, param)) {
            return;
        }
        Intent intent = new Intent(Navi.Action.ACTION_MCU_KEY_COMMAND);
        intent.putExtra(Navi.Action.MCU_KEY_VALUE, key);
        intent.putExtra(Navi.Action.MCU_KEY_PARAM, param);
        if (key != 4 && key != 5) {
            MyApplication.getInstance().sendBroadcast(intent);
        }
        int systemKeyCode = Navi.KeyCode.getSystemKeyCode(key);
        if (systemKeyCode != -1) {
            NaviUtil.sendKeyDownUpSync(systemKeyCode, InputDeviceCompat.SOURCE_DPAD);
        }
    }

    private boolean handleBTCallKey(int key, int param) {
        ContentResolver cr = MyApplication.getInstance().getContentResolver();
        NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, cr, Navi.Status.SYS_BT_CALL_STATUS, -1);
        return false;
    }

    private boolean handleRearCameraKey(int key, int param) {
        ContentResolver cr = MyApplication.getInstance().getContentResolver();
        int status = NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, cr, Navi.Status.SYS_REAR_CAMERA, -1);
        if (status == 1) {
            return true;
        }
        return false;
    }

    public void callCanZHUiService(int i, boolean z) {
        Intent intent = new Intent();
        intent.setAction("yecon.intent.CanUIService");
        intent.setPackage(Navi.PackageName.CKX_CAR_INFO);
        intent.putExtra("videomode", i);
        intent.putExtra("sourceresumed", z ? 1 : 0);
        MyApplication.getInstance().startService(intent);
    }

    public void callCanZHUiService(byte[] air) {
        Intent intent = new Intent();
        intent.setAction("yecon.intent.CanUIService");
        intent.setPackage(Navi.PackageName.CKX_CAR_INFO);
        intent.putExtra("air", air);
        MyApplication.getInstance().startService(intent);
    }

    public void callOriginalActivityByRadarPage(int status) {
        Intent intent = new Intent();
        intent.setAction(Navi.Action.ACTION_ORIGINAL_CAMERA);
        if (status == 1) {
            if (!isBtCall() && this.mRearStatus != 1 && !isOriginalPageShow()) {
                this.oldOriginalPageShow = true;
                intent.putExtra(Navi.Action.CMD_CODE, Navi.Action.CMD_START_SOURCE);
                intent.putExtra("requestaudiofoucs", false);
                MyApplication.getInstance().sendBroadcast(intent);
                return;
            }
            return;
        }
        if (this.oldOriginalPageShow && isOriginalPageShow()) {
            this.oldOriginalPageShow = false;
            intent.putExtra(Navi.Action.CMD_CODE, Navi.Action.CMD_STOP_SOURCE);
            MyApplication.getInstance().sendBroadcast(intent);
        }
    }

    public boolean isOriginalPageShow() {
        return NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, MyApplication.getInstance().getContentResolver(), Navi.Status.SYS_ORIGINAL_PAGE_STATE, 0) == 1;
    }

    public void setMapGpio(int value, boolean force) {
        synchronized (mLockMapIo) {
            int mode = SystemProperties.getInt(PerSysDef.PERSYS_SPEAKER_SWITCH_MODE, 0);
            if (1 == mode || mode == 3) {
                force = true;
            } else if (2 == mode) {
                return;
            }
            if (!force && this.auxStatus == 1) {
                Log.d(TAG, "cat't setMapGpio: " + this.auxStatus);
                return;
            }
            Log.d(TAG, "setMapGpio value: " + value);
            try {
                if (this.mBWMapGpio == null) {
                    this.mBWMapGpio = new BufferedWriter(new FileWriter(MAP_GPIO_PATH));
                }
                this.mBWMapGpio.write(value != 0 ? "0,1" : "0,0");
                this.mBWMapGpio.flush();
                this.mMagGpioValue = value;
                McuRpc.getInstance().sendMapGpioStatus(this.mMagGpioValue);
            } catch (IOException e) {
                Log.e(TAG, "setMapGpio error!");
                e.printStackTrace();
                this.mMagGpioValue = 0;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0041 A[Catch: IOException -> 0x0061, all -> 0x007e, TryCatch #0 {IOException -> 0x0061, blocks: (B:11:0x003d, B:13:0x0041, B:14:0x004f, B:18:0x0058), top: B:31:0x003d, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:16:0x0053  */
    /* JADX WARN: Code duplicated, block: B:17:0x0056  */
    /* JADX WARN: Code duplicated, block: B:23:0x006e  */
    /* JADX WARN: Code duplicated, block: B:24:0x0070  */
    public void setMuteGpio(boolean value, boolean force) {
        int i;
        String str;
        synchronized (mLockMapIo) {
            if (!force) {
                if (this.audioMode != 0) {
                    Log.d(TAG, "cat't setMuteGpio: " + this.audioMode);
                    return;
                }
                Log.d(TAG, "setMuteGpio value: " + value);
                try {
                    if (this.mBWMapGpio == null) {
                        this.mBWMapGpio = new BufferedWriter(new FileWriter(MAP_GPIO_PATH));
                    }
                    BufferedWriter bufferedWriter = this.mBWMapGpio;
                    if (value) {
                        str = "1,1";
                    } else {
                        str = "1,0";
                    }
                    bufferedWriter.write(str);
                    this.mBWMapGpio.flush();
                } catch (IOException e) {
                    Log.d(TAG, "setMuteGpio error!");
                    e.printStackTrace();
                }
                if (value) {
                    i = 0;
                } else {
                    i = 1;
                }
                this.armMuteStatus = i;
                McuRpc.getInstance().sendMute(this.armMuteStatus);
                return;
            }
            Log.d(TAG, "setMuteGpio value: " + value);
            if (this.mBWMapGpio == null) {
                this.mBWMapGpio = new BufferedWriter(new FileWriter(MAP_GPIO_PATH));
            }
            BufferedWriter bufferedWriter2 = this.mBWMapGpio;
            if (value) {
                str = "1,1";
            } else {
                str = "1,0";
            }
            bufferedWriter2.write(str);
            this.mBWMapGpio.flush();
            if (value) {
                i = 0;
            } else {
                i = 1;
            }
            this.armMuteStatus = i;
            McuRpc.getInstance().sendMute(this.armMuteStatus);
            return;
            throw th;
        }
    }

    public boolean isBtCall() {
        return (this.mSysBTCallStaus == 0 && this.mSysCPCallStaus == 0) ? false : true;
    }

    public boolean isGPSGuidance() {
        return this.mSysGPSGuidance == 1;
    }

    public boolean isTTSGuidance() {
        return this.mSysTTSGuiding == 1;
    }

    public boolean isMapPlay() {
        return isBtCall() || isGPSGuidance() || isTTSGuidance();
    }

    public void setDDRFlag() {
        synchronized (mLockDDR_FLAG) {
            int ddrflag = SystemProperties.getInt(PerSysDef.PERSYS_DDR_FLAG, 0);
            try {
                BufferedWriter bw = new BufferedWriter(new FileWriter(DDR_FLAG_PATH));
                bw.write(String.valueOf(ddrflag));
                bw.flush();
                Log.d(TAG, "setDDRFlag ok");
            } catch (IOException e) {
                Log.e(TAG, "setDDRFlag error!");
                e.printStackTrace();
            }
        }
    }
}
