package com.carocean.navicar;

import android.content.ContentResolver;
import android.util.Log;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class RadioVolumeManager {
    private static final int SINGLE_VOLUME_TABLE_SIZE = 80;
    static final String TAG = RadioVolumeManager.class.getSimpleName();
    private static RadioVolumeManager mInstatnce = new RadioVolumeManager();

    private RadioVolumeManager() {
    }

    public static RadioVolumeManager getInstance() {
        return mInstatnce;
    }

    public boolean setVolumeTable(@Nonnull ContentResolver cr, int type, @Nonnull byte[] data) {
        if ((type != 1 && type != 2) || data == null || data.length != 80) {
            return false;
        }
        byte[] volumeTable = (byte[]) NaviStatus.getObject(Navi.Status.STATUS_URI, cr, Navi.Status.ST_RADIO_VOLUME_TABLE);
        if (volumeTable != null && volumeTable.length == 160) {
            System.arraycopy(data, 0, volumeTable, (type - 1) * 80, data.length);
            NaviStatus.putObject(Navi.Status.STATUS_URI, cr, Navi.Status.ST_RADIO_VOLUME_TABLE, volumeTable);
            return true;
        }
        Log.e(TAG, "Volume Table not initialized or initialized error. setVolumeTable fail.");
        return false;
    }

    public boolean setVolumeTable(@Nonnull ContentResolver cr, @Nonnull byte[] data) {
        if (data != null && data.length == 160) {
            NaviStatus.putObject(Navi.Status.STATUS_URI, cr, Navi.Status.ST_RADIO_VOLUME_TABLE, data);
            return true;
        }
        Log.e(TAG, "Parameters error.");
        return false;
    }

    @Nullable
    public byte[] getVolumeTable(@Nonnull ContentResolver cr, int type) {
        byte[] volumeTable = (byte[]) NaviStatus.getObject(Navi.Status.STATUS_URI, cr, Navi.Status.ST_RADIO_VOLUME_TABLE);
        if (volumeTable == null || volumeTable.length != 160) {
            Log.e(TAG, "Volume Table not initialized or initialized error. getVolumeTable fail.");
            return null;
        }
        if (type == 1 || type == 2) {
            byte[] table = new byte[80];
            System.arraycopy(volumeTable, (type - 1) * 80, table, 0, table.length);
            return table;
        }
        Log.e(TAG, "Parameters error, type should be FM or AM.");
        return null;
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
            return ((volumeTable[((type - 1) * 80) + ((level - 1) * 2)] & 255) * 256) + (volumeTable[((type - 1) * 80) + ((level - 1) * 2) + 1] & 255);
        }
        Log.e(TAG, "getVolume(): invalid parameter, vol level = " + level);
        return 0;
    }

    @Nullable
    public byte[] getVolumeTable(@Nonnull ContentResolver cr) {
        byte[] volumeTable = (byte[]) NaviStatus.getObject(Navi.Status.STATUS_URI, cr, Navi.Status.ST_RADIO_VOLUME_TABLE);
        if (volumeTable == null || volumeTable.length != 160) {
            Log.e(TAG, "Radio volume Table not initialized or initialized error. getVolumeTable fail.");
            return null;
        }
        return volumeTable;
    }
}
