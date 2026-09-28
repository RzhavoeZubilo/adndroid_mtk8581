package com.can.ui.draw;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.can.activity.R;
import com.can.parser.DDef;
import com.can.platforms.AppConfigParser;

/* JADX INFO: loaded from: classes.dex */
public class Air {
    protected ImageView mAirAc;
    protected ImageView mAirAcMax;
    protected ImageView mAirAqsState;
    protected ImageView mAirAuto;
    protected ImageView mAirAuto2;
    protected TextView mAirAutoWind;
    protected ImageView mAirCircle;
    protected TextView mAirClear;
    protected ImageView mAirDual;
    protected TextView mAirECO;
    protected ImageView mAirFfogger;
    protected TextView mAirHeat;
    protected ImageView mAirIon;
    protected ImageView mAirLDwWind;
    protected ImageView mAirLHotSeat;
    protected ImageView mAirLPaWind;
    protected ImageView mAirLUpWind;
    protected TextView mAirLeftTemp;
    protected ImageView mAirMaxFront;
    protected TextView mAirOutTemp;
    protected TextView mAirProfile;
    protected ImageView mAirRDwWind;
    protected ImageView mAirRHotSeat;
    protected ImageView mAirRPaWind;
    protected ImageView mAirRUpWind;
    protected TextView mAirRear;
    protected TextView mAirRearTemp;
    protected ImageView mAirRearlock;
    protected ImageView mAirRfogger;
    protected TextView mAirRightTemp;
    protected TextView mAirSync;
    protected LinearLayout mAirView;
    protected Windlv mAirWindlv;
    private Context mContext;
    private Handler mHandler;
    private PopWind mPopWind;
    protected LinearLayout mWindLayout;
    protected TextView mWindStrength;
    private long mlshowAirTime = 0;
    private boolean mbAirAutoCloseFlag = false;
    private int[] mStrWindID = {R.string.str_gm_low, R.string.str_gm_mid, R.string.str_gm_high};
    Runnable AirAutoClose = new Runnable() { // from class: com.can.ui.draw.Air.1
        @Override // java.lang.Runnable
        public void run() {
            if (System.currentTimeMillis() - Air.this.mlshowAirTime >= 5000) {
                Air.this.Hide();
                Air.this.mbAirAutoCloseFlag = false;
            }
            if (Air.this.mbAirAutoCloseFlag) {
                Air.this.mHandler.postDelayed(Air.this.AirAutoClose, 500L);
            }
        }
    };

    private int GetGoneSate(byte b) {
        return b == 1 ? 0 : 8;
    }

    private int GetVisibSate(byte b) {
        return b == 1 ? 0 : 4;
    }

