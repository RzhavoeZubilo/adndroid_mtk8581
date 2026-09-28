package com.carocean.navicar.util;

import android.app.AppGlobals;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import com.can.platforms.AppConfigParser;
import com.carocean.navicar.Navi;
import com.carocean.navicar.PerSysDef;

/* JADX INFO: loaded from: classes.dex */
public class ZHTDOEMManager {
    public static final String BASE_CUSTOM_ID = "K2_000_00_00";
    public static final String DZSJ_CUSTOM_ID = "DZSJ_01";
    public static final String JLY_CUSTOM_ID = "JLY_01";
    public static final String KLD_CUSTOM_ID = "KLD";
    public static final String LC_CUSTOM_ID = "K2_000_00_01";
    public static final String LFE_CUSTOM_ID = "LFE";
    public static final String MRW_CUSTOM_ID = "MRW_01";
    private static final String TAG = "ZHTDOEMManager";
    public static final String YZG_CUSTOM_ID = "YZG_01";
    public static final String YZG_CUSTOM_ID2 = "YZG_02";
    public static final String ZLH_CUSTOM_ID = "ZLH";
    private static String chiptyp = "sc310k";
    private static String customId = "K2_000_00_00";
    private static boolean gmsEnable = false;
    private static boolean isInit = false;
    private static int mDensityDpi = 240;
    private static int mDisplayHeight = 720;
    private static int mDisplayWidth = 1920;
    private static int mRotation = 0;
    private static String oemName = "bmw";
    private static final boolean test = false;
    private static int uiTheme = 1;

    private static String testOEM() {
        return Navi.Common.ZHTD_OEM_BMW;
    }

    private static void initParams() {
        if (isInit) {
            return;
        }
        WindowManager windowManager = (WindowManager) AppGlobals.getInitialApplication().getSystemService("window");
        DisplayMetrics displayMetrics = AppGlobals.getInitialApplication().getResources().getDisplayMetrics();
        mDisplayWidth = displayMetrics.widthPixels;
        mDisplayHeight = displayMetrics.heightPixels;
        mDensityDpi = displayMetrics.densityDpi;
        uiTheme = SystemProperties.getInt(PerSysDef.PERSYS_UI_THEME, 1);
        customId = SystemProperties.get(PerSysDef.PERSYS_CUSTOM_ID, BASE_CUSTOM_ID);
        chiptyp = SystemProperties.get(PerSysDef.PERSYS_CHIP_TYPE, Navi.Common.ZHTD_CHIP_TYPE_SC310K);
        oemName = SystemProperties.get(PerSysDef.PERSYS_BUILD_ZHTD_OEM, Navi.Common.ZHTD_OEM_BMW);
        gmsEnable = SystemProperties.getBoolean(PerSysDef.PERSYS_GMS_ENABLE, true);
        mRotation = windowManager.getDefaultDisplay().getRotation();
        isInit = true;
        Log.i(TAG, "initParams: mDisplayWidth=" + mDisplayWidth + ",mDisplayHeight=" + mDisplayHeight + ",mDensityDpi=" + mDensityDpi);
        Log.i(TAG, "initParams: uiTheme=" + uiTheme + ",customId=" + customId + ",chiptyp=" + chiptyp + ",mRotation=" + mRotation);
    }

    private static String getOEM() {
        initParams();
        return oemName;
    }

    public static boolean isKDLK() {
        return Navi.Common.ZHTD_OEM_KDLK.equals(getOEM());
    }

    public static boolean isLexus() {
        return Navi.Common.ZHTD_OEM_LEXUS.equals(getOEM());
    }

    public static boolean isBenz() {
        return Navi.Common.ZHTD_OEM_BENZ.equals(getOEM());
    }

    public static boolean isAudi() {
        return Navi.Common.ZHTD_OEM_AUDI.equals(getOEM());
    }

    public static boolean isBmw() {
        return Navi.Common.ZHTD_OEM_BMW.equals(getOEM());
    }

    public static boolean isLandRover() {
        return Navi.Common.ZHTD_OEM_LANDROVER.equals(getOEM());
    }

    public static boolean isMotorcycle() {
        return Navi.Common.ZHTD_OEM_MOTORCYCLE.equals(getOEM());
    }

    public static boolean isTOYOTACROWN() {
        return Navi.Common.ZHTD_OEM_TOYOTA_CROWN.equals(getOEM());
    }

    public static boolean isGl8() {
        return Navi.Common.ZHTD_OEM_GL8.equals(getOEM());
    }

    public static boolean isHQH5() {
        return Navi.Common.ZHTD_OEM_HQH5.equals(getOEM());
    }

    public static boolean isVolvo() {
        return Navi.Common.ZHTD_OEM_VOLVO.equals(getOEM());
    }

    private static String getCustomerID() {
        initParams();
        return customId;
    }

    public static boolean isLCCustomer() {
        return LC_CUSTOM_ID.equals(getCustomerID());
    }

    public static boolean isPublicCustomer() {
        return BASE_CUSTOM_ID.equals(getCustomerID());
    }

    public static boolean isZLHCustomer() {
        return ZLH_CUSTOM_ID.equals(getCustomerID());
    }

