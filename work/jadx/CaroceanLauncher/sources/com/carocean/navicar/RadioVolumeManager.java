package com.carocean.navicar;

import android.content.ContentResolver;
import android.util.Log;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class RadioVolumeManager {
    private static final int SINGLE_VOLUME_TABLE_SIZE = 80;
    static final String TAG = "RadioVolumeManager";
    private static RadioVolumeManager mInstatnce = new RadioVolumeManager();

    private RadioVolumeManager() {
    }

    public static RadioVolumeManager getInstance() {
        return mInstatnce;
    }

    public boolean setVolumeTable(@Nonnull ContentResolver contentResolver, int i, @Nonnull byte[] bArr) {
        if ((i == 1 || i == 2) && bArr != null && bArr.length == 80) {
            byte[] bArr2 = (byte[]) NaviStatus.getObject(Navi.Status.STATUS_URI, contentResolver, Navi.Status.ST_RADIO_VOLUME_TABLE);
            if (bArr2 == null || bArr2.length != 160) {
                Log.e(TAG, "Volume Table not initialized or initialized error. setVolumeTable fail.");
            } else {
                System.arraycopy(bArr, 0, bArr2, (i - 1) * 80, bArr.length);
                NaviStatus.putObject(Navi.Status.STATUS_URI, contentResolver, Navi.Status.ST_RADIO_VOLUME_TABLE, bArr2);
                return true;
            }
        }
        return false;
    }

    public boolean setVolumeTable(@Nonnull ContentResolver contentResolver, @Nonnull byte[] bArr) {
        if (bArr != null && bArr.length == 160) {
            NaviStatus.putObject(Navi.Status.STATUS_URI, contentResolver, Navi.Status.ST_RADIO_VOLUME_TABLE, bArr);
            return true;
        }
        Log.e(TAG, "Parameters error.");
        return false;
    }

    @Nullable
    public byte[] getVolumeTable(@Nonnull ContentResolver contentResolver, int i) {
        byte[] bArr = (byte[]) NaviStatus.getObject(Navi.Status.STATUS_URI, contentResolver, Navi.Status.ST_RADIO_VOLUME_TABLE);
        if (bArr == null || bArr.length != 160) {
            Log.e(TAG, "Volume Table not initialized or initialized error. getVolumeTable fail.");
            return null;
        }
        if (i == 1 || i == 2) {
            byte[] bArr2 = new byte[80];
            System.arraycopy(bArr, (i - 1) * 80, bArr2, 0, 80);
            return bArr2;
        }
        Log.e(TAG, "Parameters error, type should be FM or AM.");
        return null;
    }

    public int getVolume(@Nonnull ContentResolver contentResolver, int i, int i2) {
        return getVolume(getVolumeTable(contentResolver), i, i2);
    }

    public int getVolume(@Nonnull byte[] bArr, int i, int i2) {
        if (bArr == null || i2 == 0) {
            return 0;
        }
        if (i2 >= 1 && i2 <= 40) {
            int i3 = ((i - 1) * 80) + ((i2 - 1) * 2);
            return ((bArr[i3] & 255) * 256) + (bArr[i3 + 1] & 255);
        }
        Log.e(TAG, "getVolume(): invalid parameter, vol level = " + i2);
        return 0;
    }

    @Nullable
    public byte[] getVolumeTable(@Nonnull ContentResolver contentResolver) {
        byte[] bArr = (byte[]) NaviStatus.getObject(Navi.Status.STATUS_URI, contentResolver, Navi.Status.ST_RADIO_VOLUME_TABLE);
        if (bArr != null && bArr.length == 160) {
            return bArr;
        }
        Log.e(TAG, "Radio volume Table not initialized or initialized error. getVolumeTable fail.");
        return null;
    }
}
