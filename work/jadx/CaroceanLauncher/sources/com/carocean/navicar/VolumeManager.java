package com.carocean.navicar;

import android.content.ContentResolver;
import android.util.Log;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class VolumeManager {
    static final String TAG = "VolumeManager";
    public static final int VOLUME_LEVELS = 40;
    public static final int VOLUME_TYPE_A2DP = 3;
    public static final int VOLUME_TYPE_AM = 2;
    public static final int VOLUME_TYPE_AUX = 6;
    public static final int VOLUME_TYPE_BT = 5;
    public static final int VOLUME_TYPE_FM = 1;
    public static final int VOLUME_TYPE_GIS = 4;
    public static final int VOLUME_TYPE_MAX = 7;
    public static final int VOLUME_TYPE_MEDIA = 0;
    private static VolumeManager mInstance = new VolumeManager();

    private VolumeManager() {
    }

    public static VolumeManager getInstance() {
        return mInstance;
    }

    public boolean setVolumeTable(@Nonnull ContentResolver contentResolver, int i, @Nonnull byte[] bArr) {
        if (i >= 0 && i < 7 && bArr != null && bArr.length == 40) {
            byte[] bArr2 = (byte[]) NaviStatus.getObject(Navi.Status.STATUS_URI, contentResolver, Navi.Status.ST_VOLUME_TABLE);
            if (bArr2 == null || bArr2.length != 280) {
                Log.e(TAG, "Volume Table not initialized or initialized error. setVolumeTable fail.");
            } else {
                System.arraycopy(bArr, 0, bArr2, i * 40, bArr.length);
                NaviStatus.putObject(Navi.Status.STATUS_URI, contentResolver, Navi.Status.ST_VOLUME_TABLE, bArr2);
                return true;
            }
        }
        return false;
    }

    public boolean setVolumeTable(@Nonnull ContentResolver contentResolver, @Nonnull byte[] bArr) {
        if (bArr == null || bArr.length != 280) {
            return false;
        }
        NaviStatus.putObject(Navi.Status.STATUS_URI, contentResolver, Navi.Status.ST_VOLUME_TABLE, bArr);
        return true;
    }

    @Nullable
    public byte[] getVolumeTable(@Nonnull ContentResolver contentResolver, int i) {
        byte[] bArr = (byte[]) NaviStatus.getObject(Navi.Status.STATUS_URI, contentResolver, Navi.Status.ST_VOLUME_TABLE);
        if (bArr == null || bArr.length != 280) {
            Log.e(TAG, "Volume Table not initialized or initialized error. getVolumeTable fail.");
            return null;
        }
        byte[] bArr2 = new byte[40];
        System.arraycopy(bArr, i * 40, bArr2, 0, 40);
        return bArr2;
    }

    public int getVolume(@Nonnull ContentResolver contentResolver, int i, int i2) {
        return getVolume(getVolumeTable(contentResolver), i, i2);
    }

    public int getVolume(@Nonnull byte[] bArr, int i, int i2) {
        if (bArr == null || i2 == 0) {
            return 0;
        }
        if (i2 >= 1 && i2 <= 40) {
            return bArr[((i * 40) + i2) - 1] & 255;
        }
        Log.e(TAG, "getVolume(): invalid parameter, vol level = " + i2);
        return 0;
    }

    @Nullable
    public byte[] getVolumeTable(@Nonnull ContentResolver contentResolver) {
        byte[] bArr = (byte[]) NaviStatus.getObject(Navi.Status.STATUS_URI, contentResolver, Navi.Status.ST_VOLUME_TABLE);
        if (bArr != null && bArr.length == 280) {
            return bArr;
        }
        if (bArr == null) {
            Log.e(TAG, "Volume Table not initialized.");
            return null;
        }
        Log.e(TAG, "Volume Table initialized error. volumeTable length = " + bArr.length);
        return null;
    }

    public void setGPSMixing(@Nonnull ContentResolver contentResolver, int i) {
        Navi.Status.SystemParamInfo systemParamInfo = (Navi.Status.SystemParamInfo) NaviStatus.getObject(Navi.Status.STATUS_URI, contentResolver, Navi.Status.ST_SYSTEM_PARAM_INFO);
        if (systemParamInfo != null) {
            systemParamInfo.gps_mixing = i;
            NaviStatus.putObject(Navi.Status.STATUS_SYS_URI, contentResolver, Navi.Status.ST_SYSTEM_PARAM_INFO, systemParamInfo);
        } else {
            Log.e(TAG, "setGPSMixing() fail, ST_SYSTEM_PARAM_INFO not initialized.");
        }
    }

    public void setDefaultVolume(@Nonnull ContentResolver contentResolver, byte[] bArr) {
        if (bArr == null || bArr.length != 7) {
            Log.e(TAG, "setDefaultVolumeLevel() fail, invalid parameters.");
            return;
        }
        Navi.Status.SystemParamInfo systemParamInfo = (Navi.Status.SystemParamInfo) NaviStatus.getObject(Navi.Status.STATUS_URI, contentResolver, Navi.Status.ST_SYSTEM_PARAM_INFO);
        if (systemParamInfo != null) {
            System.arraycopy(bArr, 0, systemParamInfo.default_volume, 0, bArr.length);
            NaviStatus.putObject(Navi.Status.STATUS_SYS_URI, contentResolver, Navi.Status.ST_SYSTEM_PARAM_INFO, systemParamInfo);
        } else {
            Log.e(TAG, "setDefaultVolumeLevel() fail, ST_SYSTEM_PARAM_INFO not initialized.");
        }
    }

    public int getDefaultVolume(@Nonnull ContentResolver contentResolver, int i) {
        Navi.Status.SystemParamInfo systemParamInfo;
        if (i >= 0 && i <= 5 && (systemParamInfo = (Navi.Status.SystemParamInfo) NaviStatus.getObject(Navi.Status.STATUS_URI, contentResolver, Navi.Status.ST_SYSTEM_PARAM_INFO)) != null) {
            return systemParamInfo.default_volume[i];
        }
        Log.e(TAG, "getDefaultVolume(): invalid parameters, type must be 0 ~ 5.");
        return 0;
    }

    public byte[] getDefaultVolume(@Nonnull ContentResolver contentResolver) {
        Navi.Status.SystemParamInfo systemParamInfo = (Navi.Status.SystemParamInfo) NaviStatus.getObject(Navi.Status.STATUS_URI, contentResolver, Navi.Status.ST_SYSTEM_PARAM_INFO);
        if (systemParamInfo != null) {
            return systemParamInfo.default_volume;
        }
        Log.e(TAG, "getDefaultVolume(): return null, maybe default volume level not set.");
        return null;
    }
}
