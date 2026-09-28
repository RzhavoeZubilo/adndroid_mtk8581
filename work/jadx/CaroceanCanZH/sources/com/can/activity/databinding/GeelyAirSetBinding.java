package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.FuelSeekBar;

/* JADX INFO: loaded from: classes.dex */
public final class GeelyAirSetBinding implements ViewBinding {
    public final TextView geelyAirLeftTempAdd;
    public final TextView geelyAirLeftTempDel;
    public final LinearLayout geelyAirLlSet1;
    public final LinearLayout geelyAirLlWind;
    public final TextView geelyAirMode;
    public final TextView geelyAirRightTempAdd;
    public final TextView geelyAirRightTempDel;
    public final TextView geelyBtnAirAc;
    public final TextView geelyBtnAirAuto;
    public final Button geelyBtnAirCycleIn;
    public final Button geelyBtnAirCycleOut;
    public final TextView geelyBtnAirDownParWind;
    public final TextView geelyBtnAirDownUpWind;
    public final TextView geelyBtnAirDownWind;
    public final TextView geelyBtnAirDual;
    public final TextView geelyBtnAirOnOff;
    public final TextView geelyBtnAirParWind;
    public final Button geelyBtnAirRearDeg;
    public final TextView geelyBtnAirUpWind;
    public final TextView geelyBtnAirWindAdd;
    public final TextView geelyBtnAirWindDel;
    public final FuelSeekBar geelySeekbarWind;
    public final TextView geelyTvLeftTemp;
    public final TextView geelyTvRightTemp;
    public final RelativeLayout gmRlWind;
    private final FrameLayout rootView;

