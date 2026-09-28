package com.carocean.navicar.util;

import android.app.AppGlobals;
import android.content.Intent;
import android.os.SystemProperties;
import com.carocean.navicar.McuServiceManager;
import com.carocean.navicar.Navi;
import com.carocean.navicar.PerSysDef;

/* JADX INFO: loaded from: classes.dex */
public class McuUtils {
    private McuServiceManager mcuServiceManager;

    private McuUtils() {
        this.mcuServiceManager = McuServiceManager.getInstance();
    }

    private static class SingleHolder {
        public static final McuUtils mInstance = new McuUtils();

        private SingleHolder() {
        }
    }

    public static McuUtils getInstance() {
        return SingleHolder.mInstance;
    }

    public void setSoundEffect(int i, int i2, int i3) {
        sendSettingCmd(new byte[]{-109, (byte) ((i & 15) | ((i2 & 15) << 4)), (byte) (i3 & 15), 0});
    }

    public void setBackCar(int i) {
        sendSettingCmd(new byte[]{-107, (byte) i, (byte) SystemProperties.getInt(PerSysDef.PERSYS_FAST_REVERSING, 0), 0});
    }

    public void setMotoPolePairs(int i) {
        sendSettingCmd(new byte[]{0, (byte) i, 0});
    }

    public void sendSettingCmd(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        this.mcuServiceManager.RPCGeneralRpcCall(152, bArr);
    }

    public void queryMcuVersion() {
        sendQueryCmd(48, 0);
    }

    public void sendQueryCmd(int i, int i2) {
        this.mcuServiceManager.RPCGeneralRpcCall(144, new byte[]{(byte) i, (byte) i2});
    }

    public void setCustomerInfo() {
        byte[] bArr = new byte[4];
        bArr[0] = 50;
        sendSettingCmd(bArr);
    }

    public void autoToArm() {
        if (SystemProperties.getInt(PerSysDef.PERSYS_LT9211_ENABLE, 0) == 0) {
            getInstance().sendSettingCmd(new byte[]{-94, 7, (byte) SystemProperties.getInt("persist.sys.host_type", 0), 0});
            return;
        }
        Intent intent = new Intent();
        intent.setPackage(Navi.PackageName.RERA_CAMERA);
        intent.setAction(Navi.Action.ACTION_ORIGINAL_CAMERA);
        intent.putExtra(Navi.Action.CMD_CODE, Navi.Action.CMD_STOP_SOURCE);
        AppGlobals.getInitialApplication().sendBroadcast(intent);
    }

    public void autoToOriginal() {
        if (SystemProperties.getInt(PerSysDef.PERSYS_LT9211_ENABLE, 0) == 0) {
            getInstance().sendSettingCmd(new byte[]{-94, 1, (byte) SystemProperties.getInt("persist.sys.host_type", 0), 0});
        } else {
            startOriginalWindow();
        }
    }

    public void startOriginalWindow() {
        if (SystemProperties.getInt(PerSysDef.PERSYS_LT9211_ENABLE, 0) == 1) {
            Intent intent = new Intent();
            intent.setPackage(Navi.PackageName.RERA_CAMERA);
            intent.setAction(Navi.Action.ACTION_ORIGINAL_CAMERA);
            intent.putExtra(Navi.Action.CMD_CODE, Navi.Action.CMD_START_SOURCE);
            AppGlobals.getInitialApplication().sendBroadcast(intent);
        }
    }

    public void stopOriginalWindow() {
        if (SystemProperties.getInt(PerSysDef.PERSYS_LT9211_ENABLE, 0) == 1) {
            Intent intent = new Intent();
            intent.setPackage(Navi.PackageName.RERA_CAMERA);
            intent.setAction(Navi.Action.ACTION_ORIGINAL_CAMERA);
            intent.putExtra(Navi.Action.CMD_CODE, Navi.Action.CMD_STOP_SOURCE);
            AppGlobals.getInitialApplication().sendBroadcast(intent);
        }
    }

    public void setHostType(int i) {
        sendSettingCmd(new byte[]{-94, 0, (byte) i, 0});
    }

    public void setDCLKRGB(int i) {
        sendSettingCmd(new byte[]{-73, (byte) i, 0, 0});
    }

    public void sendAUXCmd() {
        int i = SystemProperties.getInt(PerSysDef.PERSYS_CARAUX_SWITCH_MODE, 0);
        sendSettingCmd(new byte[]{-112, (byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255)});
    }

    public void setFullScreenSettings(int i) {
        getInstance().sendSettingCmd(new byte[]{-91, (byte) i, 0, 0});
    }

