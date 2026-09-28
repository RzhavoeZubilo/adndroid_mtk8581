package com.android.launcher2;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Rect;
import android.os.IBinder;
import android.os.SystemProperties;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import com.carocean.navicar.PerSysDef;
import com.yecon.launcher1.R;

/* JADX INFO: loaded from: classes.dex */
public class FloatWindowService extends Service {
    private static final int NOTIFICATION_ID = 1;
    private static final String TAG = "FloatWindowService";
    private Button floatImage;
    private float mTouchStartX;
    private float mTouchStartY;
    private WindowManager.LayoutParams params;
    private PendingIntent pendingIntent;
    private Intent resumeActivityIntent;
    private View rootview;
    private WindowManager wm;
    private boolean isStarted = false;
    private float x = 0.0f;
    private float y = 0.0f;
    private int statusbarHeight = 0;
    private boolean ismoving = false;
    long m_tiemcheck = System.currentTimeMillis();
    private View.OnTouchListener onTouchListener = new View.OnTouchListener() { // from class: com.android.launcher2.FloatWindowService.1
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            FloatWindowService.this.x = motionEvent.getRawX();
            FloatWindowService.this.y = motionEvent.getRawY();
            int action = motionEvent.getAction();
            if (action == 0) {
                FloatWindowService floatWindowService = FloatWindowService.this;
                floatWindowService.statusbarHeight = floatWindowService.getStatusBarHeight();
                FloatWindowService.this.ismoving = false;
                FloatWindowService.this.mTouchStartX = (int) motionEvent.getX();
                FloatWindowService.this.mTouchStartY = (int) motionEvent.getY();
                FloatWindowService.this.m_tiemcheck = System.currentTimeMillis();
            } else if (action == 1) {
                if (System.currentTimeMillis() - FloatWindowService.this.m_tiemcheck < 200) {
                    FloatWindowService.this.floatImage.playSoundEffect(0);
                    FloatWindowService.this.clickToResume();
                } else {
                    FloatWindowService floatWindowService2 = FloatWindowService.this;
                    floatWindowService2.mTouchStartX = floatWindowService2.mTouchStartY = 0.0f;
                }
                FloatWindowService.this.saveViewPosition();
            } else if (action == 2) {
                FloatWindowService.this.ismoving = true;
                FloatWindowService.this.updateViewPosition();
            } else if (action == 3) {
                FloatWindowService.this.saveViewPosition();
            }
            return FloatWindowService.this.ismoving;
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        Log.d(TAG, "onStartCommand");
        if (this.isStarted) {
            return 2;
        }
        this.isStarted = true;
        Intent intent2 = new Intent();
        this.resumeActivityIntent = intent2;
        intent2.addCategory("android.intent.category.LAUNCHER");
        this.resumeActivityIntent.setComponent(new ComponentName("com.ivicar.avm", "com.ivicar.modules.main.view.MainActivity"));
        this.resumeActivityIntent.addFlags(270532608);
        this.pendingIntent = PendingIntent.getActivity(this, 0, this.resumeActivityIntent, 134217728);
        NotificationChannel notificationChannel = new NotificationChannel("com.ivicar.avm", "ivicaravm", 2);
        notificationChannel.setLightColor(-16776961);
        notificationChannel.setLockscreenVisibility(0);
        ((NotificationManager) getSystemService("notification")).createNotificationChannel(notificationChannel);
        Notification.Builder builder = new Notification.Builder(this, "com.ivicar.avm");
        builder.setContentIntent(this.pendingIntent).setOngoing(true).build();
        startForeground(1, builder.build());
        showFloatWindow();
        return 2;
    }

    private void showFloatWindow() {
        this.wm = (WindowManager) getSystemService("window");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.params = layoutParams;
        layoutParams.type = 2010;
        this.params.flags |= 776;
        this.params.gravity = 51;
        this.params.width = -2;
        this.params.height = -2;
        this.params.x = SystemProperties.getInt(PerSysDef.PERSYS_IVICAR_AVM_FLOATBALL_X, 0);
        this.params.y = SystemProperties.getInt(PerSysDef.PERSYS_IVICAR_AVM_FLOATBALL_Y, this.wm.getDefaultDisplay().getHeight() / 2);
        this.params.format = -3;
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.floatball, (ViewGroup) null);
        this.rootview = viewInflate;
        Button button = (Button) viewInflate.findViewById(R.id.float_image);
        this.floatImage = button;
        button.setOnTouchListener(this.onTouchListener);
        this.wm.addView(this.rootview, this.params);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        Log.d(TAG, "onDestroy");
        this.wm.removeView(this.rootview);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViewPosition() {
        this.params.x = (int) (this.x - this.mTouchStartX);
        this.params.y = ((int) (this.y - this.mTouchStartY)) - this.statusbarHeight;
        this.wm.updateViewLayout(this.rootview, this.params);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveViewPosition() {
        SystemProperties.set(PerSysDef.PERSYS_IVICAR_AVM_FLOATBALL_X, String.valueOf(this.params.x));
        SystemProperties.get(PerSysDef.PERSYS_IVICAR_AVM_FLOATBALL_Y, String.valueOf(this.params.y));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getStatusBarHeight() {
        Rect rect = new Rect();
        this.rootview.getWindowVisibleDisplayFrame(rect);
        return rect.top;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clickToResume() {
        startActivity(this.resumeActivityIntent);
        stopSelf();
    }
}
