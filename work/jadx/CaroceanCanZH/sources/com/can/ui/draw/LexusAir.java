package com.can.ui.draw;

import android.content.Context;
import android.os.Handler;
import android.os.SystemProperties;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.can.activity.R;
import com.carocean.navicar.PerSysDef;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class LexusAir {
    public static final String PERSYS_HIDE_AIR_TEMP = "persist.sys.hide_air_temp";
    private static final String TAG = "LexusAir";
    private ImageView mAC;
    private View mAirView;
    private ImageView mAuto;
    private Context mContext;
    private ImageView mFrontWin;
    private Handler mHandler;
    private ImageView mLoop;
    private PopWind mPopWind;
    private ImageView mRearWin;
    private TextView mTempLeft;
    private TextView mTempRight;
    private String mTempUnitC;
    private String mTempUnitF;
    private ImageView mWindDirect;
    private ImageView mWindRate;
    private boolean showTempUnitF;
    private long mShowTime = 0;
    private boolean mbAirAutoCloseFlag = false;
    private final int[] mWindDirectResId = {R.drawable.lexus_winddirect_up, R.drawable.lexus_winddirect_mid, R.drawable.lexus_winddirect_upmid, R.drawable.lexus_winddirect_down, R.drawable.lexus_winddirect_updown, R.drawable.lexus_winddirect_middown, R.drawable.lexus_winddirect_all, R.drawable.lexus_winddirect_auto};
    private final int[] mWindResId = {R.drawable.lexus_wind_0, R.drawable.lexus_wind_1, R.drawable.lexus_wind_2, R.drawable.lexus_wind_3, R.drawable.lexus_wind_4, R.drawable.lexus_wind_5, R.drawable.lexus_wind_6, R.drawable.lexus_wind_7};
    Runnable AirAutoClose = new Runnable() { // from class: com.can.ui.draw.LexusAir.2
        @Override // java.lang.Runnable
        public void run() {
            if (System.currentTimeMillis() - LexusAir.this.mShowTime < 5000) {
                if (LexusAir.this.mbAirAutoCloseFlag) {
                    LexusAir.this.mHandler.postDelayed(LexusAir.this.AirAutoClose, 500L);
                }
            } else {
                LexusAir.this.Hide();
                LexusAir.this.mbAirAutoCloseFlag = false;
            }
        }
    };

    public LexusAir(LayoutInflater layoutInflater, Context context, Handler handler) {
        this.mContext = null;
        this.mHandler = null;
        this.mPopWind = null;
        this.mContext = context;
        this.mHandler = handler;
        this.mPopWind = new PopWind(0, 0);
        this.mAirView = layoutInflater.inflate(R.layout.lexus_air, (ViewGroup) null);
        this.showTempUnitF = SystemProperties.getInt(PerSysDef.PERSYS_TEMP_UINT_F, 0) == 1;
        this.mTempUnitF = this.mContext.getString(R.string.ac_temp_unit_f);
        this.mTempUnitC = this.mContext.getString(R.string.ac_temp_unit_c);
        this.mTempLeft = (TextView) this.mAirView.findViewById(R.id.air_temp_left);
        this.mTempRight = (TextView) this.mAirView.findViewById(R.id.air_temp_right);
        setTempTvVisibility();
        this.mWindRate = (ImageView) this.mAirView.findViewById(R.id.air_wind);
        this.mAC = (ImageView) this.mAirView.findViewById(R.id.air_ac);
        this.mAuto = (ImageView) this.mAirView.findViewById(R.id.air_auto);
        this.mLoop = (ImageView) this.mAirView.findViewById(R.id.air_loop);
        this.mFrontWin = (ImageView) this.mAirView.findViewById(R.id.air_front_win);
        this.mRearWin = (ImageView) this.mAirView.findViewById(R.id.air_rear_win);
        this.mWindDirect = (ImageView) this.mAirView.findViewById(R.id.air_wind_direct);
        this.mAirView.setOnTouchListener(new View.OnTouchListener() { // from class: com.can.ui.draw.LexusAir.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (!LexusAir.this.IsShow()) {
                    return false;
                }
                LexusAir.this.Hide();
                return false;
            }
        });
    }

    public void setTempTvVisibility() {
        if (SystemProperties.getInt("persist.sys.hide_air_temp", 0) == 1) {
            this.mTempLeft.setVisibility(4);
            this.mTempRight.setVisibility(4);
        } else {
            this.mTempLeft.setVisibility(0);
            this.mTempRight.setVisibility(0);
        }
    }

    public void updateTempTvUnit() {
        this.showTempUnitF = SystemProperties.getInt(PerSysDef.PERSYS_TEMP_UINT_F, 0) == 1;
    }

    public boolean IsShow() {
        return this.mPopWind.IsVisable();
    }

    private void updateAirPowerStatus(boolean z) {
        if (z) {
            this.mAirView.findViewById(R.id.ac_poweron_layout).setVisibility(0);
            this.mAirView.findViewById(R.id.ac_poweroff_layout).setVisibility(8);
        } else {
            this.mAirView.findViewById(R.id.ac_poweron_layout).setVisibility(8);
            this.mAirView.findViewById(R.id.ac_poweroff_layout).setVisibility(0);
        }
    }

    public void show(byte[] bArr, boolean z) {
        PopWind popWind;
        int length = 0;
        if (bArr[0] == 0 || !z) {
            Hide();
            return;
        }
        if (bArr[1] == -2 && bArr[2] == -2) {
            updateAirPowerStatus(false);
        } else {
            updateAirPowerStatus(true);
            if ((bArr[5] & 16) == 0) {
                this.mFrontWin.setImageResource(R.drawable.lexus_front_win_off);
                boolean z2 = ((bArr[5] & 2) >> 1) == 1;
                this.showTempUnitF = z2;
                if (bArr[1] == 0) {
                    this.mTempLeft.setText("LO");
                } else if (bArr[1] == -1) {
                    this.mTempLeft.setText("HI");
                } else if (bArr[1] == -2) {
                    this.mTempLeft.setText("OFF");
                } else {
                    float f = (bArr[1] & 255) / 2.0f;
                    if (z2) {
                        f = bArr[1] & 255;
                    }
                    TextView textView = this.mTempLeft;
                    Locale locale = Locale.getDefault();
                    Object[] objArr = new Object[2];
                    objArr[0] = Float.valueOf(f);
                    objArr[1] = this.showTempUnitF ? this.mTempUnitF : this.mTempUnitC;
                    textView.setText(String.format(locale, "%.1f%s", objArr));
                }
                if (bArr[2] == 0) {
                    this.mTempRight.setText("LO");
                } else if (bArr[2] == -1) {
                    this.mTempRight.setText("HI");
                } else if (bArr[2] == -2) {
                    this.mTempRight.setText("OFF");
                } else {
                    float f2 = (bArr[2] & 255) / 2.0f;
                    if (this.showTempUnitF) {
                        f2 = bArr[2] & 255;
                    }
                    TextView textView2 = this.mTempRight;
                    Locale locale2 = Locale.getDefault();
                    Object[] objArr2 = new Object[2];
                    objArr2[0] = Float.valueOf(f2);
                    objArr2[1] = this.showTempUnitF ? this.mTempUnitF : this.mTempUnitC;
                    textView2.setText(String.format(locale2, "%.1f%s", objArr2));
                }
                int i = (bArr[3] >> 4) & 15;
                if (i == 0) {
                    this.mWindDirect.setImageResource(R.drawable.lexus_winddirect_off);
                } else {
                    int i2 = i - 1;
                    if (i2 >= 0) {
                        int[] iArr = this.mWindDirectResId;
                        length = i2 >= iArr.length ? iArr.length - 1 : i2;
                    }
                    this.mWindDirect.setImageResource(this.mWindDirectResId[length]);
                }
                int length2 = (bArr[4] >> 4) & 15;
                if (15 != length2) {
                    int[] iArr2 = this.mWindResId;
                    if (length2 > iArr2.length - 1) {
                        length2 = iArr2.length - 1;
                    }
                    this.mWindRate.setImageResource(iArr2[length2]);
                }
                if ((bArr[5] & 8) == 0) {
                    this.mRearWin.setImageResource(R.drawable.lexus_rear_win_off);
                } else {
                    this.mRearWin.setImageResource(R.drawable.lexus_rear_win_on);
                }
                if ((bArr[5] & 32) == 0) {
                    this.mAC.setImageResource(R.drawable.lexus_ac_off);
                } else {
                    this.mAC.setImageResource(R.drawable.lexus_ac_on);
                }
                if ((bArr[5] & 64) == 0) {
                    this.mAuto.setAlpha(0.1f);
                } else {
                    this.mAuto.setAlpha(1.0f);
                }
                if ((bArr[5] & 128) == 0) {
                    this.mLoop.setImageResource(R.drawable.lexus_out_loop);
                } else {
                    this.mLoop.setImageResource(R.drawable.lexus_inner_loop);
                }
            } else {
                this.mFrontWin.setImageResource(R.drawable.lexus_front_win_on);
                return;
            }
        }
        if (!z || (popWind = this.mPopWind) == null) {
            return;
        }
        popWind.show(this.mContext, this.mAirView, 80);
        this.mShowTime = System.currentTimeMillis();
        this.mHandler.post(this.AirAutoClose);
        this.mbAirAutoCloseFlag = true;
    }

    public void Hide() {
        if (this.mPopWind != null) {
            this.mHandler.removeCallbacks(this.AirAutoClose);
            this.mPopWind.hide(this.mAirView);
        }
    }
}
