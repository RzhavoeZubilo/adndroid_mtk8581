package com.android.launcher2.popuView;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.animation.RotateAnimation;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class CompassManager {
    private static final boolean DEBUG = false;
    private static final String TAG = "CompassManager";
    private static final boolean TEST_VIEWS = false;
    private LocationManager locationManager;
    private Context mContext;
    private OnCompassManagerCallback onCompassManagerCallback;
    private ArrayList<WeakReference<View>> views = new ArrayList<>();
    private float lastBearing = 0.0f;
    private float testBearing = 0.0f;
    private final int MSG_TEST_VIEWS = 0;
    private final int MSG_ON_LOCATION_CHANGED = 1;
    private final int MSG_ON_PROVIDER_ENABLED = 2;
    private Handler mHandler = new Handler() { // from class: com.android.launcher2.popuView.CompassManager.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 0) {
                CompassManager.this.mHandler.sendEmptyMessageDelayed(0, 1000L);
                CompassManager.this.testBearing += 90.0f;
                if (CompassManager.this.testBearing > 360.0f) {
                    CompassManager.this.testBearing = 0.0f;
                }
                CompassManager compassManager = CompassManager.this;
                compassManager.updataCompassViews(compassManager.testBearing);
                return;
            }
            if (message.what == 1) {
                if (message.obj instanceof Location) {
                    CompassManager.this.updateViews((Location) message.obj);
                    if (CompassManager.this.onCompassManagerCallback != null) {
                        CompassManager.this.onCompassManagerCallback.onLocationChanged((Location) message.obj);
                        return;
                    }
                    return;
                }
                return;
            }
            if (message.what == 2 && (message.obj instanceof String)) {
                String str = (String) message.obj;
                CompassManager compassManager2 = CompassManager.this;
                compassManager2.updateViews(compassManager2.locationManager.getLastKnownLocation(str));
                if (CompassManager.this.onCompassManagerCallback != null) {
                    CompassManager.this.onCompassManagerCallback.onProviderEnabled(str);
                }
            }
        }
    };
    private LocationListener locationListener = new LocationListener() { // from class: com.android.launcher2.popuView.CompassManager.2
        @Override // android.location.LocationListener
        public void onProviderDisabled(String str) {
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String str, int i, Bundle bundle) {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(Location location) {
            CompassManager.this.mHandler.sendMessage(CompassManager.this.mHandler.obtainMessage(1, location));
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String str) {
            CompassManager.this.mHandler.sendMessage(CompassManager.this.mHandler.obtainMessage(2, str));
        }
    };

    public interface OnCompassManagerCallback {
        void onLocationChanged(Location location);

        void onProviderEnabled(String str);
    }

    public CompassManager(Context context) {
        this.mContext = context;
        this.locationManager = (LocationManager) context.getSystemService("location");
    }

    public void addCompassView(View view) {
        this.views.add(new WeakReference<>(view));
    }

    public void setCallback(OnCompassManagerCallback onCompassManagerCallback) {
        this.onCompassManagerCallback = onCompassManagerCallback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updataCompassViews(float f) {
        if (f < 0.0f || f > 360.0f || this.views.size() <= 0) {
            return;
        }
        RotateAnimation rotateAnimation = new RotateAnimation(-this.lastBearing, -f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(500L);
        rotateAnimation.setRepeatCount(0);
        rotateAnimation.setFillAfter(true);
        Iterator<WeakReference<View>> it = this.views.iterator();
        while (it.hasNext()) {
            WeakReference<View> next = it.next();
            if (next.get() != null) {
                next.get().startAnimation(rotateAnimation);
            } else {
                it.remove();
            }
        }
        this.lastBearing = f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViews(Location location) {
        if (location != null) {
            updataCompassViews(location.getBearing());
        } else {
            Log.i(TAG, "location is null");
        }
    }

    public void start() {
        updateViews(this.locationManager.getLastKnownLocation("gps"));
        this.locationManager.requestLocationUpdates("gps", 1000L, 0.0f, this.locationListener);
    }

    public void stop() {
        this.locationManager.removeUpdates(this.locationListener);
    }
}
