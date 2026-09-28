package com.carocean.navicar;

import android.content.ContentResolver;
import android.util.Log;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class VolumeManager {
    public static final int VOLUME_LEVELS = 40;
    public static final int VOLUME_TYPE_A2DP = 3;
    public static final int VOLUME_TYPE_AM = 2;
    public static final int VOLUME_TYPE_AUX = 6;
    public static final int VOLUME_TYPE_BT = 5;
    public static final int VOLUME_TYPE_FM = 1;
    public static final int VOLUME_TYPE_GIS = 4;
    public static final int VOLUME_TYPE_MAX = 7;
    public static final int VOLUME_TYPE_MEDIA = 0;
    static final String TAG = VolumeManager.class.getSimpleName();
    private static VolumeManager mInstance = new VolumeManager();

    private VolumeManager() {
    }

    public static VolumeManager getInstance() {
        return mInstance;
    }

    public boolean setVolumeTable(@Nonnull ContentResolver cr, int type, @Nonnull byte[] data) {
        if (type < 0 || type >= 7 || data == null || data.length != 40) {
            return false;
        }
        byte[] volumeTable = (byte[]) NaviStatus.getObject(Navi.Status.STATUS_URI, cr, Navi.Status.ST_VOLUME_TABLE);
        if (volumeTable != null && volumeTable.length == 280) {
            System.arraycopy(data, 0, volumeTable, type * 40, data.length);
            NaviStatus.putObject(Navi.Status.STATUS_URI, cr, Navi.Status.ST_VOLUME_TABLE, volumeTable);
            return true;
        }
        Log.e(TAG, "Volume Table not initialized or initialized error. setVolumeTable fail.");
        return false;
    }

    public boolean setVolumeTable(@Nonnull ContentResolver cr, @Nonnull byte[] data) {
        if (data != null && data.length == 280) {
            NaviStatus.putObject(Navi.Status.STATUS_URI, cr, Navi.Status.ST_VOLUME_TABLE, data);
            return true;
        }
        return false;
    }

    @Nullable
    public byte[] getVolumeTable(@Nonnull ContentResolver cr, int type) {
        byte[] volumeTable = (byte[]) NaviStatus.getObject(Navi.Status.STATUS_URI, cr, Navi.Status.ST_VOLUME_TABLE);
        if (volumeTable == null || volumeTable.length != 280) {
            Log.e(TAG, "Volume Table not initialized or initialized error. getVolumeTable fail.");
            return null;
        }
        byte[] table = new byte[40];
        System.arraycopy(volumeTable, type * 40, table, 0, table.length);
        return table;
    }

    public int getVolume(@Nonnull ContentResolver cr, int type, int level) {
        byte[] volumeTable = getVolumeTable(cr);
        return getVolume(volumeTable, type, level);
    }

    public int getVolume(@Nonnull byte[] volumeTable, int type, int level) {
        if (volumeTable == null || level == 0) {
            return 0;
        }
        if (level >= 1 && level <= 40) {
            return volumeTable[((type * 40) + level) - 1] & 255;
        }
        Log.e(TAG, "getVolume(): invalid parameter, vol level = " + level);
        return 0;
    }

    @Nullable
    public byte[] getVolumeTable(@Nonnull ContentResolver cr) {
        byte[] volumeTable = (byte[]) NaviStatus.getObject(Navi.Status.STATUS_URI, cr, Navi.Status.ST_VOLUME_TABLE);
        if (volumeTable == null || volumeTable.length != 280) {
            if (volumeTable == null) {
                Log.e(TAG, "Volume Table not initialized.");
                return null;
            }
            Log.e(TAG, "Volume Table initialized error. volumeTable length = " + volumeTable.length);
            return null;
        }
        return volumeTable;
    }

    public void setGPSMixing(@Nonnull ContentResolver cr, int mixing) {
        Navi.Status.SystemParamInfo spi = (Navi.Status.SystemParamInfo) NaviStatus.getObject(Navi.Status.STATUS_URI, cr, Navi.Status.ST_SYSTEM_PARAM_INFO);
        if (spi != null) {
            spi.gps_mixing = mixing;
            NaviStatus.putObject(Navi.Status.STATUS_SYS_URI, cr, Navi.Status.ST_SYSTEM_PARAM_INFO, spi);
        } else {
            Log.e(TAG, "setGPSMixing() fail, ST_SYSTEM_PARAM_INFO not initialized.");
        }
    }

    public void setDefaultVolume(@Nonnull ContentResolver cr, byte[] data) {
        if (data == null || data.length != 7) {
            Log.e(TAG, "setDefaultVolumeLevel() fail, invalid parameters.");
            return;
        }
        Navi.Status.SystemParamInfo spi = (Navi.Status.SystemParamInfo) NaviStatus.getObject(Navi.Status.STATUS_URI, cr, Navi.Status.ST_SYSTEM_PARAM_INFO);
        if (spi != null) {
            System.arraycopy(data, 0, spi.default_volume, 0, data.length);
            NaviStatus.putObject(Navi.Status.STATUS_SYS_URI, cr, Navi.Status.ST_SYSTEM_PARAM_INFO, spi);
        } else {
            Log.e(TAG, "setDefaultVolumeLevel() fail, ST_SYSTEM_PARAM_INFO not initialized.");
        }
    }

    public int getDefaultVolume(@Nonnull ContentResolver cr, int type) {
        Navi.Status.SystemParamInfo spi;
        if (type >= 0 && type <= 5 && (spi = (Navi.Status.SystemParamInfo) NaviStatus.getObject(Navi.Status.STATUS_URI, cr, Navi.Status.ST_SYSTEM_PARAM_INFO)) != null) {
            return spi.default_volume[type];
        }
        Log.e(TAG, "getDefaultVolume(): invalid parameters, type must be 0 ~ 5.");
        return 0;
    }

    public byte[] getDefaultVolume(@Nonnull ContentResolver cr) {
        Navi.Status.SystemParamInfo spi = (Navi.Status.SystemParamInfo) NaviStatus.getObject(Navi.Status.STATUS_URI, cr, Navi.Status.ST_SYSTEM_PARAM_INFO);
        if (spi != null) {
            return spi.default_volume;
        }
        Log.e(TAG, "getDefaultVolume(): return null, maybe default volume level not set.");
        return null;
    }
}
