package com.carocean.mcuserver;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.carocean.navicar.Navi;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class DepSerial {
    static final int BUFFER_ZIZE = 4096;
    private static final String TAG = DepSerial.class.getSimpleName();
    private DataReceived mDataReceivedCallback;
    private Thread mReadDataThread;
    private boolean mStopListen;
    private byte[] mbufferRead = new byte[4096];
    private FileInputStream mFileInputStream = null;
    private FileOutputStream mFileOutputStream = null;
    private FileDescriptor mFd = null;

    public interface DataReceived {
        void onReceive(byte[] bArr, int i);
    }

    private native void close();

    private static native FileDescriptor open(String str, int i);

    private static native FileDescriptor sc665sopen(String str, int i);

    static {
        System.loadLibrary("serial_port");
    }

    public boolean openSerialPort(String device, int baudrate) {
        if (TextUtils.equals(MyApplication.CHIP_TYPE, Navi.Common.ZHTD_CHIP_TYPE_SC665S)) {
            this.mFd = sc665sopen(device, baudrate);
        } else {
            this.mFd = open(device, baudrate);
        }
        if (this.mFd == null) {
            Log.e(TAG, "native open returns null==>mFd:" + this.mFd + "\t devicepath:" + device);
            return false;
        }
        String str = TAG;
        Log.v(str, "openSerialPort - device: " + device + " - mFd: " + this.mFd);
        this.mFileInputStream = new FileInputStream(this.mFd);
        this.mFileOutputStream = new FileOutputStream(this.mFd);
        Log.v(str, "openSerialPort - mFileInputStream: " + this.mFileInputStream + " - mFileOutputStream: " + this.mFileOutputStream);
        return true;
    }

    public void closeSerailPort() {
        stopListener();
        close();
    }

    public void write(byte[] b, int pos, int length) throws IOException {
        FileOutputStream fileOutputStream = this.mFileOutputStream;
        if (fileOutputStream == null) {
            Log.e(TAG, "CDEPSerial::write - Device is not opened\n");
            throw new IOException("Device not open.");
        }
        fileOutputStream.write(b, pos, length);
    }

    public int read(byte[] b) throws IOException {
        FileInputStream fileInputStream = this.mFileInputStream;
        if (fileInputStream == null) {
            Log.e(TAG, "CDEPSerial::read - Device is not opened\n");
            throw new IOException("Device not open.");
        }
        return fileInputStream.read(b);
    }

    public void regCallback(DataReceived cb) {
        if (this.mFileInputStream == null) {
            Log.e(TAG, "CDEPSerial::regCallback - Device is not opened\n");
        }
        this.mDataReceivedCallback = cb;
        startListener();
    }

    private void startListener() {
        if (this.mReadDataThread != null) {
            return;
        }
        this.mStopListen = false;
        Thread thread = new Thread() { // from class: com.carocean.mcuserver.DepSerial.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                while (!DepSerial.this.mStopListen) {
                    try {
                        int len = DepSerial.this.mFileInputStream.read(DepSerial.this.mbufferRead, 0, DepSerial.this.mbufferRead.length);
                        if (len > 0) {
                            DepSerial.this.mDataReceivedCallback.onReceive(DepSerial.this.mbufferRead, len);
                        } else {
                            SystemClock.sleep(10L);
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        };
        this.mReadDataThread = thread;
        thread.start();
    }

    private void stopListener() {
        Thread thread = this.mReadDataThread;
        if (thread != null) {
            this.mStopListen = true;
            try {
                try {
                    thread.join();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } finally {
                this.mReadDataThread = null;
                this.mStopListen = false;
            }
        }
    }
}
