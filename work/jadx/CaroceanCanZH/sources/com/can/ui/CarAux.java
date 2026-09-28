package com.can.ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import com.can.activity.R;
import com.can.tool.AudioFocusManager;
import com.carocean.navicar.McuServiceManager;
import com.carocean.navicar.Navi;
import com.carocean.navicar.NaviStatus;
import com.carocean.navicar.util.McuUtils;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;

/* JADX INFO: loaded from: classes.dex */
public class CarAux extends Activity {
    static final String TAG = "CarAux";
    AudioFocusManager manager = null;
    private McuServiceManager mcuServiceManager = McuServiceManager.getInstance();
    AudioManager.OnAudioFocusChangeListener mAudioFocusListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.can.ui.CarAux.2
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            if (i == -3) {
                Log.i(CarAux.TAG, "aux---AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK");
                CarAux.this.openAuxAudio(false);
                return;
            }
            if (i == -2) {
                Log.i(CarAux.TAG, "aux---AUDIOFOCUS_LOSS_TRANSIENT");
                CarAux.this.openAuxAudio(false);
            } else if (i == -1) {
                Log.i(CarAux.TAG, "aux---AUDIOFOCUS_LOSS");
                CarAux.this.exitAux();
                CarAux.this.finish();
            } else {
                if (i != 1) {
                    return;
                }
                Log.i(CarAux.TAG, "aux---AUDIOFOCUS_GAIN");
                CarAux.this.openAuxAudio(true);
            }
        }
    };
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.can.ui.CarAux.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (Navi.Action.ACTION_QUIT_APK.equals(intent.getAction()) && "aux".equals(intent.getStringExtra("func"))) {
                CarAux.this.exitAux();
                CarAux.this.finish();
            }
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (Build.VERSION.SDK_INT >= 21) {
            window.clearFlags(201326592);
            window.getDecorView().setSystemUiVisibility(1792);
            window.addFlags(Integer.MIN_VALUE);
        } else if (Build.VERSION.SDK_INT >= 19) {
            window.addFlags(67108864);
            window.addFlags(134217728);
        }
        setContentView(R.layout.activity_caraux);
        findViewById(R.id.back).setOnClickListener(new View.OnClickListener() { // from class: com.can.ui.CarAux.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CarAux.this.onBackPressed();
            }
        });
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Navi.Action.ACTION_QUIT_APK);
        registerReceiver(this.mReceiver, intentFilter);
        this.manager = new AudioFocusManager();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        exitAux();
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        unregisterReceiver(this.mReceiver);
        exitAux();
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        enterAux();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 21 && keyCode != 22 && keyCode != 66) {
            if (keyCode != 71) {
                if (keyCode != 72 && keyCode != 296 && keyCode != 297) {
                    return super.dispatchKeyEvent(keyEvent);
                }
            } else if (keyEvent.getAction() == 1) {
                onBackPressed();
            }
        }
        return true;
    }

    void openAuxAudio(boolean z) {
        McuUtils.getInstance().sendSettingCmd(new byte[]{-99, z ? (byte) 1 : (byte) 0, 0, 0});
    }

    void requestAudioFocus() {
        Log.i(TAG, "aux---requestAudioFocus");
        int iRequestAudioFocus = this.manager.requestAudioFocus(this.mAudioFocusListener, 1, 3, 1, true);
        if (iRequestAudioFocus != 0 && iRequestAudioFocus == 1) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(Navi.Common.SOURCE_LOCK_FILE, true);
                try {
                    FileChannel channel = fileOutputStream.getChannel();
                    try {
                        FileLock fileLockLock = channel.lock();
                        NaviStatus.putInt(Navi.Status.STATUS_SYS_URI, getContentResolver(), Navi.Status.SYS_SOURCE_ID, 8);
                        fileLockLock.release();
                        if (channel != null) {
                            channel.close();
                        }
                        fileOutputStream.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            if (channel != null) {
                                try {
                                    channel.close();
                                } catch (Throwable th3) {
                                    th.addSuppressed(th3);
                                }
                            }
                            throw th2;
                        }
                    }
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th6) {
                            th4.addSuppressed(th6);
                        }
                        throw th5;
                    }
                }
            } catch (Exception e) {
                Log.e(TAG, e.toString());
            }
        }
    }

    boolean releaseAudioFocus() {
        if (this.manager == null) {
            return false;
        }
        Log.i(TAG, "aux---releaseAudioFocus");
        this.manager.abandonAudioFocusRequest(this.mAudioFocusListener);
        this.manager = null;
        return true;
    }

    public void enterAux() {
        Log.i(TAG, "aux---enterAux");
        requestAudioFocus();
        openAuxAudio(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void exitAux() {
        Log.i(TAG, "aux---exitAux");
        if (releaseAudioFocus()) {
            openAuxAudio(false);
        }
    }
}
