package com.carocean.mcuserver;

import android.os.SystemProperties;
import android.util.Log;
import com.carocean.navicar.PerSysDef;

/* JADX INFO: loaded from: classes2.dex */
public class McuRpc {
    private static final int VOLUME_DATA_DSP_LEN = 6;
    ObexMcu obexMcu;
    ObexObject obex_object;
    private static final String TAG = McuRpc.class.getSimpleName();
    private static McuRpc thiz = new McuRpc();
    private byte[] volume_data_dsp = new byte[6];
    private int muteValue = -1;

    private McuRpc() {
    }

    public static McuRpc getInstance() {
        return thiz;
    }

    public boolean open(String device, int baudrate) {
        if (is_open()) {
            Log.e(TAG, "do not call open repeat.");
            return false;
        }
        ObexMcu obexMcu = new ObexMcu();
        this.obexMcu = obexMcu;
        if (!obexMcu.open(device, baudrate)) {
            return false;
        }
        ObexObject obexObject = new ObexObject();
        this.obex_object = obexObject;
        obexObject.setSTX(ObexObject.OBEX_OBJECT_STX);
        return true;
    }

    public boolean close() {
        ObexMcu obexMcu = this.obexMcu;
        if (obexMcu != null) {
            obexMcu.close();
            return true;
        }
        Log.e(TAG, "serial port not open or open fail.");
        return false;
    }

    public boolean is_open() {
        return this.obex_object != null;
    }

    public void shakeHand() {
    }

    public void getMcuStatus() {
    }

    public void setSourceID(int frontSourceID, int rearSourceID) {
        int soundSwitchMode = SystemProperties.getInt(PerSysDef.PERSYS_CARAUX_SWITCH_MODE, 0);
        this.obex_object.setCmdCode(-104);
        this.obex_object.setDataLength((byte) 4);
        this.obex_object.setData(0, (byte) -112);
        this.obex_object.setData(1, (byte) (soundSwitchMode & 255));
        this.obex_object.setData(2, (byte) ((soundSwitchMode >> 8) & 255));
        this.obex_object.setData(3, (byte) ((soundSwitchMode >> 16) & 255));
        this.obexMcu.send(this.obex_object);
    }

    public void getVolumeTable() {
    }

    public void setVolumeTable(int volume, boolean isMute) {
    }

    public void keyCommand(int keyValue, int parameter) {
        if (keyValue == 161) {
            this.obex_object.setCmdCode(-104);
            this.obex_object.setDataLength((byte) 2);
            this.obex_object.setData(0, (byte) -98);
            this.obex_object.setData(1, (byte) (parameter >> 24));
            this.obexMcu.send(this.obex_object);
            return;
        }
        if (keyValue == 160 && this.muteValue != parameter) {
            this.muteValue = parameter;
            McuDataHandler.getInstance().setMuteGpio(this.muteValue == 1, false);
        }
    }

    public void getSysParameters(int index) {
    }

    public void setSWCTable(byte[] data) {
    }

    public void setSWCStudyOP(int operation) {
    }

    public void setEQData(byte[] eqData) {
    }

    public void setNaviGuidancePlay(boolean isPlay) {
    }

    public void setNaviGuidanceMixing(int mixing) {
    }

    public void RPCSetMCUVolumeTableDSP(int arg1, int arg2) {
    }

    public void RPCSetMCUVolume(int arg1, int arg2) {
        byte[] data = {-108, (byte) arg1, (byte) (arg1 >> 8), 0};
        this.obex_object.setCmdCode(-104);
        this.obex_object.setDataLength((byte) data.length);
        this.obex_object.setData(data, 0, 0, data.length);
        this.obexMcu.send(this.obex_object);
        byte[] data2 = {-106, (byte) (arg1 >> 16), 0, 0};
        this.obex_object.setCmdCode(-104);
        this.obex_object.setDataLength((byte) data2.length);
        this.obex_object.setData(data2, 0, 0, data2.length);
        this.obexMcu.send(this.obex_object);
        int mute = (arg1 >> 24) & 1;
        if (mute != this.muteValue) {
            this.muteValue = mute;
            McuDataHandler.getInstance().setMuteGpio(this.muteValue == 1, false);
        }
    }

    public void setRadio2Freq(int band, int freq) {
    }

    public void generalRpcCall(int cmd_code, byte[] data) {
        this.obex_object.setCmdCode((byte) cmd_code);
        if (data == null) {
            this.obex_object.setDataLength((byte) 0);
        } else if (data.length > 255) {
            Log.e(TAG, "data length is invalid, ignore this RpcCall. length = " + data.length);
            return;
        } else {
            this.obex_object.setDataLength((byte) data.length);
            this.obex_object.setData(data, 0, 0, data.length);
        }
        this.obexMcu.send(this.obex_object);
    }

    public void RPCSetBTCallStatus(int arg1) {
        byte[] data = {-97, (byte) arg1, 0, 0};
        this.obex_object.setCmdCode(-104);
        this.obex_object.setDataLength((byte) data.length);
        this.obex_object.setData(data, 0, 0, data.length);
        this.obexMcu.send(this.obex_object);
    }

    public void sendMute(int status) {
        this.obex_object.setCmdCode(-104);
        this.obex_object.setDataLength((byte) 4);
        this.obex_object.setData(0, (byte) -103);
        this.obex_object.setData(1, (byte) status);
        this.obex_object.setData(2, (byte) 0);
        this.obex_object.setData(3, (byte) 0);
        this.obexMcu.send(this.obex_object);
    }

    public void sendMapGpioStatus(int value) {
        this.obex_object.setCmdCode(-104);
        this.obex_object.setDataLength((byte) 4);
        this.obex_object.setData(0, (byte) -70);
        this.obex_object.setData(1, (byte) value);
        this.obex_object.setData(2, (byte) 0);
        this.obex_object.setData(3, (byte) 0);
        this.obexMcu.send(this.obex_object);
    }
}
