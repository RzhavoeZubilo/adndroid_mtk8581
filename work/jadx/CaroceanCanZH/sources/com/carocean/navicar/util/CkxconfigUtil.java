package com.carocean.navicar.util;

import android.util.Log;
import com.can.assist.CanContant;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class CkxconfigUtil {
    private static final int BUFFER_LEN = 32;
    private static final String CKXCONFIG_PATH = "/dev/block/by-name/ckxconfig";
    private static final int FAST_RVC_OFFSET = 28;
    private static final String TAG = "CkxconfigUtil";
    private static final String[] hexDigits = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"};

    /* JADX WARN: Code duplicated, block: B:22:0x0036  */
    public static byte[] readCkxconfigBin() throws Throwable {
        StringBuilder sb;
        byte[] bArr = new byte[32];
        FileInputStream fileInputStream = null;
        try {
            try {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(new File(CKXCONFIG_PATH));
                    try {
                        fileInputStream2.read(bArr, 0, 32);
                        fileInputStream2.close();
                    } catch (IOException e) {
                        e = e;
                        fileInputStream = fileInputStream2;
                        e.printStackTrace();
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        sb = new StringBuilder();
                        while (i < 32) {
                            if (i <= 0) {
                            }
                            sb.append(" ");
                            sb.append(byteToHexString(bArr[i]));
                        }
                        Log.i(TAG, "readCkxconfigBin: " + sb.toString());
                        return bArr;
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    e = e3;
                }
                sb = new StringBuilder();
                for (int i = 0; i < 32; i++) {
                    if (i <= 0 && i % 16 == 0) {
                        sb.append("\n");
                    }
                    sb.append(" ");
                    sb.append(byteToHexString(bArr[i]));
                }
                Log.i(TAG, "readCkxconfigBin: " + sb.toString());
                return bArr;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }

    public static byte readFastRVCValue() {
        return readCkxconfigBin()[28];
    }

    /* JADX WARN: Code duplicated, block: B:35:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void writeFastRVCValue(byte b) throws Throwable {
        FileOutputStream fileOutputStream;
        Throwable th;
        IOException e;
        File file = new File(CKXCONFIG_PATH);
        byte[] ckxconfigBin = readCkxconfigBin();
        Log.i(TAG, "writeFastRVCValue: set value=" + byteToHexString(b) + ",config value=" + byteToHexString(ckxconfigBin[28]));
        if (ckxconfigBin[28] != b) {
            ckxconfigBin[28] = b;
            try {
                try {
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        try {
                            fileOutputStream.write(ckxconfigBin);
                            Log.i(TAG, "writeFastRVCValue: success");
                            fileOutputStream.close();
                        } catch (IOException e2) {
                            e = e2;
                            e.printStackTrace();
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            readCkxconfigBin();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            } catch (IOException e5) {
                fileOutputStream = null;
                e = e5;
            } catch (Throwable th3) {
                fileOutputStream = null;
                th = th3;
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                throw th;
            }
            readCkxconfigBin();
        }
    }

    public static String byteToHexString(byte b) {
        int i = b;
        if (b < 0) {
            i = b + CanContant.KEY_UP;
        }
        int i2 = i / 16;
        StringBuilder sb = new StringBuilder();
        String[] strArr = hexDigits;
        return sb.append(strArr[i2]).append(strArr[i % 16]).toString();
    }
}