    private GeelyAirSetBinding(FrameLayout frameLayout, TextView textView, TextView textView2, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, Button button, Button button2, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13, Button button3, TextView textView14, TextView textView15, TextView textView16, FuelSeekBar fuelSeekBar, TextView textView17, TextView textView18, RelativeLayout relativeLayout) {
        this.rootView = frameLayout;
        this.geelyAirLeftTempAdd = textView;
        this.geelyAirLeftTempDel = textView2;
        this.geelyAirLlSet1 = linearLayout;
        this.geelyAirLlWind = linearLayout2;
        this.geelyAirMode = textView3;
        this.geelyAirRightTempAdd = textView4;
        this.geelyAirRightTempDel = textView5;
        this.geelyBtnAirAc = textView6;
        this.geelyBtnAirAuto = textView7;
        this.geelyBtnAirCycleIn = button;
        this.geelyBtnAirCycleOut = button2;
        this.geelyBtnAirDownParWind = textView8;
        this.geelyBtnAirDownUpWind = textView9;
        this.geelyBtnAirDownWind = textView10;
        this.geelyBtnAirDual = textView11;
        this.geelyBtnAirOnOff = textView12;
        this.geelyBtnAirParWind = textView13;
        this.geelyBtnAirRearDeg = button3;
        this.geelyBtnAirUpWind = textView14;
        this.geelyBtnAirWindAdd = textView15;
        this.geelyBtnAirWindDel = textView16;
        this.geelySeekbarWind = fuelSeekBar;
        this.geelyTvLeftTemp = textView17;
        this.geelyTvRightTemp = textView18;
        this.gmRlWind = relativeLayout;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static GeelyAirSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static GeelyAirSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.geely_air_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static GeelyAirSetBinding bind(View view) {
        int i = R.id.geely_air_left_temp_add;
        TextView textView = (TextView) view.findViewById(R.id.geely_air_left_temp_add);
        if (textView != null) {
            i = R.id.geely_air_left_temp_del;
            TextView textView2 = (TextView) view.findViewById(R.id.geely_air_left_temp_del);
            if (textView2 != null) {
                i = R.id.geely_air_ll_set1;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.geely_air_ll_set1);
                if (linearLayout != null) {
                    i = R.id.geely_air_ll_wind;
                    LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.geely_air_ll_wind);
                    if (linearLayout2 != null) {
                        i = R.id.geely_air_mode;
                        TextView textView3 = (TextView) view.findViewById(R.id.geely_air_mode);
                        if (textView3 != null) {
                            i = R.id.geely_air_right_temp_add;
                            TextView textView4 = (TextView) view.findViewById(R.id.geely_air_right_temp_add);
                            if (textView4 != null) {
                                i = R.id.geely_air_right_temp_del;
                                TextView textView5 = (TextView) view.findViewById(R.id.geely_air_right_temp_del);
                                if (textView5 != null) {
                                    i = R.id.geely_btn_air_ac;
                                    TextView textView6 = (TextView) view.findViewById(R.id.geely_btn_air_ac);
                                    if (textView6 != null) {
                                        i = R.id.geely_btn_air_auto;
                                        TextView textView7 = (TextView) view.findViewById(R.id.geely_btn_air_auto);
                                        if (textView7 != null) {
                                            i = R.id.geely_btn_air_cycle_in;
                                            Button button = (Button) view.findViewById(R.id.geely_btn_air_cycle_in);
                                            if (button != null) {
                                                i = R.id.geely_btn_air_cycle_out;
                                                Button button2 = (Button) view.findViewById(R.id.geely_btn_air_cycle_out);
                                                if (button2 != null) {
                                                    i = R.id.geely_btn_air_down_par_wind;
                                                    TextView textView8 = (TextView) view.findViewById(R.id.geely_btn_air_down_par_wind);
                                                    if (textView8 != null) {
                                                        i = R.id.geely_btn_air_down_up_wind;
                                                        TextView textView9 = (TextView) view.findViewById(R.id.geely_btn_air_down_up_wind);
                                                        if (textView9 != null) {
                                                            i = R.id.geely_btn_air_down_wind;
                                                            TextView textView10 = (TextView) view.findViewById(R.id.geely_btn_air_down_wind);
                                                            if (textView10 != null) {
                                                                i = R.id.geely_btn_air_dual;
                                                                TextView textView11 = (TextView) view.findViewById(R.id.geely_btn_air_dual);
                                                                if (textView11 != null) {
                                                                    i = R.id.geely_btn_air_on_off;
                                                                    TextView textView12 = (TextView) view.findViewById(R.id.geely_btn_air_on_off);
                                                                    if (textView12 != null) {
                                                                        i = R.id.geely_btn_air_par_wind;
                                                                        TextView textView13 = (TextView) view.findViewById(R.id.geely_btn_air_par_wind);
                                                                        if (textView13 != null) {
                                                                            i = R.id.geely_btn_air_rear_deg;
                                                                            Button button3 = (Button) view.findViewById(R.id.geely_btn_air_rear_deg);
                                                                            if (button3 != null) {
                                                                                i = R.id.geely_btn_air_up_wind;
                                                                                TextView textView14 = (TextView) view.findViewById(R.id.geely_btn_air_up_wind);
                                                                                if (textView14 != null) {
                                                                                    i = R.id.geely_btn_air_wind_add;
                                                                                    TextView textView15 = (TextView) view.findViewById(R.id.geely_btn_air_wind_add);
                                                                                    if (textView15 != null) {
                                                                                        i = R.id.geely_btn_air_wind_del;
                                                                                        TextView textView16 = (TextView) view.findViewById(R.id.geely_btn_air_wind_del);
                                                                                        if (textView16 != null) {
                                                                                            i = R.id.geely_seekbar_wind;
                                                                                            FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.geely_seekbar_wind);
                                                                                            if (fuelSeekBar != null) {
                                                                                                i = R.id.geely_tv_left_temp;
                                                                                                TextView textView17 = (TextView) view.findViewById(R.id.geely_tv_left_temp);
                                                                                                if (textView17 != null) {
                                                                                                    i = R.id.geely_tv_right_temp;
                                                                                                    TextView textView18 = (TextView) view.findViewById(R.id.geely_tv_right_temp);
                                                                                                    if (textView18 != null) {
                                                                                                        i = R.id.gm_rl_wind;
                                                                                                        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.gm_rl_wind);
                                                                                                        if (relativeLayout != null) {
                                                                                                            return new GeelyAirSetBinding((FrameLayout) view, textView, textView2, linearLayout, linearLayout2, textView3, textView4, textView5, textView6, textView7, button, button2, textView8, textView9, textView10, textView11, textView12, textView13, button3, textView14, textView15, textView16, fuelSeekBar, textView17, textView18, relativeLayout);
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
