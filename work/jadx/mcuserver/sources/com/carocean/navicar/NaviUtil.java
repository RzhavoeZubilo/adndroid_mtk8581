package com.carocean.navicar;

import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.Instrumentation;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat;
import android.support.v4.view.InputDeviceCompat;
import android.support.v7.widget.ActivityChooserView;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.annotation.Nonnull;

/* JADX INFO: loaded from: classes3.dex */
public class NaviUtil {
    static final String TAG = NaviUtil.class.getSimpleName();
    private static ExecutorService cachedThreadPool = Executors.newCachedThreadPool();

    public static void sendKeyDownUpSync(int keyCode) {
        sendKeyDownUpSync(keyCode, InputDeviceCompat.SOURCE_TOUCHSCREEN);
    }

    public static void sendKeyDownUpSync(final int keyCode, final int source) {
        cachedThreadPool.execute(new Runnable() { // from class: com.carocean.navicar.NaviUtil.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Instrumentation inst = new Instrumentation();
                    KeyEvent event_down = new KeyEvent(0, keyCode);
                    event_down.setSource(source);
                    inst.sendKeySync(event_down);
                    KeyEvent event_up = new KeyEvent(1, keyCode);
                    event_up.setSource(source);
                    inst.sendKeySync(event_up);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    public static void sendPointerSync(final int action, final float x, final float y) {
        cachedThreadPool.execute(new Runnable() { // from class: com.carocean.navicar.NaviUtil.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Instrumentation inst = new Instrumentation();
                    MotionEvent event = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), action, x, y, 0);
                    inst.sendPointerSync(event);
                    event.recycle();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    public static void sendKeySync(final int keyCode, final int source, final boolean down) {
        cachedThreadPool.execute(new Runnable() { // from class: com.carocean.navicar.NaviUtil.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Instrumentation inst = new Instrumentation();
                    KeyEvent event = new KeyEvent(down ? 0 : 1, keyCode);
                    event.setSource(source);
                    inst.sendKeySync(event);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    public static void sendSimuMCUKey(@Nonnull Context context, int value, int param) {
        Intent intent = new Intent(Navi.Action.ACTION_MONITOR_CENTER);
        intent.putExtra(Navi.Action.CMD_CODE, 65281);
        intent.putExtra(Navi.Action.MCU_KEY_VALUE, value);
        intent.putExtra(Navi.Action.MCU_KEY_PARAM, param);
        intent.setPackage(Navi.PackageName.MONITOR_CENTER);
        context.sendBroadcast(intent);
    }

    @Nonnull
    public static int[] toIntArray(List<Integer> list) {
        if (list != null) {
            int[] result = new int[list.size()];
            for (int i = 0; i < result.length; i++) {
                result[i] = list.get(i).intValue();
            }
            return result;
        }
        return new int[0];
    }

    public static void sendCmdToPackage(Context context, String action, int cmdCode, String packageName) {
        Intent intent = new Intent(action);
        intent.putExtra(Navi.Action.CMD_CODE, cmdCode);
        intent.setPackage(packageName);
        context.sendBroadcast(intent);
    }

    public static void launchPackage(Context context, String packageName) {
        launchPackage(context, packageName, false);
    }

    public static void launchPackage(Context context, String packageName, boolean isBackground) {
        if (context == null || packageName == null) {
            Log.e(TAG, "launchPackage(): Invalid parameters, it could not be null");
            return;
        }
        Intent intent = context.getPackageManager().getLaunchIntentForPackage(packageName);
        if (intent != null) {
            intent.setFlags(268435456);
            if (isBackground) {
                intent.putExtra(Navi.Action.CMD_CODE, Navi.Action.CMD_START_SOURCE_BACKGROUND);
            } else {
                intent.putExtra(Navi.Action.CMD_CODE, Navi.Action.CMD_START_SOURCE);
            }
            context.startActivity(intent);
            return;
        }
        Log.e(TAG, "launchPackage(): Launch package fail. package name = " + packageName);
    }

    public static void setMuteMask(@Nonnull Context context, int muteMask, boolean setMute) {
        setSysStatusMask(context, Navi.Status.SYS_MUTE_MASK, muteMask, setMute);
    }

    public static int getMuteMask(@Nonnull Context context) {
        return NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), Navi.Status.SYS_MUTE_MASK, 0);
    }

    public static void setVolumeMuteMask(@Nonnull Context context, boolean setMute, boolean showUI) {
        int flag;
        int flag2;
        int flag3 = NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), Navi.Status.SYS_MUTE_MASK, 0);
        if (setMute) {
            flag = flag3 | 16;
        } else {
            flag = flag3 & (-17);
        }
        if (showUI) {
            flag2 = flag | Integer.MIN_VALUE;
        } else {
            flag2 = flag & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        }
        NaviStatus.putInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), Navi.Status.SYS_MUTE_MASK, flag2);
        Log.e(TAG, "mute flag = " + flag2);
    }

    public static void setUnmuteTransientMask(@Nonnull Context context, int unmuteMask, boolean setUnmute) {
        setSysStatusMask(context, Navi.Status.SYS_UNMUTE_TRANSIENT_MASK, unmuteMask, setUnmute);
    }

    public static int getUnmuteTransientMask(@Nonnull Context context) {
        return NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), Navi.Status.SYS_UNMUTE_TRANSIENT_MASK, 0);
    }

    public static void setBlackoutMask(@Nonnull Context context, int blackoutMask, boolean setBlackout) {
        setSysStatusMask(context, Navi.Status.SYS_BLACKOUT_MASK, blackoutMask, setBlackout);
    }

    public static int getBlackoutMask(@Nonnull Context context) {
        return NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), Navi.Status.SYS_BLACKOUT_MASK, 0);
    }

    public static void setAudioFocusMask(@Nonnull Context context, int focusMask, boolean setFocus) {
        setSysStatusMask(context, Navi.Status.SYS_AUDIOFOCUS_MASK, focusMask, setFocus);
    }

    public static int getAudioFocusMask(@Nonnull Context context) {
        return NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), Navi.Status.SYS_BLACKOUT_MASK, 0);
    }

    public static void setBeepMask(@Nonnull Context context, int beepMask, boolean setBeep) {
        Navi.Status.SystemParamInfo spi = (Navi.Status.SystemParamInfo) NaviStatus.getObject(Navi.Status.STATUS_URI, context.getContentResolver(), Navi.Status.ST_SYSTEM_PARAM_INFO);
        if (spi == null) {
            Log.e(TAG, "ST_SYSTEM_PARAM_INFO not initialized.");
            return;
        }
        if (setBeep) {
            spi.beep_enable |= beepMask;
        } else {
            spi.beep_enable &= ~beepMask;
        }
        NaviStatus.putObject(Navi.Status.STATUS_URI, context.getContentResolver(), Navi.Status.ST_SYSTEM_PARAM_INFO, spi);
    }

    public static int getBeepMask(@Nonnull Context context) {
        Navi.Status.SystemParamInfo spi = (Navi.Status.SystemParamInfo) NaviStatus.getObject(Navi.Status.STATUS_URI, context.getContentResolver(), Navi.Status.ST_SYSTEM_PARAM_INFO);
        if (spi == null) {
            Log.e(TAG, "ST_SYSTEM_PARAM_INFO not initialized.");
            return 0;
        }
        return spi.beep_enable;
    }

    private static void setSysStatusMask(@Nonnull Context context, String sysMask, int value, boolean set) {
        int flag;
        int flag2 = NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), sysMask, 0);
        if (set) {
            flag = flag2 | value;
        } else {
            flag = flag2 & (~value);
        }
        NaviStatus.putInt(Navi.Status.STATUS_SYS_URI, context.getContentResolver(), sysMask, flag);
    }

    public static class HexUtils {
        public static String bytesToHexString(byte src) {
            int v = src & 255;
            String hv = Integer.toHexString(v);
            return hv;
        }

        public static String bytesToHexString(byte[] src, int pos, int length, boolean isForDebug) {
            StringBuilder stringBuilder = new StringBuilder("");
            if (src == null || src.length <= 0 || src.length < pos + length) {
                return null;
            }
            for (int i = 0; i < length; i++) {
                int v = src[i] & 255;
                String hv = Integer.toHexString(v);
                if (isForDebug && i % 16 == 0 && i != 0) {
                    stringBuilder.append("\n");
                }
                if (hv.length() < 2) {
                    stringBuilder.append(0);
                }
                if (isForDebug) {
                    stringBuilder.append(hv + " ");
                } else {
                    stringBuilder.append(hv);
                }
            }
            return stringBuilder.toString();
        }

        public static byte[] hexStringToBytes(String hexString) {
            if (hexString == null || hexString.equals("")) {
                return null;
            }
            String hexString2 = hexString.toUpperCase();
            int length = hexString2.length() / 2;
            char[] hexChars = hexString2.toCharArray();
            byte[] d = new byte[length];
            for (int i = 0; i < length; i++) {
                int pos = i * 2;
                d[i] = (byte) ((charToByte(hexChars[pos]) << 4) | charToByte(hexChars[pos + 1]));
            }
            return d;
        }

        private static byte charToByte(char c) {
            return (byte) "0123456789ABCDEF".indexOf(c);
        }
    }

    public static class DateTimeUtils {
        public static void setSysDate(Context context, int year, int month, int day) {
            Calendar c = Calendar.getInstance();
            c.set(1, year);
            c.set(2, month - 1);
            c.set(5, day);
            long when = c.getTimeInMillis();
            if (when / 1000 < 2147483647L) {
                ((AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)).setTime(when);
            }
        }

        public static void setSysTime(Context context, int hour, int minute, int second) {
            Calendar c = Calendar.getInstance();
            c.set(11, hour);
            c.set(12, minute);
            c.set(13, second);
            c.set(14, 0);
            long when = c.getTimeInMillis();
            if (when / 1000 < 2147483647L) {
                ((AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM)).setTime(when);
            }
        }

        public static int BCD2Int(byte[] data, int offset, int len) {
            int sum = 0;
            if (data != null && len > 0) {
                for (int i = offset; i < offset + len; i++) {
                    int n = (data[i] & 240) >> 4;
                    int m = data[i] & 15;
                    sum = (((sum * 10) + n) * 10) + m;
                }
            }
            return sum;
        }

        public static int Int2BCD(int number, byte[] buffer, int offset) {
            int count = 0;
            while (buffer != null && number > 0) {
                int m = number % 10;
                int number2 = number / 10;
                int n = number2 % 10;
                number = number2 / 10;
                buffer[offset + count] = (byte) (((n & 15) << 4) + m);
                count++;
            }
            for (int i = 0; i < count / 2; i++) {
                byte temp = buffer[offset + i];
                buffer[offset + i] = buffer[((offset + count) - 1) - i];
                buffer[((offset + count) - 1) - i] = temp;
            }
            return count;
        }
    }

    public static boolean isAppForeground(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        List<ActivityManager.RunningTaskInfo> list = activityManager.getRunningTasks(1);
        if (!list.isEmpty()) {
            ComponentName componentName = list.get(0).topActivity;
            if (componentName.getPackageName().equals(context.getPackageName())) {
                return true;
            }
        }
        return false;
    }

    public static void cmdEQEffect(Context context, Integer[] data) {
        List<Integer> arrayList = new ArrayList<>(Arrays.asList(data));
        Intent intent = new Intent(Navi.Action.ACTION_SETTINGS_PQ);
        intent.putIntegerArrayListExtra(Navi.Action.CMD_CODE, (ArrayList) arrayList);
        intent.setPackage("com.carocean.settings");
        context.sendBroadcast(intent);
    }

    public static void setUUID(Context context, String strContent) {
        writeFile(Navi.Common.UUID_FILE, strContent);
        Navi.Status.SystemParamInfo spi = (Navi.Status.SystemParamInfo) NaviStatus.getObject(Navi.Status.STATUS_URI, context.getContentResolver(), Navi.Status.ST_SYSTEM_PARAM_INFO);
        if (spi != null) {
            spi.uuid = strContent;
            NaviStatus.putObject(Navi.Status.STATUS_URI, context.getContentResolver(), Navi.Status.ST_SYSTEM_PARAM_INFO, spi);
        }
    }

    public static String readFile(String filename) {
        try {
            FileInputStream fin = new FileInputStream(filename);
            int length = fin.available();
            byte[] buff = new byte[length];
            fin.read(buff);
            fin.close();
            String str = new String(buff);
            return str;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static boolean writeFile(String filename, String strContent) {
        try {
            FileOutputStream fout = new FileOutputStream(filename);
            fout.write(strContent.getBytes());
            fout.flush();
            fout.getFD().sync();
            fout.close();
            return true;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return false;
        } catch (IOException e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
