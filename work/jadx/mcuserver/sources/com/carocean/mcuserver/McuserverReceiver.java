package com.carocean.mcuserver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.carocean.navicar.Navi;

/* JADX INFO: loaded from: classes2.dex */
public class McuserverReceiver extends BroadcastReceiver {
    final String TAG = McuserverReceiver.class.getSimpleName();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(Navi.Action.ACTION_MCU_SERVER)) {
            int cmd = intent.getIntExtra(Navi.Action.CMD_CODE, -1);
            if (cmd == -1) {
            }
        } else if ("android.intent.action.BOOT_COMPLETED".equals(intent.getAction())) {
            Log.e(this.TAG, "start mcu server");
            Intent intentService = new Intent(context, (Class<?>) McuService.class);
            context.startService(intentService);
        }
    }
}