    public static boolean isZLHCustomerUI1() {
        return 1 == getUIThemeid() && ZLH_CUSTOM_ID.equals(getCustomerID());
    }

    public static boolean isMRWCustomer() {
        return MRW_CUSTOM_ID.equals(getCustomerID());
    }

    public static boolean isYZGCustomer() {
        return YZG_CUSTOM_ID.equals(getCustomerID());
    }

    public static boolean isYZGCustomer1() {
        return YZG_CUSTOM_ID2.equals(getCustomerID());
    }

    public static boolean isYZGCustomerUI1() {
        return 1 == getUIThemeid() && YZG_CUSTOM_ID.equals(getCustomerID());
    }

    public static boolean isLCCustomerTheme1() {
        return LC_CUSTOM_ID.equals(getCustomerID()) && 1 == getUIThemeid();
    }

    public static boolean isJLYCustomer() {
        return JLY_CUSTOM_ID.equals(getCustomerID());
    }

    public static boolean isDZSJCustomer() {
        return DZSJ_CUSTOM_ID.equals(getCustomerID());
    }

    public static boolean isKLDCustomer() {
        return KLD_CUSTOM_ID.equals(getCustomerID());
    }

    public static boolean isLFECustomer() {
        return LFE_CUSTOM_ID.equals(getCustomerID());
    }

    public static boolean isLRTheme_01() {
        initParams();
        return uiTheme == 2 && (is1920x720And240dpi() || is1920x1080And240dpi());
    }

    public static int getUIThemeid() {
        initParams();
        if (isJLYCustomer() && isBenz()) {
            return 1;
        }
        return uiTheme;
    }

    public static int getUIThemeSubid() {
        initParams();
        return SystemProperties.getInt(PerSysDef.PERSYS_UI_THEME_SUB, 1);
    }

    public static String getChipType() {
        initParams();
        if (TextUtils.equals(chiptyp, Navi.Common.ZHTD_CHIP_TYPE_SC310K)) {
            return "8581";
        }
        return TextUtils.equals(chiptyp, Navi.Common.ZHTD_CHIP_TYPE_SC665S) ? "6125" : AppConfigParser.ITEM_TIP;
    }

    public static boolean is1920x1080And240dpi() {
        initParams();
        return mDisplayWidth == 1920 && mDisplayHeight == 1080 && mDensityDpi == 240;
    }

    public static boolean is1920x860And240dpi() {
        initParams();
        return mDisplayWidth == 1920 && mDisplayHeight == 860 && mDensityDpi == 240;
    }

    public static boolean is1920x720And240dpi() {
        initParams();
        return mDisplayWidth == 1920 && mDisplayHeight == 720 && mDensityDpi == 240;
    }

    public static boolean is1920x720And240dpiR90() {
        initParams();
        return mDisplayWidth == 1920 && mDisplayHeight == 720 && mDensityDpi == 240 && mRotation == 1;
    }

    public static boolean is1920x932And240dpi() {
        initParams();
        return mDisplayWidth == 1920 && mDisplayHeight == 932 && mDensityDpi == 240;
    }

    public static boolean is1600x720And240dpi() {
        initParams();
        return mDisplayWidth == 1600 && mDisplayHeight == 720 && mDensityDpi == 240;
    }

    public static boolean is1600x600And240dpi() {
        initParams();
        return mDisplayWidth == 1600 && mDisplayHeight == 600 && mDensityDpi == 240;
    }

    public static boolean is1280x720And240dpi() {
        initParams();
        return mDisplayWidth == 1280 && mDisplayHeight == 720 && mDensityDpi == 240;
    }

    public static boolean is1280x640And160dpi() {
        initParams();
        return mDisplayWidth == 1280 && mDisplayHeight == 640 && mDensityDpi == 160;
    }

    public static boolean is1280x480And160dpi() {
        initParams();
        return mDisplayWidth == 1280 && mDisplayHeight == 480 && mDensityDpi == 160;
    }

    public static boolean is1024x600And160dpi() {
        initParams();
        return mDisplayWidth == 1024 && mDisplayHeight == 600 && mDensityDpi == 160;
    }

    public static boolean is1024x460And160dpi() {
        initParams();
        return mDisplayWidth == 1024 && mDisplayHeight == 460 && mDensityDpi == 160;
    }

    public static boolean is240dpi() {
        initParams();
        return mDensityDpi == 240;
    }

    public static boolean hasTable() {
        initParams();
        if (isAudi() || isBenz() || isVolvo()) {
            int i = mDisplayWidth;
            if (i >= 1920) {
                return true;
            }
            int i2 = mDisplayHeight;
            if (i2 == 480 && i == 1280) {
                return true;
            }
            if ((i2 == 720 || i2 == 600) && i == 1600) {
                return true;
            }
        } else if (ensureID8()) {
            return true;
        }
        return false;
    }

    public static boolean gmsEnable() {
        initParams();
        return gmsEnable;
    }

    public static boolean ensureID8() {
        return isBmw() && getUIThemeid() == 2;
    }

    public static int getDisplayHeight() {
        initParams();
        return mDisplayHeight;
    }

    public static int getDisplayWidth() {
        initParams();
        return mDisplayWidth;
    }
}
