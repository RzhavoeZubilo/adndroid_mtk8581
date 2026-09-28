package com.can.ui.draw;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.can.activity.R;
import com.can.assist.CanProxy;
import com.can.platforms.AppConfigParser;
import com.can.platforms.CanApp;
import com.can.tool.AudioFocusManager;
import com.carocean.navicar.Navi;
import com.carocean.navicar.NaviStatus;
import com.carocean.navicar.util.McuUtils;
import com.carocean.navicar.util.ZHTDOEMManager;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class TouchScreen implements View.OnTouchListener {
    private static final String TAG = "TouchScreen";
    private AudioFocusManager mAudioFocusManager;
    private Context mContext;
    private Handler mHandler;
    private String mLastText;
    private CanProxy mObjCanProxy;
    private PopWind mPopWind;
    private TextView mText;
    private TextView mTime;
    private View mView;
    private int mOldVideoMode = 0;
    private AudioManager.OnAudioFocusChangeListener mOnAudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.can.ui.draw.TouchScreen.1
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
        }
    };
    private long touchMoveEventLastTime = 0;
    private byte[] mTouchData = new byte[5];
    private byte[] mLexusTouchData = new byte[6];
    private BroadcastReceiver mIntentReceiver = new AnonymousClass2();
    private Runnable timesecendsRunnable = new Runnable() { // from class: com.can.ui.draw.TouchScreen.3
        @Override // java.lang.Runnable
        public void run() {
            TouchScreen.this.updateClock();
            TouchScreen.this.mHandler.postDelayed(TouchScreen.this.timesecendsRunnable, 1000L);
        }
    };

    public TouchScreen(LayoutInflater layoutInflater, Context context, Handler handler, CanProxy canProxy) {
        this.mContext = null;
        this.mHandler = null;
        this.mPopWind = null;
        this.mView = null;
        this.mObjCanProxy = null;
        this.mContext = context;
        this.mHandler = handler;
        this.mObjCanProxy = canProxy;
        this.mPopWind = new PopWind(0, 0);
        View viewInflate = layoutInflater.inflate(R.layout.touch_screen, (ViewGroup) null);
        this.mView = viewInflate;
        viewInflate.setOnTouchListener(this);
        TextView textView = (TextView) this.mView.findViewById(R.id.text);
        this.mText = textView;
        if (textView != null) {
            textView.setOnTouchListener(this);
        }
        TextView textView2 = (TextView) this.mView.findViewById(R.id.time);
        this.mTime = textView2;
        if (textView2 != null) {
            textView2.setOnTouchListener(this);
        }
        this.mAudioFocusManager = new AudioFocusManager();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_TICK");
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        intentFilter.addAction("android.intent.action.LOCALE_CHANGED");
        HandlerThread handlerThread = new HandlerThread("TimeTick");
        handlerThread.start();
        this.mContext.registerReceiver(this.mIntentReceiver, intentFilter, null, new Handler(handlerThread.getLooper()));
        updateClock();
        this.mHandler.postDelayed(this.timesecendsRunnable, 1000L);
    }

    public boolean IsShow() {
        return this.mPopWind.IsVisable();
    }

    public void show(boolean z, int i) {
        int iRequestAudioFocus;
        Log.i(TAG, "show: " + z + ",vediomode:" + i);
        if (z) {
            clearLog();
            this.mOldVideoMode = i;
            if (7 != i && (iRequestAudioFocus = this.mAudioFocusManager.requestAudioFocus(this.mOnAudioFocusChangeListener, 1, 3, 1, true)) != 0 && iRequestAudioFocus == 1) {
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(Navi.Common.SOURCE_LOCK_FILE, true);
                    try {
                        FileChannel channel = fileOutputStream.getChannel();
                        try {
                            FileLock fileLockLock = channel.lock();
                            NaviStatus.putInt(Navi.Status.STATUS_SYS_URI, this.mContext.getContentResolver(), Navi.Status.SYS_SOURCE_ID, 91);
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
            PopWind popWind = this.mPopWind;
            if (popWind != null) {
                popWind.showEx(this.mContext, this.mView);
            }
        }
    }

    public void hide() {
        Log.i(TAG, "hide");
        clearLog();
        PopWind popWind = this.mPopWind;
        if (popWind != null) {
            popWind.hide(this.mView);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        Log.i(TAG, "onTouch:event.getRawX= " + motionEvent.getRawX() + ",event.getRawY=" + motionEvent.getRawY() + ",event.getPointerCount=" + motionEvent.getPointerCount() + ",event.getAction=" + motionEvent.getAction());
        if (ZHTDOEMManager.isLexus() || ZHTDOEMManager.isTOYOTACROWN()) {
            this.mLexusTouchData[5] = (byte) motionEvent.getPointerCount();
            if (motionEvent.getAction() == 0 || motionEvent.getAction() == 1) {
                this.mLexusTouchData[0] = (byte) (motionEvent.getAction() == 0 ? 1 : 0);
                this.mLexusTouchData[1] = (byte) ((((int) motionEvent.getRawX()) >> 8) & 255);
                this.mLexusTouchData[2] = (byte) (((int) motionEvent.getRawX()) & 255);
                this.mLexusTouchData[3] = (byte) ((((int) motionEvent.getRawY()) >> 8) & 255);
                this.mLexusTouchData[4] = (byte) (((int) motionEvent.getRawY()) & 255);
                McuUtils.getInstance().sendTouchMsg(this.mLexusTouchData);
            } else if (motionEvent.getAction() != 2) {
                McuUtils.getInstance().sendTouchMsg(this.mLexusTouchData);
            } else if (SystemClock.uptimeMillis() - this.touchMoveEventLastTime >= 100) {
                this.touchMoveEventLastTime = SystemClock.uptimeMillis();
                byte[] bArr = this.mLexusTouchData;
                bArr[0] = 2;
                bArr[1] = (byte) ((((int) motionEvent.getRawX()) >> 8) & 255);
                this.mLexusTouchData[2] = (byte) (((int) motionEvent.getRawX()) & 255);
                this.mLexusTouchData[3] = (byte) ((((int) motionEvent.getRawY()) >> 8) & 255);
                this.mLexusTouchData[4] = (byte) (((int) motionEvent.getRawY()) & 255);
                McuUtils.getInstance().sendTouchMsg(this.mLexusTouchData);
            }
        } else if (motionEvent.getAction() == 0 || motionEvent.getAction() == 1) {
            this.mTouchData[0] = (byte) (motionEvent.getAction() == 0 ? 1 : 0);
            this.mTouchData[1] = (byte) ((((int) motionEvent.getRawX()) >> 8) & 255);
            this.mTouchData[2] = (byte) (((int) motionEvent.getRawX()) & 255);
            this.mTouchData[3] = (byte) ((((int) motionEvent.getRawY()) >> 8) & 255);
            this.mTouchData[4] = (byte) (((int) motionEvent.getRawY()) & 255);
            McuUtils.getInstance().sendTouchMsg(this.mTouchData);
        } else if (motionEvent.getAction() == 2 && SystemClock.uptimeMillis() - this.touchMoveEventLastTime >= 100) {
            this.touchMoveEventLastTime = SystemClock.uptimeMillis();
            byte[] bArr2 = this.mTouchData;
            bArr2[0] = 2;
            bArr2[1] = (byte) ((((int) motionEvent.getRawX()) >> 8) & 255);
            this.mTouchData[2] = (byte) (((int) motionEvent.getRawX()) & 255);
            this.mTouchData[3] = (byte) ((((int) motionEvent.getRawY()) >> 8) & 255);
            this.mTouchData[4] = (byte) (((int) motionEvent.getRawY()) & 255);
            McuUtils.getInstance().sendTouchMsg(this.mTouchData);
        }
        return true;
    }

    public void appendLog(String str) {
        String str2 = getTime() + " <- - " + str;
        TextView textView = this.mText;
        if (textView != null) {
            textView.setText(str2);
        }
    }

    public void clearLog() {
        TextView textView = this.mText;
        if (textView != null) {
            textView.setText(AppConfigParser.ITEM_TIP);
        }
    }

    /* JADX INFO: renamed from: com.can.ui.draw.TouchScreen$2, reason: invalid class name */
    class AnonymousClass2 extends BroadcastReceiver {
        AnonymousClass2() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Log.d(TouchScreen.TAG, "onReceive: " + action);
            if ("android.intent.action.TIME_TICK".equals(action) || "android.intent.action.TIME_SET".equals(action) || "android.intent.action.TIMEZONE_CHANGED".equals(action) || "android.intent.action.LOCALE_CHANGED".equals(action)) {
                if (!"android.intent.action.LOCALE_CHANGED".equals(action)) {
                    "android.intent.action.TIMEZONE_CHANGED".equals(action);
                }
                TouchScreen.this.mHandler.post(new Runnable() { // from class: com.can.ui.draw.-$$Lambda$TouchScreen$2$Al0YODMTvMypPXau5CHwIgxwvuY
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onReceive$0$TouchScreen$2();
                    }
                });
            }
        }

        public /* synthetic */ void lambda$onReceive$0$TouchScreen$2() {
            TouchScreen.this.updateClock();
        }
    }

    protected void updateClock() {
        String time = getTime();
        if (time.equals(this.mLastText)) {
            return;
        }
        TextView textView = this.mTime;
        if (textView != null) {
            textView.setText(time);
        }
        this.mLastText = time;
    }

    public String getTime() {
        SimpleDateFormat simpleDateFormat;
        if (!DateFormat.is24HourFormat(CanApp.getContext())) {
            simpleDateFormat = new SimpleDateFormat("h:mm:ss aa", this.mContext.getResources().getConfiguration().locale);
        } else {
            simpleDateFormat = new SimpleDateFormat("HH:mm:ss", this.mContext.getResources().getConfiguration().locale);
        }
        return simpleDateFormat.format(new Date());
    }
}
