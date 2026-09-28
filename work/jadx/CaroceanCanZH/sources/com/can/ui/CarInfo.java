package com.can.ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.can.activity.R;
import com.can.platforms.AppConfigParser;
import com.can.ui.draw.Door;
import com.can.ui.view.ID8SpeedMeter;
import com.can.ui.view.Speedometer;
import com.carocean.navicar.BmwID8ThemeChanged;
import com.carocean.navicar.HandlerWeakReference;
import com.carocean.navicar.McuServiceManager;
import com.carocean.navicar.Navi;
import com.carocean.navicar.NaviStatus;
import com.carocean.navicar.PerSysDef;
import com.carocean.navicar.util.McuUtils;
import com.carocean.navicar.util.ZHTDOEMManager;
import java.text.DateFormatSymbols;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class CarInfo extends Activity implements BmwID8ThemeChanged {
    private static final int FLIP_LIGHT_TIME = 500;
    private static final int MSG_FLIP_LIGHT = 2;
    private static final int MSG_THEME_CHANGE = 10000;
    private static final int MSG_TIMER = 3;
    private static final int MSG_UPDATE_CAR_INFO = 1;
    private static final int MSG_UPDATE_TIME_VIEW = 4;
    public static final String PERSYS_360_AUTO_SHOW = "persist.sys.360_auto_show";
    public static final String PERSYS_AUTO_FRONT_CAM = "persist.sys.auto_front_cam";
    public static final String PERSYS_BACKCAR_MIRROR = "persist.sys.backcar_mirror";
    public static final String PERSYS_BACKCAR_TRACE = "persist.sys.trace_enable";
    public static final String PERSYS_BACKCAR_TYPE = "persist.sys.backcar_type";
    public static final String PERSYS_HOST_TYPE = "persist.sys.host_type";
    public static final String PERSYS_MILEAGE_UNIT = "persist.sys.mileage_unit";
    private static final String TAG = "CarInfo";
    private static final String URI_THEME = "content://com.carocean.status.provider/sys/SYS_THEME";
    private byte[] cmdcode12Data;
    private byte[] cmdcode18Data;
    private byte[] cmdcode24Data;
    private MainPageAdapter mAdapter;
    private ImageView mBigLed;
    private ImageView mBigLedFarZlh;
    private ImageView mBigLedYzg;
    private ImageView mBigLedZlh;
    private View mCar;
    private View mCarDoorLayout;
    private TextView mCarMileage;
    private Speedometer mCarRate;
    private TextView mCarRateText;
    private Speedometer mCarRpm;
    private TextView mCarRpmText;
    private TextView mDateText;
    private TextView mDateWeekText;
    private Door mDoor;
    private View mDoorB;
    private View mDoorF;
    private View mDoorLb;
    private View mDoorLf;
    private View mDoorRb;
    private View mDoorRf;
    private ImageView mFootBrake;
    private TextView mGas;
    private ImageView mGear;
    private TextView mGearText;
    private ImageView mHandBrake;
    private ImageView mLeftLight;
    private TextView mOutTemp;
    private ViewPager mPages;
    private Paint mPaint;
    private Bitmap mRateBitmap;
    private Canvas mRateCanvas;
    private TextView mRateUnit;
    private TextView mRateUnit1;
    private ImageView mRightLight;
    private Bitmap mRpmBitmap;
    private Canvas mRpmCanvas;
    private ImageView mSafeBelt;
    private Messenger mServiceMessenger;
    private ImageView mSmallLed;
    private Bitmap mWidgetBackground;
    private ID8SpeedMeter rpmID8SpeedMeter;
    private ID8SpeedMeter speedID8SpeedMeter;
    private UIHandler uiHandler;
    private List<Bitmap> mNumBitmaps = new ArrayList();
    private final int mGap = 1;
    private McuServiceManager mcuServiceManager = McuServiceManager.getInstance();
    private boolean showOilUnitGal = false;
    private boolean showTempUnitF = false;
    private int mTempUnitValue = -1;
    McuServiceManager.DataListener dataListener = new McuServiceManager.DataListener() { // from class: com.can.ui.CarInfo.1
        @Override // com.carocean.navicar.McuServiceManager.DataListener
        public void onReceive(int i, byte[] bArr) {
            if (i == 18) {
                CarInfo.this.cmdcode12Data = bArr;
                CarInfo.this.uiHandler.sendMessage(CarInfo.this.uiHandler.obtainMessage(1, i, 0, bArr));
                return;
            }
            if (i == 24) {
                CarInfo.this.cmdcode18Data = bArr;
                CarInfo.this.uiHandler.sendMessage(CarInfo.this.uiHandler.obtainMessage(1, i, 0, bArr));
                return;
            }
            if (i != 36) {
                return;
            }
            CarInfo.this.cmdcode24Data = bArr;
            if (!ZHTDOEMManager.isLexus() || CarInfo.this.cmdcode24Data == null || CarInfo.this.cmdcode24Data.length < 6) {
                return;
            }
            int i2 = (CarInfo.this.cmdcode24Data[5] & 2) >> 1;
            CarInfo.this.showTempUnitF = i2 == 1;
            if (i2 == CarInfo.this.mTempUnitValue || CarInfo.this.cmdcode12Data == null) {
                return;
            }
            CarInfo.this.mTempUnitValue = i2;
            CarInfo.this.uiHandler.sendMessage(CarInfo.this.uiHandler.obtainMessage(1, 18, 0, CarInfo.this.cmdcode12Data));
        }
    };
    private ServiceConnection mConnection = new ServiceConnection() { // from class: com.can.ui.CarInfo.2
        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            CarInfo.this.mServiceMessenger = null;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.i(CarInfo.TAG, "onServiceConnected");
            CarInfo.this.mServiceMessenger = new Messenger(iBinder);
            CarInfo.this.notifyShowingCarInfo(true);
        }
    };
    private final ContentObserver contentObserver = new ContentObserver(new Handler()) { // from class: com.can.ui.CarInfo.4
        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            super.onChange(z, uri);
            if (CarInfo.URI_THEME.equals(uri.toString())) {
                int i = NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, CarInfo.this.getContentResolver(), Navi.Status.SYS_THEME, 1);
                Message messageObtain = Message.obtain();
                messageObtain.what = CarInfo.MSG_THEME_CHANGE;
                messageObtain.arg1 = i;
                if (CarInfo.this.uiHandler != null) {
                    CarInfo.this.uiHandler.sendMessage(messageObtain);
                }
            }
        }
    };
    private int mMileage = 0;
    private byte mLight = 0;
    private DecimalFormat dfone = new DecimalFormat("#0.0");
    private final BroadcastReceiver mReceiver = new BroadcastReceiver() { // from class: com.can.ui.CarInfo.5
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (Navi.Action.ACTION_QUIT_APK.equals(intent.getAction())) {
                if ("carinfo".equals(intent.getStringExtra("func"))) {
                    CarInfo.this.finish();
                }
            } else if (Navi.Action.ACTION_SAVE_FACTORY_DATA.equals(intent.getAction())) {
                CarInfo.this.showOilUnitGal = SystemProperties.getInt(PerSysDef.PERSYS_OIL_UINT_GAL, 0) == 1;
                CarInfo.this.showTempUnitF = SystemProperties.getInt(PerSysDef.PERSYS_TEMP_UINT_F, 0) == 1;
                if (CarInfo.this.cmdcode12Data != null) {
                    CarInfo.this.uiHandler.sendMessage(CarInfo.this.uiHandler.obtainMessage(1, 18, 0, CarInfo.this.cmdcode12Data));
                }
                if (CarInfo.this.cmdcode18Data != null) {
                    CarInfo.this.uiHandler.sendMessage(CarInfo.this.uiHandler.obtainMessage(1, 24, 0, CarInfo.this.cmdcode18Data));
                }
            }
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.uiHandler = new UIHandler(this);
        Window window = getWindow();
        if (Build.VERSION.SDK_INT >= 21) {
            window.clearFlags(201326592);
            window.getDecorView().setSystemUiVisibility(1280);
            window.addFlags(Integer.MIN_VALUE);
        } else if (Build.VERSION.SDK_INT >= 19) {
            window.addFlags(67108864);
            window.addFlags(134217728);
        }
        if (ZHTDOEMManager.isYZGCustomerUI1() || ZHTDOEMManager.isZLHCustomerUI1() || ((ZHTDOEMManager.is1600x720And240dpi() && !ZHTDOEMManager.ensureID8()) || (ZHTDOEMManager.isTOYOTACROWN() && ZHTDOEMManager.is1024x460And160dpi()))) {
            window.addFlags(1024);
        }
        if (ZHTDOEMManager.ensureID8()) {
            setContentView(R.layout.activity_carinfo_id8);
        } else if (ZHTDOEMManager.isYZGCustomerUI1() || ZHTDOEMManager.isZLHCustomerUI1() || ZHTDOEMManager.is1600x720And240dpi()) {
            setContentView(R.layout.activity_carinfo_yzg);
        } else if (ZHTDOEMManager.isLexus() || ZHTDOEMManager.isTOYOTACROWN()) {
            setContentView(R.layout.lexus_activity_carinfo);
        } else {
            setContentView(R.layout.activity_carinfo);
        }
        this.mPaint = new Paint(1);
        this.mAdapter = new MainPageAdapter();
        ViewPager viewPager = (ViewPager) findViewById(R.id.main_container);
        this.mPages = viewPager;
        viewPager.setOffscreenPageLimit(3);
        this.mPages.setOnPageChangeListener(this.mAdapter);
        this.mPages.setAdapter(this.mAdapter);
        initData();
        this.mPages.setCurrentItem(getPreferences(0).getInt("page", 0));
        updateTimerView();
        updateWeekView();
        this.uiHandler.sendEmptyMessageDelayed(4, 1000L);
        if (ZHTDOEMManager.ensureID8()) {
            getContentResolver().registerContentObserver(Uri.parse(URI_THEME), true, this.contentObserver);
        }
    }

    private void initMcu() {
        if (ZHTDOEMManager.isLexus()) {
            this.mcuServiceManager.regCallback(new int[]{18, 24, 36}, this.dataListener);
        } else {
            this.mcuServiceManager.regCallback(new int[]{18, 24}, this.dataListener);
        }
        this.mcuServiceManager.isServiceConnected();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyShowingCarInfo(boolean z) {
        Messenger messenger;
        if (ZHTDOEMManager.isYZGCustomerUI1() || ZHTDOEMManager.isLexus() || ZHTDOEMManager.isTOYOTACROWN() || ZHTDOEMManager.isZLHCustomerUI1() || ZHTDOEMManager.is1600x720And240dpi()) {
            if (ZHTDOEMManager.is1600x720And240dpi()) {
                z = false;
            }
            if ((!z || isResumed()) && (messenger = this.mServiceMessenger) != null) {
                try {
                    messenger.send(Message.obtain(null, 7, z ? 1 : 0, 0));
                } catch (RemoteException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private void initData() {
        bindService(new Intent(this, (Class<?>) CanPopWind.class), this.mConnection, 1);
        this.showOilUnitGal = SystemProperties.getInt(PerSysDef.PERSYS_OIL_UINT_GAL, 0) == 1;
        this.showTempUnitF = SystemProperties.getInt(PerSysDef.PERSYS_TEMP_UINT_F, 0) == 1;
        initMcu();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(Navi.Action.ACTION_QUIT_APK);
        intentFilter.addAction(Navi.Action.ACTION_SAVE_FACTORY_DATA);
        registerReceiver(this.mReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x0032  */
    /* JADX WARN: Code duplicated, block: B:20:0x003d  */
    /* JADX WARN: Code duplicated, block: B:23:0x0048  */
    /* JADX WARN: Code duplicated, block: B:25:0x004d  */
    public void openOBD(boolean z) {
        int i;
        byte b = SystemProperties.getInt("persist.sys.backcar_type", 0) == 1 ? (byte) 1 : (byte) 0;
        if (SystemProperties.getInt("persist.sys.backcar_mirror", 0) > 0) {
            b = (byte) (b | 2);
        }
        int i2 = SystemProperties.getInt(PerSysDef.PERSYS_IVICAR_AVM_ENABLE, 0);
        if (i2 != 1) {
            if (i2 == 2) {
                i = b | 16;
            }
            if (SystemProperties.getInt("persist.sys.360_auto_show", 0) == 1) {
                b = (byte) (b | 32);
            }
            if (SystemProperties.getInt("persist.sys.trace_enable", 0) == 0) {
                b = (byte) (b | 64);
            }
            if (SystemProperties.getInt("persist.sys.auto_front_cam", 0) == 1) {
                b = (byte) (b | 128);
            }
            if (z) {
                b = (byte) (b | 4);
            }
            McuUtils.getInstance().sendSettingCmd(new byte[]{-107, b, 0, 0});
        }
        i = b | 8;
        b = (byte) i;
        if (SystemProperties.getInt("persist.sys.360_auto_show", 0) == 1) {
            b = (byte) (b | 32);
        }
        if (SystemProperties.getInt("persist.sys.trace_enable", 0) == 0) {
            b = (byte) (b | 64);
        }
        if (SystemProperties.getInt("persist.sys.auto_front_cam", 0) == 1) {
            b = (byte) (b | 128);
        }
        if (z) {
            b = (byte) (b | 4);
        }
        McuUtils.getInstance().sendSettingCmd(new byte[]{-107, b, 0, 0});
    }

    private void release() {
        this.mcuServiceManager.unregCallback(this.dataListener);
        unbindService(this.mConnection);
        unregisterReceiver(this.mReceiver);
        getContentResolver().unregisterContentObserver(this.contentObserver);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initView(View view) {
        this.mRateUnit = (TextView) view.findViewById(R.id.carinfo_rate_unit);
        this.mRateUnit1 = (TextView) view.findViewById(R.id.carinfo_rate_unit1);
        this.mCarMileage = (TextView) view.findViewById(R.id.carinfo_mileage);
        this.mOutTemp = (TextView) view.findViewById(R.id.carinfo_outtemp);
        this.mDateText = (TextView) view.findViewById(R.id.carinfo_time);
        updateTimerView();
        this.mDateWeekText = (TextView) view.findViewById(R.id.carinfo_week);
        updateWeekView();
        this.mCarMileage.setOnClickListener(new View.OnClickListener() { // from class: com.can.ui.CarInfo.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                SystemProperties.set(CarInfo.PERSYS_MILEAGE_UNIT, String.valueOf(SystemProperties.getInt(CarInfo.PERSYS_MILEAGE_UNIT, 0) == 0 ? 1 : 0));
                CarInfo.this.updateMileageView();
            }
        });
        TextView textView = (TextView) view.findViewById(R.id.carinfo_gps);
        this.mGas = textView;
        textView.setText("0L");
        this.mGear = (ImageView) view.findViewById(R.id.carinfo_gear);
        this.mGearText = (TextView) view.findViewById(R.id.carinfo_gear_text);
        this.mSmallLed = (ImageView) view.findViewById(R.id.carinfo_smallled);
        ImageView imageView = (ImageView) view.findViewById(R.id.carinfo_big_led_yzg);
        this.mBigLedYzg = imageView;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
        ImageView imageView2 = (ImageView) view.findViewById(R.id.carinfo_big_led_zlh);
        this.mBigLedZlh = imageView2;
        if (imageView2 != null) {
            imageView2.setVisibility(4);
        }
        ImageView imageView3 = (ImageView) view.findViewById(R.id.carinfo_big_led_far_zlh);
        this.mBigLedFarZlh = imageView3;
        if (imageView3 != null) {
            imageView3.setVisibility(4);
        }
        ImageView imageView4 = (ImageView) view.findViewById(R.id.carinfo_bigled);
        this.mBigLed = imageView4;
        if (imageView4 != null) {
            imageView4.setVisibility(4);
        }
        ImageView imageView5 = (ImageView) view.findViewById(R.id.carinfo_leftl);
        this.mLeftLight = imageView5;
        if (imageView5 != null) {
            imageView5.setVisibility(4);
        }
        ImageView imageView6 = (ImageView) view.findViewById(R.id.carinfo_rightl);
        this.mRightLight = imageView6;
        if (imageView6 != null) {
            imageView6.setVisibility(4);
        }
        ImageView imageView7 = (ImageView) view.findViewById(R.id.carinfo_safeb);
        this.mSafeBelt = imageView7;
        if (imageView7 != null) {
            imageView7.setVisibility(4);
        }
        ImageView imageView8 = (ImageView) view.findViewById(R.id.carinfo_handbrake);
        this.mHandBrake = imageView8;
        if (imageView8 != null) {
            imageView8.setVisibility(4);
        }
        ImageView imageView9 = (ImageView) view.findViewById(R.id.carinfo_footbrake);
        this.mFootBrake = imageView9;
        if (imageView9 != null) {
            imageView9.setVisibility(4);
        }
        this.mCarRate = (Speedometer) view.findViewById(R.id.carinfo_rate);
        this.mCarRpm = (Speedometer) view.findViewById(R.id.carinfo_rpm);
        this.mCarRateText = (TextView) view.findViewById(R.id.carinfo_rate_text);
        this.mCarRpmText = (TextView) view.findViewById(R.id.carinfo_rpm_text);
        if (view.findViewById(R.id.door_layout) != null) {
            Door door = this.mDoor;
            if (door == null) {
                this.mDoor = new Door(view.findViewById(R.id.door_layout), this, this.uiHandler);
            } else {
                door.initViews(view.findViewById(R.id.door_layout));
            }
        }
        if (!ZHTDOEMManager.isYZGCustomerUI1() && !ZHTDOEMManager.isZLHCustomerUI1() && !ZHTDOEMManager.is1600x720And240dpi()) {
            Speedometer speedometer = this.mCarRate;
            if (speedometer != null) {
                speedometer.config(260.0f, 260.0f);
            }
            Speedometer speedometer2 = this.mCarRpm;
            if (speedometer2 != null) {
                speedometer2.config(260.0f, 7800.0f);
            }
        }
        this.speedID8SpeedMeter = (ID8SpeedMeter) view.findViewById(R.id.carinfo_speedmeter);
        this.rpmID8SpeedMeter = (ID8SpeedMeter) view.findViewById(R.id.carinfo_rpmmeter);
        if (ZHTDOEMManager.ensureID8()) {
            updateID8Theme(NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, getContentResolver(), Navi.Status.SYS_THEME, 1));
        }
    }

    private void updateCarRate(int i) {
        Log.i(TAG, "updateCarRate: " + i);
        if (i < 0 || i > 999) {
            return;
        }
        if (this.mCarRateText != null) {
            if (SystemProperties.getInt(PERSYS_MILEAGE_UNIT, 0) == 0) {
                this.mCarRateText.setText(String.valueOf(i));
            } else {
                this.mCarRateText.setText(String.valueOf((int) (((double) i) * 0.62137d)));
            }
        }
        if (SystemProperties.getInt(PERSYS_MILEAGE_UNIT, 0) == 0) {
            Speedometer speedometer = this.mCarRate;
            if (speedometer != null) {
                speedometer.setSpeed(i);
            }
            ID8SpeedMeter iD8SpeedMeter = this.speedID8SpeedMeter;
            if (iD8SpeedMeter != null) {
                iD8SpeedMeter.setSpeed(i);
            }
            TextView textView = this.mCarRateText;
            if (textView != null) {
                textView.setText(String.valueOf(i));
            }
            TextView textView2 = this.mRateUnit;
            if (textView2 != null) {
                textView2.setText("km/h");
            }
            TextView textView3 = this.mRateUnit1;
            if (textView3 != null) {
                textView3.setText("km/h");
                return;
            }
            return;
        }
        double d = ((double) i) * 0.62137d;
        Speedometer speedometer2 = this.mCarRate;
        if (speedometer2 != null) {
            speedometer2.setSpeed((int) d);
        }
        ID8SpeedMeter iD8SpeedMeter2 = this.speedID8SpeedMeter;
        if (iD8SpeedMeter2 != null) {
            iD8SpeedMeter2.setSpeed((int) d);
        }
        TextView textView4 = this.mCarRateText;
        if (textView4 != null) {
            textView4.setText(String.valueOf((int) d));
        }
        TextView textView5 = this.mRateUnit;
        if (textView5 != null) {
            textView5.setText("mph");
        }
        TextView textView6 = this.mRateUnit1;
        if (textView6 != null) {
            textView6.setText("mph");
        }
    }

    private void updateCarRpm(int i) {
        Log.i(TAG, "updateCarRpm: " + i);
        if (i < 0 || i > 9999) {
            return;
        }
        TextView textView = this.mCarRpmText;
        if (textView != null) {
            if (i == 0) {
                textView.setText("0");
            } else if (ZHTDOEMManager.isZLHCustomerUI1() || ZHTDOEMManager.is1600x720And240dpi()) {
                this.mCarRpmText.setText(String.valueOf(i));
            } else {
                this.mCarRpmText.setText(String.format(Locale.getDefault(), "%.1f", Float.valueOf(i / 1000.0f)));
            }
        }
        Speedometer speedometer = this.mCarRpm;
        if (speedometer != null) {
            speedometer.setSpeed(i);
        }
        ID8SpeedMeter iD8SpeedMeter = this.rpmID8SpeedMeter;
        if (iD8SpeedMeter != null) {
            iD8SpeedMeter.setRpm(i);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        Log.d(TAG, "onTrimMemory: level = " + i);
        if (i >= 80) {
            Iterator<Bitmap> it = this.mNumBitmaps.iterator();
            while (it.hasNext()) {
                it.next().recycle();
            }
            this.mNumBitmaps.clear();
            Bitmap bitmap = this.mRateBitmap;
            if (bitmap != null) {
                bitmap.recycle();
                this.mRateBitmap = null;
            }
            Canvas canvas = this.mRateCanvas;
            if (canvas != null) {
                canvas.release();
                this.mRateCanvas = null;
            }
            Bitmap bitmap2 = this.mRpmBitmap;
            if (bitmap2 != null) {
                bitmap2.recycle();
                this.mRpmBitmap = null;
            }
            Canvas canvas2 = this.mRpmCanvas;
            if (canvas2 != null) {
                canvas2.release();
                this.mRpmCanvas = null;
            }
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 21) {
            if (keyCode != 22) {
                if (keyCode != 66) {
                    if (keyCode == 71) {
                        onBackPressed();
                    } else if (keyCode != 72) {
                        if (keyCode != 296) {
                            if (keyCode != 297) {
                                return super.dispatchKeyEvent(keyEvent);
                            }
                        }
                    }
                }
                return true;
            }
            if (keyEvent.getAction() == 0) {
                this.mAdapter.snap2Right();
            }
            return true;
        }
        if (keyEvent.getAction() == 0) {
            this.mAdapter.snap2Left();
        }
        return true;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        notifyShowingCarInfo(true);
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onStart() {
        openOBD(true);
        this.uiHandler.sendEmptyMessageDelayed(3, 2000L);
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onStop() {
        this.uiHandler.removeMessages(3);
        openOBD(false);
        notifyShowingCarInfo(false);
        super.onStop();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        release();
        super.onDestroy();
    }

    public Bitmap getNumberBitmap(Canvas canvas, Bitmap bitmap, String str) {
        int i;
        if (bitmap != null) {
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            Bitmap[] bitmapsByNumber = getBitmapsByNumber(str);
            int[] iArr = new int[bitmapsByNumber.length];
            int[] iArr2 = new int[bitmapsByNumber.length];
            for (int i2 = 0; i2 < bitmapsByNumber.length; i2++) {
                iArr[i2] = bitmapsByNumber[i2].getWidth();
                iArr2[i2] = bitmapsByNumber[i2].getHeight();
                if (i2 == 0) {
                    i = 0;
                } else {
                    i = 0;
                    for (int i3 = 0; i3 < i2; i3++) {
                        i += iArr[i3] + 1;
                    }
                }
                canvas.drawBitmap(bitmapsByNumber[i2], (Rect) null, new Rect(i, 0, iArr[i2] + i, iArr2[i2]), this.mPaint);
            }
        }
        return bitmap;
    }

    private Bitmap[] getBitmapsByNumber(String str) {
        int length = str.length();
        Bitmap[] bitmapArr = new Bitmap[length];
        for (int i = 0; i < length && i < str.length(); i++) {
            try {
                bitmapArr[i] = this.mNumBitmaps.get(Integer.valueOf(String.valueOf(str.charAt(i))).intValue());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return bitmapArr;
    }

    @Override // com.carocean.navicar.BmwID8ThemeChanged
    public void updateID8Theme(int i) {
        MainPageAdapter mainPageAdapter;
        Log.i(TAG, "updateID8Theme: " + i);
        if (ZHTDOEMManager.ensureID8() && (mainPageAdapter = this.mAdapter) != null) {
            mainPageAdapter.updateID8Theme(i);
        }
    }

    private static class UIHandler extends HandlerWeakReference<CarInfo> {
        public UIHandler(CarInfo carInfo) {
            super(carInfo);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            CarInfo carInfo = (CarInfo) this.mWeakReference.get();
            if (carInfo == null) {
                return;
            }
            if (message.what == 1) {
                if (message.obj instanceof byte[]) {
                    carInfo.updateCarInfo(message.arg1, (byte[]) message.obj);
                    return;
                }
                return;
            }
            if (2 == message.what) {
                if (carInfo.mLight == 1) {
                    carInfo.mLeftLight.setVisibility(carInfo.mLeftLight.getVisibility() != 0 ? 0 : 4);
                    carInfo.uiHandler.sendEmptyMessageDelayed(2, 500L);
                    return;
                } else if (carInfo.mLight == 2) {
                    carInfo.mRightLight.setVisibility(carInfo.mRightLight.getVisibility() != 0 ? 0 : 4);
                    carInfo.uiHandler.sendEmptyMessageDelayed(2, 500L);
                    return;
                } else {
                    if (carInfo.mLight == 3) {
                        carInfo.mLeftLight.setVisibility(carInfo.mLeftLight.getVisibility() == 0 ? 4 : 0);
                        carInfo.mRightLight.setVisibility(carInfo.mRightLight.getVisibility() != 0 ? 0 : 4);
                        carInfo.uiHandler.sendEmptyMessageDelayed(2, 500L);
                        return;
                    }
                    return;
                }
            }
            if (3 == message.what) {
                carInfo.openOBD(true);
                carInfo.uiHandler.sendEmptyMessageDelayed(3, 2000L);
            } else if (4 == message.what) {
                carInfo.updateTimerView();
                carInfo.updateWeekView();
                carInfo.uiHandler.sendEmptyMessageDelayed(4, 1000L);
            } else if (CarInfo.MSG_THEME_CHANGE == message.what) {
                carInfo.updateID8Theme(message.arg1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCarInfo(int i, byte[] bArr) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (i == 24) {
            updateCarRate(((bArr[0] & 255) << 8) | (bArr[1] & 255));
            TextView textView = this.mGas;
            if (textView != null) {
                float f = bArr[2] & 255;
                if (f <= 128.0f) {
                    if (this.showOilUnitGal) {
                        f *= 0.264f;
                    }
                    Locale locale = Locale.getDefault();
                    Object[] objArr = new Object[2];
                    objArr[0] = this.dfone.format(f);
                    objArr[1] = this.showOilUnitGal ? "Gal" : "L";
                    textView.setText(String.format(locale, "%s%s", objArr));
                } else {
                    textView.setText(this.showOilUnitGal ? "0Gal" : "0L");
                }
            }
            updateCarRpm(((bArr[3] & 255) << 8) | (bArr[4] & 255));
            this.mMileage = ((bArr[6] & 255) << 16) | ((bArr[7] & 255) << 8) | (bArr[8] & 255);
            updateMileageView();
        }
        if (i == 18) {
            byte b = bArr[3];
            if (SystemProperties.getInt(PerSysDef.PERSYS_FRONT_DOOR, 0) != 0) {
                byte b2 = (byte) ((bArr[3] & 128) != 0 ? b | 64 : b & (-65));
                b = (byte) ((bArr[3] & 64) != 0 ? b2 | (-128) : b2 & 127);
            }
            if (SystemProperties.getInt(PerSysDef.PERSYS_REAR_DOOR, 0) != 0) {
                byte b3 = (byte) ((bArr[3] & 32) != 0 ? b | 16 : b & (-17));
                b = (byte) ((bArr[3] & 16) != 0 ? b3 | 32 : b3 & (-33));
            }
            updateDoorView(b);
            updateOutTempView(bArr[5]);
            byte b4 = bArr[0];
            if ((b4 & 128) == 0) {
                if ((b4 & 4) != 0) {
                    if (this.mLeftLight != null && 1 != this.mLight) {
                        this.uiHandler.removeMessages(2);
                        this.mLight = (byte) 1;
                        this.mLeftLight.setVisibility(0);
                        this.uiHandler.sendEmptyMessageDelayed(2, 500L);
                    }
                } else {
                    ImageView imageView = this.mLeftLight;
                    if (imageView != null) {
                        imageView.setVisibility(4);
                    }
                    if ((b4 & 2) != 0) {
                        if (this.mRightLight != null && 2 != this.mLight) {
                            this.uiHandler.removeMessages(2);
                            this.mLight = (byte) 2;
                            this.mRightLight.setVisibility(0);
                            this.uiHandler.sendEmptyMessageDelayed(2, 500L);
                        }
                    } else if (this.mRightLight != null) {
                        this.uiHandler.removeMessages(2);
                        this.mRightLight.setVisibility(4);
                        this.mLight = (byte) 0;
                    }
                }
            }
            if ((b4 & 32) != 0) {
                ImageView imageView2 = this.mBigLedYzg;
                if (imageView2 != null) {
                    imageView2.setVisibility(0);
                } else if (this.mBigLed != null) {
                    if (ZHTDOEMManager.ensureID8()) {
                        this.mBigLed.setImageResource(R.drawable.bmw_id8_carinfo_bigled_far);
                    } else {
                        this.mBigLed.setImageResource(R.drawable.carinfo_bigled_far);
                    }
                    this.mBigLed.setVisibility(0);
                } else if (this.mBigLedZlh != null) {
                    this.mBigLedFarZlh.setVisibility(0);
                    this.mBigLedZlh.setVisibility(4);
                    i2 = 4;
                } else {
                    ImageView imageView3 = this.mSmallLed;
                    if (imageView3 != null) {
                        imageView3.setImageResource(R.drawable.carinfo_bigled_far);
                        this.mSmallLed.setVisibility(0);
                    }
                }
                i2 = 4;
            } else {
                ImageView imageView4 = this.mBigLedYzg;
                if (imageView4 == null) {
                    ImageView imageView5 = this.mBigLed;
                    if (imageView5 == null) {
                        i2 = 4;
                        if (this.mBigLedZlh == null) {
                            ImageView imageView6 = this.mSmallLed;
                            if (imageView6 != null) {
                                if ((b4 & 64) != 0) {
                                    imageView6.setImageResource(R.drawable.carinfo_bigled_nor);
                                    this.mSmallLed.setVisibility(0);
                                } else {
                                    imageView6.setVisibility(4);
                                }
                            }
                        } else if ((b4 & 64) != 0) {
                            this.mBigLedFarZlh.setVisibility(4);
                            this.mBigLedZlh.setVisibility(0);
                        } else {
                            this.mBigLedFarZlh.setVisibility(4);
                            this.mBigLedZlh.setVisibility(4);
                        }
                    } else if ((b4 & 64) != 0) {
                        if (ZHTDOEMManager.ensureID8()) {
                            this.mBigLed.setImageResource(R.drawable.bmw_id8_carinfo_bigled_nor);
                        } else {
                            this.mBigLed.setImageResource(R.drawable.carinfo_bigled_nor);
                        }
                        this.mBigLed.setVisibility(0);
                        i2 = 4;
                    } else {
                        i2 = 4;
                        imageView5.setVisibility(4);
                    }
                } else if ((b4 & 64) != 0) {
                    imageView4.setVisibility(0);
                    i2 = 4;
                } else {
                    imageView4.setVisibility(4);
                    i2 = 4;
                }
            }
            int i8 = bArr[1] & 255;
            if (255 == i8) {
                ImageView imageView7 = this.mGear;
                if (imageView7 != null) {
                    imageView7.setVisibility(i2);
                }
                TextView textView2 = this.mGearText;
                if (textView2 != null) {
                    textView2.setText(AppConfigParser.ITEM_TIP);
                }
            } else {
                ImageView imageView8 = this.mGear;
                if (imageView8 != null) {
                    imageView8.setVisibility(0);
                }
                if (i8 == 0) {
                    ImageView imageView9 = this.mGear;
                    if (imageView9 != null) {
                        if (ZHTDOEMManager.ensureID8()) {
                            i3 = R.drawable.bmw_id8_carinfo_gear_p;
                        } else {
                            i3 = (ZHTDOEMManager.isLexus() || ZHTDOEMManager.isTOYOTACROWN()) ? R.drawable.lexus_carinfo_gear_p : R.drawable.carinfo_gear_p;
                        }
                        imageView9.setImageResource(i3);
                    }
                    TextView textView3 = this.mGearText;
                    if (textView3 != null) {
                        textView3.setText("P");
                    }
                } else if (i8 == 1) {
                    ImageView imageView10 = this.mGear;
                    if (imageView10 != null) {
                        if (ZHTDOEMManager.ensureID8()) {
                            i4 = R.drawable.bmw_id8_carinfo_gear_r;
                        } else {
                            i4 = (ZHTDOEMManager.isLexus() || ZHTDOEMManager.isTOYOTACROWN()) ? R.drawable.lexus_carinfo_gear_r : R.drawable.carinfo_gear_r;
                        }
                        imageView10.setImageResource(i4);
                    }
                    TextView textView4 = this.mGearText;
                    if (textView4 != null) {
                        textView4.setText("R");
                    }
                } else if (i8 == 2) {
                    ImageView imageView11 = this.mGear;
                    if (imageView11 != null) {
                        if (ZHTDOEMManager.ensureID8()) {
                            i5 = R.drawable.bmw_id8_carinfo_gear_n;
                        } else {
                            i5 = (ZHTDOEMManager.isLexus() || ZHTDOEMManager.isTOYOTACROWN()) ? R.drawable.lexus_carinfo_gear_n : R.drawable.carinfo_gear_n;
                        }
                        imageView11.setImageResource(i5);
                    }
                    TextView textView5 = this.mGearText;
                    if (textView5 != null) {
                        textView5.setText("N");
                    }
                } else if (i8 == 4) {
                    ImageView imageView12 = this.mGear;
                    if (imageView12 != null) {
                        if (ZHTDOEMManager.ensureID8()) {
                            i6 = R.drawable.bmw_id8_carinfo_gear_d;
                        } else {
                            i6 = (ZHTDOEMManager.isLexus() || ZHTDOEMManager.isTOYOTACROWN()) ? R.drawable.lexus_carinfo_gear_d : R.drawable.carinfo_gear_d;
                        }
                        imageView12.setImageResource(i6);
                    }
                    TextView textView6 = this.mGearText;
                    if (textView6 != null) {
                        textView6.setText("D");
                    }
                } else if (i8 == 5) {
                    ImageView imageView13 = this.mGear;
                    if (imageView13 != null) {
                        imageView13.setImageResource(R.drawable.carinfo_gear_s);
                    }
                    TextView textView7 = this.mGearText;
                    if (textView7 != null) {
                        textView7.setText("S");
                    }
                } else if (i8 == 6) {
                    ImageView imageView14 = this.mGear;
                    if (imageView14 != null) {
                        imageView14.setImageResource(R.drawable.carinfo_gear_m);
                    }
                    TextView textView8 = this.mGearText;
                    if (textView8 != null) {
                        textView8.setText("M");
                    }
                }
            }
            int i9 = bArr[2] & 255;
            ImageView imageView15 = this.mSafeBelt;
            if (imageView15 != null) {
                if ((i9 & 4) != 0) {
                    imageView15.setVisibility(4);
                } else {
                    imageView15.setVisibility(0);
                }
            }
            ImageView imageView16 = this.mFootBrake;
            if (imageView16 == null) {
                i7 = 4;
            } else if ((i9 & 2) != 0) {
                imageView16.setVisibility(0);
                i7 = 4;
            } else {
                i7 = 4;
                imageView16.setVisibility(4);
            }
            ImageView imageView17 = this.mHandBrake;
            if (imageView17 != null) {
                if ((i9 & 1) != 0) {
                    imageView17.setVisibility(0);
                } else {
                    imageView17.setVisibility(i7);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMileageView() {
        if (this.mCarMileage != null) {
            if (SystemProperties.getInt(PERSYS_MILEAGE_UNIT, 0) == 0) {
                this.mCarMileage.setText(String.valueOf(this.mMileage) + "km");
                return;
            }
            if (ZHTDOEMManager.isLexus() || ZHTDOEMManager.isTOYOTACROWN()) {
                this.mCarMileage.setText(String.valueOf(this.mMileage) + "mi");
                return;
            }
            double d = ((double) this.mMileage) * 0.62137d;
            if (ZHTDOEMManager.isLexus()) {
                d = this.mMileage;
            }
            this.mCarMileage.setText(String.valueOf((int) d) + "mi");
        }
    }

    private void updateOutTempView(byte b) {
        TextView textView = this.mOutTemp;
        if (textView != null) {
            int i = b & 255;
            if (255 == i) {
                textView.setText(getDate());
                return;
            }
            float f = (i - 80) / 2.0f;
            if (this.showTempUnitF) {
                f = ZHTDOEMManager.isLexus() ? i - 40 : (f * 1.8f) + 32.0f;
            }
            TextView textView2 = this.mOutTemp;
            Object[] objArr = new Object[2];
            objArr[0] = this.dfone.format(f);
            objArr[1] = this.showTempUnitF ? "℉" : "℃";
            textView2.setText(String.format("%s%s", objArr));
        }
    }

    private void updateDoorView(byte b) {
        Door door = this.mDoor;
        if (door != null) {
            door.updateView(b);
        }
    }

    class MainPageAdapter extends PagerAdapter implements ViewPager.OnPageChangeListener {
        public int PageCount;
        private final int[] mBmwPageLayoutIdID8;
        private final int[] mLexusPageLayoutId;
        private final int[] mLexusPageLayoutId_UI1;
        private final View[] mPageLayout;
        private final int[] mPageLayoutId;
        private final int[] mPageLayoutId_UI1;
        private final int[] mPageLayoutId_UI1_yzg;
        private final int[] mPageLayoutId_UI1_zlh;
        private final int[] mPageLayoutId_lc;

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        public void release() {
        }

        public MainPageAdapter() {
            this.PageCount = (ZHTDOEMManager.isLexus() || ZHTDOEMManager.isTOYOTACROWN()) ? 1 : 3;
            this.mPageLayoutId = new int[]{R.layout.carinfo_blue, R.layout.carinfo_red, R.layout.carinfo_white};
            this.mPageLayoutId_lc = new int[]{R.layout.carinfo_red_lc, R.layout.carinfo_blue_lc, R.layout.carinfo_white_lc};
            this.mPageLayoutId_UI1 = new int[]{R.layout.carinfo_ui_1_red, R.layout.carinfo_ui_1_blue, R.layout.carinfo_ui_1_white};
            this.mPageLayoutId_UI1_yzg = new int[]{R.layout.carinfo_mode1_yzg, R.layout.carinfo_mode2_yzg, R.layout.carinfo_mode3_yzg, R.layout.carinfo_mode4_yzg, R.layout.carinfo_mode5_yzg, R.layout.carinfo_mode6_yzg, R.layout.carinfo_mode7_yzg};
            this.mPageLayoutId_UI1_zlh = new int[]{R.layout.carinfo_mode1_zlh, R.layout.carinfo_mode2_zlh, R.layout.carinfo_mode3_zlh, R.layout.carinfo_mode4_zlh, R.layout.carinfo_mode5_zlh, R.layout.carinfo_mode6_zlh, R.layout.carinfo_mode7_zlh};
            this.mLexusPageLayoutId = new int[]{R.layout.lexus_carinfo_blue};
            this.mLexusPageLayoutId_UI1 = new int[]{R.layout.lexus_carinfo_ui_1_blue};
            this.mBmwPageLayoutIdID8 = new int[]{R.layout.bmw_id8_carinfo};
            if (ZHTDOEMManager.ensureID8()) {
                this.PageCount = 1;
            } else if (ZHTDOEMManager.isYZGCustomerUI1() || ZHTDOEMManager.isZLHCustomerUI1() || ZHTDOEMManager.is1600x720And240dpi()) {
                this.PageCount = 7;
            }
            this.mPageLayout = new View[this.PageCount];
        }

        public void updateID8Theme(int i) {
            updateID8Background(i);
            updateID8MeterProgressUI(i);
        }

        private void updateID8Background(int i) {
            int i2;
            if (i == 1) {
                i2 = R.drawable.bmw_id8_orange_bg;
            } else if (i != 2) {
                i2 = i != 3 ? 0 : R.drawable.bmw_id8_blue_bg;
            } else {
                i2 = R.drawable.bmw_id8_red_bg;
            }
            if (i2 == 0 || CarInfo.this.mPages == null || this.mPageLayout[CarInfo.this.mPages.getCurrentItem()] == null) {
                return;
            }
            this.mPageLayout[CarInfo.this.mPages.getCurrentItem()].setBackgroundResource(i2);
        }

        private void updateID8MeterProgressUI(int i) {
            int i2;
            int i3 = 0;
            if (i == 1) {
                i3 = R.drawable.bmw_id8_orange_speed_progress;
                i2 = R.drawable.bmw_id8_orange_rpm_progress;
            } else if (i == 2) {
                i3 = R.drawable.bmw_id8_red_speed_progress;
                i2 = R.drawable.bmw_id8_red_rpm_progress;
            } else if (i != 3) {
                i2 = 0;
            } else {
                i3 = R.drawable.bmw_id8_blue_speed_progress;
                i2 = R.drawable.bmw_id8_blue_rpm_progress;
            }
            if (i3 != 0 && CarInfo.this.speedID8SpeedMeter != null) {
                CarInfo.this.speedID8SpeedMeter.setSpeedProgressResource(i3);
            }
            if (i2 == 0 || CarInfo.this.rpmID8SpeedMeter == null) {
                return;
            }
            CarInfo.this.rpmID8SpeedMeter.setRpmProgressResource(i2);
        }

        public void snap2Right() {
            if (CarInfo.this.mPages.getCurrentItem() < this.PageCount - 1) {
                CarInfo.this.mPages.setCurrentItem(CarInfo.this.mPages.getCurrentItem() + 1, true);
            }
        }

        public void snap2Left() {
            if (CarInfo.this.mPages.getCurrentItem() > 0) {
                CarInfo.this.mPages.setCurrentItem(CarInfo.this.mPages.getCurrentItem() - 1, true);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            Log.i(CarInfo.TAG, "onPageSelected: " + i);
            CarInfo.this.getPreferences(0).edit().putInt("page", i).commit();
            View[] viewArr = this.mPageLayout;
            if (viewArr[i] != null) {
                CarInfo.this.initView(viewArr[i]);
                if (CarInfo.this.cmdcode12Data != null) {
                    CarInfo carInfo = CarInfo.this;
                    carInfo.updateCarInfo(18, carInfo.cmdcode12Data);
                }
                if (CarInfo.this.cmdcode18Data != null) {
                    CarInfo carInfo2 = CarInfo.this;
                    carInfo2.updateCarInfo(24, carInfo2.cmdcode18Data);
                }
            }
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.PageCount;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            Log.i(CarInfo.TAG, "instantiateItem, position = " + i);
            if (ZHTDOEMManager.isLexus() || ZHTDOEMManager.isTOYOTACROWN()) {
                if (ZHTDOEMManager.getUIThemeid() == 1) {
                    if (ZHTDOEMManager.is1600x720And240dpi()) {
                        this.mPageLayout[i] = LayoutInflater.from(CarInfo.this).inflate(this.mPageLayoutId_UI1_zlh[i], (ViewGroup) null);
                    } else if (ZHTDOEMManager.isYZGCustomerUI1()) {
                        this.mPageLayout[i] = LayoutInflater.from(CarInfo.this).inflate(this.mPageLayoutId_UI1_yzg[i], (ViewGroup) null);
                    } else if (ZHTDOEMManager.isZLHCustomerUI1()) {
                        this.mPageLayout[i] = LayoutInflater.from(CarInfo.this).inflate(this.mPageLayoutId_UI1_zlh[i], (ViewGroup) null);
                    } else {
                        this.mPageLayout[i] = LayoutInflater.from(CarInfo.this).inflate(this.mLexusPageLayoutId_UI1[i], (ViewGroup) null);
                    }
                } else {
                    this.mPageLayout[i] = LayoutInflater.from(CarInfo.this).inflate(this.mLexusPageLayoutId[i], (ViewGroup) null);
                }
            } else if (ZHTDOEMManager.getUIThemeid() == 1) {
                if (ZHTDOEMManager.is1600x720And240dpi()) {
                    this.mPageLayout[i] = LayoutInflater.from(CarInfo.this).inflate(this.mPageLayoutId_UI1_zlh[i], (ViewGroup) null);
                } else if (ZHTDOEMManager.isYZGCustomerUI1()) {
                    this.mPageLayout[i] = LayoutInflater.from(CarInfo.this).inflate(this.mPageLayoutId_UI1_yzg[i], (ViewGroup) null);
                } else if (ZHTDOEMManager.isLCCustomer()) {
                    this.mPageLayout[i] = LayoutInflater.from(CarInfo.this).inflate(this.mPageLayoutId_lc[i], (ViewGroup) null);
                } else if (ZHTDOEMManager.isZLHCustomerUI1()) {
                    this.mPageLayout[i] = LayoutInflater.from(CarInfo.this).inflate(this.mPageLayoutId_UI1_zlh[i], (ViewGroup) null);
                } else {
                    this.mPageLayout[i] = LayoutInflater.from(CarInfo.this).inflate(this.mPageLayoutId_UI1[i], (ViewGroup) null);
                }
            } else if (ZHTDOEMManager.ensureID8()) {
                this.mPageLayout[i] = LayoutInflater.from(CarInfo.this).inflate(this.mBmwPageLayoutIdID8[i], (ViewGroup) null);
            } else if (ZHTDOEMManager.isLCCustomer()) {
                this.mPageLayout[i] = LayoutInflater.from(CarInfo.this).inflate(this.mPageLayoutId_lc[i], (ViewGroup) null);
            } else if (ZHTDOEMManager.isBmw() && ZHTDOEMManager.is1600x720And240dpi()) {
                this.mPageLayout[i] = LayoutInflater.from(CarInfo.this).inflate(this.mPageLayoutId_UI1_zlh[i], (ViewGroup) null);
            } else {
                this.mPageLayout[i] = LayoutInflater.from(CarInfo.this).inflate(this.mPageLayoutId[i], (ViewGroup) null);
            }
            viewGroup.addView(this.mPageLayout[i]);
            if (i == CarInfo.this.mPages.getCurrentItem()) {
                Log.i(CarInfo.TAG, "instantiateItem, initView = " + i);
                CarInfo.this.initView(this.mPageLayout[i]);
                if (CarInfo.this.cmdcode12Data != null) {
                    CarInfo carInfo = CarInfo.this;
                    carInfo.updateCarInfo(18, carInfo.cmdcode12Data);
                }
                if (CarInfo.this.cmdcode18Data != null) {
                    CarInfo carInfo2 = CarInfo.this;
                    carInfo2.updateCarInfo(24, carInfo2.cmdcode18Data);
                }
            }
            return this.mPageLayout[i];
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
        }
    }

    public String getDate() {
        return new SimpleDateFormat("MM/dd").format(new Date());
    }

    public String getTime() {
        SimpleDateFormat simpleDateFormat;
        if (DateFormat.is24HourFormat(this)) {
            simpleDateFormat = new SimpleDateFormat("HH:mm");
        } else {
            simpleDateFormat = new SimpleDateFormat("hh:mm");
        }
        return simpleDateFormat.format(new Date());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTimerView() {
        TextView textView = this.mDateText;
        if (textView != null) {
            textView.setText(getTime());
        }
    }

    private String getWeek() {
        return new DateFormatSymbols(Locale.getDefault()).getWeekdays()[Calendar.getInstance().get(7)];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWeekView() {
        TextView textView = this.mDateWeekText;
        if (textView != null) {
            textView.setText(getWeek());
        }
    }
}
