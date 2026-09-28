package com.carocean.navicar;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.util.Log;
import android.view.KeyEvent;
import androidx.core.app.NotificationCompat;
import androidx.core.view.InputDeviceCompat;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes.dex */
public class NaviUtil {
    static final String TAG = "NaviUtil";

    public static void sendKeyDownUpSync(int i) {
        sendKeyDownUpSync(i, InputDeviceCompat.SOURCE_TOUCHSCREEN);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.carocean.navicar.NaviUtil$1] */
    public static void sendKeyDownUpSync(final int i, final int i2) {
        new Thread() { // from class: com.carocean.navicar.NaviUtil.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    Instrumentation instrumentation = new Instrumentation();
                    KeyEvent keyEvent = new KeyEvent(0, i);
                    keyEvent.setSource(i2);
                    instrumentation.sendKeySync(keyEvent);
                    KeyEvent keyEvent2 = new KeyEvent(1, i);
                    keyEvent2.setSource(i2);
                    instrumentation.sendKeySync(keyEvent2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.carocean.navicar.NaviUtil$2] */
    public static void sendKeySync(final int i, final int i2, final boolean z) {
        new Thread() { // from class: com.carocean.navicar.NaviUtil.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    Instrumentation instrumentation = new Instrumentation();
                    KeyEvent keyEvent = new KeyEvent(z ? 0 : 1, i);
                    keyEvent.setSource(i2);
                    instrumentation.sendKeySync(keyEvent);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    public static void sendSimuMCUKey(@Nonnull Context context, int i, int i2) {
        Intent intent = new Intent(Navi.Action.ACTION_MONITOR_CENTER);
        intent.putExtra(Navi.Action.CMD_CODE, 65281);
        intent.putExtra(Navi.Action.MCU_KEY_VALUE, i);
        intent.putExtra(Navi.Action.MCU_KEY_PARAM, i2);
        intent.setPackage(Navi.PackageName.MONITOR_CENTER);
        context.sendBroadcast(intent);
    }

    @Nonnull
    public static int[] toIntArray(List<Integer> list) {
        if (list == null) {
            return new int[0];
        }
        int size = list.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = list.get(i).intValue();
        }
        return iArr;
    }

    public static void sendCmdToPackage(Context context, String str, int i, String str2) {
        Intent intent = new Intent(str);
        intent.putExtra(Navi.Action.CMD_CODE, i);
        intent.setPackage(str2);
        context.sendBroadcast(intent);
    }

    public static void launchPackage(Context context, String str) {
        launchPackage(context, str, false);
    }

    public static void launchPackage(Context context, String str, boolean z) {
        if (context == null || str == null) {
            Log.e(TAG, "launchPackage(): Invalid parameters, it could not be null");
        }
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage != null) {
            launchIntentForPackage.setFlags(268435456);
            if (z) {
                launchIntentForPackage.putExtra(Navi.Action.CMD_CODE, Navi.Action.CMD_START_SOURCE_BACKGROUND);
            }
            context.startActivity(launchIntentForPackage);
            return;
        }
        Log.e(TAG, "launchPackage(): Launch package fail. package name = " + str);
    }

    public static void setMuteMask(@Nonnull Context context, int i, boolean z) {
        setSysStatusMask(context, Navi.Status.SYS_MUTE_MASK, i, z);
    }

    public static int getMuteMask(@Nonnull Context context) {
        return NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), Navi.Status.SYS_MUTE_MASK, 0);
    }

    public static boolean isVolumeMute(@Nonnull Context context) {
        return (getMuteMask(context) & 16) != 0;
    }

