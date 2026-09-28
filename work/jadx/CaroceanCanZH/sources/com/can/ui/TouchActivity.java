package com.can.ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.util.Log;
import com.carocean.navicar.McuServiceManager;

/* JADX INFO: loaded from: classes.dex */
public class TouchActivity extends Activity {
    private static final String TAG = "TouchActivity";
    private Receiver mReceiver = new Receiver();
    private int mVideoMode = 1;
    private McuServiceManager mcuServiceManager = McuServiceManager.getInstance();
    McuServiceManager.DataListener dataListener = new McuServiceManager.DataListener() { // from class: com.can.ui.TouchActivity.1
        @Override // com.carocean.navicar.McuServiceManager.DataListener
        public void onReceive(int i, byte[] bArr) {
            if (i == 32 && (bArr[0] & 15) == 0) {
                TouchActivity.this.finish();
                TouchActivity.this.overridePendingTransition(0, 0);
            }
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Log.i(TAG, "onCreate");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.yecon.bmw.video_mode");
        registerReceiver(this.mReceiver, intentFilter);
        Intent intent = getIntent();
        if (intent != null) {
            int intExtra = intent.getIntExtra("video_mode", -1);
            this.mVideoMode = intExtra;
            if (intExtra == 0) {
                finish();
                overridePendingTransition(0, 0);
            }
        }
        initMcu();
    }

    private void initMcu() {
        this.mcuServiceManager.regCallback(new int[]{32}, this.dataListener);
        this.mcuServiceManager.isServiceConnected();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        Log.i(TAG, "onDestroy");
        unregisterReceiver(this.mReceiver);
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent != null) {
            int intExtra = intent.getIntExtra("video_mode", -1);
            this.mVideoMode = intExtra;
            if (intExtra == 0) {
                finish();
                overridePendingTransition(0, 0);
            }
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.mVideoMode == 0) {
            super.onBackPressed();
        }
    }

    class Receiver extends BroadcastReceiver {
        Receiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("com.yecon.bmw.video_mode")) {
                int intExtra = intent.getIntExtra("video_mode", 0);
                TouchActivity.this.mVideoMode = intExtra;
                if (intExtra == 0) {
                    TouchActivity.this.finish();
                    TouchActivity.this.overridePendingTransition(0, 0);
                }
            }
        }
    }
}
