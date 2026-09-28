package com.android.launcher2.popuView;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.android.launcher2.Launcher;
import com.android.launcher2.LauncherApplication;
import com.android.launcher2.uitl.Function;
import com.android.launcher2.uitl.Utils;
import com.android.launcher2.uitl.Weather;
import com.carocean.navicar.HandlerWeakReference;
import com.carocean.navicar.MMIKeyHelper;
import com.carocean.navicar.PerSysDef;
import com.carocean.navicar.util.ZHTDOEMManager;
import com.yecon.launcher1.R;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MainCustomerJly extends FrameLayout implements View.OnClickListener, View.OnLongClickListener {
    public static final String ACTION_CITY_INFO_UPDATE = "com.autochips.action.city.INFO_UPDATE";
    public static final String ACTION_CLOCK_TYPE = "com.yecon.action.ACTION_CLOCK_TYPE";
    public static final String ACTION_SWITCH_VIEW = "com.yecon.action.ACTION_SWITCH_VIEW";
    public static final String ACTION_WEATHER_INFO_UPDATE = "com.autochips.action.weathe.INFO_UPDATE";
    public static final String ACTION_WEATHER_ON_CLICK = "com.autochips.action.weathe.ON_CLICK";
    private static final int MSG_START = 10000;
    private static final int MSG_UPDATE_CAR_INFO = 10001;
    public static final String PERSYS_CLOCK_TYPE = "persist.sys.clock_type";
    public static final String PERSYS_DVR_CVBS = "persist.sys.dvr_cvbs";
    public static final String PERSYS_FRONT_CAMERA = "persist.sys.front_camera";
    public static final String PERSYS_HOST_TYPE = "persist.sys.host_type";
    public static final String PERSYS_ORIGINAL_BT = "persist.sys.original_bt";
    private static final String PREFS_CLOCK_WEATHER = "mc.clockweather";
    public static final String RO_RELEASE_CARPLAY = "ro.release.car_play";
    private static final String TAG = "MainCustomerJly";
    private static final String URI_SYS_BT_CONNECT_STATUS = "content://com.carocean.status.provider/sys/SYS_BT_CONNECT_STATUS";
    public static String[] conditionImages;
    private static String[] conditionItems;
    private final int AUTO_SHOWTIME_TIME;
    private final int MSG_SHOWTIME;
    private View clock;
    private CompassManager compassManager;
    ImageView iv_pm25_pic;
    ImageView iv_time;
    ImageView iv_time2;
    ImageView iv_weather;
    private EdgeEffect leftEdge;
    BroadcastReceiver mBroadcastReceiver;
    private final Calendar mCalendar;
    private ImageView mCarBg;
    int[] mCarIcons;
    private boolean mDotFlip;
    private final int mGap;
    private final int[] mIconsId;
    private int[] mImageResArray;
    private LayoutInflater mInflater;
    private Launcher mLauncher;
    View mLayoutDatetime;
    private ImageView mMainMyBmw;
    public MainPageAdapter mMainPageAdapter;
    private View mMainPageLayout;
    private View mMainPageLeftArrow;
    public ImageView mMainPageNewArrow;
    private View mMainPageRightArrow;
    private ViewPager mMainPages;
    private Bitmap mMaoHaoBitmap;
    private TextView mMusicArtist;
    private TextView mMusicTitle;
    private List<Bitmap> mNumBitmaps;
    int[] mPMQualityPicId;
    private Paint mPaint;
    String[] mPmQualityArray;
    private SharedPreferences mSharedPrefs;
    private SubPageAdapter mSubPageAdapter;
    private View mSubPageLayout;
    private ViewPager mSubPages;
    private SwitchIconView mSwitchIconView;
    private Bitmap mTimeBitmap;
    private Bitmap mTimeBitmap2;
    private Canvas mTimeCanvas;
    private Canvas mTimeCanvas2;
    LinearLayout mWeatherPM25Layout;
    private String musicArtist;
    private String musicTitle;
    private EdgeEffect rightEdge;
    private SystemStatusConnectObserver systemStatusConnectObserver;
    TextView tv_city;
    TextView tv_date;
    TextView tv_date2;
    TextView tv_pm25;
    TextView tv_quality;
    TextView tv_temp;
    TextView tv_time;
    TextView tv_weather;
    TextView tv_week;
    TextView tv_week2;
    private UIHandler uiHandler;
    View vAnalogClock;
    View vDigitalClock;
    private View weather;

    public void onShowAllApps() {
    }

    public void onShowWorkspace() {
    }

    public void onTrimMemory() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getNetWorkStatus() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.mLauncher.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return 0;
        }
        if (activeNetworkInfo.getType() == 1) {
            return 1;
        }
        return activeNetworkInfo.getType() == 0 ? 2 : 0;
    }

    public MainCustomerJly(Context context) {
        this(context, null);
    }

    public MainCustomerJly(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MainCustomerJly(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mGap = 2;
        this.mImageResArray = new int[]{R.drawable.t0, R.drawable.t1, R.drawable.t2, R.drawable.t3, R.drawable.t4, R.drawable.t5, R.drawable.t6, R.drawable.t7, R.drawable.t8, R.drawable.t9};
        this.mIconsId = new int[0];
        this.mPMQualityPicId = new int[]{R.drawable.pm_level0, R.drawable.pm_level1, R.drawable.pm_level2, R.drawable.pm_level3, R.drawable.pm_level4, R.drawable.pm_level5};
        this.mPmQualityArray = null;
        this.mCarIcons = new int[]{R.drawable.jly_car_default, R.drawable.jly_car0, R.drawable.jly_car1, R.drawable.jly_car2, R.drawable.jly_car3, R.drawable.jly_car4, R.drawable.jly_car5, R.drawable.jly_car6, R.drawable.jly_car7, R.drawable.jly_car8, R.drawable.jly_car9};
        this.MSG_SHOWTIME = 1;
        this.AUTO_SHOWTIME_TIME = 8000;
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.launcher2.popuView.MainCustomerJly.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if ("com.autochips.action.weathe.INFO_UPDATE".equals(action)) {
                    MainCustomerJly.this.updateWeather(context2, intent);
                } else if ("com.autochips.action.city.INFO_UPDATE".equals(action)) {
                    MainCustomerJly.this.updateCity(context2, intent);
                } else if ("com.yecon.action.ACTION_CLOCK_TYPE".equals(action)) {
                    MainCustomerJly.this.setClockVisibility();
                } else {
                    if ("com.yecon.action.ACTION_SWITCH_VIEW".equals(action)) {
                        int intExtra = intent.getIntExtra("id", 0);
                        if (intExtra == 0) {
                            MainCustomerJly.this.showMain1();
                        } else if (1 == intExtra) {
                            MainCustomerJly.this.showMain2();
                        }
                    } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                        if (MainCustomerJly.this.mMainPageAdapter != null) {
                            MainCustomerJly.this.mMainPageAdapter.updateIEText();
                        }
                        if (MainCustomerJly.this.mSubPageAdapter != null) {
                            MainCustomerJly.this.mSubPageAdapter.updateIEText();
                        }
                    } else if (action.equals("action.lexus.update360icon")) {
                        MainCustomerJly.this.update360Icon();
                    } else if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(action)) {
                        MainCustomerJly.this.updateBluetooth(intent.getIntExtra("android.bluetooth.adapter.extra.CONNECTION_STATE", 0) == 1);
                    }
                }
                MainCustomerJly.this.updateDateTime(context2);
            }
        };
        this.musicTitle = "";
        this.musicArtist = "";
        this.mDotFlip = true;
        this.mLauncher = (Launcher) context;
        this.uiHandler = new UIHandler(this);
        this.systemStatusConnectObserver = new SystemStatusConnectObserver(this.uiHandler);
        conditionItems = context.getResources().getStringArray(R.array.weather_yahoo_condition);
        this.mNumBitmaps = new ArrayList();
        this.mMaoHaoBitmap = BitmapFactory.decodeResource(getResources(), R.drawable.maohao);
        for (int i2 = 0; i2 < this.mImageResArray.length; i2++) {
            this.mNumBitmaps.add(BitmapFactory.decodeResource(getResources(), this.mImageResArray[i2]));
        }
        Paint paint = new Paint(1);
        this.mPaint = paint;
        paint.setFilterBitmap(false);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setDither(true);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        intentFilter.addAction("action.lexus.update360icon");
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        getContext().registerReceiver(this.mBroadcastReceiver, intentFilter);
        this.mCalendar = Calendar.getInstance();
        this.mTimeBitmap = Bitmap.createBitmap(getResources().getDimensionPixelSize(R.dimen.time_imageview_layout_width), getResources().getDimensionPixelSize(R.dimen.time_imageview_layout_height), Bitmap.Config.ARGB_8888);
        this.mTimeCanvas = new Canvas(this.mTimeBitmap);
        this.mTimeBitmap2 = Bitmap.createBitmap(getResources().getDimensionPixelSize(R.dimen.time_imageview_layout_width2), getResources().getDimensionPixelSize(R.dimen.time_imageview_layout_height2), Bitmap.Config.ARGB_8888);
        this.mTimeCanvas2 = new Canvas(this.mTimeBitmap2);
        this.mSharedPrefs = context.getSharedPreferences(LauncherApplication.getSharedPreferencesKey(), 0);
        notifyStatusBar(0);
        context.getContentResolver().registerContentObserver(Uri.parse(URI_SYS_BT_CONNECT_STATUS), true, this.systemStatusConnectObserver);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        setupViews();
    }

    public void release() {
        try {
            getContext().unregisterReceiver(this.mBroadcastReceiver);
            this.mMainPageAdapter.release();
            this.mSubPageAdapter.release();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void update360Icon() {
        LauncherApplication.m360Type = SystemProperties.getInt(PerSysDef.PERSYS_IVICAR_AVM_ENABLE, 0);
        Log.i(TAG, "launcher1---360type=" + LauncherApplication.m360Type);
        this.mMainPageAdapter.update360Icon();
        this.mSubPageAdapter.update360Icon();
    }

    void updateBluetooth(boolean z) {
        this.mMainPageAdapter.updateBluetooth(z);
    }

    public void setPageIndex(int i, int i2) {
        SwitchIconView switchIconView = this.mSwitchIconView;
        if (switchIconView != null) {
            switchIconView.setPackageIndex(i, i2, false);
        }
    }

    void setupViews() {
        Context context = getContext();
        this.mInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.mPmQualityArray = getResources().getStringArray(R.array.weather_pm25_quality);
        this.mSwitchIconView = (SwitchIconView) findViewById(R.id.main_switchIconView);
        View viewFindViewById = findViewById(R.id.clock_layout);
        this.clock = viewFindViewById;
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this);
        }
        View viewFindViewById2 = findViewById(R.id.weather_layout);
        this.weather = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(this);
        }
        findViewById(R.id.iv_clock_icon);
        View viewFindViewById3 = findViewById(R.id.iv_weather_icon);
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(this);
        }
        this.tv_week = (TextView) findViewById(R.id.id_week);
        this.tv_date = (TextView) findViewById(R.id.id_date);
        this.tv_city = (TextView) findViewById(R.id.tv_city);
        this.tv_weather = (TextView) findViewById(R.id.tv_weather);
        this.tv_temp = (TextView) findViewById(R.id.tv_temp);
        ImageView imageView = (ImageView) findViewById(R.id.id_time);
        this.iv_time = imageView;
        if (imageView != null) {
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        }
        ImageView imageView2 = this.iv_time2;
        if (imageView2 != null) {
            imageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
        }
        ImageView imageView3 = (ImageView) findViewById(R.id.iv_weather);
        this.iv_weather = imageView3;
        if (imageView3 != null) {
            imageView3.setImageAlpha(150);
            this.iv_weather.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.iv_weather.setImageDrawable((BitmapDrawable) getResources().getDrawable(R.drawable.cloudy));
            this.iv_weather.setOnClickListener(this);
        }
        LinearLayout linearLayout = this.mWeatherPM25Layout;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        updateDateTime(context);
        View viewFindViewById4 = findViewById(R.id.id_datetime);
        this.mLayoutDatetime = viewFindViewById4;
        if (viewFindViewById4 != null) {
            viewFindViewById4.setOnClickListener(this);
        }
        View viewFindViewById5 = findViewById(R.id.id_weather);
        if (viewFindViewById5 != null) {
            viewFindViewById5.setOnClickListener(this);
        }
        View view = this.vAnalogClock;
        if (view != null) {
            view.setOnClickListener(this);
        }
        View view2 = this.vDigitalClock;
        if (view2 != null) {
            view2.setOnClickListener(this);
        }
        setClockVisibility();
        for (int i : this.mIconsId) {
            View viewFindViewById6 = findViewById(i);
            if (viewFindViewById6 != null) {
                viewFindViewById6.setOnClickListener(this);
            }
        }
        this.mMainPageNewArrow = (ImageView) findViewById(R.id.main_page_new_arrow);
        View viewFindViewById7 = findViewById(R.id.main_page_left_arrow);
        this.mMainPageLeftArrow = viewFindViewById7;
        viewFindViewById7.setOnClickListener(this);
        this.mMainPageLeftArrow.setVisibility(4);
        View viewFindViewById8 = findViewById(R.id.main_page_right_arrow);
        this.mMainPageRightArrow = viewFindViewById8;
        viewFindViewById8.setOnClickListener(this);
        this.mMainPageLayout = findViewById(R.id.layout_main_page);
        this.mSubPageLayout = findViewById(R.id.layout_sub_page);
        this.mMainPageAdapter = new MainPageAdapter();
        this.mMainPages = (ViewPager) findViewById(R.id.main_page_container);
        if (ZHTDOEMManager.getUIThemeid() == 1) {
            this.mMainPages.setOffscreenPageLimit(3);
        } else {
            this.mMainPages.setOffscreenPageLimit(4);
        }
        this.mMainPages.setOnPageChangeListener(this.mMainPageAdapter);
        this.mMainPages.setAdapter(this.mMainPageAdapter);
        try {
            Field declaredField = this.mMainPages.getClass().getDeclaredField("mLeftEdge");
            Field declaredField2 = this.mMainPages.getClass().getDeclaredField("mRightEdge");
            if (declaredField != null && declaredField2 != null) {
                declaredField.setAccessible(true);
                declaredField2.setAccessible(true);
                this.leftEdge = (EdgeEffect) declaredField.get(this.mMainPages);
                this.rightEdge = (EdgeEffect) declaredField2.get(this.mMainPages);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.mSubPageAdapter = new SubPageAdapter();
        ViewPager viewPager = (ViewPager) findViewById(R.id.sub_page_container);
        this.mSubPages = viewPager;
        viewPager.setOffscreenPageLimit(2);
        this.mSubPages.setOnPageChangeListener(this.mSubPageAdapter);
        this.mSubPages.setAdapter(this.mSubPageAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMusicInfo(String str, String str2) {
        TextView textView = this.mMusicTitle;
        if (textView != null) {
            textView.setText(str);
        }
        TextView textView2 = this.mMusicArtist;
        if (textView2 != null) {
            textView2.setText(str2);
        }
    }

    public int getSeletedPage() {
        MainPageAdapter mainPageAdapter = this.mMainPageAdapter;
        if (mainPageAdapter != null && mainPageAdapter.mSelectIndex >= 0) {
            return this.mMainPageAdapter.mSelectIndex / this.mMainPageAdapter.PageItemCount;
        }
        return 0;
    }

    public int getPageCount() {
        MainPageAdapter mainPageAdapter = this.mMainPageAdapter;
        if (mainPageAdapter == null) {
            return 3;
        }
        return mainPageAdapter.PageCount;
    }

    void setClockVisibility() {
        if (SystemProperties.getInt("persist.sys.clock_type", 1) == 0) {
            View view = this.vAnalogClock;
            if (view != null) {
                view.setVisibility(8);
            }
            View view2 = this.vDigitalClock;
            if (view2 != null) {
                view2.setVisibility(0);
                return;
            }
            return;
        }
        View view3 = this.vAnalogClock;
        if (view3 != null) {
            view3.setVisibility(0);
        }
        View view4 = this.vDigitalClock;
        if (view4 != null) {
            view4.setVisibility(8);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    private void showHideTimeLater(boolean z) {
        this.uiHandler.removeMessages(1);
        if (z) {
            this.uiHandler.sendEmptyMessageDelayed(1, 8000L);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.mMainPageLayout.getVisibility() == 0) {
            if (ZHTDOEMManager.getUIThemeid() == 1) {
                ((Launcher) getContext()).setMMIKeyRegion(1);
                ((Launcher) getContext()).mMMIKeyHelper.showSelectedStatus(false);
            }
            this.mMainPageAdapter.mMMIKeyHelper.setSelected(view);
        } else if (this.mSubPageLayout.getVisibility() == 0) {
            this.mSubPageAdapter.mMMIKeyHelper.setSelected(view);
        }
        switch (view.getId()) {
            case R.id.id_navigation /* 2131230782 */:
            case R.id.main_navi /* 2131230837 */:
                Function.onNavigation(getContext());
                break;
            case R.id.iv_weather_icon /* 2131230794 */:
                if (this.clock.getVisibility() == 0) {
                    this.clock.setVisibility(8);
                    this.weather.setVisibility(0);
                    this.mSharedPrefs.edit().putInt(PREFS_CLOCK_WEATHER, 1).commit();
                } else {
                    this.clock.setVisibility(0);
                    this.weather.setVisibility(8);
                    this.mSharedPrefs.edit().putInt(PREFS_CLOCK_WEATHER, 0).commit();
                }
                break;
            case R.id.main_app /* 2131230810 */:
                ((Launcher) getContext()).onClickAllAppsButton(view);
                break;
            case R.id.main_bt /* 2131230812 */:
                Function.onBT(getContext());
                break;
            case R.id.main_carinfo /* 2131230815 */:
                Function.onCarInfo(getContext());
                break;
            case R.id.main_ie /* 2131230825 */:
                Function.onChrome(getContext());
                break;
            case R.id.main_lc_dvr /* 2131230827 */:
                Function.onLCDvr(getContext());
                break;
            case R.id.main_music /* 2131230829 */:
                Function.onMusic(getContext());
                break;
            case R.id.main_mybmw /* 2131230833 */:
                Function.onCarMedia(getContext());
                break;
            case R.id.main_page_left_arrow /* 2131230840 */:
                this.mMainPageAdapter.snap2Left();
                break;
            case R.id.main_page_right_arrow /* 2131230842 */:
                this.mMainPageAdapter.snap2Right();
                break;
            case R.id.main_phonelink /* 2131230843 */:
            case R.id.main_zlink /* 2131230866 */:
                Function.onZLink(getContext());
                break;
            case R.id.main_setting /* 2131230852 */:
                Function.onSettings(getContext());
                break;
            case R.id.main_video /* 2131230864 */:
                Function.onVideo(getContext());
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDateTime(Context context) {
        String date = Utils.getDate();
        String currentWeek = Utils.getCurrentWeek(getContext());
        TextView textView = this.tv_date;
        if (textView != null) {
            textView.setText(date);
        }
        TextView textView2 = this.tv_week;
        if (textView2 != null) {
            textView2.setText(currentWeek);
        }
        TextView textView3 = this.tv_date2;
        if (textView3 != null) {
            textView3.setText(date);
        }
        TextView textView4 = this.tv_week2;
        if (textView4 != null) {
            textView4.setText(currentWeek);
        }
    }

    private void updateTime() {
        String[] hourMinute = Utils.getHourMinute(getContext());
        ImageView imageView = this.iv_time;
        if (imageView != null) {
            imageView.setImageBitmap(getTimeBitmap(this.mTimeCanvas, this.mTimeBitmap, hourMinute, getContext()));
        }
        TextView textView = this.tv_time;
        if (textView != null) {
            if (this.mDotFlip) {
                textView.setText(hourMinute[0] + " : " + hourMinute[1]);
            } else {
                textView.setText(hourMinute[0] + "   " + hourMinute[1]);
            }
            this.mDotFlip = !this.mDotFlip;
        }
    }

    public Bitmap getTimeBitmap(Canvas canvas, Bitmap bitmap, String[] strArr, Context context) {
        int i;
        if (bitmap != null) {
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            Bitmap[] bitmapsByTime = getBitmapsByTime(strArr);
            int[] iArr = new int[bitmapsByTime.length];
            int[] iArr2 = new int[bitmapsByTime.length];
            for (int i2 = 0; i2 < bitmapsByTime.length; i2++) {
                iArr[i2] = bitmapsByTime[i2].getWidth();
                iArr2[i2] = bitmapsByTime[i2].getHeight();
                if (i2 == 0) {
                    i = 0;
                } else {
                    i = 0;
                    for (int i3 = 0; i3 < i2; i3++) {
                        i += iArr[i3] + 2;
                    }
                }
                canvas.drawBitmap(bitmapsByTime[i2], (Rect) null, new Rect(i, 0, iArr[i2] + i, iArr2[i2]), this.mPaint);
            }
        }
        return bitmap;
    }

    private Bitmap[] getBitmapsByTime(String[] strArr) {
        String str = strArr[0] + "a" + strArr[1];
        Bitmap[] bitmapArr = new Bitmap[5];
        for (int i = 0; i < 5; i++) {
            try {
                bitmapArr[i] = this.mNumBitmaps.get(Integer.valueOf(String.valueOf(str.charAt(i))).intValue());
            } catch (Exception unused) {
                bitmapArr[i] = this.mMaoHaoBitmap;
            }
        }
        return bitmapArr;
    }

    public void updateWeather(Context context, Intent intent) {
        boolean z;
        Bundle extras = intent.getExtras();
        if (extras != null) {
            String string = extras.getString("weather_info");
            if (TextUtils.isEmpty(string)) {
                return;
            }
            Log.i(TAG, "launcher_yecon1:when update weather, jsonStr=" + string);
            Weather weatherJson = Utils.parseWeatherJson(string);
            if (weatherJson != null) {
                Log.i(TAG, "launcher_yecon1:" + weatherJson.cityname + "," + weatherJson.lowTemp + "-" + weatherJson.highTemp + "," + weatherJson.pm25 + "," + weatherJson.quality);
                this.tv_city.setText(weatherJson.cityname);
                if (weatherJson.code >= 0) {
                    int i = weatherJson.code;
                    String[] strArr = conditionItems;
                    if (i < strArr.length) {
                        this.tv_weather.setText(strArr[weatherJson.code]);
                    }
                }
                this.tv_temp.setText(weatherJson.lowTemp + weatherJson.unit + "-" + weatherJson.highTemp + weatherJson.unit);
                this.iv_weather.setImageDrawable((BitmapDrawable) context.getResources().getDrawable(getImageIdByCode(weatherJson.code, context)));
                if (weatherJson.pm25 == null || weatherJson.quality == null || this.iv_pm25_pic == null || this.tv_pm25 == null || this.tv_quality == null) {
                    return;
                }
                if (!weatherJson.pm25.equals("0") && !weatherJson.pm25.equals("0.0")) {
                    this.tv_pm25.setText(weatherJson.pm25);
                    this.tv_quality.setText(weatherJson.quality);
                    int i2 = 0;
                    while (true) {
                        if (i2 >= this.mPmQualityArray.length) {
                            z = false;
                            break;
                        } else {
                            if (weatherJson.quality.contains(this.mPmQualityArray[i2])) {
                                this.iv_pm25_pic.setImageResource(this.mPMQualityPicId[i2]);
                                this.iv_pm25_pic.setVisibility(0);
                                z = true;
                                break;
                            }
                            i2++;
                        }
                    }
                    if (!z) {
                        this.iv_pm25_pic.setVisibility(8);
                    }
                    this.tv_pm25.setVisibility(0);
                    this.tv_quality.setVisibility(0);
                    this.mWeatherPM25Layout.setVisibility(0);
                    return;
                }
                this.mWeatherPM25Layout.setVisibility(8);
                this.tv_pm25.setVisibility(8);
                this.tv_quality.setVisibility(8);
                this.iv_pm25_pic.setVisibility(8);
                return;
            }
            Log.i(TAG, "launcher_yecon1:when update weather, weather=null");
        }
    }

    public static int getImageIdByCode(int i, Context context) {
        Resources resources = context.getResources();
        if (conditionImages == null) {
            conditionImages = context.getResources().getStringArray(R.array.yahoo_condition_image);
        }
        if (i < 0) {
            return R.drawable.cloudy;
        }
        String[] strArr = conditionImages;
        if (i >= strArr.length) {
            return R.drawable.cloudy;
        }
        try {
            return resources.getIdentifier(strArr[i], "drawable", context.getPackageName());
        } catch (Exception unused) {
            return R.drawable.cloudy;
        }
    }

    public void updateCity(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            this.tv_city.setText(extras.getString("city_info"));
        }
    }

    public void notifyStatusBar(int i) {
        Intent intent = new Intent();
        intent.setPackage("com.android.systemui");
        intent.setAction("com.yecon.action.systemui");
        intent.putExtra("command", "mode");
        if (i == 0) {
            intent.putExtra("mode", "mainpage");
        } else if (1 == i) {
            intent.putExtra("mode", "subpage");
        } else if (2 == i) {
            intent.putExtra("mode", "allapp");
        }
        getContext().sendBroadcast(intent);
    }

    public void notifyStatusBar() {
        if (this.mSubPageLayout.getVisibility() == 0) {
            notifyStatusBar(1);
        } else {
            notifyStatusBar(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMain1() {
        this.mMainPageLayout.setVisibility(0);
        this.mSubPageLayout.setVisibility(4);
        notifyStatusBar(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showMain2() {
        this.mMainPageLayout.setVisibility(4);
        this.mSubPageLayout.setVisibility(0);
        notifyStatusBar(1);
    }

    public void toggleMainSubView() {
        if (ZHTDOEMManager.getUIThemeid() != 1) {
            if (this.mMainPageLayout.getVisibility() == 0) {
                showMain2();
            } else {
                showMain1();
            }
        }
    }

    public void updateCarIcon(int i) {
        if (this.mMainMyBmw != null) {
            if (i >= 0 && i < this.mCarIcons.length) {
                this.mSharedPrefs.edit().putInt("caricon", i).commit();
            }
            int i2 = this.mSharedPrefs.getInt("caricon", 0);
            if (i2 >= 0) {
                int[] iArr = this.mCarIcons;
                if (i2 < iArr.length) {
                    this.mMainMyBmw.setImageResource(iArr[i2]);
                }
            }
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (view.getId() != R.id.main_mybmw) {
            return true;
        }
        CarFlagDialog carFlagDialog = new CarFlagDialog(this.mLauncher, this.mCarIcons);
        carFlagDialog.setOnCarFlagChangedListener(new CarFlagDialog.OnCarFlagChangedListener() { // from class: com.android.launcher2.popuView.MainCustomerJly.2
            @Override // com.android.launcher2.popuView.CarFlagDialog.OnCarFlagChangedListener
            public void onCarFlagChanged(int i) {
                if (i < 0 || i >= MainCustomerJly.this.mCarIcons.length) {
                    return;
                }
                MainCustomerJly.this.updateCarIcon(i);
            }
        });
        carFlagDialog.show();
        return true;
    }

    public void updateUiTheme() {
        this.mMainPageAdapter.updateUiTheme();
    }

    class MainPageTransformer implements ViewPager.PageTransformer {
        @Override // androidx.viewpager.widget.ViewPager.PageTransformer
        public void transformPage(View view, float f) {
        }

        MainPageTransformer() {
        }
    }

    public class MainPageAdapter extends PagerAdapter implements ViewPager.OnPageChangeListener {
        private final int[] jly_bmw_app_res;
        private final int[] jly_bmw_bt_res;
        private final int[] jly_bmw_car_res;
        private final int[] jly_bmw_carinfo_res;
        private final int[] jly_bmw_music_res;
        private final int[] jly_bmw_navi_res;
        private final int[] jly_bmw_video_res;
        private final int[] jly_bmw_zlink_res;
        boolean mBTConnected;
        private TextView mBTText;
        private TextView mIEText;
        public MMIKeyHelper mMMIKeyHelper;
        private int[][] mMainPageIconsId;
        private final int[][] mMainPageIconsId_n;
        private final View[][] mMainPageIconsView;
        private int[] mMainPageLayoutId;
        private final int[] mMainPageLayoutId_n;
        private int mSelectIndex;
        public int PageItemCount = 4;
        public int PageCount = 2;

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        public void update360Icon() {
        }

        public int getIndexFromView(View view) {
            int i = -1;
            for (int i2 = 0; i2 < this.mMainPageIconsView.length; i2++) {
                int i3 = 0;
                while (true) {
                    View[][] viewArr = this.mMainPageIconsView;
                    if (i3 >= viewArr[i2].length) {
                        break;
                    }
                    if (view == viewArr[i2][i3]) {
                        i = (this.PageItemCount * i2) + i3;
                        break;
                    }
                    i3++;
                }
                if (i >= 0) {
                    break;
                }
            }
            return i;
        }

        public final void updateBluetooth(boolean z) {
            TextView textView = this.mBTText;
            if (textView != null) {
                textView.setText(z ? R.string.home_bt_connected : R.string.home_bt_disconnected);
            }
            this.mBTConnected = z;
        }

        public void updateIEText() {
            if (this.mIEText != null) {
                if (MainCustomerJly.this.getNetWorkStatus() > 0) {
                    this.mIEText.setText(R.string.home_browser_text2);
                } else {
                    this.mIEText.setText(R.string.home_browser_text1);
                }
            }
        }

        public void snap2Right() {
            int i = this.mSelectIndex;
            int i2 = this.PageItemCount;
            int i3 = i / i2;
            if (i3 < this.PageCount - 1) {
                int i4 = i3 + 1;
                int i5 = i4 * i2;
                this.mSelectIndex = i5;
                this.mMMIKeyHelper.setSelected(this.mMainPageIconsView[i4][i5 % i2]);
                MainCustomerJly.this.mMainPages.setCurrentItem(i4, true);
            }
        }

        public void snap2Left() {
            int i = this.mSelectIndex;
            int i2 = this.PageItemCount;
            int i3 = i / i2;
            if (i3 > 0) {
                int i4 = i3 - 1;
                int i5 = i4 * i2;
                this.mSelectIndex = i5;
                this.mMMIKeyHelper.setSelected(this.mMainPageIconsView[i4][i5 % i2]);
                MainCustomerJly.this.mMainPages.setCurrentItem(i4, true);
            }
        }

        public void release() {
            this.mMMIKeyHelper.clear();
        }

        public MainPageAdapter() {
            int[] iArr = {R.layout.jly_bmw_main_new_page1, R.layout.jly_bmw_main_new_page2};
            this.mMainPageLayoutId_n = iArr;
            int[][] iArr2 = {new int[]{R.id.main_zlink, R.id.main_navi, R.id.main_music, R.id.main_bt}, new int[]{R.id.main_video, R.id.main_carinfo, R.id.main_app, R.id.main_mybmw}};
            this.mMainPageIconsId_n = iArr2;
            this.mMainPageLayoutId = iArr;
            this.mMainPageIconsId = iArr2;
            this.mMainPageIconsView = new View[][]{new View[4], new View[4]};
            this.mSelectIndex = -1;
            this.mBTConnected = false;
            this.jly_bmw_zlink_res = new int[]{R.drawable.jly_bmw_blue_zlink, R.drawable.jly_bmw_red_zlink, R.drawable.jly_bmw_pink_zlink};
            this.jly_bmw_navi_res = new int[]{R.drawable.jly_bmw_blue_navi, R.drawable.jly_bmw_red_navi, R.drawable.jly_bmw_pink_navi};
            this.jly_bmw_music_res = new int[]{R.drawable.jly_bmw_blue_music, R.drawable.jly_bmw_red_music, R.drawable.jly_bmw_pink_music};
            this.jly_bmw_bt_res = new int[]{R.drawable.jly_bmw_blue_bt, R.drawable.jly_bmw_red_bt, R.drawable.jly_bmw_pink_bt};
            this.jly_bmw_video_res = new int[]{R.drawable.jly_bmw_blue_video, R.drawable.jly_bmw_red_video, R.drawable.jly_bmw_pink_video};
            this.jly_bmw_carinfo_res = new int[]{R.drawable.jly_bmw_blue_carinfo, R.drawable.jly_bmw_red_carinfo, R.drawable.jly_bmw_pink_carinfo};
            this.jly_bmw_app_res = new int[]{R.drawable.jly_bmw_blue_apps, R.drawable.jly_bmw_red_apps, R.drawable.jly_bmw_pink_apps};
            this.jly_bmw_car_res = new int[]{R.drawable.jly_bmw_blue_car, R.drawable.jly_bmw_red_car, R.drawable.jly_bmw_pink_car};
            MMIKeyHelper mMIKeyHelper = new MMIKeyHelper(1);
            this.mMMIKeyHelper = mMIKeyHelper;
            mMIKeyHelper.setSelectMode(0);
            this.mMMIKeyHelper.setCustomCallback(new MMIKeyHelper.CallbackEx() { // from class: com.android.launcher2.popuView.MainCustomerJly.MainPageAdapter.1
                @Override // com.carocean.navicar.MMIKeyHelper.Callback
                public void onFocused(View view, boolean z) {
                }

                @Override // com.carocean.navicar.MMIKeyHelper.Callback
                public void onMenuUpEnd() {
                }

                @Override // com.carocean.navicar.MMIKeyHelper.Callback
                public void onTurnning(View view, boolean z) {
                }

                @Override // com.carocean.navicar.MMIKeyHelper.Callback
                public void onSelectChanged(View view, boolean z) {
                    if (z) {
                        int indexFromView = MainPageAdapter.this.getIndexFromView(view);
                        Log.i(MainCustomerJly.TAG, "onSelectChanged , index=" + indexFromView);
                        if (indexFromView >= 0) {
                            if (MainPageAdapter.this.mSelectIndex != indexFromView) {
                                MainPageAdapter.this.mSelectIndex = indexFromView;
                                MainCustomerJly.this.mMainPages.setCurrentItem(MainPageAdapter.this.mSelectIndex / MainPageAdapter.this.PageItemCount, true);
                            }
                            if (MainCustomerJly.this.mSubPageAdapter.getSelectIndex() != MainPageAdapter.this.mSelectIndex) {
                                MainCustomerJly.this.mSubPageAdapter.setSelectViewByIndex(MainPageAdapter.this.mSelectIndex, true, false);
                            }
                        }
                    }
                }

                @Override // com.carocean.navicar.MMIKeyHelper.Callback
                public void onEnter(View view) {
                    MainCustomerJly.this.onClick(view);
                }

                @Override // com.carocean.navicar.MMIKeyHelper.CallbackEx
                public void onMenuUp(int i, int i2) {
                    if (i2 == 0) {
                        if (ZHTDOEMManager.getUIThemeid() != 1) {
                            MainCustomerJly.this.mMainPageLeftArrow.setPressed(true);
                        }
                    } else if (i2 == 1) {
                        if (ZHTDOEMManager.getUIThemeid() != 1) {
                            MainCustomerJly.this.mMainPageLeftArrow.setPressed(false);
                            MainCustomerJly.this.mMainPageAdapter.snap2Left();
                        } else {
                            ((Launcher) MainCustomerJly.this.getContext()).setMMIKeyRegion(0);
                            MainPageAdapter.this.mMMIKeyHelper.showSelectedStatus(false);
                            ((Launcher) MainCustomerJly.this.getContext()).mMMIKeyHelper.setSelected(0, ((Launcher) MainCustomerJly.this.getContext()).mMMIKeyHelper.getSelectedIndex());
                        }
                    }
                }

                @Override // com.carocean.navicar.MMIKeyHelper.CallbackEx
                public void onMenuDown(int i, int i2) {
                    if (ZHTDOEMManager.getUIThemeid() != 1) {
                        if (i2 == 0) {
                            MainCustomerJly.this.mMainPageRightArrow.setPressed(true);
                        } else if (i2 == 1) {
                            MainCustomerJly.this.mMainPageRightArrow.setPressed(false);
                            MainCustomerJly.this.mMainPageAdapter.snap2Right();
                        }
                    }
                }
            });
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.PageCount;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            Log.i(MainCustomerJly.TAG, "instantiateItem, position = " + i);
            this.mMainPageLayoutId = this.mMainPageLayoutId_n;
            this.mMainPageIconsId = this.mMainPageIconsId_n;
            View viewInflate = LayoutInflater.from(MainCustomerJly.this.getContext()).inflate(this.mMainPageLayoutId[i], (ViewGroup) null);
            int i2 = 0;
            while (true) {
                int[][] iArr = this.mMainPageIconsId;
                if (i2 >= iArr[i].length) {
                    break;
                }
                View viewFindViewById = viewInflate.findViewById(iArr[i][i2]);
                if (viewFindViewById != null) {
                    this.mMainPageIconsView[i][i2] = viewFindViewById;
                    viewFindViewById.setOnClickListener(MainCustomerJly.this);
                    if (viewFindViewById.getId() == R.id.main_mybmw) {
                        viewFindViewById.setOnLongClickListener(MainCustomerJly.this);
                    }
                    if (this.mMMIKeyHelper.getSectorSize(0) == 0) {
                        this.mMMIKeyHelper.initSectorSize(0, this.PageItemCount * this.PageCount);
                    }
                    this.mMMIKeyHelper.fillView(viewFindViewById, 5, 0, (this.PageItemCount * i) + i2);
                }
                i2++;
            }
            updateUiTheme();
            TextView textView = (TextView) viewInflate.findViewById(R.id.main_ie_text);
            if (textView != null) {
                this.mIEText = textView;
                updateIEText();
            }
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.main_phonelink_title);
            if (textView2 != null && SystemProperties.getBoolean("ro.release.car_play", false)) {
                textView2.setText(R.string.home_carplay);
            }
            View viewFindViewById2 = viewInflate.findViewById(R.id.main_mybmw_car_icon);
            if (viewFindViewById2 != null) {
                MainCustomerJly.this.mMainMyBmw = (ImageView) viewFindViewById2;
                MainCustomerJly.this.updateCarIcon(-1);
            }
            TextView textView3 = (TextView) viewInflate.findViewById(R.id.main_bt_description_text);
            if (textView3 != null) {
                this.mBTText = textView3;
                updateBluetooth(Utils.isBTConnected(MainCustomerJly.this.getContext()));
            }
            viewGroup.addView(viewInflate);
            if (i >= this.PageCount - 1) {
                MainCustomerJly.this.uiHandler.postDelayed(new Runnable() { // from class: com.android.launcher2.popuView.MainCustomerJly.MainPageAdapter.2
                    @Override // java.lang.Runnable
                    public void run() {
                        MainCustomerJly.this.mMainPageAdapter.setSelectView(R.id.main_zlink, true, true);
                        MainCustomerJly.this.setPageIndex(0, MainCustomerJly.this.getPageCount());
                        MainCustomerJly.this.updateMusicInfo(MainCustomerJly.this.musicTitle, MainCustomerJly.this.musicArtist);
                    }
                }, 100L);
            }
            return viewInflate;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
        }

        public void setSelectView(int i, boolean z, boolean z2) {
            Log.i(MainCustomerJly.TAG, "setSelectView: " + i);
            int i2 = -1;
            int i3 = 0;
            for (int i4 = 0; i4 < this.mMainPageIconsId.length; i4++) {
                int i5 = 0;
                while (true) {
                    int[][] iArr = this.mMainPageIconsId;
                    if (i5 >= iArr[i4].length) {
                        break;
                    }
                    if (i == iArr[i4][i5]) {
                        i2 = (this.PageItemCount * i4) + i5;
                        i3 = i4;
                        break;
                    }
                    i5++;
                }
                if (i2 >= 0) {
                    break;
                }
            }
            Log.i(MainCustomerJly.TAG, "setSelectView: got index=" + i2 + " page=" + i3);
            if (i2 >= 0) {
                this.mSelectIndex = i2;
                this.mMMIKeyHelper.setSelected(this.mMainPageIconsView[i3][i2 % this.PageItemCount]);
                if (z) {
                    MainCustomerJly.this.mMainPages.setCurrentItem(i3, z2);
                }
            }
        }

        public void setSelectViewByIndex(int i, boolean z, boolean z2) {
            Log.i(MainCustomerJly.TAG, "setSelectViewByIndex: " + i);
            if (i >= 0) {
                this.mSelectIndex = i;
                MMIKeyHelper mMIKeyHelper = this.mMMIKeyHelper;
                View[][] viewArr = this.mMainPageIconsView;
                int i2 = this.PageItemCount;
                mMIKeyHelper.setSelected(viewArr[i / i2][i % i2]);
                if (z) {
                    MainCustomerJly.this.mMainPages.setCurrentItem(this.mSelectIndex / this.PageItemCount, z2);
                }
            }
        }

        public boolean handlerKeyEvent(KeyEvent keyEvent) {
            return this.mMMIKeyHelper.handlerMMIKeys(keyEvent);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            if (MainCustomerJly.this.leftEdge == null || MainCustomerJly.this.rightEdge == null) {
                return;
            }
            MainCustomerJly.this.leftEdge.finish();
            MainCustomerJly.this.rightEdge.finish();
            MainCustomerJly.this.leftEdge.setSize(0, 0);
            MainCustomerJly.this.rightEdge.setSize(0, 0);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            int i2 = this.mSelectIndex / this.PageItemCount;
            Log.i(MainCustomerJly.TAG, "onPageSelected: page=" + i + " curPage=" + i2);
            if (i == 0) {
                if (ZHTDOEMManager.getUIThemeid() != 1) {
                    MainCustomerJly.this.mMainPageLeftArrow.setVisibility(4);
                } else {
                    MainCustomerJly.this.mMainPageLeftArrow.setVisibility(8);
                }
            } else if (i == this.PageCount - 1) {
                if (ZHTDOEMManager.getUIThemeid() != 1) {
                    MainCustomerJly.this.mMainPageRightArrow.setVisibility(4);
                } else {
                    MainCustomerJly.this.mMainPageRightArrow.setVisibility(8);
                }
            } else if (ZHTDOEMManager.getUIThemeid() != 1) {
                if (MainCustomerJly.this.mMainPageLeftArrow.getVisibility() != 0) {
                    MainCustomerJly.this.mMainPageLeftArrow.setVisibility(0);
                }
                if (MainCustomerJly.this.mMainPageRightArrow.getVisibility() != 0) {
                    MainCustomerJly.this.mMainPageRightArrow.setVisibility(0);
                }
            } else {
                MainCustomerJly.this.mMainPageRightArrow.setVisibility(8);
                MainCustomerJly.this.mMainPageLeftArrow.setVisibility(8);
            }
            if (i2 != i && (MainCustomerJly.this.mLauncher.getmMMIKeyRegion() == 1 || ZHTDOEMManager.getUIThemeid() != 1)) {
                int i3 = this.PageItemCount * i;
                Log.i(MainCustomerJly.TAG, "onPageSelected: index=" + i3);
                setSelectViewByIndex(i3, false, false);
            }
            if (ZHTDOEMManager.getUIThemeid() == 1) {
                MainCustomerJly.this.setPageIndex(i, this.PageCount);
            }
        }

        public int getSelectIndex() {
            return this.mSelectIndex;
        }

        public void updateUiTheme() {
            for (int i = 0; i < this.mMainPageIconsId_n.length; i++) {
                for (int i2 = 0; i2 < this.mMainPageIconsId[i].length; i2++) {
                    View[][] viewArr = this.mMainPageIconsView;
                    if (viewArr[i][i2] != null) {
                        switch (viewArr[i][i2].getId()) {
                            case R.id.main_app /* 2131230810 */:
                                this.mMainPageIconsView[i][i2].setBackgroundResource(this.jly_bmw_app_res[ZHTDOEMManager.getUIThemeSubid()]);
                                break;
                            case R.id.main_bt /* 2131230812 */:
                                this.mMainPageIconsView[i][i2].setBackgroundResource(this.jly_bmw_bt_res[ZHTDOEMManager.getUIThemeSubid()]);
                                break;
                            case R.id.main_carinfo /* 2131230815 */:
                                this.mMainPageIconsView[i][i2].setBackgroundResource(this.jly_bmw_carinfo_res[ZHTDOEMManager.getUIThemeSubid()]);
                                break;
                            case R.id.main_music /* 2131230829 */:
                                this.mMainPageIconsView[i][i2].setBackgroundResource(this.jly_bmw_music_res[ZHTDOEMManager.getUIThemeSubid()]);
                                break;
                            case R.id.main_mybmw /* 2131230833 */:
                                this.mMainPageIconsView[i][i2].setBackgroundResource(this.jly_bmw_car_res[ZHTDOEMManager.getUIThemeSubid()]);
                                break;
                            case R.id.main_navi /* 2131230837 */:
                                this.mMainPageIconsView[i][i2].setBackgroundResource(this.jly_bmw_navi_res[ZHTDOEMManager.getUIThemeSubid()]);
                                break;
                            case R.id.main_video /* 2131230864 */:
                                this.mMainPageIconsView[i][i2].setBackgroundResource(this.jly_bmw_video_res[ZHTDOEMManager.getUIThemeSubid()]);
                                break;
                            case R.id.main_zlink /* 2131230866 */:
                                this.mMainPageIconsView[i][i2].setBackgroundResource(this.jly_bmw_zlink_res[ZHTDOEMManager.getUIThemeSubid()]);
                                break;
                        }
                    }
                }
            }
        }
    }

    class SubPageAdapter extends PagerAdapter implements ViewPager.OnPageChangeListener {
        public static final int PageCount = 2;
        public static final int PageItemCount = 6;
        private View mDvrIcon;
        private TextView mDvrText;
        private TextView mDvrTitle;
        private TextView mIEText;
        private MMIKeyHelper mMMIKeyHelper;
        private int[][] mPageIconsId;
        private final int[][] mPageIconsId_n;
        private final View[][] mPageIconsView;
        private int[] mPageLayoutId;
        private final int[] mPageLayoutId_n;
        private int mSelectIndex;
        private ImageView[] mSubPageHightLight;

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return 2;
        }

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

        public SubPageAdapter() {
            int[] iArr = {R.layout.bmw_sub_page1, R.layout.bmw_sub_page2};
            this.mPageLayoutId_n = iArr;
            int[][] iArr2 = {new int[]{R.id.main_navi, R.id.main_ie, R.id.main_phonelink, R.id.main_aux, R.id.main_music, R.id.main_video}, new int[]{R.id.main_bt, R.id.main_dvr, R.id.main_app, R.id.main_mybmw, R.id.main_carinfo, R.id.main_setting}};
            this.mPageIconsId_n = iArr2;
            this.mPageIconsView = new View[][]{new View[6], new View[6]};
            this.mPageLayoutId = iArr;
            this.mPageIconsId = iArr2;
            this.mSelectIndex = -1;
            this.mSubPageHightLight = new ImageView[2];
            MMIKeyHelper mMIKeyHelper = new MMIKeyHelper(1);
            this.mMMIKeyHelper = mMIKeyHelper;
            mMIKeyHelper.setSelectMode(0);
            this.mMMIKeyHelper.setCustomCallback(new MMIKeyHelper.CallbackEx() { // from class: com.android.launcher2.popuView.MainCustomerJly.SubPageAdapter.1
                @Override // com.carocean.navicar.MMIKeyHelper.Callback
                public void onFocused(View view, boolean z) {
                }

                @Override // com.carocean.navicar.MMIKeyHelper.Callback
                public void onMenuUpEnd() {
                }

                @Override // com.carocean.navicar.MMIKeyHelper.Callback
                public void onTurnning(View view, boolean z) {
                }

                @Override // com.carocean.navicar.MMIKeyHelper.Callback
                public void onSelectChanged(View view, boolean z) {
                    if (z) {
                        int indexFromView = SubPageAdapter.this.getIndexFromView(view);
                        Log.i(MainCustomerJly.TAG, "onSelectChanged , index=" + indexFromView);
                        if (indexFromView >= 0) {
                            if (SubPageAdapter.this.mSelectIndex != indexFromView) {
                                SubPageAdapter.this.mSelectIndex = indexFromView;
                                MainCustomerJly.this.mSubPages.setCurrentItem(SubPageAdapter.this.mSelectIndex / 6, true);
                            }
                            if (MainCustomerJly.this.mMainPageAdapter.getSelectIndex() != SubPageAdapter.this.mSelectIndex) {
                                MainCustomerJly.this.mMainPageAdapter.setSelectViewByIndex(SubPageAdapter.this.mSelectIndex, true, false);
                            }
                            if (SubPageAdapter.this.mSelectIndex >= 0) {
                                int i = SubPageAdapter.this.mSelectIndex / 6;
                                if (SubPageAdapter.this.mSubPageHightLight[i] != null) {
                                    int i2 = SubPageAdapter.this.mSelectIndex % 6;
                                    if (i2 == 0) {
                                        SubPageAdapter.this.mSubPageHightLight[i].setImageResource(R.drawable.desk_pointtoright);
                                    } else if (i2 == 5) {
                                        SubPageAdapter.this.mSubPageHightLight[i].setImageResource(R.drawable.desk_pointtoleft);
                                    } else {
                                        SubPageAdapter.this.mSubPageHightLight[i].setImageResource(R.drawable.desk_pointto);
                                    }
                                    AbsoluteLayout.LayoutParams layoutParams = (AbsoluteLayout.LayoutParams) SubPageAdapter.this.mSubPageHightLight[i].getLayoutParams();
                                    layoutParams.x = ((View) view.getParent()).getLeft() - 8;
                                    layoutParams.y = view.getTop();
                                    SubPageAdapter.this.mSubPageHightLight[i].setLayoutParams(layoutParams);
                                }
                            }
                        }
                    }
                }

                @Override // com.carocean.navicar.MMIKeyHelper.Callback
                public void onEnter(View view) {
                    MainCustomerJly.this.onClick(view);
                }

                @Override // com.carocean.navicar.MMIKeyHelper.CallbackEx
                public void onMenuUp(int i, int i2) {
                    if (i2 != 0 && i2 == 1) {
                        MainCustomerJly.this.mSubPageAdapter.snap2Left();
                    }
                }

                @Override // com.carocean.navicar.MMIKeyHelper.CallbackEx
                public void onMenuDown(int i, int i2) {
                    if (i2 != 0 && i2 == 1) {
                        MainCustomerJly.this.mSubPageAdapter.snap2Right();
                    }
                }
            });
        }

        public void update360Icon() {
            int i = LauncherApplication.m360Type;
            int i2 = R.drawable.bmw_sub_lc_rev;
            if (i == 0 && this.mDvrIcon != null && this.mDvrTitle != null && this.mDvrText != null) {
                int i3 = SystemProperties.getInt("persist.sys.dvr_cvbs", 0);
                int i4 = R.drawable.bmw_sub_lc_wechat;
                if (i3 == 0) {
                    if (SystemProperties.getInt("persist.sys.front_camera", 0) == 0) {
                        if (Function.isAppInstalled(MainCustomerJly.this.getContext(), Function.WECHAT_PACKAGE_NAME)) {
                            View view = this.mDvrIcon;
                            if (!ZHTDOEMManager.isLCCustomer()) {
                                i4 = R.drawable.bmw_sub_weixin;
                            }
                            view.setBackgroundResource(i4);
                            this.mDvrTitle.setText(R.string.home_weixin);
                            this.mDvrText.setText(R.string.home_weixin_text);
                            return;
                        }
                    } else {
                        View view2 = this.mDvrIcon;
                        if (!ZHTDOEMManager.isLCCustomer()) {
                            i2 = R.drawable.bmw_sub_dvr;
                        }
                        view2.setBackgroundResource(i2);
                        this.mDvrTitle.setText(R.string.home_front_camera);
                        this.mDvrText.setText(R.string.home_360_text);
                        return;
                    }
                } else {
                    if (ZHTDOEMManager.isLCCustomer()) {
                        if (Function.isAppInstalled(MainCustomerJly.this.getContext(), Function.WECHAT_PACKAGE_NAME)) {
                            this.mDvrIcon.setBackgroundResource(R.drawable.bmw_sub_lc_wechat);
                            this.mDvrTitle.setText(R.string.home_weixin);
                            this.mDvrText.setText(R.string.home_weixin_text);
                            return;
                        }
                        return;
                    }
                    this.mDvrIcon.setBackgroundResource(R.drawable.bmw_sub_dvr);
                    this.mDvrTitle.setText(R.string.home_dvr);
                    this.mDvrText.setText(R.string.home_dvr_text);
                    return;
                }
            }
            View view3 = this.mDvrIcon;
            if (view3 == null || this.mDvrTitle == null || this.mDvrText == null) {
                return;
            }
            if (!ZHTDOEMManager.isLCCustomer()) {
                i2 = R.drawable.bmw_sub_dvr;
            }
            view3.setBackgroundResource(i2);
            this.mDvrTitle.setText(R.string.home_avm);
            this.mDvrText.setText(R.string.home_360_text);
        }

        public void updateIEText() {
            if (this.mIEText != null) {
                if (MainCustomerJly.this.getNetWorkStatus() > 0) {
                    this.mIEText.setText(R.string.home_browser_text2);
                } else {
                    this.mIEText.setText(R.string.home_browser_text1);
                }
            }
        }

        public int getSelectIndex() {
            return this.mSelectIndex;
        }

        public int getIndexFromView(View view) {
            int i = -1;
            for (int i2 = 0; i2 < this.mPageIconsView.length; i2++) {
                int i3 = 0;
                while (true) {
                    View[][] viewArr = this.mPageIconsView;
                    if (i3 >= viewArr[i2].length) {
                        break;
                    }
                    if (view == viewArr[i2][i3]) {
                        i = (i2 * 6) + i3;
                        break;
                    }
                    i3++;
                }
                if (i >= 0) {
                    break;
                }
            }
            return i;
        }

        public void snap2Right() {
            int i = this.mSelectIndex / 6;
            if (i < 1) {
                int i2 = i + 1;
                int i3 = i2 * 6;
                this.mSelectIndex = i3;
                this.mMMIKeyHelper.setSelected(this.mPageIconsView[i2][i3 % 6]);
                MainCustomerJly.this.mSubPages.setCurrentItem(i2, true);
            }
        }

        public void snap2Left() {
            int i = this.mSelectIndex / 6;
            if (i > 0) {
                int i2 = i - 1;
                int i3 = i2 * 6;
                this.mSelectIndex = i3;
                this.mMMIKeyHelper.setSelected(this.mPageIconsView[i2][i3 % 6]);
                MainCustomerJly.this.mSubPages.setCurrentItem(i2, true);
            }
        }

        public void release() {
            this.mMMIKeyHelper.clear();
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            int i2 = this.mSelectIndex / 6;
            Log.i(MainCustomerJly.TAG, "onPageSelected: page=" + i + " curPage=" + i2);
            if (i2 != i) {
                this.mSelectIndex = i * 6;
                Log.i(MainCustomerJly.TAG, "onPageSelected: mSelectIndex=" + this.mSelectIndex);
                setSelectViewByIndex(this.mSelectIndex, false, false);
            }
        }

        public void setSelectView(int i, boolean z, boolean z2) {
            Log.i(MainCustomerJly.TAG, "setSelectView: " + i);
            int i2 = -1;
            int i3 = 0;
            for (int i4 = 0; i4 < this.mPageIconsId.length; i4++) {
                int i5 = 0;
                while (true) {
                    int[][] iArr = this.mPageIconsId;
                    if (i5 >= iArr[i4].length) {
                        break;
                    }
                    if (i == iArr[i4][i5]) {
                        i2 = (i4 * 6) + i5;
                        i3 = i4;
                        break;
                    }
                    i5++;
                }
                if (i2 >= 0) {
                    break;
                }
            }
            Log.i(MainCustomerJly.TAG, "setSelectView: got index=" + i2 + " page=" + i3);
            if (i2 >= 0) {
                this.mSelectIndex = i2;
                this.mMMIKeyHelper.setSelected(this.mPageIconsView[i3][i2 % 6]);
                if (z) {
                    MainCustomerJly.this.mSubPages.setCurrentItem(i3, z2);
                }
            }
        }

        public void setSelectViewByIndex(int i, boolean z, boolean z2) {
            Log.i(MainCustomerJly.TAG, "setSelectViewByIndex: " + i);
            if (i >= 0) {
                this.mSelectIndex = i;
                this.mMMIKeyHelper.setSelected(this.mPageIconsView[i / 6][i % 6]);
                if (z) {
                    MainCustomerJly.this.mSubPages.setCurrentItem(this.mSelectIndex / 6, z2);
                }
            }
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            Log.i(MainCustomerJly.TAG, "instantiateItem, position = " + i);
            this.mPageLayoutId = this.mPageLayoutId_n;
            this.mPageIconsId = this.mPageIconsId_n;
            View viewInflate = LayoutInflater.from(MainCustomerJly.this.getContext()).inflate(this.mPageLayoutId[i], (ViewGroup) null);
            this.mSubPageHightLight[i] = (ImageView) viewInflate.findViewById(R.id.sub_page_highlight);
            int i2 = 0;
            while (true) {
                int[][] iArr = this.mPageIconsId;
                if (i2 >= iArr[i].length) {
                    break;
                }
                View viewFindViewById = viewInflate.findViewById(iArr[i][i2]);
                if (viewFindViewById != null) {
                    this.mPageIconsView[i][i2] = viewFindViewById;
                    viewFindViewById.setOnClickListener(MainCustomerJly.this);
                    if (this.mMMIKeyHelper.getSectorSize(0) == 0) {
                        this.mMMIKeyHelper.initSectorSize(0, 12);
                    }
                    this.mMMIKeyHelper.fillView(viewFindViewById, 5, 0, (i * 6) + i2);
                }
                i2++;
            }
            TextView textView = (TextView) viewInflate.findViewById(R.id.main_ie_text);
            if (textView != null) {
                this.mIEText = textView;
                updateIEText();
            }
            if (this.mPageLayoutId[i] == R.layout.bmw_sub_page2) {
                this.mDvrIcon = (FrameLayout) viewInflate.findViewById(R.id.main_dvr);
                this.mDvrTitle = (TextView) viewInflate.findViewById(R.id.main_dvr_title);
                this.mDvrText = (TextView) viewInflate.findViewById(R.id.main_dvr_text);
                update360Icon();
            }
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.main_phonelink_title);
            if (textView2 != null && SystemProperties.getBoolean("ro.release.car_play", false)) {
                textView2.setText(R.string.home_carplay);
            }
            viewGroup.addView(viewInflate);
            if (i >= 1) {
                MainCustomerJly.this.uiHandler.postDelayed(new Runnable() { // from class: com.android.launcher2.popuView.MainCustomerJly.SubPageAdapter.2
                    @Override // java.lang.Runnable
                    public void run() {
                        MainCustomerJly.this.mSubPageAdapter.setSelectView(R.id.main_navi, true, true);
                    }
                }, 100L);
            }
            return viewInflate;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
        }

        public boolean handlerKeyEvent(KeyEvent keyEvent) {
            return this.mMMIKeyHelper.handlerMMIKeys(keyEvent);
        }
    }

    public boolean handleKeyEvent(KeyEvent keyEvent) {
        if (this.mMainPageLayout.getVisibility() == 0) {
            return this.mMainPageAdapter.handlerKeyEvent(keyEvent);
        }
        return this.mSubPageAdapter.handlerKeyEvent(keyEvent);
    }

    private static class UIHandler extends HandlerWeakReference<MainCustomerJly> {
        public UIHandler(MainCustomerJly mainCustomerJly) {
            super(mainCustomerJly);
        }
    }

    private class SystemStatusConnectObserver extends ContentObserver {
        public SystemStatusConnectObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            Log.d(MainCustomerJly.TAG, "onChange: " + uri.toString());
            if (uri.toString().equals(MainCustomerJly.URI_SYS_BT_CONNECT_STATUS)) {
                MainCustomerJly mainCustomerJly = MainCustomerJly.this;
                mainCustomerJly.updateBluetooth(Utils.isBTConnected(mainCustomerJly.mLauncher));
            }
        }
    }
}
