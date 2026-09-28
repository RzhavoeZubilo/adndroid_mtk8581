package com.carocean.mcuserver;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;
import com.carocean.navicar.Navi;
import com.carocean.navicar.PerSysDef;

/* JADX INFO: loaded from: classes2.dex */
public class MyApplication extends Application {
    private static MyApplication instance;
    static final String TAG = MyApplication.class.getSimpleName();
    private static boolean isLexus = false;
    public static String CHIP_TYPE = Navi.Common.ZHTD_CHIP_TYPE_SC310K;

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        String str = TAG;
        Log.e(str, "onCreate...");
        instance = this;
        CHIP_TYPE = SystemProperties.get(PerSysDef.PERSYS_CHIP_TYPE, Navi.Common.ZHTD_CHIP_TYPE_SC310K);
        Log.d(str, "onCreate  chip type:" + CHIP_TYPE);
        if (TextUtils.equals(CHIP_TYPE, Navi.Common.ZHTD_CHIP_TYPE_SC665S)) {
            McuDataHandler.MAP_GPIO_PATH = "/sys/ckx_attr/mapaudio_gpio";
            McuDataHandler.DDR_FLAG_PATH = "/sys/ckx_attr/memsize_2g";
        } else {
            McuDataHandler.MAP_GPIO_PATH = "/sys/ext_attr/mapaudio_gpio";
            McuDataHandler.DDR_FLAG_PATH = "/sys/ext_attr/memsize_2g";
        }
        isLexus = Navi.Common.ZHTD_OEM_LEXUS.equals(SystemProperties.get(PerSysDef.PERSYS_BUILD_ZHTD_OEM, Navi.Common.ZHTD_OEM_BMW));
        Intent intent = new Intent(this, (Class<?>) McuService.class);
        startService(intent);
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
        Log.e(TAG, "onTerminate...");
    }

    public static Context getInstance() {
        return instance;
    }

    public static boolean isLexus() {
        return isLexus;
    }
}
