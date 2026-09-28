package com.can.tool;

import android.content.ComponentName;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.util.Log;
import com.can.platforms.CanApp;

/* JADX INFO: loaded from: classes.dex */
public class AudioFocusManager {
    private final String TAG = CanApp.TAG + getClass().getSimpleName();
    private AudioFocusRequest mAudioFocusRequest = null;
    private AudioManager mAudioManager;

    public AudioFocusManager() {
        this.mAudioManager = null;
        this.mAudioManager = (AudioManager) CanApp.getContext().getSystemService("audio");
    }

    public void release() {
        this.mAudioFocusRequest = null;
        this.mAudioManager = null;
    }

    public int requestAudioFocus(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2, int i3, boolean z) {
        if (this.mAudioManager == null || onAudioFocusChangeListener == null) {
            Log.d(this.TAG, "requestAudioFocus null... ");
            return -1;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            AudioFocusRequest audioFocusRequestBuild = new AudioFocusRequest.Builder(i3).setAudioAttributes(new AudioAttributes.Builder().setUsage(i).setContentType(i2).build()).setAcceptsDelayedFocusGain(z).setOnAudioFocusChangeListener(onAudioFocusChangeListener).build();
            this.mAudioFocusRequest = audioFocusRequestBuild;
            return this.mAudioManager.requestAudioFocus(audioFocusRequestBuild);
        }
        return this.mAudioManager.requestAudioFocus(onAudioFocusChangeListener, i2, i3);
    }

    public int abandonAudioFocusRequest(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
        if (this.mAudioManager == null || onAudioFocusChangeListener == null) {
            Log.d(this.TAG, "abandonAudioFocusRequest null... ");
            return -1;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return this.mAudioManager.abandonAudioFocusRequest(this.mAudioFocusRequest);
        }
        return this.mAudioManager.abandonAudioFocus(onAudioFocusChangeListener);
    }

    public void registerMediaButtonEventReceiver(ComponentName componentName) {
        AudioManager audioManager;
        Log.d(this.TAG, "registerMediaButtonEventReceiver componentName : " + componentName);
        if (componentName == null || (audioManager = this.mAudioManager) == null) {
            return;
        }
        audioManager.registerMediaButtonEventReceiver(componentName);
    }

    public void unregisterMediaButtonEventReceiver(ComponentName componentName) {
        AudioManager audioManager;
        Log.d(this.TAG, "unregisterMediaButtonEventReceiver componentName : " + componentName);
        if (componentName == null || (audioManager = this.mAudioManager) == null) {
            return;
        }
        audioManager.unregisterMediaButtonEventReceiver(componentName);
    }
}
