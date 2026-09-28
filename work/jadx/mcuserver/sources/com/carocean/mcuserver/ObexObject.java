package com.carocean.mcuserver;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class ObexObject {
    public static final int OBEX_OBJECT_HEAD_SIZE = 1;
    public static final int OBEX_OBJECT_MIN_PACKAGE_SIZE = 4;
    public static final byte OBEX_OBJECT_STX = 45;
    public static final int OBEX_PARAMETERS_OFFSET = 3;
    public byte[] buffer = new byte[272];

    public byte getSTX() {
        return this.buffer[0];
    }

    public void setSTX(byte value) {
        this.buffer[0] = value;
    }

    public int getCmdCode() {
        return this.buffer[1] & 255;
    }

    public void setCmdCode(int value) {
        this.buffer[1] = (byte) value;
    }

    public byte[] getBuffer() {
        return this.buffer;
    }

    public int getDataLength() {
        return this.buffer[2] & 255;
    }

    public void setDataLength(byte value) {
        this.buffer[2] = value;
    }

    public void setData(int dstPos, byte value) {
        this.buffer[dstPos + 3] = value;
    }

    public void setData(byte[] srcValue, int srcPos, int dstPos, int length) {
        if (length > 255 || dstPos + length > 255) {
            Log.e("ObexObject", "data length could not exceed 255 bytes. length = " + (dstPos + length));
        } else {
            System.arraycopy(srcValue, srcPos, this.buffer, dstPos + 3, length);
        }
    }

    public void SetDataToValue(byte value, int dstPos, int length) {
        for (int i = 0; i < length; i++) {
            this.buffer[dstPos + 3 + i] = value;
        }
    }

    public int getData(int index) {
        return this.buffer[index + 3] & 255;
    }

    public boolean getData(int srcPos, byte[] dstValue, int dstPos, int length) {
        if (dstValue == null || dstValue.length < length || length > getDataLength()) {
            return false;
        }
        System.arraycopy(this.buffer, srcPos + 3, dstValue, dstPos, length);
        return true;
    }

    public byte[] getData() {
        if (getDataLength() <= 0) {
            return null;
        }
        byte[] data = new byte[getDataLength()];
        System.arraycopy(this.buffer, 3, data, 0, getDataLength());
        return data;
    }
}
