package com.android.launcher2.popuView;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
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
import android.os.Message;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.android.launcher2.ApplicationInfo;
import com.android.launcher2.ItemInfo;
import com.android.launcher2.Launcher;
import com.android.launcher2.LauncherApplication;
import com.android.launcher2.LauncherModel;
import com.android.launcher2.Utilities;
import com.android.launcher2.uitl.Function;
import com.android.launcher2.uitl.L;
import com.android.launcher2.uitl.Utils;
import com.android.launcher2.uitl.Weather;
import com.carocean.navicar.HandlerWeakReference;
import com.carocean.navicar.MMIKeyHelper;
import com.carocean.navicar.Navi;
import com.carocean.navicar.NaviStatus;
import com.carocean.navicar.PerSysDef;
import com.carocean.navicar.util.ZHTDOEMManager;
import com.yecon.launcher1.R;
import java.lang.reflect.Field;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class MainCustomer extends FrameLayout implements View.OnClickListener, View.OnLongClickListener {
    public static final String ACTION_CITY_INFO_UPDATE = "com.autochips.action.city.INFO_UPDATE";
    public static final String ACTION_CLOCK_TYPE = "com.yecon.action.ACTION_CLOCK_TYPE";
    public static final String ACTION_SWITCH_VIEW = "com.yecon.action.ACTION_SWITCH_VIEW";
    public static final String ACTION_WEATHER_INFO_UPDATE = "com.autochips.action.weathe.INFO_UPDATE";
    public static final String ACTION_WEATHER_ON_CLICK = "com.autochips.action.weathe.ON_CLICK";
    public static final String ID8_PAGE_ADD1_COMPONENTNAME = "id8.page.add1.componentname";
    public static final String ID8_PAGE_ADD_COMPONENTNAME = "id8.page.add.componentname";
    private static final int MSG_START = 10000;
    private static final int MSG_UPDATE_CAR_INFO = 10001;
    public static final String PERSYS_CAR_FLAG_INDEX = "persist.sys.car.flag.index";
    public static final String PERSYS_CLOCK_TYPE = "persist.sys.clock_type";
    public static final String PERSYS_DVR_CVBS = "persist.sys.dvr_cvbs";
    public static final String PERSYS_FRONT_CAMERA = "persist.sys.front_camera";
    public static final String PERSYS_HOST_TYPE = "persist.sys.host_type";
    public static final String PERSYS_ORIGINAL_BT = "persist.sys.original_bt";
    private static final String PREFS_CLOCK_WEATHER = "mc.clockweather";
    public static final String RO_RELEASE_CARPLAY = "ro.release.car_play";
    private static final String TAG = "MainCustomer";
    private static final String URI_MEDIA_MUSIC_INFO = "content://com.carocean.status.provider/media/MEDIA_MUSIC_INFO";
    private static final String URI_SOURCE_ID = "content://com.carocean.status.provider/sys/SYS_SOURCE_ID";
    private static final String URI_SYS_BT_CONNECT_STATUS = "content://com.carocean.status.provider/sys/SYS_BT_CONNECT_STATUS";
    public static String[] conditionImages;
    private static String[] conditionItems;
    private final int AUTO_SHOWTIME_TIME;
    private final int MSG_SHOWTIME;
    private View clock;
    private CompassManager compassManager;
    private byte[] data0x12;
    private byte[] data0x18;
    ImageView iv_pm25_pic;
    ImageView iv_time;
    ImageView iv_time2;
    ImageView iv_weather;
    private EdgeEffect leftEdge;
    private ArrayList<ApplicationInfo> mApps;
    BroadcastReceiver mBroadcastReceiver;
    private final Calendar mCalendar;
    private ImageView mCarBg;
    int[] mCarFlagId;
    private boolean mDotFlip;
    private final int mGap;
    private final int[] mIconsId;
    private int[] mImageResArray;
    private LayoutInflater mInflater;
    private Launcher mLauncher;
    View mLayoutDatetime;
    private View mMainMyBmw;
    public MainPageAdapter mMainPageAdapter;
    public ImageView mMainPageBmwCar;
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
    private TextView mThemeTv;
    private Bitmap mTimeBitmap;
    private Bitmap mTimeBitmap2;
    private Canvas mTimeCanvas;
    private Canvas mTimeCanvas2;
    LinearLayout mWeatherPM25Layout;
    private String musicArtist;
    private String musicTitle;
    private EdgeEffect rightEdge;
    private boolean showOilUnitGal;
    private boolean showTempUnitF;
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
    private View viewpagerRoot;
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

    public MainCustomer(Context context) {
        this(context, null);
    }

    public MainCustomer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MainCustomer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mGap = 2;
        this.mImageResArray = new int[]{R.drawable.t0, R.drawable.t1, R.drawable.t2, R.drawable.t3, R.drawable.t4, R.drawable.t5, R.drawable.t6, R.drawable.t7, R.drawable.t8, R.drawable.t9};
        this.mIconsId = new int[0];
        this.mPMQualityPicId = new int[]{R.drawable.pm_level0, R.drawable.pm_level1, R.drawable.pm_level2, R.drawable.pm_level3, R.drawable.pm_level4, R.drawable.pm_level5};
        this.mPmQualityArray = null;
        this.mCarFlagId = new int[]{R.drawable.mybmw_zlh_car0, R.drawable.mybmw_zlh_car1, R.drawable.mybmw_zlh_car2, R.drawable.mybmw_zlh_car3, R.drawable.mybmw_zlh_car4, R.drawable.mybmw_zlh_car5, R.drawable.mybmw_zlh_car6, R.drawable.mybmw_zlh_car7, R.drawable.mybmw_zlh_car8, R.drawable.mybmw_zlh_car9};
        this.MSG_SHOWTIME = 1;
        this.AUTO_SHOWTIME_TIME = 8000;
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.launcher2.popuView.MainCustomer.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if ("com.autochips.action.weathe.INFO_UPDATE".equals(action)) {
                    MainCustomer.this.updateWeather(context2, intent);
                } else if ("com.autochips.action.city.INFO_UPDATE".equals(action)) {
                    MainCustomer.this.updateCity(context2, intent);
                } else if ("com.yecon.action.ACTION_CLOCK_TYPE".equals(action)) {
                    MainCustomer.this.setClockVisibility();
                } else {
                    if ("com.yecon.action.ACTION_SWITCH_VIEW".equals(action)) {
                        int intExtra = intent.getIntExtra("id", 0);
                        if (intExtra == 0) {
                            MainCustomer.this.showMain1();
                        } else if (1 == intExtra) {
                            MainCustomer.this.showMain2();
                        }
                    } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                        if (MainCustomer.this.mMainPageAdapter != null) {
                            MainCustomer.this.mMainPageAdapter.updateIEText();
                        }
                        if (MainCustomer.this.mSubPageAdapter != null) {
                            MainCustomer.this.mSubPageAdapter.updateIEText();
                        }
                    } else if (action.equals("action.lexus.update360icon")) {
                        MainCustomer.this.update360Icon();
                    } else if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(action)) {
                        MainCustomer.this.updateBluetooth(intent.getIntExtra("android.bluetooth.adapter.extra.CONNECTION_STATE", 0) == 1);
                    } else if (Navi.Action.ACTION_SAVE_FACTORY_DATA.equals(intent.getAction())) {
                        MainCustomer.this.showOilUnitGal = SystemProperties.getInt(PerSysDef.PERSYS_OIL_UINT_GAL, 0) == 1;
                        MainCustomer.this.showTempUnitF = SystemProperties.getInt(PerSysDef.PERSYS_TEMP_UINT_F, 0) == 1;
                        if (MainCustomer.this.data0x12 != null) {
                            MainCustomer mainCustomer = MainCustomer.this;
                            mainCustomer.refreshCarInfoViews(18, mainCustomer.data0x12);
                        }
                        if (MainCustomer.this.data0x18 != null) {
                            MainCustomer mainCustomer2 = MainCustomer.this;
                            mainCustomer2.refreshCarInfoViews(24, mainCustomer2.data0x18);
                        }
                        LauncherApplication.readBackgroundWhiteList();
                    }
                }
                MainCustomer.this.updateDateTime(context2);
            }
        };
        this.showTempUnitF = false;
        this.showOilUnitGal = false;
        this.musicTitle = "";
        this.musicArtist = "";
        this.mDotFlip = true;
        this.mLauncher = (Launcher) context;
        this.mApps = new ArrayList<>();
        this.uiHandler = new UIHandler(this);
        this.systemStatusConnectObserver = new SystemStatusConnectObserver(this.uiHandler);
        this.showTempUnitF = SystemProperties.getInt(PerSysDef.PERSYS_TEMP_UINT_F, 0) == 1;
        this.showOilUnitGal = SystemProperties.getInt(PerSysDef.PERSYS_OIL_UINT_GAL, 0) == 1;
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
        intentFilter.addAction(Navi.Action.ACTION_SAVE_FACTORY_DATA);
        getContext().registerReceiver(this.mBroadcastReceiver, intentFilter);
        this.mCalendar = Calendar.getInstance();
        this.mTimeBitmap = Bitmap.createBitmap(getResources().getDimensionPixelSize(R.dimen.time_imageview_layout_width), getResources().getDimensionPixelSize(R.dimen.time_imageview_layout_height), Bitmap.Config.ARGB_8888);
        this.mTimeCanvas = new Canvas(this.mTimeBitmap);
        this.mTimeBitmap2 = Bitmap.createBitmap(getResources().getDimensionPixelSize(R.dimen.time_imageview_layout_width2), getResources().getDimensionPixelSize(R.dimen.time_imageview_layout_height2), Bitmap.Config.ARGB_8888);
        this.mTimeCanvas2 = new Canvas(this.mTimeBitmap2);
        this.mSharedPrefs = context.getSharedPreferences(LauncherApplication.getSharedPreferencesKey(), 0);
        notifyStatusBar(0);
        context.getContentResolver().registerContentObserver(Uri.parse(URI_SYS_BT_CONNECT_STATUS), true, this.systemStatusConnectObserver);
        context.getContentResolver().registerContentObserver(Uri.parse(URI_MEDIA_MUSIC_INFO), true, this.systemStatusConnectObserver);
        context.getContentResolver().registerContentObserver(Uri.parse(URI_SOURCE_ID), true, this.systemStatusConnectObserver);
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

    void updateMainPageBmwCar(int i) {
        this.mMainPageAdapter.updateMainPageBmwCar(i);
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
        ViewPager viewPager = (ViewPager) findViewById(R.id.main_page_container);
        this.mMainPages = viewPager;
        viewPager.setOffscreenPageLimit(3);
        this.mMainPages.setOnPageChangeListener(this.mMainPageAdapter);
        this.mMainPages.setAdapter(this.mMainPageAdapter);
        View viewFindViewById9 = findViewById(R.id.viewpager_root);
        this.viewpagerRoot = viewFindViewById9;
        if (viewFindViewById9 != null) {
            viewFindViewById9.setOnTouchListener(new View.OnTouchListener() { // from class: com.android.launcher2.popuView.MainCustomer.2
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view3, MotionEvent motionEvent) {
                    return MainCustomer.this.mMainPages.dispatchTouchEvent(motionEvent);
                }
            });
        }
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
        ViewPager viewPager2 = (ViewPager) findViewById(R.id.sub_page_container);
        this.mSubPages = viewPager2;
        viewPager2.setOffscreenPageLimit(2);
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
            if (ZHTDOEMManager.getUIThemeid() == 1 || ZHTDOEMManager.ensureID8() || ZHTDOEMManager.getUIThemeid() == 3) {
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
            case R.id.main_add /* 2131230806 */:
                ApplicationInfo applicationInfo = (ApplicationInfo) view.getTag();
                if (applicationInfo != null) {
                    Function.startActivity(getContext(), applicationInfo.intent);
                } else {
                    ID8AddViewDialog iD8AddViewDialog = new ID8AddViewDialog(this.mLauncher, this.mApps);
                    iD8AddViewDialog.setOnAppSelecteChangedListener(new ID8AddViewDialog.OnAppSelectedChangedListener() { // from class: com.android.launcher2.popuView.MainCustomer.3
                        @Override // com.android.launcher2.popuView.ID8AddViewDialog.OnAppSelectedChangedListener
                        public void onAppSelectedChanged(int i, ApplicationInfo applicationInfo2) {
                            if (R.id.main_add == i) {
                                MainCustomer.this.mSharedPrefs.edit().putString(MainCustomer.ID8_PAGE_ADD_COMPONENTNAME, applicationInfo2.intent.getComponent().flattenToString()).apply();
                                MainCustomer.this.mMainPageAdapter.updateID8AddViewInfo();
                            }
                        }
                    });
                    iD8AddViewDialog.setViewID(view.getId());
                    iD8AddViewDialog.show();
                }
                break;
            case R.id.main_add_del /* 2131230807 */:
                this.mSharedPrefs.edit().putString(ID8_PAGE_ADD_COMPONENTNAME, "").apply();
                this.mMainPageAdapter.updateID8AddViewInfo();
                break;
            case R.id.main_app /* 2131230810 */:
                ((Launcher) getContext()).onClickAllAppsButton(view);
                break;
            case R.id.main_aux /* 2131230811 */:
                Function.onAUX();
                break;
            case R.id.main_bt /* 2131230812 */:
                Function.onBT(getContext());
                break;
            case R.id.main_carinfo /* 2131230815 */:
                Function.onCarInfo(getContext());
                break;
            case R.id.main_dvr /* 2131230822 */:
                Function.openRear360();
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
            case R.id.main_theme /* 2131230855 */:
                new ID8ThemeDialog(getContext()).show();
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
        if (ZHTDOEMManager.getUIThemeid() == 0) {
            if (this.mMainPageLayout.getVisibility() == 0) {
                showMain2();
            } else {
                showMain1();
            }
        }
    }

    public void updateCarIcon(boolean z) {
        if (ZHTDOEMManager.isMRWCustomer()) {
            if (ZHTDOEMManager.getUIThemeid() != 1 || this.mMainMyBmw == null) {
                return;
            }
            int i = this.mSharedPrefs.getInt("caricon", 0);
            if (z) {
                int i2 = i != 0 ? 0 : 1;
                this.mSharedPrefs.edit().putInt("caricon", i2).commit();
                i = i2;
            }
            if (i == 0) {
                this.mMainMyBmw.setBackgroundResource(R.drawable.bmw_main_new_mybmw_mrw);
            } else {
                this.mMainMyBmw.setBackgroundResource(R.drawable.bmw_main_new_mybmw_mrw_suv);
            }
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (view.getId() != R.id.main_mybmw) {
            return true;
        }
        CarFlagDialog carFlagDialog = new CarFlagDialog(this.mLauncher, this.mCarFlagId);
        carFlagDialog.setOnCarFlagChangedListener(new CarFlagDialog.OnCarFlagChangedListener() { // from class: com.android.launcher2.popuView.MainCustomer.4
            @Override // com.android.launcher2.popuView.CarFlagDialog.OnCarFlagChangedListener
            public void onCarFlagChanged(int i) {
                if (i < 0 || i >= MainCustomer.this.mCarFlagId.length) {
                    return;
                }
                SystemProperties.set(MainCustomer.PERSYS_CAR_FLAG_INDEX, String.valueOf(i));
                MainCustomer.this.updateMainPageBmwCar(i);
            }
        });
        carFlagDialog.show();
        return true;
    }

    public void updateID8Theme(int i) {
        if (ZHTDOEMManager.ensureID8()) {
            if (this.mMainPageLayout.getVisibility() == 0) {
                this.mMainPageAdapter.updateID8Theme(i);
            } else {
                this.mSubPageAdapter.updateID8Theme(i);
            }
        }
    }

    public void updateApps(ArrayList<ApplicationInfo> arrayList) {
        if (ZHTDOEMManager.ensureID8()) {
            if (this.mMainPageLayout.getVisibility() == 0) {
                this.mMainPageAdapter.updateApps(arrayList);
            } else {
                this.mSubPageAdapter.updateApps(arrayList);
            }
        }
    }

    public void setApps(ArrayList<ApplicationInfo> arrayList) {
        if (ZHTDOEMManager.ensureID8()) {
            if (this.mMainPageLayout.getVisibility() == 0) {
                this.mMainPageAdapter.setApps(arrayList);
            } else {
                this.mSubPageAdapter.setApps(arrayList);
            }
        }
    }

    public void addApps(ArrayList<ApplicationInfo> arrayList) {
        if (ZHTDOEMManager.ensureID8()) {
            if (this.mMainPageLayout.getVisibility() == 0) {
                this.mMainPageAdapter.addApps(arrayList);
            } else {
                this.mSubPageAdapter.addApps(arrayList);
            }
        }
    }

    public void removeApps(ArrayList<String> arrayList) {
        if (ZHTDOEMManager.ensureID8()) {
            if (this.mMainPageLayout.getVisibility() == 0) {
                this.mMainPageAdapter.removeApps(arrayList);
            } else {
                this.mSubPageAdapter.removeApps(arrayList);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeAppsWithoutInvalidate(ArrayList<ApplicationInfo> arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ApplicationInfo applicationInfo = arrayList.get(i);
            int iFindAppByComponent = findAppByComponent(this.mApps, applicationInfo);
            if (iFindAppByComponent > -1) {
                this.mApps.remove(iFindAppByComponent);
                if (L.DEBUG) {
                    L.d(TAG, "removeAppsWithoutInvalidate: removeIndex = " + iFindAppByComponent + ", ApplicationInfo info = " + applicationInfo + ", this = " + this);
                }
            }
        }
    }

    private int findAppByComponent(List<ApplicationInfo> list, ApplicationInfo applicationInfo) {
        ComponentName component = applicationInfo.intent.getComponent();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i).intent.getComponent().equals(component)) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ApplicationInfo findAppByComponentName(List<ApplicationInfo> list, String str) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ApplicationInfo applicationInfo = list.get(i);
            if (applicationInfo.intent.getComponent().flattenToString().equals(str)) {
                return applicationInfo;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAppsWithoutInvalidate(ArrayList<ApplicationInfo> arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ApplicationInfo applicationInfo = arrayList.get(i);
            int iBinarySearch = Collections.binarySearch(this.mApps, applicationInfo, LauncherModel.getAppNameComparator());
            if (iBinarySearch < 0) {
                this.mApps.add(applicationInfo);
                if (L.DEBUG) {
                    L.d(TAG, "addAppsWithoutInvalidate: mApps size = " + this.mApps.size() + ", index = " + iBinarySearch + ", info = " + applicationInfo + ", this = " + this);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeAppsWithPackageNameWithoutInvalidate(ArrayList<String> arrayList) {
        for (String str : arrayList) {
            int iFindAppByPackage = findAppByPackage(this.mApps, str);
            while (iFindAppByPackage > -1) {
                this.mApps.remove(iFindAppByPackage);
                iFindAppByPackage = findAppByPackage(this.mApps, str);
            }
        }
    }

    private int findAppByPackage(List<ApplicationInfo> list, String str) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ApplicationInfo applicationInfo = list.get(i);
            if (ItemInfo.getPackageName(applicationInfo.intent).equals(str)) {
                boolean zIsComponentEnabled = Utilities.isComponentEnabled(getContext(), applicationInfo.intent.getComponent());
                L.d(TAG, "findAppByPackage: i = " + i + ",name = " + applicationInfo.intent.getComponent() + ",isComponentEnabled = " + zIsComponentEnabled);
                if (!zIsComponentEnabled) {
                    return i;
                }
            }
        }
        return -1;
    }

    class MainPageTransformer implements ViewPager.PageTransformer {
        @Override // androidx.viewpager.widget.ViewPager.PageTransformer
        public void transformPage(View view, float f) {
        }

        MainPageTransformer() {
        }
    }

    public class MainPageAdapter extends PagerAdapter implements ViewPager.OnPageChangeListener {
        public int PageCount;
        public int PageItemCount;
        private final int[] bmw_id8_add_res;
        private final int[] bmw_id8_bt_res;
        private final int[] bmw_id8_car_res;
        private final int[] bmw_id8_carinfo_res;
        private final int[] bmw_id8_down_select_res;
        private final int[] bmw_id8_music_res;
        private final int[] bmw_id8_navi_res;
        private final int[] bmw_id8_settings_res;
        private final int[] bmw_id8_theme_res;
        private final int[] bmw_id8_title_color;
        private final int[] bmw_id8_up_select_res;
        private final int[] bmw_id8_video_res;
        private DecimalFormat dfone;
        boolean mBTConnected;
        private TextView mBTText;
        private TextView mCanOil;
        private TextView mCanParking;
        private TextView mCanSafe;
        private TextView mCanTmp;
        private View mDvrIcon;
        private TextView mDvrText;
        private TextView mDvrTitle;
        private final View[][] mID8MainPageIconsView;
        private final TextView[][] mID8MainPageTitlesView;
        private TextView mIEText;
        public MMIKeyHelper mMMIKeyHelper;
        private View mMainAdd;
        private ImageView mMainAddDel;
        private ImageView mMainAddSrcImg;
        private TextView mMainAddTitle;
        private int[][] mMainPageIconsId;
        private final int[][] mMainPageIconsId_id8_n;
        private final int[][] mMainPageIconsId_n;
        private final int[][] mMainPageIconsId_new_lc_n;
        private final int[][] mMainPageIconsId_new_lfe_n;
        private final int[][] mMainPageIconsId_new_mrw_n;
        private final int[][] mMainPageIconsId_new_n;
        private final int[][] mMainPageIconsId_new_yzg_n;
        private final int[][] mMainPageIconsId_new_zlh_n;
        private final View[][] mMainPageIconsView;
        private int[] mMainPageLayoutId;
        private final int[] mMainPageLayoutId_id8_n;
        private final int[] mMainPageLayoutId_n;
        private final int[] mMainPageLayoutId_new_lc_n;
        private final int[] mMainPageLayoutId_new_lfe_n;
        private final int[] mMainPageLayoutId_new_mrw_n;
        private final int[] mMainPageLayoutId_new_n;
        private final int[] mMainPageLayoutId_new_yzg_n;
        private final int[] mMainPageLayoutId_new_zlh_n;
        private final int[][] mMainPageTitlesId_id8_n;
        private int mSelectIndex;

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        public int getIndexFromView(View view) {
            int i = -1;
            if (ZHTDOEMManager.ensureID8()) {
                for (int i2 = 0; i2 < this.mID8MainPageIconsView.length; i2++) {
                    int i3 = 0;
                    while (true) {
                        View[][] viewArr = this.mID8MainPageIconsView;
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
            } else {
                for (int i4 = 0; i4 < this.mMainPageIconsView.length; i4++) {
                    int i5 = 0;
                    while (true) {
                        View[][] viewArr2 = this.mMainPageIconsView;
                        if (i5 >= viewArr2[i4].length) {
                            break;
                        }
                        if (view == viewArr2[i4][i5]) {
                            i = (this.PageItemCount * i4) + i5;
                            break;
                        }
                        i5++;
                    }
                    if (i >= 0) {
                        break;
                    }
                }
            }
            return i;
        }

        public void updateMainPageBmwCar(int i) {
            if (i < 0) {
                i = 0;
            } else if (i >= MainCustomer.this.mCarFlagId.length) {
                i = MainCustomer.this.mCarFlagId.length - 1;
            }
            if (MainCustomer.this.mMainPageBmwCar != null) {
                MainCustomer.this.mMainPageBmwCar.setImageResource(MainCustomer.this.mCarFlagId[i]);
            }
        }

        public void update360Icon() {
            int i = LauncherApplication.m360Type;
            int i2 = R.drawable.bmw_main_lc_rev;
            if (i == 0 && this.mDvrIcon != null && this.mDvrTitle != null && this.mDvrText != null) {
                int i3 = SystemProperties.getInt("persist.sys.dvr_cvbs", 0);
                int i4 = R.drawable.bmw_main_lc_wechat;
                if (i3 == 0) {
                    if (SystemProperties.getInt("persist.sys.front_camera", 0) == 0) {
                        if (Function.isAppInstalled(MainCustomer.this.getContext(), Function.WECHAT_PACKAGE_NAME)) {
                            View view = this.mDvrIcon;
                            if (!ZHTDOEMManager.isLCCustomer()) {
                                i4 = R.drawable.bmw_main_weixin;
                            }
                            view.setBackgroundResource(i4);
                            this.mDvrTitle.setText(R.string.home_weixin);
                            this.mDvrText.setText(R.string.home_weixin_text);
                            return;
                        }
                    } else {
                        View view2 = this.mDvrIcon;
                        if (!ZHTDOEMManager.isLCCustomer()) {
                            i2 = R.drawable.bmw_main_dvr;
                        }
                        view2.setBackgroundResource(i2);
                        this.mDvrTitle.setText(R.string.home_front_camera);
                        this.mDvrText.setText(R.string.home_360_text);
                        return;
                    }
                } else {
                    if (ZHTDOEMManager.isLCCustomer()) {
                        if (Function.isAppInstalled(MainCustomer.this.getContext(), Function.WECHAT_PACKAGE_NAME)) {
                            this.mDvrIcon.setBackgroundResource(R.drawable.bmw_main_lc_wechat);
                            this.mDvrTitle.setText(R.string.home_weixin);
                            this.mDvrText.setText(R.string.home_weixin_text);
                            return;
                        }
                        return;
                    }
                    this.mDvrIcon.setBackgroundResource(R.drawable.bmw_main_dvr);
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
                i2 = R.drawable.bmw_main_dvr;
            }
            view3.setBackgroundResource(i2);
            this.mDvrTitle.setText(R.string.home_avm);
            this.mDvrText.setText(R.string.home_360_text);
        }

        public final void updateBluetooth(boolean z) {
            Log.d(MainCustomer.TAG, "updateBluetooth connected " + z + ", mBTText = " + this.mBTText);
            if (this.mBTConnected != z) {
                TextView textView = this.mBTText;
                if (textView != null) {
                    textView.setText(z ? R.string.home_bt_connected : R.string.home_bt_disconnected);
                }
                this.mBTConnected = z;
            }
        }

        public void updateIEText() {
            if (this.mIEText != null) {
                if (MainCustomer.this.getNetWorkStatus() > 0) {
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
                this.mSelectIndex = i2 * i4;
                if (ZHTDOEMManager.ensureID8()) {
                    this.mMMIKeyHelper.setSelected(this.mID8MainPageIconsView[i4][this.mSelectIndex % this.PageItemCount]);
                } else {
                    this.mMMIKeyHelper.setSelected(this.mMainPageIconsView[i4][this.mSelectIndex % this.PageItemCount]);
                }
                MainCustomer.this.mMainPages.setCurrentItem(i4, true);
            }
        }

        public void snap2Left() {
            int i = this.mSelectIndex;
            int i2 = this.PageItemCount;
            int i3 = i / i2;
            if (i3 > 0) {
                int i4 = i3 - 1;
                this.mSelectIndex = i2 * i4;
                if (ZHTDOEMManager.ensureID8()) {
                    this.mMMIKeyHelper.setSelected(this.mID8MainPageIconsView[i4][this.mSelectIndex % this.PageItemCount]);
                } else {
                    this.mMMIKeyHelper.setSelected(this.mMainPageIconsView[i4][this.mSelectIndex % this.PageItemCount]);
                }
                MainCustomer.this.mMainPages.setCurrentItem(i4, true);
            }
        }

        public void release() {
            this.mMMIKeyHelper.clear();
        }

        public MainPageAdapter() {
            int[] iArr = {R.layout.bmw_main_page1, R.layout.bmw_main_page2, R.layout.bmw_main_page3};
            this.mMainPageLayoutId_n = iArr;
            int[][] iArr2 = {new int[]{R.id.main_navi, R.id.main_music, R.id.main_video}, new int[]{R.id.main_bt, R.id.main_phonelink, R.id.main_app}, new int[]{R.id.main_mybmw, R.id.main_carinfo, R.id.main_setting}};
            this.mMainPageIconsId_n = iArr2;
            this.mMainPageLayoutId_new_lfe_n = new int[]{R.layout.bmw_main_new_page1_lfe, R.layout.bmw_main_new_page2_lfe, R.layout.bmw_main_new_page3_lfe};
            this.mMainPageIconsId_new_lfe_n = new int[][]{new int[]{R.id.main_navi, R.id.main_bt, R.id.main_music}, new int[]{R.id.main_video, R.id.main_app, R.id.main_phonelink}, new int[]{R.id.main_mybmw, R.id.main_carinfo, R.id.main_setting}};
            this.mMainPageLayoutId_new_n = new int[]{R.layout.bmw_main_new_page1, R.layout.bmw_main_new_page2, R.layout.bmw_main_new_page3};
            this.mMainPageIconsId_new_n = new int[][]{new int[]{R.id.main_navi, R.id.main_music, R.id.main_bt}, new int[]{R.id.main_mybmw, R.id.main_app, R.id.main_carinfo}, new int[]{R.id.main_video, R.id.main_setting, R.id.main_zlink}};
            this.mMainPageLayoutId_new_zlh_n = new int[]{R.layout.bmw_main_new_page1, R.layout.bmw_main_new_page2_zlh, R.layout.bmw_main_new_page3};
            this.mMainPageIconsId_new_zlh_n = new int[][]{new int[]{R.id.main_navi, R.id.main_music, R.id.main_bt}, new int[]{R.id.main_mybmw, R.id.main_app, R.id.main_carinfo}, new int[]{R.id.main_video, R.id.main_setting, R.id.main_zlink}};
            this.mMainPageLayoutId_new_mrw_n = new int[]{R.layout.bmw_main_new_page1_mrw, R.layout.bmw_main_new_page2_mrw, R.layout.bmw_main_new_page3_mrw};
            this.mMainPageIconsId_new_mrw_n = new int[][]{new int[]{R.id.main_navi, R.id.main_music, R.id.main_bt}, new int[]{R.id.main_mybmw, R.id.main_app, R.id.main_carinfo}, new int[]{R.id.main_video, R.id.main_setting, R.id.main_zlink}};
            this.mMainPageLayoutId_new_yzg_n = new int[]{R.layout.bmw_main_new_page1_yzg, R.layout.bmw_main_new_page2_yzg, R.layout.bmw_main_new_page3_yzg};
            this.mMainPageIconsId_new_yzg_n = new int[][]{new int[]{R.id.main_navi, R.id.main_bt}, new int[]{R.id.main_music, R.id.main_video}, new int[]{R.id.main_mybmw, R.id.main_carinfo}};
            this.mMainPageLayoutId_new_lc_n = new int[]{R.layout.bmw_main_new_page1_lc, R.layout.bmw_main_new_page2_lc, R.layout.bmw_main_new_page3_lc};
            this.mMainPageIconsId_new_lc_n = new int[][]{new int[]{R.id.main_navi, R.id.main_music, R.id.main_bt}, new int[]{R.id.main_video, R.id.main_ie, R.id.main_setting}, new int[]{R.id.main_mybmw, R.id.main_app, R.id.main_carinfo}};
            this.mMainPageLayoutId_id8_n = new int[]{R.layout.bmw_main_id8_page1, R.layout.bmw_main_id8_page2, R.layout.bmw_main_id8_page3};
            this.mMainPageIconsId_id8_n = new int[][]{new int[]{R.id.main_navi, R.id.main_music, R.id.main_bt}, new int[]{R.id.main_video, R.id.main_mybmw, R.id.main_setting}, new int[]{R.id.main_theme, R.id.main_carinfo, R.id.main_add}};
            this.mMainPageTitlesId_id8_n = new int[][]{new int[]{R.id.main_navi_title, R.id.main_music_title0, R.id.main_bt_title}, new int[]{R.id.main_video_title, R.id.main_mybmw_title, R.id.main_setting_title}, new int[]{R.id.main_theme_title, R.id.main_carinfo_title, R.id.main_add_title}};
            this.mMainPageLayoutId = iArr;
            this.mMainPageIconsId = iArr2;
            this.mMainPageIconsView = new View[][]{new View[3], new View[3], new View[3], new View[3]};
            this.mID8MainPageIconsView = new View[][]{new View[3], new View[3], new View[3]};
            this.mID8MainPageTitlesView = new TextView[][]{new TextView[3], new TextView[3], new TextView[3]};
            this.mSelectIndex = -1;
            this.mBTConnected = false;
            this.dfone = new DecimalFormat("#0.0");
            this.bmw_id8_navi_res = new int[]{R.drawable.bmw_id8_orange_desk_navi_n, R.drawable.bmw_id8_orange_desk_navi_n, R.drawable.bmw_id8_red_desk_navi_n, R.drawable.bmw_id8_blue_desk_navi_n};
            this.bmw_id8_music_res = new int[]{R.drawable.bmw_id8_orange_desk_music_n, R.drawable.bmw_id8_orange_desk_music_n, R.drawable.bmw_id8_red_desk_music_n, R.drawable.bmw_id8_blue_desk_music_n};
            this.bmw_id8_bt_res = new int[]{R.drawable.bmw_id8_orange_desk_bt_n, R.drawable.bmw_id8_orange_desk_bt_n, R.drawable.bmw_id8_red_desk_bt_n, R.drawable.bmw_id8_blue_desk_bt_n};
            this.bmw_id8_video_res = new int[]{R.drawable.bmw_id8_orange_desk_video_n, R.drawable.bmw_id8_orange_desk_video_n, R.drawable.bmw_id8_red_desk_video_n, R.drawable.bmw_id8_blue_desk_video_n};
            this.bmw_id8_car_res = new int[]{R.drawable.bmw_id8_orange_desk_mycar_n, R.drawable.bmw_id8_orange_desk_mycar_n, R.drawable.bmw_id8_red_desk_mycar_n, R.drawable.bmw_id8_blue_desk_mycar_n};
            this.bmw_id8_settings_res = new int[]{R.drawable.bmw_id8_orange_desk_setup_n, R.drawable.bmw_id8_orange_desk_setup_n, R.drawable.bmw_id8_red_desk_setup_n, R.drawable.bmw_id8_blue_desk_setup_n};
            this.bmw_id8_theme_res = new int[]{R.drawable.bmw_id8_orange_desk_theme_n, R.drawable.bmw_id8_orange_desk_theme_n, R.drawable.bmw_id8_red_desk_theme_n, R.drawable.bmw_id8_blue_desk_theme_n};
            this.bmw_id8_carinfo_res = new int[]{R.drawable.bmw_id8_orange_desk_carinfo_n, R.drawable.bmw_id8_orange_desk_carinfo_n, R.drawable.bmw_id8_red_desk_carinfo_n, R.drawable.bmw_id8_blue_desk_carinfo_n};
            this.bmw_id8_add_res = new int[]{R.drawable.bmw_id8_orange_desk_add_n, R.drawable.bmw_id8_orange_desk_add_n, R.drawable.bmw_id8_red_desk_add_n, R.drawable.bmw_id8_blue_desk_add_n};
            this.bmw_id8_up_select_res = new int[]{R.drawable.bmw_id8_orange_desk_up_selector, R.drawable.bmw_id8_orange_desk_up_selector, R.drawable.bmw_id8_red_desk_up_selector, R.drawable.bmw_id8_blue_desk_up_selector};
            this.bmw_id8_down_select_res = new int[]{R.drawable.bmw_id8_orange_desk_down_selector, R.drawable.bmw_id8_orange_desk_down_selector, R.drawable.bmw_id8_red_desk_down_selector, R.drawable.bmw_id8_blue_desk_down_selector};
            this.bmw_id8_title_color = new int[]{R.color.bmw_id8_orange_desk_icon_title_color, R.color.bmw_id8_orange_desk_icon_title_color, R.color.bmw_id8_red_desk_icon_title_color, R.color.bmw_id8_blue_desk_icon_title_color};
            if (1 == ZHTDOEMManager.getUIThemeid() || 3 == ZHTDOEMManager.getUIThemeid()) {
                if (ZHTDOEMManager.isYZGCustomer()) {
                    this.PageItemCount = 2;
                } else {
                    this.PageItemCount = 3;
                }
                this.PageCount = 3;
            } else if (ZHTDOEMManager.ensureID8()) {
                this.PageItemCount = 3;
                this.PageCount = 3;
            } else {
                this.PageItemCount = 3;
                this.PageCount = 3;
            }
            MMIKeyHelper mMIKeyHelper = new MMIKeyHelper(1);
            this.mMMIKeyHelper = mMIKeyHelper;
            mMIKeyHelper.setSelectMode(0);
            this.mMMIKeyHelper.setCustomCallback(new MMIKeyHelper.CallbackEx() { // from class: com.android.launcher2.popuView.MainCustomer.MainPageAdapter.1
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
                        Log.i(MainCustomer.TAG, "onSelectChanged , index=" + indexFromView);
                        if (indexFromView >= 0) {
                            if (MainPageAdapter.this.mSelectIndex != indexFromView) {
                                MainPageAdapter.this.mSelectIndex = indexFromView;
                                MainCustomer.this.mMainPages.setCurrentItem(MainPageAdapter.this.mSelectIndex / MainPageAdapter.this.PageItemCount, true);
                            }
                            if (MainCustomer.this.mSubPageAdapter.getSelectIndex() != MainPageAdapter.this.mSelectIndex) {
                                MainCustomer.this.mSubPageAdapter.setSelectViewByIndex(MainPageAdapter.this.mSelectIndex, true, false);
                            }
                        }
                    }
                }

                @Override // com.carocean.navicar.MMIKeyHelper.Callback
                public void onEnter(View view) {
                    MainCustomer.this.onClick(view);
                }

                @Override // com.carocean.navicar.MMIKeyHelper.CallbackEx
                public void onMenuUp(int i, int i2) {
                    if (i2 == 0) {
                        if (ZHTDOEMManager.getUIThemeid() == 0) {
                            MainCustomer.this.mMainPageLeftArrow.setPressed(true);
                        }
                    } else if (i2 == 1) {
                        if (ZHTDOEMManager.getUIThemeid() == 0) {
                            MainCustomer.this.mMainPageLeftArrow.setPressed(false);
                            MainCustomer.this.mMainPageAdapter.snap2Left();
                        } else {
                            ((Launcher) MainCustomer.this.getContext()).setMMIKeyRegion(0);
                            MainPageAdapter.this.mMMIKeyHelper.showSelectedStatus(false);
                            ((Launcher) MainCustomer.this.getContext()).mMMIKeyHelper.setSelected(0, ((Launcher) MainCustomer.this.getContext()).mMMIKeyHelper.getSelectedIndex());
                        }
                    }
                }

                @Override // com.carocean.navicar.MMIKeyHelper.CallbackEx
                public void onMenuDown(int i, int i2) {
                    if (ZHTDOEMManager.getUIThemeid() == 0) {
                        if (i2 == 0) {
                            MainCustomer.this.mMainPageRightArrow.setPressed(true);
                        } else if (i2 == 1) {
                            MainCustomer.this.mMainPageRightArrow.setPressed(false);
                            MainCustomer.this.mMainPageAdapter.snap2Right();
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
            Log.i(MainCustomer.TAG, "instantiateItem, position = " + i);
            if (ZHTDOEMManager.getUIThemeid() == 1) {
                if (ZHTDOEMManager.isMRWCustomer()) {
                    this.mMainPageLayoutId = this.mMainPageLayoutId_new_mrw_n;
                    this.mMainPageIconsId = this.mMainPageIconsId_new_mrw_n;
                } else if (ZHTDOEMManager.isYZGCustomer()) {
                    this.mMainPageLayoutId = this.mMainPageLayoutId_new_yzg_n;
                    this.mMainPageIconsId = this.mMainPageIconsId_new_yzg_n;
                } else if (ZHTDOEMManager.isLCCustomer()) {
                    this.mMainPageLayoutId = this.mMainPageLayoutId_new_lc_n;
                    this.mMainPageIconsId = this.mMainPageIconsId_new_lc_n;
                } else if (ZHTDOEMManager.isZLHCustomer()) {
                    this.mMainPageLayoutId = this.mMainPageLayoutId_new_zlh_n;
                    this.mMainPageIconsId = this.mMainPageIconsId_new_zlh_n;
                } else {
                    this.mMainPageLayoutId = this.mMainPageLayoutId_new_n;
                    this.mMainPageIconsId = this.mMainPageIconsId_new_n;
                }
            } else if (ZHTDOEMManager.ensureID8()) {
                this.mMainPageLayoutId = this.mMainPageLayoutId_id8_n;
                this.mMainPageIconsId = this.mMainPageIconsId_id8_n;
            } else if (ZHTDOEMManager.getUIThemeid() == 3 && ZHTDOEMManager.isLFECustomer()) {
                this.mMainPageLayoutId = this.mMainPageLayoutId_new_lfe_n;
                this.mMainPageIconsId = this.mMainPageIconsId_new_lfe_n;
            } else {
                this.mMainPageLayoutId = this.mMainPageLayoutId_n;
                this.mMainPageIconsId = this.mMainPageIconsId_n;
            }
            View viewInflate = LayoutInflater.from(MainCustomer.this.getContext()).inflate(this.mMainPageLayoutId[i], (ViewGroup) null);
            int i2 = 0;
            while (true) {
                int[][] iArr = this.mMainPageIconsId;
                if (i2 >= iArr[i].length) {
                    break;
                }
                View viewFindViewById = viewInflate.findViewById(iArr[i][i2]);
                if (viewFindViewById != null) {
                    if (ZHTDOEMManager.ensureID8()) {
                        this.mID8MainPageIconsView[i][i2] = viewFindViewById;
                        TextView textView = (TextView) viewInflate.findViewById(this.mMainPageTitlesId_id8_n[i][i2]);
                        if (textView != null) {
                            this.mID8MainPageTitlesView[i][i2] = textView;
                        }
                    } else {
                        this.mMainPageIconsView[i][i2] = viewFindViewById;
                    }
                    viewFindViewById.setOnClickListener(MainCustomer.this);
                    if (viewFindViewById.getId() == R.id.main_mybmw && ZHTDOEMManager.isZLHCustomer()) {
                        viewFindViewById.setOnLongClickListener(MainCustomer.this);
                    }
                    if (this.mMMIKeyHelper.getSectorSize(0) == 0) {
                        this.mMMIKeyHelper.initSectorSize(0, this.PageItemCount * this.PageCount);
                    }
                    this.mMMIKeyHelper.fillView(viewFindViewById, 5, 0, (this.PageItemCount * i) + i2);
                }
                i2++;
            }
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.main_ie_text);
            if (textView2 != null) {
                this.mIEText = textView2;
                updateIEText();
            }
            TextView textView3 = (TextView) viewInflate.findViewById(R.id.main_phonelink_title);
            if (textView3 != null && SystemProperties.getBoolean("ro.release.car_play", false)) {
                textView3.setText(R.string.home_carplay);
            }
            View viewFindViewById2 = viewInflate.findViewById(R.id.main_mybmw);
            if (viewFindViewById2 != null) {
                MainCustomer.this.mMainMyBmw = viewFindViewById2;
                MainCustomer.this.updateCarIcon(false);
            }
            TextView textView4 = (TextView) viewInflate.findViewById(R.id.main_bt_description_text);
            if (textView4 != null) {
                this.mBTText = textView4;
                updateBluetooth(Utils.isBTConnected(MainCustomer.this.getContext()));
            }
            TextView textView5 = (TextView) viewInflate.findViewById(R.id.main_carinfo_tmp);
            if (textView5 != null) {
                this.mCanTmp = textView5;
            }
            TextView textView6 = (TextView) viewInflate.findViewById(R.id.main_carinfo_oil);
            if (textView6 != null) {
                this.mCanOil = textView6;
            }
            TextView textView7 = (TextView) viewInflate.findViewById(R.id.main_carinfo_safe);
            if (textView7 != null) {
                this.mCanSafe = textView7;
            }
            TextView textView8 = (TextView) viewInflate.findViewById(R.id.main_carinfo_p);
            if (textView8 != null) {
                this.mCanParking = textView8;
            }
            TextView textView9 = (TextView) viewInflate.findViewById(R.id.main_music_title);
            if (textView9 != null) {
                MainCustomer.this.mMusicTitle = textView9;
            }
            TextView textView10 = (TextView) viewInflate.findViewById(R.id.main_music_artist);
            if (textView10 != null) {
                MainCustomer.this.mMusicArtist = textView10;
            }
            TextView textView11 = (TextView) viewInflate.findViewById(R.id.main_theme_text);
            if (textView11 != null) {
                MainCustomer.this.mThemeTv = textView11;
            }
            FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.main_dvr);
            if (frameLayout != null) {
                this.mDvrIcon = frameLayout;
            }
            TextView textView12 = (TextView) viewInflate.findViewById(R.id.main_dvr_title);
            if (textView12 != null) {
                this.mDvrTitle = textView12;
            }
            TextView textView13 = (TextView) viewInflate.findViewById(R.id.main_dvr_text);
            if (textView13 != null) {
                this.mDvrText = textView13;
            }
            update360Icon();
            ImageView imageView = (ImageView) viewInflate.findViewById(R.id.main_mybmw_car);
            if (imageView != null) {
                MainCustomer.this.mMainPageBmwCar = imageView;
                updateMainPageBmwCar(SystemProperties.getInt(MainCustomer.PERSYS_CAR_FLAG_INDEX, 9));
            }
            TextView textView14 = (TextView) viewInflate.findViewById(R.id.main_add_title);
            if (textView14 != null) {
                this.mMainAddTitle = textView14;
            }
            ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.main_add_src);
            if (imageView2 != null) {
                this.mMainAddSrcImg = imageView2;
            }
            ImageView imageView3 = (ImageView) viewInflate.findViewById(R.id.main_add_del);
            if (imageView3 != null) {
                this.mMainAddDel = imageView3;
                imageView3.setOnClickListener(MainCustomer.this);
            }
            View viewFindViewById3 = viewInflate.findViewById(R.id.main_add);
            if (viewFindViewById3 != null) {
                this.mMainAdd = viewFindViewById3;
                updateID8AddViewInfo();
            }
            viewGroup.addView(viewInflate);
            if (i >= this.PageCount - 1) {
                MainCustomer.this.uiHandler.postDelayed(new Runnable() { // from class: com.android.launcher2.popuView.MainCustomer.MainPageAdapter.2
                    @Override // java.lang.Runnable
                    public void run() {
                        MainCustomer.this.mMainPageAdapter.setSelectView(R.id.main_navi, true, true);
                        MainCustomer.this.setPageIndex(0, MainCustomer.this.getPageCount());
                        MainCustomer.this.updateMusicInfo(MainCustomer.this.musicTitle, MainCustomer.this.musicArtist);
                        if (ZHTDOEMManager.ensureID8()) {
                            MainPageAdapter.this.updateID8Theme(NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, MainCustomer.this.getContext().getContentResolver(), Navi.Status.SYS_THEME, 1));
                        }
                    }
                }, 100L);
            }
            return viewInflate;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateID8AddViewInfo() {
            ApplicationInfo applicationInfoFindAppByComponentName;
            String string = MainCustomer.this.mSharedPrefs.getString(MainCustomer.ID8_PAGE_ADD_COMPONENTNAME, "");
            String string2 = MainCustomer.this.mSharedPrefs.getString(MainCustomer.ID8_PAGE_ADD1_COMPONENTNAME, "");
            if (TextUtils.isEmpty(string)) {
                applicationInfoFindAppByComponentName = null;
            } else {
                MainCustomer mainCustomer = MainCustomer.this;
                applicationInfoFindAppByComponentName = mainCustomer.findAppByComponentName(mainCustomer.mApps, string);
            }
            if (!TextUtils.isEmpty(string2)) {
                MainCustomer mainCustomer2 = MainCustomer.this;
                mainCustomer2.findAppByComponentName(mainCustomer2.mApps, string2);
            }
            View view = this.mMainAdd;
            if (view != null) {
                view.setTag(applicationInfoFindAppByComponentName);
            }
            TextView textView = this.mMainAddTitle;
            if (textView != null) {
                textView.setText(applicationInfoFindAppByComponentName == null ? MainCustomer.this.getResources().getString(R.string.home_add) : applicationInfoFindAppByComponentName.title);
            }
            ImageView imageView = this.mMainAddSrcImg;
            if (imageView != null) {
                imageView.setImageBitmap(applicationInfoFindAppByComponentName != null ? applicationInfoFindAppByComponentName.iconBitmap : null);
                this.mMainAddSrcImg.setVisibility(applicationInfoFindAppByComponentName == null ? 8 : 0);
            }
            ImageView imageView2 = this.mMainAddDel;
            if (imageView2 != null) {
                imageView2.setVisibility(applicationInfoFindAppByComponentName != null ? 0 : 8);
            }
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
        }

        public void setSelectView(int i, boolean z, boolean z2) {
            Log.i(MainCustomer.TAG, "setSelectView: " + i);
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
            Log.i(MainCustomer.TAG, "setSelectView: got index=" + i2 + " page=" + i3);
            if (i2 >= 0) {
                this.mSelectIndex = i2;
                if (ZHTDOEMManager.ensureID8()) {
                    this.mMMIKeyHelper.setSelected(this.mID8MainPageIconsView[i3][this.mSelectIndex % this.PageItemCount]);
                } else {
                    this.mMMIKeyHelper.setSelected(this.mMainPageIconsView[i3][this.mSelectIndex % this.PageItemCount]);
                }
                if (z) {
                    MainCustomer.this.mMainPages.setCurrentItem(i3, z2);
                }
            }
        }

        public void setSelectViewByIndex(int i, boolean z, boolean z2) {
            Log.i(MainCustomer.TAG, "setSelectViewByIndex: " + i);
            if (i >= 0) {
                this.mSelectIndex = i;
                if (ZHTDOEMManager.ensureID8()) {
                    MMIKeyHelper mMIKeyHelper = this.mMMIKeyHelper;
                    View[][] viewArr = this.mID8MainPageIconsView;
                    int i2 = this.mSelectIndex;
                    int i3 = this.PageItemCount;
                    mMIKeyHelper.setSelected(viewArr[i2 / i3][i2 % i3]);
                } else {
                    MMIKeyHelper mMIKeyHelper2 = this.mMMIKeyHelper;
                    View[][] viewArr2 = this.mMainPageIconsView;
                    int i4 = this.mSelectIndex;
                    int i5 = this.PageItemCount;
                    mMIKeyHelper2.setSelected(viewArr2[i4 / i5][i4 % i5]);
                }
                if (z) {
                    MainCustomer.this.mMainPages.setCurrentItem(this.mSelectIndex / this.PageItemCount, z2);
                }
            }
        }

        public boolean enableID8Animator() {
            int i = this.mSelectIndex;
            int i2 = this.PageItemCount;
            int i3 = i / i2;
            int i4 = i % i2;
            if (i3 >= 0 && i4 >= 0) {
                ((AnimationFrameLayout) this.mID8MainPageIconsView[i3][i4]).setEnableAnimator(true);
            }
            return true;
        }

        public boolean handlerKeyEvent(KeyEvent keyEvent) {
            return this.mMMIKeyHelper.handlerMMIKeys(keyEvent);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            if (MainCustomer.this.leftEdge == null || MainCustomer.this.rightEdge == null) {
                return;
            }
            MainCustomer.this.leftEdge.finish();
            MainCustomer.this.rightEdge.finish();
            MainCustomer.this.leftEdge.setSize(0, 0);
            MainCustomer.this.rightEdge.setSize(0, 0);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            int i2 = this.mSelectIndex / this.PageItemCount;
            Log.i(MainCustomer.TAG, "onPageSelected: page=" + i + " curPage=" + i2);
            if (i == 0) {
                if (ZHTDOEMManager.getUIThemeid() == 0) {
                    MainCustomer.this.mMainPageLeftArrow.setVisibility(4);
                } else {
                    MainCustomer.this.mMainPageLeftArrow.setVisibility(8);
                }
            } else if (i == this.PageCount - 1) {
                if (ZHTDOEMManager.getUIThemeid() == 0) {
                    MainCustomer.this.mMainPageRightArrow.setVisibility(4);
                } else {
                    MainCustomer.this.mMainPageRightArrow.setVisibility(8);
                }
            } else if (ZHTDOEMManager.getUIThemeid() == 0) {
                if (MainCustomer.this.mMainPageLeftArrow.getVisibility() != 0) {
                    MainCustomer.this.mMainPageLeftArrow.setVisibility(0);
                }
                if (MainCustomer.this.mMainPageRightArrow.getVisibility() != 0) {
                    MainCustomer.this.mMainPageRightArrow.setVisibility(0);
                }
            } else {
                MainCustomer.this.mMainPageRightArrow.setVisibility(8);
                MainCustomer.this.mMainPageLeftArrow.setVisibility(8);
            }
            if (i2 != i && (MainCustomer.this.mLauncher.getmMMIKeyRegion() == 1 || ZHTDOEMManager.getUIThemeid() == 0)) {
                int i3 = this.PageItemCount * i;
                Log.i(MainCustomer.TAG, "onPageSelected: index=" + i3);
                setSelectViewByIndex(i3, false, false);
            }
            if (ZHTDOEMManager.getUIThemeid() == 1 || ZHTDOEMManager.ensureID8() || ZHTDOEMManager.getUIThemeid() == 3) {
                MainCustomer.this.setPageIndex(i, this.PageCount);
            }
        }

        public int getSelectIndex() {
            return this.mSelectIndex;
        }

        public void updateCarInfo(int i, byte[] bArr) {
            if (i != 18) {
                if (i != 24) {
                    return;
                }
                MainCustomer.this.data0x18 = bArr;
                TextView textView = this.mCanOil;
                if (textView != null) {
                    float f = bArr[2] & 255;
                    if (f <= 128.0f) {
                        if (MainCustomer.this.showOilUnitGal) {
                            f *= 0.264f;
                        }
                        TextView textView2 = this.mCanOil;
                        Locale locale = Locale.getDefault();
                        Object[] objArr = new Object[2];
                        objArr[0] = this.dfone.format(f);
                        objArr[1] = MainCustomer.this.showOilUnitGal ? "Gal" : "L";
                        textView2.setText(String.format(locale, "%s%s", objArr));
                        return;
                    }
                    textView.setText(MainCustomer.this.showOilUnitGal ? "0Gal" : "0L");
                    return;
                }
                return;
            }
            MainCustomer.this.data0x12 = bArr;
            if (this.mCanTmp != null) {
                int i2 = bArr[5] & 255;
                float f2 = (i2 - 80) / 2.0f;
                if (MainCustomer.this.showTempUnitF) {
                    f2 = (f2 * 1.8f) + 32.0f;
                }
                String str = i2 != 255 ? this.dfone.format(f2) : "--.-";
                TextView textView3 = this.mCanTmp;
                Object[] objArr2 = new Object[2];
                objArr2[0] = str;
                objArr2[1] = MainCustomer.this.showTempUnitF ? "℉" : " ℃";
                textView3.setText(String.format("%s%s", objArr2));
            }
            if (this.mCanSafe != null) {
                if ((bArr[2] & 4) != 0) {
                    if (ZHTDOEMManager.ensureID8()) {
                        this.mCanSafe.setText("");
                    } else {
                        this.mCanSafe.setText(R.string.home_caninfo_safe_close);
                    }
                    this.mCanSafe.setVisibility(ZHTDOEMManager.ensureID8() ? 8 : 0);
                } else {
                    if (ZHTDOEMManager.ensureID8()) {
                        this.mCanSafe.setText("");
                    } else {
                        this.mCanSafe.setText(R.string.home_caninfo_safe_open);
                    }
                    this.mCanSafe.setVisibility(0);
                }
            }
            TextView textView4 = this.mCanParking;
            if (textView4 != null) {
                if ((bArr[2] & 1) != 0) {
                    textView4.setText(R.string.home_caninfo_park_close);
                } else {
                    textView4.setText(R.string.home_caninfo_park_open);
                }
            }
        }

        public void updateID8Theme(int i) {
            updateID8BackgroundRes(i);
            updateID8TitleColor(i);
            updateID8ThemeText(i);
        }

        private void updateID8BackgroundRes(int i) {
            for (int i2 = 0; i2 < this.mID8MainPageIconsView.length; i2++) {
                int i3 = 0;
                while (true) {
                    View[][] viewArr = this.mID8MainPageIconsView;
                    if (i3 < viewArr[i2].length) {
                        if (viewArr[i2][i3] != null) {
                            int i4 = this.mSelectIndex;
                            int i5 = this.PageItemCount;
                            int i6 = i4 / i5;
                            int i7 = i4 % i5;
                            if (i6 >= 0 && i7 >= 0 && MainCustomer.this.mLauncher.getmMMIKeyRegion() == 1 && this.mID8MainPageIconsView[i6][i7].getId() == this.mID8MainPageIconsView[i2][i3].getId()) {
                                this.mID8MainPageIconsView[i2][i3].setSelected(false);
                            }
                            switch (this.mID8MainPageIconsView[i2][i3].getId()) {
                                case R.id.main_add /* 2131230806 */:
                                    this.mID8MainPageIconsView[i2][i3].setBackgroundResource(this.bmw_id8_add_res[i]);
                                    break;
                                case R.id.main_bt /* 2131230812 */:
                                    this.mID8MainPageIconsView[i2][i3].setBackgroundResource(this.bmw_id8_bt_res[i]);
                                    break;
                                case R.id.main_carinfo /* 2131230815 */:
                                    this.mID8MainPageIconsView[i2][i3].setBackgroundResource(this.bmw_id8_carinfo_res[i]);
                                    break;
                                case R.id.main_music /* 2131230829 */:
                                    this.mID8MainPageIconsView[i2][i3].setBackgroundResource(this.bmw_id8_music_res[i]);
                                    break;
                                case R.id.main_mybmw /* 2131230833 */:
                                    this.mID8MainPageIconsView[i2][i3].setBackgroundResource(this.bmw_id8_car_res[i]);
                                    break;
                                case R.id.main_navi /* 2131230837 */:
                                    this.mID8MainPageIconsView[i2][i3].setBackgroundResource(this.bmw_id8_navi_res[i]);
                                    break;
                                case R.id.main_setting /* 2131230852 */:
                                    this.mID8MainPageIconsView[i2][i3].setBackgroundResource(this.bmw_id8_settings_res[i]);
                                    break;
                                case R.id.main_theme /* 2131230855 */:
                                    this.mID8MainPageIconsView[i2][i3].setBackgroundResource(this.bmw_id8_theme_res[i]);
                                    break;
                                case R.id.main_video /* 2131230864 */:
                                    this.mID8MainPageIconsView[i2][i3].setBackgroundResource(this.bmw_id8_video_res[i]);
                                    break;
                            }
                            ((AnimationFrameLayout) this.mID8MainPageIconsView[i2][i3]).setAnimaUpSelectResource(this.bmw_id8_up_select_res[i]);
                            ((AnimationFrameLayout) this.mID8MainPageIconsView[i2][i3]).setAnimaDownSelectResource(this.bmw_id8_down_select_res[i]);
                            if (i6 >= 0 && i7 >= 0 && MainCustomer.this.mLauncher.getmMMIKeyRegion() == 1 && this.mID8MainPageIconsView[i6][i7].getId() == this.mID8MainPageIconsView[i2][i3].getId()) {
                                this.mID8MainPageIconsView[i2][i3].setSelected(true);
                            }
                        }
                        i3++;
                    }
                }
            }
        }

        private void updateID8TitleColor(int i) {
            for (int i2 = 0; i2 < this.mMainPageTitlesId_id8_n.length; i2++) {
                for (int i3 = 0; i3 < this.mMainPageTitlesId_id8_n[i2].length; i3++) {
                    TextView[][] textViewArr = this.mID8MainPageTitlesView;
                    if (textViewArr[i2][i3] != null) {
                        textViewArr[i2][i3].setTextColor(MainCustomer.this.getResources().getColor(this.bmw_id8_title_color[i]));
                    }
                }
            }
        }

        private void updateID8ThemeText(int i) {
            int i2;
            if (i == 1) {
                i2 = R.string.home_theme_personal_text;
            } else if (i != 2) {
                i2 = i != 3 ? 0 : R.string.home_theme_effieicnt_text;
            } else {
                i2 = R.string.home_theme_sport_text;
            }
            if (i2 == 0 || MainCustomer.this.mThemeTv == null) {
                return;
            }
            MainCustomer.this.mThemeTv.setText(i2);
        }

        public void updateApps(ArrayList<ApplicationInfo> arrayList) {
            MainCustomer.this.removeAppsWithoutInvalidate(arrayList);
            MainCustomer.this.addAppsWithoutInvalidate(arrayList);
            updateID8AddViewInfo();
        }

        public void setApps(ArrayList<ApplicationInfo> arrayList) {
            MainCustomer.this.mApps = arrayList;
            updateID8AddViewInfo();
        }

        public void addApps(ArrayList<ApplicationInfo> arrayList) {
            MainCustomer.this.addAppsWithoutInvalidate(arrayList);
            updateID8AddViewInfo();
        }

        public void removeApps(ArrayList<String> arrayList) {
            MainCustomer.this.removeAppsWithPackageNameWithoutInvalidate(arrayList);
            updateID8AddViewInfo();
        }
    }

    class SubPageAdapter extends PagerAdapter implements ViewPager.OnPageChangeListener {
        public static final int PageCount = 2;
        public static final int PageItemCount = 5;
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
        private int mSubPageHightLightOffSet;

        public void addApps(ArrayList<ApplicationInfo> arrayList) {
        }

        public boolean enableID8Animator() {
            return true;
        }

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

        public void removeApps(ArrayList<String> arrayList) {
        }

        public void setApps(ArrayList<ApplicationInfo> arrayList) {
        }

        public void updateApps(ArrayList<ApplicationInfo> arrayList) {
        }

        public void updateID8Theme(int i) {
        }

        public SubPageAdapter() {
            int[] iArr = {R.layout.bmw_sub_page1, R.layout.bmw_sub_page2};
            this.mPageLayoutId_n = iArr;
            int[][] iArr2 = {new int[]{R.id.main_navi, R.id.main_music, R.id.main_video, R.id.main_bt, R.id.main_phonelink}, new int[]{R.id.main_app, R.id.main_mybmw, R.id.main_carinfo, R.id.main_setting}};
            this.mPageIconsId_n = iArr2;
            this.mPageIconsView = new View[][]{new View[5], new View[5]};
            this.mPageLayoutId = iArr;
            this.mPageIconsId = iArr2;
            this.mSelectIndex = -1;
            this.mSubPageHightLight = new ImageView[2];
            this.mSubPageHightLightOffSet = 0;
            MMIKeyHelper mMIKeyHelper = new MMIKeyHelper(1);
            this.mMMIKeyHelper = mMIKeyHelper;
            mMIKeyHelper.setSelectMode(0);
            this.mMMIKeyHelper.setCustomCallback(new MMIKeyHelper.CallbackEx() { // from class: com.android.launcher2.popuView.MainCustomer.SubPageAdapter.1
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
                        Log.i(MainCustomer.TAG, "onSelectChanged , index=" + indexFromView);
                        if (indexFromView >= 0) {
                            if (SubPageAdapter.this.mSelectIndex != indexFromView) {
                                SubPageAdapter.this.mSelectIndex = indexFromView;
                                MainCustomer.this.mSubPages.setCurrentItem(SubPageAdapter.this.mSelectIndex / 5, true);
                            }
                            if (MainCustomer.this.mMainPageAdapter.getSelectIndex() != SubPageAdapter.this.mSelectIndex) {
                                MainCustomer.this.mMainPageAdapter.setSelectViewByIndex(SubPageAdapter.this.mSelectIndex, true, false);
                            }
                            if (SubPageAdapter.this.mSelectIndex >= 0) {
                                int i = SubPageAdapter.this.mSelectIndex / 5;
                                if (SubPageAdapter.this.mSubPageHightLight[i] != null) {
                                    int i2 = SubPageAdapter.this.mSelectIndex % 5;
                                    if (i2 == 0) {
                                        SubPageAdapter.this.mSubPageHightLight[i].setImageResource(R.drawable.desk_pointtoright);
                                    } else if (i2 == SubPageAdapter.this.mPageIconsId_n[i].length - 1) {
                                        SubPageAdapter.this.mSubPageHightLight[i].setImageResource(R.drawable.desk_pointtoleft);
                                    } else {
                                        SubPageAdapter.this.mSubPageHightLight[i].setImageResource(R.drawable.desk_pointto);
                                    }
                                    FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) SubPageAdapter.this.mSubPageHightLight[i].getLayoutParams();
                                    layoutParams.leftMargin = view.getLeft() - SubPageAdapter.this.mSubPageHightLightOffSet;
                                    layoutParams.topMargin = view.getTop();
                                    SubPageAdapter.this.mSubPageHightLight[i].setLayoutParams(layoutParams);
                                }
                            }
                        }
                    }
                }

                @Override // com.carocean.navicar.MMIKeyHelper.Callback
                public void onEnter(View view) {
                    MainCustomer.this.onClick(view);
                }

                @Override // com.carocean.navicar.MMIKeyHelper.CallbackEx
                public void onMenuUp(int i, int i2) {
                    if (i2 != 0 && i2 == 1) {
                        MainCustomer.this.mSubPageAdapter.snap2Left();
                    }
                }

                @Override // com.carocean.navicar.MMIKeyHelper.CallbackEx
                public void onMenuDown(int i, int i2) {
                    if (i2 != 0 && i2 == 1) {
                        MainCustomer.this.mSubPageAdapter.snap2Right();
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
                        if (Function.isAppInstalled(MainCustomer.this.getContext(), Function.WECHAT_PACKAGE_NAME)) {
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
                        if (Function.isAppInstalled(MainCustomer.this.getContext(), Function.WECHAT_PACKAGE_NAME)) {
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
                if (MainCustomer.this.getNetWorkStatus() > 0) {
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
                        i = (i2 * 5) + i3;
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
            int i = this.mSelectIndex / 5;
            if (i < 1) {
                int i2 = i + 1;
                int i3 = i2 * 5;
                this.mSelectIndex = i3;
                this.mMMIKeyHelper.setSelected(this.mPageIconsView[i2][i3 % 5]);
                MainCustomer.this.mSubPages.setCurrentItem(i2, true);
            }
        }

        public void snap2Left() {
            int i = this.mSelectIndex / 5;
            if (i > 0) {
                int i2 = i - 1;
                int i3 = i2 * 5;
                this.mSelectIndex = i3;
                this.mMMIKeyHelper.setSelected(this.mPageIconsView[i2][i3 % 5]);
                MainCustomer.this.mSubPages.setCurrentItem(i2, true);
            }
        }

        public void release() {
            this.mMMIKeyHelper.clear();
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            int i2 = this.mSelectIndex / 5;
            Log.i(MainCustomer.TAG, "onPageSelected: page=" + i + " curPage=" + i2);
            if (i2 != i) {
                this.mSelectIndex = i * 5;
                Log.i(MainCustomer.TAG, "onPageSelected: mSelectIndex=" + this.mSelectIndex);
                setSelectViewByIndex(this.mSelectIndex, false, false);
            }
        }

        public void setSelectView(int i, boolean z, boolean z2) {
            Log.i(MainCustomer.TAG, "setSelectView: " + i);
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
                        i2 = (i4 * 5) + i5;
                        i3 = i4;
                        break;
                    }
                    i5++;
                }
                if (i2 >= 0) {
                    break;
                }
            }
            Log.i(MainCustomer.TAG, "setSelectView: got index=" + i2 + " page=" + i3);
            if (i2 >= 0) {
                this.mSelectIndex = i2;
                this.mMMIKeyHelper.setSelected(this.mPageIconsView[i3][i2 % 5]);
                if (z) {
                    MainCustomer.this.mSubPages.setCurrentItem(i3, z2);
                }
            }
        }

        public void setSelectViewByIndex(int i, boolean z, boolean z2) {
            Log.i(MainCustomer.TAG, "setSelectViewByIndex: " + i);
            if (i >= 0) {
                this.mSelectIndex = i;
                this.mMMIKeyHelper.setSelected(this.mPageIconsView[i / 5][i % 5]);
                if (z) {
                    MainCustomer.this.mSubPages.setCurrentItem(this.mSelectIndex / 5, z2);
                }
            }
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            Log.i(MainCustomer.TAG, "instantiateItem, position = " + i);
            this.mPageLayoutId = this.mPageLayoutId_n;
            this.mPageIconsId = this.mPageIconsId_n;
            if (ZHTDOEMManager.is1600x720And240dpi() || ZHTDOEMManager.is1920x720And240dpi()) {
                this.mSubPageHightLightOffSet = 15;
            } else if (ZHTDOEMManager.is1280x480And160dpi()) {
                this.mSubPageHightLightOffSet = 10;
            }
            View viewInflate = LayoutInflater.from(MainCustomer.this.getContext()).inflate(this.mPageLayoutId[i], (ViewGroup) null);
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
                    viewFindViewById.setOnClickListener(MainCustomer.this);
                    if (this.mMMIKeyHelper.getSectorSize(0) == 0) {
                        this.mMMIKeyHelper.initSectorSize(0, 10);
                    }
                    this.mMMIKeyHelper.fillView(viewFindViewById, 5, 0, (i * 5) + i2);
                }
                i2++;
            }
            TextView textView = (TextView) viewInflate.findViewById(R.id.main_ie_text);
            if (textView != null) {
                this.mIEText = textView;
                updateIEText();
            }
            FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.main_dvr);
            if (frameLayout != null) {
                this.mDvrIcon = frameLayout;
            }
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.main_dvr_title);
            if (textView2 != null) {
                this.mDvrTitle = textView2;
            }
            TextView textView3 = (TextView) viewInflate.findViewById(R.id.main_dvr_text);
            if (textView3 != null) {
                this.mDvrText = textView3;
            }
            update360Icon();
            TextView textView4 = (TextView) viewInflate.findViewById(R.id.main_phonelink_title);
            if (textView4 != null && SystemProperties.getBoolean("ro.release.car_play", false)) {
                textView4.setText(R.string.home_carplay);
            }
            viewGroup.addView(viewInflate);
            if (i >= 1) {
                MainCustomer.this.uiHandler.postDelayed(new Runnable() { // from class: com.android.launcher2.popuView.MainCustomer.SubPageAdapter.2
                    @Override // java.lang.Runnable
                    public void run() {
                        MainCustomer.this.mSubPageAdapter.setSelectView(R.id.main_navi, true, true);
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

    public boolean enableID8Animator() {
        if (!ZHTDOEMManager.ensureID8()) {
            return true;
        }
        if (this.mMainPageLayout.getVisibility() == 0) {
            return this.mMainPageAdapter.enableID8Animator();
        }
        return this.mSubPageAdapter.enableID8Animator();
    }

    public boolean handleKeyEvent(KeyEvent keyEvent) {
        if (this.mMainPageLayout.getVisibility() == 0) {
            return this.mMainPageAdapter.handlerKeyEvent(keyEvent);
        }
        return this.mSubPageAdapter.handlerKeyEvent(keyEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCarInfo(int i, byte[] bArr) {
        this.mMainPageAdapter.updateCarInfo(i, bArr);
    }

    public void refreshCarInfoViews(int i, byte[] bArr) {
        UIHandler uIHandler = this.uiHandler;
        uIHandler.sendMessage(uIHandler.obtainMessage(MSG_UPDATE_CAR_INFO, i, 0, bArr));
    }

    private static class UIHandler extends HandlerWeakReference<MainCustomer> {
        public UIHandler(MainCustomer mainCustomer) {
            super(mainCustomer);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            MainCustomer mainCustomer = (MainCustomer) this.mWeakReference.get();
            if (mainCustomer != null && message.what == MainCustomer.MSG_UPDATE_CAR_INFO && (message.obj instanceof byte[])) {
                mainCustomer.updateCarInfo(message.arg1, (byte[]) message.obj);
            }
        }
    }

    private class SystemStatusConnectObserver extends ContentObserver {
        public SystemStatusConnectObserver(Handler handler) {
            super(handler);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            Log.d(MainCustomer.TAG, "onChange: " + uri.toString());
            if (uri.toString().equals(MainCustomer.URI_SYS_BT_CONNECT_STATUS)) {
                MainCustomer mainCustomer = MainCustomer.this;
                mainCustomer.updateBluetooth(Utils.isBTConnected(mainCustomer.mLauncher));
            } else if (uri.toString().equals(MainCustomer.URI_MEDIA_MUSIC_INFO) || uri.toString().equals(MainCustomer.URI_SOURCE_ID)) {
                MainCustomer.this.dealSourceChangedEvent();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dealSourceChangedEvent() {
        if (NaviStatus.getInt(Navi.Status.STATUS_SYS_URI, getContext().getContentResolver(), Navi.Status.SYS_SOURCE_ID, -1) == 2) {
            Navi.Status.MediaMusicInfo mediaMusicInfo = (Navi.Status.MediaMusicInfo) NaviStatus.getObject(Navi.Status.STATUS_MEDIA_URI, getContext().getContentResolver(), Navi.Status.MEDIA_MUSIC_INFO);
            if (mediaMusicInfo != null) {
                if (TextUtils.equals(this.musicTitle, mediaMusicInfo.title) && TextUtils.equals(this.musicArtist, mediaMusicInfo.artist)) {
                    return;
                }
                this.musicTitle = mediaMusicInfo.title;
                this.musicArtist = mediaMusicInfo.artist;
                if (TextUtils.isEmpty(this.musicTitle)) {
                    this.musicTitle = "";
                }
                if (TextUtils.isEmpty(this.musicArtist)) {
                    this.musicArtist = "";
                }
                updateMusicInfo(this.musicTitle, this.musicArtist);
                return;
            }
            return;
        }
        this.musicArtist = "";
        this.musicTitle = "";
        updateMusicInfo("", "");
    }
}
