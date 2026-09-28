package com.carocean.mcuserver;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class ObexBuffer {
    private static final String TAG = ObexBuffer.class.getSimpleName();
    private final int SIZE = 4352;
    private byte[] buffer = new byte[4352];
    private int count = 0;

    void write(byte[] b, int length) {
        int i = this.count;
        if (i + length > 4352) {
            Log.e(TAG, "buffer is full, no space to hold buffer to write.");
        } else {
            System.arraycopy(b, 0, this.buffer, i, length);
            this.count += length;
        }
    }

    boolean read(ObexObject obex) {
        int pos = 0;
        int data_len = this.count - 0;
        boolean ret = false;
        boolean need_discard_data_tip = true;
        while (data_len >= 4) {
            byte[] bArr = this.buffer;
            if (bArr[pos] == 45) {
                if (!ObexMcu.isPartialObject(bArr, pos, data_len)) {
                    if (ObexMcu.isValidObject(this.buffer, pos, data_len)) {
                        int object_size = ObexMcu.getObjectSize(this.buffer, pos);
                        if (obex != null) {
                            System.arraycopy(this.buffer, pos, obex.getBuffer(), 0, object_size);
                        }
                        pos += object_size;
                        ret = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (need_discard_data_tip) {
                need_discard_data_tip = false;
                Log.v(TAG, "discard some buffer.");
            }
            pos++;
            data_len = this.count - pos;
        }
        byte[] bArr2 = this.buffer;
        System.arraycopy(bArr2, pos, bArr2, 0, this.count - pos);
        this.count -= pos;
        return ret;
    }
}
