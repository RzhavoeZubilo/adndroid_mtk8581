package com.carocean.mcuserver;

/* JADX INFO: loaded from: classes2.dex */
public class McuDataShowHandler {
    private static final String TAG = McuDataShowHandler.class.getSimpleName();
    private static McuDataShowHandler thiz;
    McuDataShowCallBack mCallback;
    private boolean mcuDataShow = false;

    public interface McuDataShowCallBack {
        void onDataReceived(DataDirection dataDirection, byte[] bArr);
    }

    private McuDataShowHandler() {
    }

    public static McuDataShowHandler getInstance() {
        if (thiz == null) {
            thiz = new McuDataShowHandler();
        }
        return thiz;
    }

    public void setMcuDataShow(boolean mcuDataShow) {
        this.mcuDataShow = mcuDataShow;
    }

    public void handleData(byte[] src, int pos, int length) {
        if (this.mcuDataShow && this.mCallback != null) {
            byte[] dst = new byte[length];
            System.arraycopy(src, pos, dst, 0, length);
            this.mCallback.onDataReceived(DataDirection.RECEIVED, dst);
        }
    }

    public void sendData(byte[] src, int pos, int length) {
        if (this.mcuDataShow && this.mCallback != null) {
            byte[] dst = new byte[length];
            System.arraycopy(src, pos, dst, 0, length);
            this.mCallback.onDataReceived(DataDirection.SEND, dst);
        }
    }

    public enum DataDirection {
        SEND(0),
        RECEIVED(1);

        private final int value;

        DataDirection(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }
    }

    public void regCallback(McuDataShowCallBack callback) {
        this.mCallback = callback;
    }

    public void unregCallback(McuDataShowCallBack callback) {
        if (this.mCallback == callback) {
            this.mCallback = null;
        }
    }
}