    public Air(LayoutInflater layoutInflater, Context context, Handler handler) {
        this.mContext = null;
        this.mHandler = null;
        this.mPopWind = null;
        this.mAirIon = null;
        this.mAirDual = null;
        this.mAirAuto = null;
        this.mAirAuto2 = null;
        this.mAirAc = null;
        this.mAirAqsState = null;
        this.mAirCircle = null;
        this.mAirFfogger = null;
        this.mAirRfogger = null;
        this.mAirMaxFront = null;
        this.mAirRearlock = null;
        this.mAirAcMax = null;
        this.mAirWindlv = null;
        this.mAirECO = null;
        this.mAirSync = null;
        this.mAirRear = null;
        this.mAirHeat = null;
        this.mAirClear = null;
        this.mAirAutoWind = null;
        this.mAirProfile = null;
        this.mAirLUpWind = null;
        this.mAirLPaWind = null;
        this.mAirLDwWind = null;
        this.mAirLHotSeat = null;
        this.mAirRUpWind = null;
        this.mAirRPaWind = null;
        this.mAirRDwWind = null;
        this.mAirRHotSeat = null;
        this.mAirLeftTemp = null;
        this.mAirRightTemp = null;
        this.mAirOutTemp = null;
        this.mAirRearTemp = null;
        this.mAirView = null;
        this.mWindStrength = null;
        this.mWindLayout = null;
        this.mContext = context;
        this.mHandler = handler;
        this.mPopWind = new PopWind((int) context.getResources().getDimension(R.dimen.air_width), (int) context.getResources().getDimension(R.dimen.air_height));
        LinearLayout linearLayout = (LinearLayout) layoutInflater.inflate(R.layout.air, (ViewGroup) null);
        this.mAirView = linearLayout;
        this.mAirProfile = (TextView) linearLayout.findViewById(R.id.tx_air_profile);
        this.mAirRear = (TextView) this.mAirView.findViewById(R.id.tx_air_rear);
        this.mAirIon = (ImageView) this.mAirView.findViewById(R.id.tv_ion);
        this.mAirAc = (ImageView) this.mAirView.findViewById(R.id.tv_ac);
        this.mAirDual = (ImageView) this.mAirView.findViewById(R.id.tv_dual);
        this.mAirAuto = (ImageView) this.mAirView.findViewById(R.id.tv_auto_wind);
        this.mAirAuto2 = (ImageView) this.mAirView.findViewById(R.id.tv_auto_wind2);
        this.mAirECO = (TextView) this.mAirView.findViewById(R.id.tx_air_eco);
        this.mAirHeat = (TextView) this.mAirView.findViewById(R.id.tx_air_heat);
        this.mAirClear = (TextView) this.mAirView.findViewById(R.id.tx_air_clear);
        this.mAirSync = (TextView) this.mAirView.findViewById(R.id.tx_air_sync);
        this.mAirAqsState = (ImageView) this.mAirView.findViewById(R.id.iv_inner_aqs);
        this.mAirCircle = (ImageView) this.mAirView.findViewById(R.id.iv_inner_loop);
        this.mAirFfogger = (ImageView) this.mAirView.findViewById(R.id.iv_rear_glass);
        this.mAirRfogger = (ImageView) this.mAirView.findViewById(R.id.iv_front_glass);
        this.mAirMaxFront = (ImageView) this.mAirView.findViewById(R.id.iv_max_front);
        this.mAirRearlock = (ImageView) this.mAirView.findViewById(R.id.iv_rear_lock);
        this.mAirAcMax = (ImageView) this.mAirView.findViewById(R.id.iv_ac_max);
        this.mAirWindlv = (Windlv) this.mAirView.findViewById(R.id.iv_wind_lv);
        this.mAirLUpWind = (ImageView) this.mAirView.findViewById(R.id.iv_blow_head_l);
        this.mAirLPaWind = (ImageView) this.mAirView.findViewById(R.id.iv_blow_hands_l);
        this.mAirLDwWind = (ImageView) this.mAirView.findViewById(R.id.iv_blow_feet_l);
        this.mAirLHotSeat = (ImageView) this.mAirView.findViewById(R.id.iv_heat_seat_l);
        this.mAirRUpWind = (ImageView) this.mAirView.findViewById(R.id.iv_blow_head_r);
        this.mAirRPaWind = (ImageView) this.mAirView.findViewById(R.id.iv_blow_hands_r);
        this.mAirRDwWind = (ImageView) this.mAirView.findViewById(R.id.iv_blow_feet_r);
        this.mAirRHotSeat = (ImageView) this.mAirView.findViewById(R.id.iv_heat_seat_r);
        this.mAirLeftTemp = (TextView) this.mAirView.findViewById(R.id.tv_temp_l);
        this.mAirRightTemp = (TextView) this.mAirView.findViewById(R.id.tv_temp_r);
        this.mAirOutTemp = (TextView) this.mAirView.findViewById(R.id.tx_air_outtemp);
        this.mAirRearTemp = (TextView) this.mAirView.findViewById(R.id.tx_air_reartemp);
        this.mWindStrength = (TextView) this.mAirView.findViewById(R.id.tx_air_wind_strength);
        this.mWindLayout = (LinearLayout) this.mAirView.findViewById(R.id.ll_air_wind);
        this.mAirAutoWind = (TextView) this.mAirView.findViewById(R.id.iv_auto_wind);
    }

    public boolean IsShow() {
        return this.mPopWind.IsVisable();
    }

