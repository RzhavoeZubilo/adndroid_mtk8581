package com.carocean.mcuserver;

import android.app.AppGlobals;
import android.content.Intent;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;
import com.carocean.navicar.Navi;
import com.carocean.navicar.PerSysDef;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class LT9211Util {
    private static final String TAG = "LT9211Util";
    private static final HashMap<Integer, String> mBmwLT9211ResolutionMap = new HashMap<Integer, String>() { // from class: com.carocean.mcuserver.LT9211Util.1
        {
            put(0, "1280,480");
            put(1, "800,480");
            put(2, "400,240");
            put(3, "1440,540");
            put(4, "960,540");
            put(5, "576,124");
            put(6, "1024,480");
            put(128, "800,240");
            put(129, "800,240");
            put(133, "1280,240");
            put(134, "1280,240");
            put(135, "1280,240");
            put(138, "640,240");
            put(140, "400,240");
        }
    };
    private static final HashMap<Integer, String> mLexusLT9211ResolutionMap = new HashMap<Integer, String>() { // from class: com.carocean.mcuserver.LT9211Util.2
        {
            put(0, "1280,480");
            put(1, "800,480");
            put(2, "400,240");
            put(3, "1440,540");
            put(4, "960,540");
            put(5, "576,124");
            put(8, "1920,720");
            put(9, "1280,720");
            put(176, "800,480");
            put(Integer.valueOf(Navi.KeyCode.T_IR_GOTO), "1280,480");
            put(188, "480,240");
        }
    };
    private static final HashMap<Integer, String> mAudiLT9211ResolutionMap = new HashMap<Integer, String>() { // from class: com.carocean.mcuserver.LT9211Util.3
        {
            put(0, "1280,480");
            put(1, "800,480");
            put(2, "400,240");
            put(3, "1440,540");
            put(4, "960,540");
            put(5, "576,124");
            put(6, "1024,480");
            put(Integer.valueOf(Navi.KeyCode.T_DSP_AUDIO_MUTE), "480,240");
        }
    };
    private static final HashMap<Integer, String> mKDLKLT9211ResolutionMap = new HashMap<Integer, String>() { // from class: com.carocean.mcuserver.LT9211Util.4
        {
            put(0, "1280,480");
            put(1, "800,480");
            put(2, "400,240");
            put(3, "1440,540");
            put(4, "960,540");
            put(5, "576,124");
        }
    };
    private static final HashMap<Integer, String> mBenzLT9211ResolutionMap = new HashMap<Integer, String>() { // from class: com.carocean.mcuserver.LT9211Util.5
        {
            put(0, "1280,480");
            put(1, "800,480");
            put(2, "400,240");
            put(3, "1440,540");
            put(4, "960,540");
            put(5, "576,124");
            put(6, "1024,480");
            put(7, "1280,542");
            put(8, "1920,720");
            put(32, "576,124");
            put(33, "576,124");
            put(40, "400,240");
            put(Integer.valueOf(Navi.ZHKeyCode.MMI_LEXUS_PHONE_OFF), "800,480");
        }
    };
    private static final HashMap<Integer, String> mLandRoverLT9211ResolutionMap = new HashMap<Integer, String>() { // from class: com.carocean.mcuserver.LT9211Util.6
        {
            put(0, "1280,480");
            put(1, "800,480");
            put(2, "400,240");
            put(3, "1440,540");
            put(4, "960,540");
            put(5, "576,124");
            put(6, "1024,480");
            put(7, "1280,542");
            put(10, "720,1920");
            put(192, "800,480");
            put(193, "800,480");
            put(Integer.valueOf(Navi.KeyCode.T_RDS_CONTROL_TA), "800,480");
            put(195, "800,480");
            put(196, "1280,520");
        }
    };

    public static void writeLT9211CameraResolution(int hosttype) {
        String resolution = mBmwLT9211ResolutionMap.get(Integer.valueOf(hosttype));
        String oemname = SystemProperties.get(PerSysDef.PERSYS_BUILD_ZHTD_OEM, Navi.Common.ZHTD_OEM_BMW);
        if (TextUtils.equals(oemname, Navi.Common.ZHTD_OEM_AUDI)) {
            String resolution2 = mAudiLT9211ResolutionMap.get(Integer.valueOf(hosttype));
            resolution = resolution2;
        } else if (TextUtils.equals(oemname, Navi.Common.ZHTD_OEM_BENZ)) {
            String resolution3 = mBenzLT9211ResolutionMap.get(Integer.valueOf(hosttype));
            resolution = resolution3;
        } else if (TextUtils.equals(oemname, Navi.Common.ZHTD_OEM_LEXUS) || TextUtils.equals(oemname, Navi.Common.ZHTD_OEM_TOYOTA_CROWN)) {
            String resolution4 = mLexusLT9211ResolutionMap.get(Integer.valueOf(hosttype));
            resolution = resolution4;
        } else if (TextUtils.equals(oemname, Navi.Common.ZHTD_OEM_KDLK)) {
            String resolution5 = mKDLKLT9211ResolutionMap.get(Integer.valueOf(hosttype));
            resolution = resolution5;
        } else if (TextUtils.equals(oemname, Navi.Common.ZHTD_OEM_LANDROVER)) {
            String resolution6 = mLandRoverLT9211ResolutionMap.get(Integer.valueOf(hosttype));
            resolution = resolution6;
        }
        if (!TextUtils.isEmpty(resolution)) {
            final String[] resolutions = resolution.split(",");
            if (resolutions.length >= 2) {
                new Thread(new Runnable() { // from class: com.carocean.mcuserver.LT9211Util.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (LT9211Util.writeLT9211CameraResolution(Integer.parseInt(resolutions[0]), Integer.parseInt(resolutions[1]))) {
                            LT9211Util.sendLT9211ResolutionChanged();
                        }
                    }
                }).start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean writeLT9211CameraResolution(int width, int height) {
        boolean ret = true;
        BufferedWriter bufferedWriter = null;
        String widthstr = "CAMERA_WIDTH=" + width;
        String heightstr = "CAMERA_HEIGHT=" + height;
        Log.i(TAG, "mcuserver writeLT9211CameraResolution: width=" + widthstr);
        Log.i(TAG, "mcuserver writeLT9211CameraResolution: height=" + heightstr);
        File file = new File("/mnt/appconfig/camera_conf.cfg");
        if (!file.exists()) {
            try {
                ret = file.createNewFile();
                Runtime.getRuntime().exec("chmod 644 " + file.getAbsolutePath());
            } catch (IOException e) {
                e.printStackTrace();
                ret = false;
            }
        }
        try {
            try {
                try {
                    bufferedWriter = new BufferedWriter(new FileWriter(file));
                    bufferedWriter.write(widthstr);
                    bufferedWriter.newLine();
                    bufferedWriter.write(heightstr);
                    bufferedWriter.flush();
                    bufferedWriter.close();
                    return ret;
                } catch (IOException e2) {
                    e2.printStackTrace();
                    if (bufferedWriter == null) {
                        return false;
                    }
                    bufferedWriter.close();
                    return false;
                }
            } catch (IOException e3) {
                e3.printStackTrace();
                return false;
            }
        } catch (Throwable th) {
            if (bufferedWriter != null) {
                try {
                    bufferedWriter.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static void sendLT9211ResolutionChanged() {
        Intent intent = new Intent(Navi.Action.ACTION_LT9211_RESOLUTION_CHANGED);
        AppGlobals.getInitialApplication().sendBroadcast(intent);
    }
}
