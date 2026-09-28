package com.carocean.mcuserver;

import android.util.Log;
import com.carocean.navicar.NaviUtil;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class ObexMcu {
    private static final String TAG = ObexMcu.class.getSimpleName();
    private DepSerial mdepSerial = new DepSerial();
    ObexBuffer obexBuffer = new ObexBuffer();
    ObexObject obexSend = new ObexObject();
    ObexObject obexReceive = new ObexObject();

    public boolean open(String device, int baudrate) {
        if (!this.mdepSerial.openSerialPort(device, baudrate)) {
            return false;
        }
        this.mdepSerial.regCallback(new DepSerial.DataReceived() { // from class: com.carocean.mcuserver.ObexMcu.1
            @Override // com.carocean.mcuserver.DepSerial.DataReceived
            public void onReceive(byte[] b, int length) {
                try {
                    Log.v(ObexMcu.TAG, "received buffer:\n" + NaviUtil.HexUtils.bytesToHexString(b, 0, length, true));
                    McuDataShowHandler.getInstance().handleData(b, 0, length);
                    ObexMcu.this.obexBuffer.write(b, length);
                    while (ObexMcu.this.obexBuffer.read(ObexMcu.this.obexReceive)) {
                        McuDataHandler.getInstance().handleData(ObexMcu.this.obexReceive);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
        return true;
    }

    public void close() {
        this.mdepSerial.closeSerailPort();
    }

    public boolean send(ObexObject obex_object) {
        if (obex_object != null && obex_object.getSTX() == 45) {
            try {
                int object_size = getObjectSize(obex_object.getBuffer(), 0);
                byte crc = calculateCRC(obex_object.getBuffer(), 1, (object_size - 1) - 1);
                obex_object.getBuffer()[object_size - 1] = crc;
                Log.v(TAG, "send buffer:\n" + NaviUtil.HexUtils.bytesToHexString(obex_object.getBuffer(), 0, object_size, true));
                McuDataShowHandler.getInstance().sendData(obex_object.getBuffer(), 0, object_size);
                this.mdepSerial.write(obex_object.getBuffer(), 0, object_size);
            } catch (IOException e) {
                e.printStackTrace();
            }
            return true;
        }
        Log.v(TAG, "object to send is invalid.");
        return false;
    }

    public static boolean isPartialObject(byte[] buffer, int pos, int data_len) {
        int object_size = getObjectSize(buffer, pos);
        if (data_len < object_size) {
            Log.w(TAG, "Received an object partly. data_len = " + data_len + ", object_size = " + object_size);
            return true;
        }
        return false;
    }

    public static boolean isValidObject(byte[] buffer, int pos, int data_len) {
        if (isPartialObject(buffer, pos, data_len)) {
            return false;
        }
        int object_size = getObjectSize(buffer, pos);
        byte crc = calculateCRC(buffer, pos + 1, (object_size - 1) - 1);
        if (crc == buffer[(pos + object_size) - 1]) {
            return true;
        }
        Log.e(TAG, "CRC check error. crc = 0x" + Integer.toHexString(crc & 255).toUpperCase());
        return false;
    }

    public static byte calculateCRC(byte[] buffer, int pos, int len) {
        byte crc = 0;
        for (int i = 0; i < len; i++) {
            crc = (byte) (buffer[pos + i] + crc);
        }
        int i2 = ~crc;
        byte crc2 = (byte) i2;
        return crc2;
    }

    public static int getObjectSize(byte[] buffer, int pos) {
        return (buffer[pos + 2] & 255) + 4;
    }
}
