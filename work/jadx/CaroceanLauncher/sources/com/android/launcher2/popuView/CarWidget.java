package com.android.launcher2.popuView;

import android.app.ActivityManager;
import android.app.Instrumentation;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yecon.launcher1.R;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CarWidget extends LinearLayout implements View.OnClickListener {
    public static final String ACTION_NOTIFICATION_NEXT = "com.yecon.action.MEDIA_NEXT";
    public static final String ACTION_NOTIFICATION_PLAYE_ONLYPAUSE = "com.yecon.action.MEDIA_PAUSE";
    public static final String ACTION_NOTIFICATION_PLAYE_ONLYPLAY = "com.yecon.action.MEDIA_PLAY";
    public static final String ACTION_NOTIFICATION_PLAYE_PAUSE = "com.yecon.action.MEDIA_PLAY_PAUSE";
    public static final String ACTION_NOTIFICATION_PRE = "com.yecon.action.MEDIA_PREVIOUS";
    private final String TAG;
    private ActivityManager activityManager;
    private int mCurSource;
    Handler mHandler;
    View mNextBtn;
    View mPlaypauseBtn;
    View mPrevBtn;
    private Runnable mRunable;
    int mTitleColor;
    float mTitleSize;
    TextView tvText;
    TextView tvTitle;

    /* JADX INFO: Access modifiers changed from: private */
    public int getCurSource() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSupportSource(int i) {
        return false;
    }

    void updateMediaInfo() {
    }

    public CarWidget(Context context) {
        this(context, null);
    }

    public CarWidget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CarWidget(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.TAG = "CarWidget_Launcher3";
        this.mPrevBtn = null;
        this.mPlaypauseBtn = null;
        this.mNextBtn = null;
        this.mTitleColor = -16776961;
        this.mTitleSize = 24.0f;
        this.mCurSource = -1;
        this.mHandler = new Handler();
        this.mRunable = new Runnable() { // from class: com.android.launcher2.popuView.CarWidget.2
            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                int curSource = CarWidget.this.getCurSource();
                if (CarWidget.this.isSupportSource(curSource) && curSource != CarWidget.this.mCurSource && CarWidget.this.isSourceAlive(curSource)) {
                    CarWidget.this.mCurSource = curSource;
                    z = true;
                    CarWidget.this.updateMediaInfo();
                } else {
                    z = false;
                }
                if (!z) {
                    CarWidget carWidget = CarWidget.this;
                    if (carWidget.isSupportSource(carWidget.mCurSource)) {
                        CarWidget carWidget2 = CarWidget.this;
                        if (!carWidget2.isSourceAlive(carWidget2.mCurSource)) {
                            CarWidget.this.mCurSource = -1;
                            CarWidget.this.updateMediaInfo();
                        }
                    }
                }
                CarWidget.this.mHandler.postDelayed(CarWidget.this.mRunable, 1000L);
                if (CarWidget.this.mCurSource == -1) {
                    CarWidget.this.updateMediaInfo();
                }
            }
        };
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CarWidget);
        this.mTitleColor = typedArrayObtainStyledAttributes.getColor(0, -16776961);
        this.mTitleSize = typedArrayObtainStyledAttributes.getDimension(1, 24.0f);
        typedArrayObtainStyledAttributes.recycle();
        initSaveData();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        setupViews();
    }

    void initSaveData() {
        this.activityManager = (ActivityManager) getContext().getSystemService("activity");
        this.mHandler.postDelayed(this.mRunable, 1000L);
    }

    void setupViews() {
        this.mPrevBtn = findViewById(R.id.music_prev_btn);
        this.mPlaypauseBtn = findViewById(R.id.music_playpause_btn);
        this.mNextBtn = findViewById(R.id.music_next_btn);
        View viewFindViewById = findViewById(R.id.music_layout);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this);
        }
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this);
        }
        View view = this.mPrevBtn;
        if (view == null || this.mPlaypauseBtn == null || this.mNextBtn == null) {
            return;
        }
        view.setOnClickListener(this);
        this.mPlaypauseBtn.setOnClickListener(this);
        this.mNextBtn.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        view.getId();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.android.launcher2.popuView.CarWidget$1] */
    private void sendKeyCode(final int i) {
        new Thread() { // from class: com.android.launcher2.popuView.CarWidget.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    new Instrumentation().sendKeyDownUpSync(i);
                } catch (Exception unused) {
                }
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSourceAlive(int i) {
        List<ActivityManager.RunningTaskInfo> runningTasks = this.activityManager.getRunningTasks(Integer.MAX_VALUE);
        if (runningTasks == null || runningTasks.isEmpty()) {
            return false;
        }
        Iterator<ActivityManager.RunningTaskInfo> it = runningTasks.iterator();
        while (it.hasNext()) {
            if (it.next().topActivity.getPackageName().equals(null)) {
                return true;
            }
        }
        return false;
    }
}