    public void setOriginalBtSettings(int i) {
        getInstance().sendSettingCmd(new byte[]{-90, (byte) i, 0, 0});
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0032  */
    /* JADX WARN: Code duplicated, block: B:20:0x003d  */
    /* JADX WARN: Code duplicated, block: B:23:0x0048  */
    public void syncBackCarSettings() {
        int i;
        byte b = SystemProperties.getInt(PerSysDef.PERSYS_BACKCAR_TYPE, 0) == 1 ? (byte) 1 : (byte) 0;
        if (SystemProperties.getInt(PerSysDef.PERSYS_BACKCAR_MIRROR, 0) > 0) {
            b = (byte) (b | 2);
        }
        int i2 = SystemProperties.getInt(PerSysDef.PERSYS_IVICAR_AVM_ENABLE, 0);
        if (i2 != 1) {
            if (i2 == 2) {
                i = b | 16;
            }
            if (SystemProperties.getInt(PerSysDef.PERSYS_360_AUTO_SHOW, 0) == 1) {
                b = (byte) (b | 32);
            }
            if (SystemProperties.getInt(PerSysDef.PERSYS_BACKCAR_TRACE, 1) == 0) {
                b = (byte) (b | 64);
            }
            if (SystemProperties.getInt(PerSysDef.PERSYS_AUTO_FRONT_CAM, 0) == 1) {
                b = (byte) (b | 128);
            }
            getInstance().sendSettingCmd(new byte[]{-107, b, (byte) SystemProperties.getInt(PerSysDef.PERSYS_FAST_REVERSING, 0), 0});
        }
        i = b | 8;
        b = (byte) i;
        if (SystemProperties.getInt(PerSysDef.PERSYS_360_AUTO_SHOW, 0) == 1) {
            b = (byte) (b | 32);
        }
        if (SystemProperties.getInt(PerSysDef.PERSYS_BACKCAR_TRACE, 1) == 0) {
            b = (byte) (b | 64);
        }
        if (SystemProperties.getInt(PerSysDef.PERSYS_AUTO_FRONT_CAM, 0) == 1) {
            b = (byte) (b | 128);
        }
        getInstance().sendSettingCmd(new byte[]{-107, b, (byte) SystemProperties.getInt(PerSysDef.PERSYS_FAST_REVERSING, 0), 0});
    }

    public void sendMCUMute() {
        getInstance().sendSettingCmd(new byte[]{-102, 0, 0, 0});
    }

    public void sendTouchMsg(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        this.mcuServiceManager.RPCGeneralRpcCall(151, bArr);
    }

    public void sendEqValues(int i, int[] iArr) {
        byte[] bArr = new byte[18];
        bArr[0] = (byte) i;
        bArr[1] = 0;
        for (int i2 = 2; i2 < 18; i2++) {
            bArr[i2] = (byte) iArr[i2 - 2];
        }
        this.mcuServiceManager.RPCGeneralRpcCall(155, bArr);
    }

    public void sendEqValue(int i, int i2, int i3) {
        this.mcuServiceManager.RPCGeneralRpcCall(155, new byte[]{(byte) i, (byte) i2, (byte) i3});
    }

    public void sendEqLoudness(int i) {
        sendSettingCmd(new byte[]{-104, (byte) i});
    }

    public void openRear360() {
        if (SystemProperties.getInt(PerSysDef.PERSYS_LT9211_ENABLE, 0) == 1) {
            Intent intent = new Intent();
            intent.setPackage(Navi.PackageName.RERA_CAMERA);
            intent.setAction(Navi.Action.ACTION_AVIN_CAMERA);
            intent.putExtra(Navi.Action.CMD_CODE, Navi.Action.CMD_START_SOURCE);
            AppGlobals.getInitialApplication().sendBroadcast(intent);
            return;
        }
        sendSettingCmd(new byte[]{-94, 5, (byte) SystemProperties.getInt("persist.sys.host_type", 0), 0});
    }

    public void setCANMode(int i) {
        sendSettingCmd(new byte[]{-79, (byte) i, 0, 0});
    }

    public void setSeatCmd(int i, int i2) {
        sendSettingCmd(new byte[]{-77, (byte) i, (byte) i2, 0});
    }

    public void setPartyControlAndPanelType(int i, int i2) {
        sendSettingCmd(new byte[]{-78, (byte) i, (byte) i2, 0});
    }

    public void setMotorControlCmd(int i, int i2) {
        sendSettingCmd(new byte[]{-76, (byte) i, (byte) i2, 0});
    }

    public void onAutomaticVehicleSelection() {
        byte[] bArr = new byte[4];
        bArr[0] = -75;
        sendSettingCmd(bArr);
    }

    public void sendOriginalVehicleStata(int i) {
        sendSettingCmd(new byte[]{-74, (byte) i, 0, 0});
    }

    public void sendCrownKeyCmd(int i) {
        sendSettingCmd(new byte[]{-72, (byte) i, 0, 0});
    }

    public void sendSpeakerSwitchMode(int i) {
        sendSettingCmd(new byte[]{42, (byte) i, 0, 0});
    }

    public void setAVMPowerStatus(int i) {
        sendSettingCmd(new byte[]{-71, (byte) i, 0, 0});
    }
}
