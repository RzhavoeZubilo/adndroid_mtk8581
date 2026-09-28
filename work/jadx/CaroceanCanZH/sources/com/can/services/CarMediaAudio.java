package com.can.services;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.util.Log;
import com.can.tool.AudioFocusManager;
import com.can.ui.CarMedia;
import com.carocean.navicar.Navi;
import com.carocean.navicar.NaviStatus;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;

/* JADX INFO: loaded from: classes.dex */
public class CarMediaAudio {
    protected static final String TAG = "CarMediaAudio";
    AudioManager.OnAudioFocusChangeListener mAudioFocusListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.can.services.CarMediaAudio.1
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            if (i == -3) {
                Log.i(CarMediaAudio.TAG, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK");
                return;
            }
            if (i == -2) {
                Log.i(CarMediaAudio.TAG, "AUDIOFOCUS_LOSS_TRANSIENT");
                return;
            }
            if (i == -1) {
                Log.i(CarMediaAudio.TAG, "AUDIOFOCUS_LOSS");
                CarMediaAudio.this.exitUi();
            } else {
                if (i != 1) {
                    return;
                }
                Log.i(CarMediaAudio.TAG, "AUDIOFOCUS_GAIN");
            }
        }
    };
    private AudioFocusManager mAudioManager;
    private Context mContext;

    public CarMediaAudio(Context context) {
        this.mContext = context;
    }

    void requestAudioFocus() {
        if (this.mAudioManager == null) {
            this.mAudioManager = new AudioFocusManager();
        }
        Log.i(TAG, "requestAudioFocus");
        int iRequestAudioFocus = this.mAudioManager.requestAudioFocus(this.mAudioFocusListener, 1, 3, 1, true);
        if (iRequestAudioFocus != 0 && iRequestAudioFocus == 1) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(Navi.Common.SOURCE_LOCK_FILE, true);
                try {
                    FileChannel channel = fileOutputStream.getChannel();
                    try {
                        FileLock fileLockLock = channel.lock();
                        NaviStatus.putInt(Navi.Status.STATUS_SYS_URI, this.mContext.getContentResolver(), Navi.Status.SYS_SOURCE_ID, 92);
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
        if (this.mAudioManager == null) {
            return false;
        }
        Log.i(TAG, "releaseAudioFocus");
        this.mAudioManager.abandonAudioFocusRequest(this.mAudioFocusListener);
        this.mAudioManager = null;
        return true;
    }

    void showUi(int i) {
        Intent intent = new Intent(this.mContext, (Class<?>) CarMedia.class);
        intent.setFlags(268435456);
        intent.putExtra("mode", i);
        this.mContext.startActivity(intent);
    }

    void exitUi() {
        Intent intent = new Intent(Navi.Action.ACTION_QUIT_APK);
        intent.setPackage(this.mContext.getPackageName());
        intent.putExtra("func", "carmedia");
        this.mContext.sendBroadcast(intent);
    }
}
