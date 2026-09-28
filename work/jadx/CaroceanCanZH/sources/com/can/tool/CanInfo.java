package com.can.tool;

import android.content.Context;
import android.util.Log;
import android.widget.Toast;
import com.can.platforms.AppConfigParser;

/* JADX INFO: loaded from: classes.dex */
public class CanInfo {
    public static String CAN_RX = "CAN_RX";
    public static String CAN_TX = "CAN_TX";
    public static boolean isDebug = false;

    public static void Rx(byte[] bArr) {
        if (isDebug) {
            Log.i(CAN_RX, ":" + DataConvert.Bytes2Str(bArr));
        }
    }

    public static void RxEx(byte[] bArr, int i) {
        if (isDebug) {
            Log.i(CAN_RX, ":" + DataConvert.Bytes2StrEx(bArr, i));
        }
    }

    public static void Tx(byte[] bArr) {
        if (isDebug) {
            Log.i(CAN_TX, ":" + DataConvert.Bytes2Str(bArr));
        }
    }

    public static void e(String str, String str2) {
        if (isDebug) {
            Log.e(str, str2 + AppConfigParser.ITEM_TIP);
        }
    }

    public static void i(String str, String str2) {
        if (isDebug) {
            Log.i(str, str2 + AppConfigParser.ITEM_TIP);
        }
    }

    public static void w(String str, String str2) {
        if (isDebug) {
            Log.w(str, str2 + AppConfigParser.ITEM_TIP);
        }
    }

    public static void d(String str, String str2) {
        if (isDebug) {
            Log.d(str, str2 + AppConfigParser.ITEM_TIP);
        }
    }

    public static void SWind(Context context, String str) {
        Toast.makeText(context, str, 1).show();
    }
}