    public static void setVolumeMuteMask(@Nonnull Context context, boolean z, boolean z2) {
        int i = NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), Navi.Status.SYS_MUTE_MASK, 0);
        int i2 = z ? i | 16 : i & (-17);
        int i3 = z2 ? i2 | Integer.MIN_VALUE : i2 & Integer.MAX_VALUE;
        NaviStatus.putInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), Navi.Status.SYS_MUTE_MASK, i3);
        Log.e(TAG, "mute flag = " + i3);
    }

    public static void setUnmuteTransientMask(@Nonnull Context context, int i, boolean z) {
        setSysStatusMask(context, Navi.Status.SYS_UNMUTE_TRANSIENT_MASK, i, z);
    }

    public static int getUnmuteTransientMask(@Nonnull Context context) {
        return NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), Navi.Status.SYS_UNMUTE_TRANSIENT_MASK, 0);
    }

    public static void setBlackoutMask(@Nonnull Context context, int i, boolean z) {
        setSysStatusMask(context, Navi.Status.SYS_BLACKOUT_MASK, i, z);
    }

    public static int getBlackoutMask(@Nonnull Context context) {
        return NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), Navi.Status.SYS_BLACKOUT_MASK, 0);
    }

    public static void setAudioFocusMask(@Nonnull Context context, int i, boolean z) {
        setSysStatusMask(context, Navi.Status.SYS_AUDIOFOCUS_MASK, i, z);
    }

    public static int getAudioFocusMask(@Nonnull Context context) {
        return NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), Navi.Status.SYS_BLACKOUT_MASK, 0);
    }

    public static void setBeepMask(@Nonnull Context context, int i, boolean z) {
        Navi.Status.SystemParamInfo systemParamInfo = (Navi.Status.SystemParamInfo) NaviStatus.getObject(Navi.Status.STATUS_URI, context.getContentResolver(), Navi.Status.ST_SYSTEM_PARAM_INFO);
        if (systemParamInfo == null) {
            Log.e(TAG, "ST_SYSTEM_PARAM_INFO not initialized.");
            return;
        }
        if (z) {
            systemParamInfo.beep_enable = i | systemParamInfo.beep_enable;
        } else {
            systemParamInfo.beep_enable = (~i) & systemParamInfo.beep_enable;
        }
        NaviStatus.putObject(Navi.Status.STATUS_URI, context.getContentResolver(), Navi.Status.ST_SYSTEM_PARAM_INFO, systemParamInfo);
    }

    public static int getBeepMask(@Nonnull Context context) {
        Navi.Status.SystemParamInfo systemParamInfo = (Navi.Status.SystemParamInfo) NaviStatus.getObject(Navi.Status.STATUS_URI, context.getContentResolver(), Navi.Status.ST_SYSTEM_PARAM_INFO);
        if (systemParamInfo == null) {
            Log.e(TAG, "ST_SYSTEM_PARAM_INFO not initialized.");
            return 0;
        }
        return systemParamInfo.beep_enable;
    }

    public static int getMotoAutoAdjustBrightnessMask(@Nonnull Context context) {
        return NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), Navi.Status.SYS_MOTO_AUTO_ADJUST_BRIGHTNESS_MASK, 0);
    }

    public static void setMotoAutoAdjustBrightnessMask(@Nonnull Context context, int i) {
        NaviStatus.putInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), Navi.Status.SYS_MOTO_AUTO_ADJUST_BRIGHTNESS_MASK, i);
    }

    private static void setSysStatusMask(@Nonnull Context context, String str, int i, boolean z) {
        int i2 = NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), str, 0);
        NaviStatus.putInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), str, z ? i | i2 : (~i) & i2);
    }

    public static class HexUtils {
        public static String bytesToHexString(byte b) {
            return Integer.toHexString(b & 255);
        }

        public static String bytesToHexString(byte[] bArr, int i, int i2, boolean z) {
            StringBuilder sb = new StringBuilder("");
            if (bArr == null || bArr.length <= 0 || bArr.length < i + i2) {
                return null;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                String hexString = Integer.toHexString(bArr[i3] & 255);
                if (z && i3 % 16 == 0 && i3 != 0) {
                    sb.append("\n");
                }
                if (hexString.length() < 2) {
                    sb.append(0);
                }
                if (z) {
                    sb.append(hexString + " ");
                } else {
                    sb.append(hexString);
                }
            }
            return sb.toString();
        }

        public static byte[] hexStringToBytes(String str) {
            if (str == null || str.equals("")) {
                return null;
            }
            String upperCase = str.toUpperCase();
            int length = upperCase.length() / 2;
            char[] charArray = upperCase.toCharArray();
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) (charToByte(charArray[i2 + 1]) | (charToByte(charArray[i2]) << 4));
            }
            return bArr;
        }

        private static byte charToByte(char c) {
            return (byte) "0123456789ABCDEF".indexOf(c);
        }
    }

    public static class DateTimeUtils {
        public static void setSysDate(Context context, int i, int i2, int i3) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(1, i);
            calendar.set(2, i2 - 1);
            calendar.set(5, i3);
            long timeInMillis = calendar.getTimeInMillis();
            if (timeInMillis / 1000 < 2147483647L) {
                ((AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)).setTime(timeInMillis);
            }
        }

        public static void setSysTime(Context context, int i, int i2, int i3) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, i);
            calendar.set(12, i2);
            calendar.set(13, i3);
            calendar.set(14, 0);
            long timeInMillis = calendar.getTimeInMillis();
            if (timeInMillis / 1000 < 2147483647L) {
                ((AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)).setTime(timeInMillis);
            }
        }

        public static int BCD2Int(byte[] bArr, int i, int i2) {
            int i3 = 0;
            if (bArr != null && i2 > 0) {
                for (int i4 = i; i4 < i + i2; i4++) {
                    i3 = (((i3 * 10) + ((bArr[i4] & 240) >> 4)) * 10) + (bArr[i4] & 15);
                }
            }
            return i3;
        }

        public static int Int2BCD(int i, byte[] bArr, int i2) {
            int i3 = 0;
            while (bArr != null && i > 0) {
                int i4 = i % 10;
                int i5 = i / 10;
                int i6 = i5 % 10;
                i = i5 / 10;
                bArr[i2 + i3] = (byte) (((i6 & 15) << 4) + i4);
                i3++;
            }
            for (int i7 = 0; i7 < i3 / 2; i7++) {
                int i8 = i2 + i7;
                byte b = bArr[i8];
                int i9 = ((i2 + i3) - 1) - i7;
                bArr[i8] = bArr[i9];
                bArr[i9] = b;
            }
            return i3;
        }
    }

    public static boolean isAppForeground(Context context) {
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) context.getSystemService("activity")).getRunningTasks(1);
        return !runningTasks.isEmpty() && runningTasks.get(0).topActivity.getPackageName().equals(context.getPackageName());
    }

    public static void cmdEQEffect(Context context, Integer[] numArr) {
        ArrayList<Integer> arrayList = new ArrayList<>(Arrays.asList(numArr));
        Intent intent = new Intent(Navi.Action.ACTION_SETTINGS_PQ);
        intent.putIntegerArrayListExtra(Navi.Action.CMD_CODE, arrayList);
        intent.setPackage("com.carocean.settings");
        context.sendBroadcast(intent);
    }

    public static void setUUID(Context context, String str) {
        writeFile(Navi.Common.UUID_FILE, str);
        Settings.System.putString(context.getContentResolver(), "adayo_uuid_key", str);
        Navi.Status.SystemParamInfo systemParamInfo = (Navi.Status.SystemParamInfo) NaviStatus.getObject(Navi.Status.STATUS_URI, context.getContentResolver(), Navi.Status.ST_SYSTEM_PARAM_INFO);
        if (systemParamInfo != null) {
            systemParamInfo.uuid = str;
            NaviStatus.putObject(Navi.Status.STATUS_URI, context.getContentResolver(), Navi.Status.ST_SYSTEM_PARAM_INFO, systemParamInfo);
        }
    }

    public static String getUUID() {
        return fileIsExists(Navi.Common.UUID_FILE) ? readFile(Navi.Common.UUID_FILE) : "";
    }

    public static void setPartNumber(String str) {
        writeFile(Navi.Common.PART_FILE, str);
    }

    public static String getPartNumber() {
        return fileIsExists(Navi.Common.PART_FILE) ? readFile(Navi.Common.PART_FILE) : "";
    }

    public static String readFile(String str) {
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            byte[] bArr = new byte[fileInputStream.available()];
            fileInputStream.read(bArr);
            fileInputStream.close();
            return new String(bArr);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static boolean writeFile(String str, String str2) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            fileOutputStream.write(str2.getBytes());
            fileOutputStream.flush();
            fileOutputStream.getFD().sync();
            fileOutputStream.close();
            return true;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return false;
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean fileIsExists(String str) {
        try {
            return new File(str).exists();
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0047 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0044: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:25:0x0044 */
    public static ArrayList<String> loadBackgroundWhiteList() throws Throwable {
        BufferedReader bufferedReader;
        IOException e;
        BufferedReader bufferedReader2;
        ArrayList<String> arrayList = new ArrayList<>();
        if (fileIsExists(Navi.Common.BACKGROUND_WHITE_LIST_FILE)) {
            BufferedReader bufferedReader3 = null;
            try {
                try {
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(Navi.Common.BACKGROUND_WHITE_LIST_FILE)));
                        while (true) {
                            try {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                                arrayList.add(line);
                            } catch (IOException e2) {
                                e = e2;
                                e.printStackTrace();
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                return arrayList;
                            }
                        }
                        bufferedReader.close();
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader3 = bufferedReader2;
                        if (bufferedReader3 != null) {
                            try {
                                bufferedReader3.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e4) {
                    bufferedReader = null;
                    e = e4;
                } catch (Throwable th2) {
                    th = th2;
                    if (bufferedReader3 != null) {
                        bufferedReader3.close();
                    }
                    throw th;
                }
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        }
        return arrayList;
    }

    public static boolean writeBackgroundWhiteList(ArrayList<String> arrayList) throws Throwable {
        boolean z;
        File file = new File(Navi.Common.BACKGROUND_WHITE_LIST_FILE);
        boolean z2 = false;
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
                z = false;
            }
        }
        z = true;
        BufferedWriter bufferedWriter = null;
        try {
            try {
                try {
                    BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter(file));
                    try {
                        Iterator<String> it = arrayList.iterator();
                        while (it.hasNext()) {
                            bufferedWriter2.write(it.next());
                            bufferedWriter2.newLine();
                        }
                        bufferedWriter2.flush();
                        bufferedWriter2.close();
                        z2 = z;
                    } catch (IOException e2) {
                        e = e2;
                        bufferedWriter = bufferedWriter2;
                        e.printStackTrace();
                        if (bufferedWriter != null) {
                            bufferedWriter.close();
                        }
                        return z2;
                    } catch (Throwable th) {
                        th = th;
                        bufferedWriter = bufferedWriter2;
                        if (bufferedWriter != null) {
                            try {
                                bufferedWriter.close();
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
                e = e5;
            }
            return z2;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
