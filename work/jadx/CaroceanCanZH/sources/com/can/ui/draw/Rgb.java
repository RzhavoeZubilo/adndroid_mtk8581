package com.can.ui.draw;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.SystemProperties;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.can.activity.R;
import com.can.assist.CanContant;
import com.can.platforms.AppConfigParser;
import java.io.FileOutputStream;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class Rgb extends RelativeLayout implements View.OnClickListener, SeekBar.OnSeekBarChangeListener, View.OnTouchListener, CanContant {
    private static final int MSG_DLG_FINISH = 101;
    private static final int MSG_VALUE_SET = 100;
    private static boolean bStartTracking = false;
    private static String fileName = "/sys/devices/platform/image_sensor/reg_status";
    private static int finishTimeOut = 5000;
    private static int[][] rgb_value = {new int[]{130, 130, 0, 155}, new int[]{130, 130, 0, 155}};
    private static int[][] rgb_value_def = {new int[]{130, 130, 0, 155}, new int[]{130, 130, 0, 155}};
    private Handler mHandler;
    private OnRGBlistener mRGBlistener;
    private Button mRgbCloseBtn;
    private Button mRgbResetBtn;
    private int mType;
    private SeekBar[] seekBar;
    private TextView[] textView;
    private Timer timer;

    public interface OnRGBlistener {
        void onShow(boolean z);
    }

    public Rgb(Context context) {
        this(context, null);
    }

    public Rgb(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Rgb(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.seekBar = new SeekBar[4];
        this.textView = new TextView[4];
        this.mRGBlistener = null;
        this.mType = 1;
        this.mHandler = new Handler() { // from class: com.can.ui.draw.Rgb.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                if (100 == message.what || 101 != message.what || Rgb.this.mRGBlistener == null) {
                    return;
                }
                Rgb.this.mRGBlistener.onShow(false);
            }
        };
    }

    private void initData() {
        int i = 0;
        for (int i2 = 0; i2 < PERSYS_RGB_VIDEO.length; i2++) {
            for (int i3 = 0; i3 < PERSYS_RGB_VIDEO[i2].length; i3++) {
                rgb_value[i2][i3] = SystemProperties.getInt(PERSYS_RGB_VIDEO[i2][i3], rgb_value[i2][i3]);
            }
        }
        while (true) {
            String[][] strArr = PERSYS_RGB_VIDEO_DEF;
            int i4 = this.mType;
            if (i >= strArr[i4].length) {
                return;
            }
            int[] iArr = rgb_value_def[i4];
            String[][] strArr2 = PERSYS_RGB_VIDEO_DEF;
            int i5 = this.mType;
            iArr[i] = SystemProperties.getInt(strArr2[i5][i], rgb_value_def[i5][i]);
            i++;
        }
    }

    private void initView() {
        this.mRgbResetBtn = (Button) findViewById(R.id.rgb_reset_all);
        this.mRgbCloseBtn = (Button) findViewById(R.id.rgb_reset_close);
        this.mRgbResetBtn.setOnClickListener(this);
        this.mRgbCloseBtn.setOnClickListener(this);
        int i = 0;
        this.seekBar[0] = (SeekBar) findViewById(R.id.seekBar_brightness);
        this.seekBar[1] = (SeekBar) findViewById(R.id.seekBar_contrast);
        this.seekBar[2] = (SeekBar) findViewById(R.id.seekBar_hue);
        this.seekBar[3] = (SeekBar) findViewById(R.id.seekBar_saturation);
        this.seekBar[0].setMax(255);
        this.seekBar[1].setMax(255);
        this.seekBar[2].setMax(255);
        this.seekBar[3].setMax(255);
        this.textView[0] = (TextView) findViewById(R.id.text_bright_value);
        this.textView[1] = (TextView) findViewById(R.id.text_contrast_value);
        this.textView[2] = (TextView) findViewById(R.id.text_hue_value);
        this.textView[3] = (TextView) findViewById(R.id.text_saturation_value);
        int i2 = 0;
        while (true) {
            int[][] iArr = rgb_value;
            int i3 = this.mType;
            if (i2 >= iArr[i3].length) {
                break;
            }
            this.seekBar[i2].setProgress(iArr[i3][i2]);
            this.textView[i2].setText(String.valueOf(rgb_value[this.mType][i2]));
            i2++;
        }
        while (true) {
            SeekBar[] seekBarArr = this.seekBar;
            if (i >= seekBarArr.length) {
                return;
            }
            seekBarArr[i].setOnSeekBarChangeListener(this);
            i++;
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        initData();
        initView();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        OnRGBlistener onRGBlistener;
        if (view.getId() == R.id.rgb_reset_all) {
            resetRGB();
        } else {
            if (view.getId() != R.id.rgb_reset_close || (onRGBlistener = this.mRGBlistener) == null) {
                return;
            }
            onRGBlistener.onShow(false);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        switch (seekBar.getId()) {
            case R.id.seekBar_brightness /* 2131232531 */:
                showRGBEffect(this.mType, 0, i, false);
                break;
            case R.id.seekBar_contrast /* 2131232532 */:
                showRGBEffect(this.mType, 1, i, false);
                break;
            case R.id.seekBar_hue /* 2131232533 */:
                showRGBEffect(this.mType, 2, i, false);
                break;
            case R.id.seekBar_saturation /* 2131232534 */:
                showRGBEffect(this.mType, 3, i, false);
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
        bStartTracking = true;
        finishCancel();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        bStartTracking = false;
        finishLater();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        finishLater();
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            finishCancel();
            this.timer = new Timer();
            sendMessage(view.getId());
            return false;
        }
        if (action != 1) {
            return false;
        }
        this.timer.cancel();
        this.mHandler.removeMessages(100);
        finishLater();
        return false;
    }

    private void sendMessage(final int i) {
        this.timer.schedule(new TimerTask() { // from class: com.can.ui.draw.Rgb.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                Message message = new Message();
                message.what = 100;
                message.arg1 = i;
                Rgb.this.mHandler.sendMessage(message);
            }
        }, 500L, 100L);
    }

    private void finishLater() {
        if (finishTimeOut > 0) {
            this.mHandler.removeMessages(101);
            this.mHandler.sendEmptyMessageDelayed(101, finishTimeOut);
        }
    }

    private void finishCancel() {
        if (finishTimeOut > 0) {
            this.mHandler.removeMessages(101);
        }
    }

    private void resetRGB() {
        int i = 0;
        while (true) {
            int[][] iArr = rgb_value_def;
            int i2 = this.mType;
            if (i < iArr[i2].length) {
                SystemProperties.set(PERSYS_RGB_VIDEO[this.mType][i], rgb_value_def[this.mType][i] + AppConfigParser.ITEM_TIP);
                this.seekBar[i].setProgress(rgb_value_def[this.mType][i]);
                this.textView[i].setText(String.valueOf(rgb_value_def[this.mType][i]));
                i++;
            } else {
                setBrightNess(iArr[i2][0]);
                setContrast(rgb_value_def[this.mType][1]);
                setHue(rgb_value_def[this.mType][2]);
                setSaturation(rgb_value_def[this.mType][3]);
                return;
            }
        }
    }

    private void showRGBEffect(int i, int i2, int i3, boolean z) {
        this.seekBar[i2].setProgress(i3);
        this.textView[i2].setText(String.valueOf(i3));
        if (bStartTracking || z) {
            SystemProperties.set(PERSYS_RGB_VIDEO[i][i2], i3 + AppConfigParser.ITEM_TIP);
            if (i2 == 0) {
                setBrightNess(i3);
                return;
            }
            if (i2 == 1) {
                setContrast(i3);
            } else if (i2 == 2) {
                setHue(i3);
            } else {
                if (i2 != 3) {
                    return;
                }
                setSaturation(i3);
            }
        }
    }

    private static void writeData(String str, String str2) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            fileOutputStream.write(str2.getBytes());
            fileOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void setBrightNess(int i) {
        writeData(fileName, "9," + i);
    }

    private void setContrast(int i) {
        writeData(fileName, "12," + i);
    }

    private void setHue(int i) {
        writeData(fileName, "11," + i);
    }

    private void setSaturation(int i) {
        writeData(fileName, "10," + i);
    }

    public void setRGBlistener(OnRGBlistener onRGBlistener) {
        this.mRGBlistener = onRGBlistener;
    }
}