    public void show(DDef.AirInfo airInfo, boolean z) {
        String string;
        int i;
        this.mAirIon.setVisibility(GetGoneSate(airInfo.mAirIon));
        this.mAirAc.setVisibility(GetGoneSate(airInfo.mAcState));
        this.mAirDual.setVisibility(GetGoneSate(airInfo.mDaulLight));
        this.mAirECO.setVisibility(GetGoneSate(airInfo.mEco));
        this.mAirHeat.setVisibility(GetGoneSate(airInfo.mAirHeat));
        this.mAirClear.setVisibility(GetGoneSate(airInfo.mAirClear));
        this.mAirSync.setVisibility(GetGoneSate(airInfo.mSync));
        this.mAirAqsState.setVisibility(GetGoneSate(airInfo.mAqsInCircle));
        this.mAirFfogger.setVisibility(GetGoneSate(airInfo.mFWDefogger));
        this.mAirRfogger.setVisibility(GetGoneSate(airInfo.mRearLight));
        this.mAirMaxFront.setVisibility(GetGoneSate(airInfo.mMaxForntLight));
        this.mAirRearlock.setVisibility(GetGoneSate(airInfo.mRearLock));
        this.mAirAcMax.setVisibility(GetGoneSate(airInfo.mAcMax));
        this.mAirAuto.setVisibility(GetGoneSate(airInfo.mAutoLight1));
        this.mAirAuto2.setVisibility(GetGoneSate(airInfo.mAutoLight2));
        this.mAirRear.setVisibility(GetGoneSate(airInfo.mRearAir));
        this.mWindLayout.setVisibility(GetGoneSate(airInfo.mShowWindStrength));
        if (airInfo.mWindStrength >= 0) {
            byte b = airInfo.mWindStrength;
            int[] iArr = this.mStrWindID;
            if (b < iArr.length) {
                this.mWindStrength.setText(this.mContext.getString(iArr[airInfo.mWindStrength]));
            }
        }
        if (airInfo.mbWindDual) {
            this.mAirLUpWind.setVisibility(GetVisibSate(airInfo.mLeftUpwardWind));
            this.mAirLPaWind.setVisibility(GetVisibSate(airInfo.mLeftParallelWind));
            this.mAirLDwWind.setVisibility(GetVisibSate(airInfo.mLeftDowmWind));
            this.mAirRUpWind.setVisibility(GetVisibSate(airInfo.mRightUpwardWind));
            this.mAirRPaWind.setVisibility(GetVisibSate(airInfo.mRightParallelWind));
            this.mAirRDwWind.setVisibility(GetVisibSate(airInfo.mRightDowmWind));
        } else {
            this.mAirLUpWind.setVisibility(GetVisibSate(airInfo.mUpwardWind));
            this.mAirLPaWind.setVisibility(GetVisibSate(airInfo.mParallelWind));
            this.mAirLDwWind.setVisibility(GetVisibSate(airInfo.mDowmWind));
            this.mAirRUpWind.setVisibility(GetVisibSate(airInfo.mUpwardWind));
            this.mAirRPaWind.setVisibility(GetVisibSate(airInfo.mParallelWind));
            this.mAirRDwWind.setVisibility(GetVisibSate(airInfo.mDowmWind));
        }
        this.mAirProfile.setVisibility(airInfo.mAirProfile == -1 ? 8 : 0);
        if (airInfo.mAirProfile == 0) {
            string = this.mContext.getString(R.string.str_air_profile_light);
        } else if (airInfo.mAirProfile == 1) {
            string = this.mContext.getString(R.string.str_air_profile_medium);
        } else {
            string = airInfo.mAirProfile == 2 ? this.mContext.getString(R.string.str_air_profile_strong) : AppConfigParser.ITEM_TIP;
        }
        this.mAirProfile.setText(string);
        this.mAirCircle.setVisibility(airInfo.mCircleState == -1 ? 8 : 0);
        if (airInfo.mCircleState == 1) {
            this.mAirCircle.setImageResource(R.drawable.ac_inner_loop);
        } else if (airInfo.mCircleState == 0) {
            this.mAirCircle.setImageResource(R.drawable.ac_outer_loop);
        } else if (airInfo.mCircleState == 2) {
            this.mAirCircle.setImageResource(R.drawable.ac_inner_loopauto);
        }
        Windlv windlv = this.mAirWindlv;
        if (windlv != null) {
            windlv.setMaxLevel(airInfo.mMaxWindlv);
            this.mAirAutoWind.setVisibility(airInfo.mAutoWind == 1 ? 0 : 8);
            this.mAirWindlv.setCurLevel(airInfo.mAutoWind == 1 ? (byte) 0 : airInfo.mWindRate);
            this.mAirWindlv.invalidate();
        }
        switch (airInfo.mLeftHotSeatTemp) {
            case -3:
                i = R.drawable.ac_heat_cold_l4;
                break;
            case -2:
                i = R.drawable.ac_heat_cold_l3;
                break;
            case -1:
                i = R.drawable.ac_heat_cold_l2;
                break;
            case 0:
                i = R.drawable.ac_heat_seat_l1;
                break;
            case 1:
                i = R.drawable.ac_heat_seat_l2;
                break;
            case 2:
                i = R.drawable.ac_heat_seat_l3;
                break;
            case 3:
                i = R.drawable.ac_heat_seat_l4;
                break;
            default:
                i = 0;
                break;
        }
        this.mAirLHotSeat.setImageResource(i);
        switch (airInfo.mRightHotSeatTemp) {
            case -3:
                i = R.drawable.ac_heat_cold_r4;
                break;
            case -2:
                i = R.drawable.ac_heat_cold_r3;
                break;
            case -1:
                i = R.drawable.ac_heat_cold_r2;
                break;
            case 0:
                i = R.drawable.ac_heat_seat_r1;
                break;
            case 1:
                i = R.drawable.ac_heat_seat_r2;
                break;
            case 2:
                i = R.drawable.ac_heat_seat_r3;
                break;
            case 3:
                i = R.drawable.ac_heat_seat_r4;
                break;
        }
        this.mAirRHotSeat.setImageResource(i);
        byte b2 = airInfo.mTempUnit;
        String string2 = this.mContext.getString(b2 == 0 ? R.string.ac_temp_unit_c : R.string.ac_temp_unit_f);
        TextView textView = this.mAirLeftTemp;
        if (textView != null) {
            textView.setVisibility((airInfo.mbshowLTemp || airInfo.mbshowLTempLv) ? 0 : 4);
            if (airInfo.mShowTempMode == 1) {
                byte b3 = airInfo.mLTempMode;
                if (b3 == 0) {
                    this.mAirLeftTemp.setText(R.string.str_air_cool);
                } else if (b3 == 1) {
                    this.mAirLeftTemp.setText(R.string.str_air_normal);
                } else if (b3 == 2) {
                    this.mAirLeftTemp.setText(R.string.str_air_hoot);
                }
            } else if (airInfo.mbshowLTempLv) {
                this.mAirLeftTemp.setText(((int) airInfo.mbyLeftTemplv) + this.mContext.getString(R.string.ac_temp_lv));
            } else if (airInfo.mbMaxMinDual) {
                if (airInfo.mLeftTemp <= airInfo.mMinLeftTemp) {
                    this.mAirLeftTemp.setText(R.string.ac_temp_lo);
                } else if (airInfo.mLeftTemp >= airInfo.mMaxLeftTemp) {
                    this.mAirLeftTemp.setText(R.string.ac_temp_hi);
                } else if (airInfo.mLeftTemp == airInfo.mVaildTemp) {
                    this.mAirLeftTemp.setText("--");
                } else {
                    this.mAirLeftTemp.setText(airInfo.mLeftTemp + string2);
                }
            } else if (airInfo.mLeftTemp <= airInfo.mMinTemp) {
                this.mAirLeftTemp.setText(R.string.ac_temp_lo);
            } else if (airInfo.mLeftTemp >= airInfo.mMaxTemp) {
                this.mAirLeftTemp.setText(R.string.ac_temp_hi);
            } else if (airInfo.mLeftTemp == airInfo.mVaildTemp) {
                this.mAirLeftTemp.setText("--");
            } else {
                this.mAirLeftTemp.setText(airInfo.mLeftTemp + string2);
            }
        }
        TextView textView2 = this.mAirRightTemp;
        if (textView2 != null) {
            textView2.setVisibility((airInfo.mbshowRTemp || airInfo.mbshowRTempLv) ? 0 : 4);
            if (airInfo.mShowTempMode == 1) {
                byte b4 = airInfo.mRTempMode;
                if (b4 == 0) {
                    this.mAirRightTemp.setText(R.string.str_air_cool);
                } else if (b4 == 1) {
                    this.mAirRightTemp.setText(R.string.str_air_normal);
                } else if (b4 == 2) {
                    this.mAirRightTemp.setText(R.string.str_air_hoot);
                }
            } else if (airInfo.mbshowRTempLv) {
                this.mAirRightTemp.setText(((int) airInfo.mbyRightTemplv) + this.mContext.getString(R.string.ac_temp_lv));
            } else {
                String string3 = this.mContext.getString(b2 == 0 ? R.string.ac_temp_unit_c : R.string.ac_temp_unit_f);
                if (airInfo.mbMaxMinDual) {
                    if (airInfo.mRightTemp <= airInfo.mMinRightTemp) {
                        this.mAirRightTemp.setText(R.string.ac_temp_lo);
                    } else if (airInfo.mRightTemp >= airInfo.mMaxRightTemp) {
                        this.mAirRightTemp.setText(R.string.ac_temp_hi);
                    } else if (airInfo.mRightTemp == airInfo.mVaildTemp) {
                        this.mAirRightTemp.setText("--");
                    } else {
                        this.mAirRightTemp.setText(airInfo.mRightTemp + string3);
                    }
                } else if (airInfo.mRightTemp <= airInfo.mMinTemp) {
                    this.mAirRightTemp.setText(R.string.ac_temp_lo);
                } else if (airInfo.mRightTemp >= airInfo.mMaxTemp) {
                    this.mAirRightTemp.setText(R.string.ac_temp_hi);
                } else if (airInfo.mRightTemp == airInfo.mVaildTemp) {
                    this.mAirRightTemp.setText("--");
                } else {
                    this.mAirRightTemp.setText(airInfo.mRightTemp + string3);
                }
            }
        }
        if (airInfo.mOutTempEnable && this.mAirOutTemp != null) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("OUT:");
            stringBuffer.append(" ");
            stringBuffer.append(airInfo.mOutTemp);
            this.mAirOutTemp.setText(stringBuffer.toString() + this.mContext.getString(b2 == 0 ? R.string.ac_temp_unit_c : R.string.ac_temp_unit_f));
        }
        if (airInfo.mRearTempEnable && this.mAirRearTemp != null && airInfo.mstrRearAirTemp != null) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("REAR:");
            stringBuffer2.append(" ");
            stringBuffer2.append(airInfo.mstrRearAirTemp);
            String string4 = this.mContext.getString(b2 == 0 ? R.string.ac_temp_unit_c : R.string.ac_temp_unit_f);
            if (airInfo.mstrRearAirTemp.equals("HI") || airInfo.mstrRearAirTemp.equals("LO")) {
                this.mAirRearTemp.setText(stringBuffer2.toString());
            } else {
                this.mAirRearTemp.setText(stringBuffer2.toString() + string4);
            }
        }
        if (airInfo.bAirUIShow && z) {
            PopWind popWind = this.mPopWind;
            if (popWind != null) {
                this.mlshowAirTime = popWind.show(this.mContext, this.mAirView);
                this.mHandler.post(this.AirAutoClose);
                this.mbAirAutoCloseFlag = true;
                return;
            }
            return;
        }
        if (airInfo.mAiron == 0 && IsShow()) {
            Hide();
            this.mbAirAutoCloseFlag = false;
        }
    }

    public void setOutTempInfo(DDef.OutTemputerInfo outTemputerInfo) {
        if (outTemputerInfo == null || this.mAirOutTemp == null) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("OUT:");
        stringBuffer.append(" ");
        if (outTemputerInfo.mbEnable) {
            stringBuffer.append(outTemputerInfo.mOutCTemp);
            stringBuffer.append(this.mContext.getString(R.string.ac_temp_unit_c));
            this.mAirOutTemp.setText(stringBuffer.toString());
        } else if (outTemputerInfo.mbFEndble) {
            stringBuffer.append(outTemputerInfo.mOutFTemp);
            stringBuffer.append(this.mContext.getString(R.string.ac_temp_unit_f));
            this.mAirOutTemp.setText(stringBuffer.toString());
        }
    }

    public void Hide() {
        PopWind popWind = this.mPopWind;
        if (popWind != null) {
            popWind.hide(this.mAirView);
        }
    }
}
