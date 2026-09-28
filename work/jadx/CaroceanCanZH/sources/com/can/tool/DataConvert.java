package com.can.tool;

import android.content.Context;
import android.os.Build;
import android.os.RemoteException;
import android.util.Log;
import androidx.core.view.ViewCompat;
import com.can.assist.CanContant;
import com.can.platforms.AppConfigParser;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class DataConvert implements CanContant {
    public static int GetBit(int i, int i2) {
        return (i >> i2) & 1;
    }

    public static byte[] Hi2Lo2Byte(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((65280 & i) >> 8), (byte) ((16711680 & i) >> 16), (byte) ((i & ViewCompat.MEASURED_STATE_MASK) >> 24)};
    }

    public static int byteToInt(byte b) {
        return b & 255;
    }

    public static byte[] intToBytes(int i) {
        return String.valueOf(i).getBytes();
    }

    public static int bytesToInt(byte[] bArr) {
        return Integer.parseInt(new String(bArr));
    }

    public static byte[] intArrayToByteArray(int[] iArr, int i) {
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            bArr[i2] = (byte) (iArr[i2] & 255);
        }
        return bArr;
    }

    public static String BytesToStr(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            stringBuffer.append((char) b);
        }
        return stringBuffer.toString();
    }

    public static String Bytes2Str(byte[] bArr) {
        String str = "[";
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (1 == hexString.length()) {
                hexString = "0" + hexString;
            }
            str = str + hexString + " ";
        }
        return str + "]";
    }

    public static String Bytes2StrEx(byte[] bArr, int i) {
        String str = "[";
        for (int i2 = 0; i2 < i; i2++) {
            String hexString = Integer.toHexString(bArr[i2] & 255);
            if (1 == hexString.length()) {
                hexString = "0" + hexString;
            }
            str = str + hexString + " ";
        }
        return str + "]";
    }

    public static short byte2Short(byte[] bArr, int i) {
        int length = bArr.length - i;
        if (length > 2) {
            length = 2;
        }
        short s = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            s = (short) (s + ((bArr[i3 + i] & 255) << i2));
            i2 += 8;
        }
        return s;
    }

    public static int byte2Int(byte[] bArr, int i) {
        int length = bArr.length - i;
        if (length > 4) {
            length = 4;
        }
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            i2 += (bArr[i4 + i] & 255) << i3;
            i3 += 8;
        }
        return i2;
    }

    public static byte[] getdatas(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        bArr2[0] = bArr[1];
        bArr2[1] = bArr[0];
        return bArr2;
    }

    public static int MakeInt(byte[] bArr, int i) {
        byte[] bArr2 = getdatas(bArr);
        int length = bArr2.length - i;
        if (length > 4) {
            length = 4;
        }
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            i2 += (bArr2[i4 + i] & 255) << i3;
            i3 += 8;
        }
        return i2;
    }

    public static int getAdd(byte[] bArr) {
        int i = 0;
        for (byte b : bArr) {
            i += b;
        }
        return i;
    }

    public static ArrayList<String> getStringArray(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        int i = 0;
        while (true) {
            int iIndexOf = str.indexOf(",", i);
            if (iIndexOf < i) {
                arrayList.add(str.substring(i));
                return arrayList;
            }
            arrayList.add(str.substring(i, iIndexOf));
            i = iIndexOf + 1;
        }
    }

    public static void putInt(Context context, String str, int i) throws RemoteException {
        context.getSharedPreferences(CanContant.CAN_SHAREDPREFERENCES_DATA, 0).edit().putInt(str, i).commit();
    }

    public static int getInt(Context context, String str) throws RemoteException {
        return context.getSharedPreferences(CanContant.CAN_SHAREDPREFERENCES_DATA, 0).getInt(str, 0);
    }

    public static int getIntEx(Context context, String str, int i) throws RemoteException {
        return context.getSharedPreferences(CanContant.CAN_SHAREDPREFERENCES_DATA, 0).getInt(str, i);
    }

    public static void putStr(Context context, String str, String str2) throws RemoteException {
        context.getSharedPreferences(CanContant.CAN_SHAREDPREFERENCES_DATA, 0).edit().putString(str, str2).commit();
    }

    public static String getStr(Context context, String str) throws RemoteException {
        return context.getSharedPreferences(CanContant.CAN_SHAREDPREFERENCES_DATA, 0).getString(str, AppConfigParser.ITEM_TIP);
    }

    public static int getLayoutId(Context context, String str) {
        return context.getResources().getIdentifier(str, "layout", context.getPackageName());
    }

    public static int getStringId(Context context, String str) {
        return context.getResources().getIdentifier(str, "string", context.getPackageName());
    }

    public static int getDrawableId(Context context, String str) {
        return context.getResources().getIdentifier(str, "drawable", context.getPackageName());
    }

    public static int getStyleId(Context context, String str) {
        return context.getResources().getIdentifier(str, "style", context.getPackageName());
    }

    public static int getId(Context context, String str) {
        return context.getResources().getIdentifier(str, "id", context.getPackageName());
    }

    public static int getColorId(Context context, String str) {
        return context.getResources().getIdentifier(str, "color", context.getPackageName());
    }

    public static int getXmlId(Context context, String str) {
        return context.getResources().getIdentifier(str, "xml", context.getPackageName());
    }

    public static int bcd2Dec(byte b) {
        StringBuffer stringBuffer = new StringBuffer(2);
        stringBuffer.append((int) ((byte) ((b & 240) >> 4)));
        stringBuffer.append((int) ((byte) (b & 15)));
        return Integer.parseInt(stringBuffer.toString().substring(0, 1).equalsIgnoreCase("0") ? stringBuffer.toString().substring(1) : stringBuffer.toString());
    }

    public static String getPlatforms(Context context) throws RemoteException {
        Log.i("Platforms", "Platforms is " + CanContant.PLATFORMS_8581 + "-->SDK:" + Build.VERSION.SDK_INT);
        return CanContant.PLATFORMS_8581;
    }
}
