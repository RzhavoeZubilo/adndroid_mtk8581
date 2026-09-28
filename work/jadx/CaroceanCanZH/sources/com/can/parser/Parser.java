package com.can.parser;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.util.Log;
import com.can.assist.CanContant;
import com.can.assist.CanMessage;
import com.can.assist.CanProxy;
import com.carocean.navicar.PerSysDef;

/* JADX INFO: loaded from: classes.dex */
public class Parser extends CanProxy {
    public static final int AIR_DATA_LEN = 9;
    public static final int DOOR_DATA_LEN = 2;
    public static final int SCREEN_MODE_DATA_LEN = 2;
    public static byte mDoorInfo;
    public static final byte[] ScreenModeData = new byte[2];
    public static final byte[] DoorData = new byte[2];
    public static DDef.BaseInfo mBaseInfo = new DDef.BaseInfo();
    public static final byte[] AirData = new byte[9];
    public static DDef.AirInfo mAirInfo = new DDef.AirInfo();
    private Handler mObjHandler = null;
    private final String TAG = getClass().getName();
    private byte[] mbyAirInfo = new byte[9];

    @Override // com.can.assist.AProxy
    public void Finish() {
    }

    @Override // com.can.assist.AProxy
    public Object getData(int i, int i2) {
        return null;
    }

    @Override // com.can.assist.CanProxy, com.can.assist.AProxy
    public void start(Handler handler, Context context, String str) {
        super.start(null, context, str);
        this.mObjHandler = handler;
    }

    @Override // com.can.assist.AProxy
    public void Init(DDef.E_CMD_TYPE e_cmd_type) {
        RegisterProxy(3, 0);
        RegisterProxy(1, 0);
        RegisterProxy(64, 0);
    }

    @Override // com.can.assist.CanProxy, com.can.assist.AProxy
    public void deInit() {
        super.deInit();
    }

    @Override // com.can.assist.CanProxy, com.can.assist.AProxy
    public void RegisterProxy(int i, int i2) {
        super.RegisterProxy(i, i2);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        byte b;
        byte[] byteArray = message.getData().getByteArray(CanContant.BUND_CAN_RX);
        if (byteArray == null || byteArray.length <= 0) {
            return;
        }
        if (64 == byteArray[0]) {
            sendMsg2Proxy(null, 64, byteArray[1] & 255);
            return;
        }
        if (3 == byteArray[0]) {
            Log.i(this.TAG, "door info");
            if (byteArray.length < 2 || mDoorInfo == (b = byteArray[1])) {
                return;
            }
            mDoorInfo = b;
            mBaseInfo.mbDoorValid = true;
            if (SystemProperties.getInt(PerSysDef.PERSYS_FRONT_DOOR, 0) != 0) {
                byte b2 = (byte) ((byteArray[1] & 128) != 0 ? b | 64 : b & (-65));
                b = (byte) ((64 & byteArray[1]) != 0 ? b2 | (-128) : b2 & 127);
            }
            if (SystemProperties.getInt(PerSysDef.PERSYS_REAR_DOOR, 0) != 0) {
                byte b3 = (byte) ((byteArray[1] & 32) != 0 ? b | 16 : b & (-17));
                b = (byte) ((byteArray[1] & 16) != 0 ? b3 | 32 : b3 & (-33));
            }
            mBaseInfo.mLeftFrontDoor = (byte) ((b >> 7) & 1);
            mBaseInfo.mRightFrontDoor = (byte) ((b >> 6) & 1);
            mBaseInfo.mLeftBackDoor = (byte) ((b >> 5) & 1);
            mBaseInfo.mRightBackDoor = (byte) ((b >> 4) & 1);
            mBaseInfo.mTailBoxDoor = (byte) ((b >> 3) & 1);
            mBaseInfo.mFrontBoxDoor = (byte) ((b >> 2) & 1);
            sendMsg2Proxy(mBaseInfo, 3);
            return;
        }
        if (1 == byteArray[0]) {
            Log.i(this.TAG, "air info");
            if (byteArray.length >= 9) {
                if (this.mbyAirInfo != null) {
                    int i = 0;
                    while (i < 9 && byteArray[i] == this.mbyAirInfo[i]) {
                        i++;
                    }
                    if (i >= byteArray.length) {
                        Log.i(this.TAG, "air info not changed.");
                        return;
                    }
                }
                mAirInfo.mAirIon = (byte) (byteArray[1] & 1);
                mAirInfo.mCircleState = (byte) ((byteArray[1] >> 1) & 1);
                mAirInfo.mBWDefogger = (byte) ((byteArray[1] >> 2) & 1);
                mAirInfo.mFWDefogger = (byte) ((byteArray[1] >> 4) & 1);
                mAirInfo.mAiron = (byte) ((byteArray[1] >> 5) & 1);
                mAirInfo.mBackAirAble = (byte) ((byteArray[1] >> 6) & 1);
                mAirInfo.mManual = (byte) ((byteArray[1] >> 7) & 1);
                mAirInfo.mMaxWindlv = (byte) 8;
                mAirInfo.mWindRate = (byte) (byteArray[2] & 255);
                mAirInfo.mUpwardWind = (byte) 0;
                mAirInfo.mDowmWind = (byte) 0;
                mAirInfo.mParallelWind = (byte) 0;
                if ((byteArray[3] & 1) != 0) {
                    mAirInfo.mParallelWind = (byte) 1;
                }
                if ((byteArray[3] & 2) != 0) {
                    mAirInfo.mUpwardWind = (byte) 1;
                }
                if ((byteArray[3] & 4) != 0) {
                    mAirInfo.mDowmWind = (byte) 1;
                }
                mAirInfo.mbshowLTempLv = false;
                mAirInfo.mbshowRTempLv = false;
                mAirInfo.mbMaxMinDual = false;
                mAirInfo.mMaxTemp = 127.0f;
                mAirInfo.mLeftTemp = byteArray[4] & 127;
                if (255 > (byteArray[4] & 255) && (byteArray[4] & 128) != 0) {
                    DDef.AirInfo airInfo = mAirInfo;
                    airInfo.mLeftTemp = (float) (((double) airInfo.mLeftTemp) + 0.5d);
                }
                mAirInfo.mRightTemp = byteArray[5] & 127;
                if (255 > (byteArray[5] & 255) && (byteArray[5] & 128) != 0) {
                    DDef.AirInfo airInfo2 = mAirInfo;
                    airInfo2.mRightTemp = (float) (((double) airInfo2.mRightTemp) + 0.5d);
                }
                mAirInfo.mLeftHotSeatTemp = byteArray[6];
                mAirInfo.mRightHotSeatTemp = byteArray[7];
                mAirInfo.mDisplay = (byte) 1;
                mAirInfo.bAirUIShow = true;
                byte[] bArr = this.mbyAirInfo;
                System.arraycopy(byteArray, 0, bArr, 0, bArr.length > byteArray.length ? byteArray.length : bArr.length);
                sendMsg2Proxy(mAirInfo, 1);
            }
        }
    }

    @Override // com.can.assist.AProxy
    public void sendMsg2Proxy(Object obj, int i) {
        try {
            CanMessage.getMessage(this.mObjHandler, obj, i, 0);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // com.can.assist.AProxy
    public void sendMsg2Proxy(Object obj, int i, int i2) {
        try {
            CanMessage.getMessage(this.mObjHandler, obj, i, i2);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
