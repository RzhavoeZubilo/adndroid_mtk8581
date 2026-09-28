package com.android.launcher2.popuView;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher2.uitl.Function;
import com.android.launcher2.uitl.Utils;
import com.android.launcher2.uitl.Weather;
import com.yecon.launcher1.R;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CustomView extends FrameLayout implements View.OnClickListener {
    public static final String ACTION_CITY_INFO_UPDATE = "com.autochips.action.city.INFO_UPDATE";
    public static final String ACTION_CLOCK_TYPE = "com.yecon.action.ACTION_CLOCK_TYPE";
    public static final String ACTION_WEATHER_INFO_UPDATE = "com.autochips.action.weathe.INFO_UPDATE";
    public static final String ACTION_WEATHER_ON_CLICK = "com.autochips.action.weathe.ON_CLICK";
    public static final String PERSYS_CLOCK_TYPE = "persist.sys.clock_type";
    private static final String TAG = "MainCustomer";
    public static String[] conditionImages;
    private static String[] conditionItems;
    ImageView iv_weather;
    BroadcastReceiver mBroadcastReceiver;
    private final Calendar mCalendar;
    private FrameLayout mContent;
    private final int mGap;
    private int[] mImageResArray;
    LinearLayout mLayoutAnalogClock;
    LinearLayout mLayoutDatetime;
    private Bitmap mMaoHaoBitmap;
    private List<Bitmap> mNumBitmaps;
    private Paint mPaint;
    private Bitmap mTimeBitmap;
    private Canvas mTimeCanvas;
    private String[] mWeekdays;
    private String[] pmam;
    private String[] time;
    TextView tv_ampm;
    TextView tv_city;
    TextView tv_date;
    TextView tv_hour;
    TextView tv_minute;
    TextView tv_temp;
    TextView tv_weather;
    TextView tv_week;

    void setClockVisibility() {
        if (SystemProperties.getInt("persist.sys.clock_type", 0) == 0) {
            this.mLayoutAnalogClock.setVisibility(8);
            this.mLayoutDatetime.setVisibility(0);
        } else {
            this.mLayoutAnalogClock.setVisibility(0);
            this.mLayoutDatetime.setVisibility(8);
        }
    }

    public CustomView(Context context) {
        this(context, null);
    }

    public CustomView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CustomView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mGap = 2;
        this.mImageResArray = new int[]{R.drawable.t0, R.drawable.t1, R.drawable.t2, R.drawable.t3, R.drawable.t4, R.drawable.t5, R.drawable.t6, R.drawable.t7, R.drawable.t8, R.drawable.t9};
        this.mBroadcastReceiver = new BroadcastReceiver() { // from class: com.android.launcher2.popuView.CustomView.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                String action = intent.getAction();
                if ("com.autochips.action.weathe.INFO_UPDATE".equals(action)) {
                    CustomView.this.updateWeather(context2, intent);
                } else if ("com.autochips.action.city.INFO_UPDATE".equals(action)) {
                    CustomView.this.updateCity(context2, intent);
                } else if ("com.yecon.action.ACTION_CLOCK_TYPE".equals(action)) {
                    CustomView.this.setClockVisibility();
                }
                CustomView.this.updateDateTime(context2);
            }
        };
        this.pmam = new String[]{"AM", "PM"};
        this.time = new String[2];
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
        this.mCalendar = Calendar.getInstance();
        this.mWeekdays = getResources().getStringArray(R.array.weather_weekday);
        this.mTimeBitmap = Bitmap.createBitmap(getResources().getDimensionPixelSize(R.dimen.time_imageview_layout_width), getResources().getDimensionPixelSize(R.dimen.time_imageview_layout_height), Bitmap.Config.ARGB_8888);
        this.mTimeCanvas = new Canvas(this.mTimeBitmap);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mContent = (FrameLayout) findViewById(R.id.layout_timeweather);
        resetLayout();
    }

    void resetLayout() {
        this.mContent.removeAllViewsInLayout();
        Context context = getContext();
        this.mContent.addView(LayoutInflater.from(context).inflate(R.layout.weather_widget_layout, (ViewGroup) null));
        this.tv_week = (TextView) this.mContent.findViewById(R.id.week);
        this.tv_date = (TextView) this.mContent.findViewById(R.id.date);
        this.tv_city = (TextView) this.mContent.findViewById(R.id.city);
        this.tv_weather = (TextView) this.mContent.findViewById(R.id.weather);
        this.tv_temp = (TextView) this.mContent.findViewById(R.id.temp);
        this.tv_hour = (TextView) this.mContent.findViewById(R.id.hour);
        this.tv_minute = (TextView) this.mContent.findViewById(R.id.minute);
        this.tv_ampm = (TextView) this.mContent.findViewById(R.id.pmam);
        ImageView imageView = (ImageView) this.mContent.findViewById(R.id.weather_img);
        this.iv_weather = imageView;
        if (imageView != null) {
            imageView.setImageAlpha(150);
            this.iv_weather.setScaleType(ImageView.ScaleType.CENTER_CROP);
        }
        this.iv_weather.setImageDrawable((BitmapDrawable) context.getResources().getDrawable(R.drawable.cloudy));
        findViewById(R.id.frontview01).setOnClickListener(this);
        findViewById(R.id.frontview02).setOnClickListener(this);
        findViewById(R.id.vCarlife).setOnClickListener(this);
        updateDateTime(context);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.frontview01 /* 2131230762 */:
                Function.onSetDatetime(getContext());
                break;
            case R.id.frontview02 /* 2131230763 */:
                Function.onSetWeatherCity(getContext());
                break;
            case R.id.vCarlife /* 2131230909 */:
                Function.onCarlife(getContext());
                break;
        }
    }

    public void updateDateTime(Context context) {
        this.tv_week.setText(Utils.getCurrentWeek(context));
        this.tv_date.setText(Utils.getDate());
        int hourMinute = Utils.getHourMinute(context, this.time);
        this.tv_hour.setText(this.time[0]);
        this.tv_minute.setText(this.time[1]);
        if (hourMinute == 0 || hourMinute == 1) {
            this.tv_ampm.setText(this.pmam[hourMinute]);
        } else {
            this.tv_ampm.setText("");
        }
    }

    public Bitmap getTimeBitmap(Bitmap bitmap, String[] strArr, Context context) {
        int i;
        if (bitmap != null) {
            this.mTimeCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
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
                this.mTimeCanvas.drawBitmap(bitmapsByTime[i2], (Rect) null, new Rect(i, 0, iArr[i2] + i, iArr2[i2]), this.mPaint);
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
        Weather weatherJson;
        Bundle extras = intent.getExtras();
        if (extras != null) {
            String string = extras.getString("weather_info");
            if (TextUtils.isEmpty(string) || (weatherJson = Utils.parseWeatherJson(string)) == null) {
                return;
            }
            this.tv_city.setText(weatherJson.cityname);
            this.tv_weather.setText(conditionItems[weatherJson.code]);
            this.tv_temp.setText(weatherJson.lowTemp + weatherJson.unit + "-" + weatherJson.highTemp + weatherJson.unit);
            this.iv_weather.setImageDrawable((BitmapDrawable) context.getResources().getDrawable(getImageIdByCode(weatherJson.code, context)));
        }
    }

    public static int getImageIdByCode(int i, Context context) {
        Resources resources = context.getResources();
        if (conditionImages == null) {
            conditionImages = context.getResources().getStringArray(R.array.yahoo_condition_image);
        }
        try {
            return resources.getIdentifier(conditionImages[i], "drawable", context.getPackageName());
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

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.yecon.action.ACTION_CLOCK_TYPE");
        intentFilter.addAction("com.autochips.action.weathe.INFO_UPDATE");
        intentFilter.addAction("com.autochips.action.city.INFO_UPDATE");
        intentFilter.addAction("com.autochips.action.weathe.ON_CLICK");
        intentFilter.addAction("android.intent.action.TIME_TICK");
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        intentFilter.addAction("android.intent.action.DATE_CHANGED");
        getContext().registerReceiver(this.mBroadcastReceiver, intentFilter);
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        getContext().unregisterReceiver(this.mBroadcastReceiver);
        super.onDetachedFromWindow();
    }
}
