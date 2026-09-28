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
public final class H2sAirSetBinding implements ViewBinding {
    public final RelativeLayout gmRlWind;
    public final TextView h2sAirLeftTempAdd;
    public final TextView h2sAirLeftTempDel;
    public final LinearLayout h2sAirLlSet1;
    public final LinearLayout h2sAirLlWind;
    public final TextView h2sAirRightTempAdd;
    public final TextView h2sAirRightTempDel;
    public final TextView h2sBtnAirAc;
    public final Button h2sBtnAirCycleIn;
    public final Button h2sBtnAirCycleOut;
    public final TextView h2sBtnAirDownParWind;
    public final TextView h2sBtnAirDownUpWind;
    public final TextView h2sBtnAirDownWind;
    public final Button h2sBtnAirFrontDeg;
    public final TextView h2sBtnAirOnOff;
    public final TextView h2sBtnAirParWind;
    public final TextView h2sBtnAirWindAdd;
    public final TextView h2sBtnAirWindDel;
    public final FuelSeekBar h2sSeekbarWind;
    public final TextView h2sTvLeftTemp;
    public final TextView h2sTvRightTemp;
    private final FrameLayout rootView;

    private H2sAirSetBinding(FrameLayout frameLayout, RelativeLayout relativeLayout, TextView textView, TextView textView2, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView3, TextView textView4, TextView textView5, Button button, Button button2, TextView textView6, TextView textView7, TextView textView8, Button button3, TextView textView9, TextView textView10, TextView textView11, TextView textView12, FuelSeekBar fuelSeekBar, TextView textView13, TextView textView14) {
        this.rootView = frameLayout;
        this.gmRlWind = relativeLayout;
        this.h2sAirLeftTempAdd = textView;
        this.h2sAirLeftTempDel = textView2;
        this.h2sAirLlSet1 = linearLayout;
        this.h2sAirLlWind = linearLayout2;
        this.h2sAirRightTempAdd = textView3;
        this.h2sAirRightTempDel = textView4;
        this.h2sBtnAirAc = textView5;
        this.h2sBtnAirCycleIn = button;
        this.h2sBtnAirCycleOut = button2;
        this.h2sBtnAirDownParWind = textView6;
        this.h2sBtnAirDownUpWind = textView7;
        this.h2sBtnAirDownWind = textView8;
        this.h2sBtnAirFrontDeg = button3;
        this.h2sBtnAirOnOff = textView9;
        this.h2sBtnAirParWind = textView10;
        this.h2sBtnAirWindAdd = textView11;
        this.h2sBtnAirWindDel = textView12;
        this.h2sSeekbarWind = fuelSeekBar;
        this.h2sTvLeftTemp = textView13;
        this.h2sTvRightTemp = textView14;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static H2sAirSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static H2sAirSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.h2s_air_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static H2sAirSetBinding bind(View view) {
        int i = R.id.gm_rl_wind;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.gm_rl_wind);
        if (relativeLayout != null) {
            i = R.id.h2s_air_left_temp_add;
            TextView textView = (TextView) view.findViewById(R.id.h2s_air_left_temp_add);
            if (textView != null) {
                i = R.id.h2s_air_left_temp_del;
                TextView textView2 = (TextView) view.findViewById(R.id.h2s_air_left_temp_del);
                if (textView2 != null) {
                    i = R.id.h2s_air_ll_set1;
                    LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.h2s_air_ll_set1);
                    if (linearLayout != null) {
                        i = R.id.h2s_air_ll_wind;
                        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.h2s_air_ll_wind);
                        if (linearLayout2 != null) {
                            i = R.id.h2s_air_right_temp_add;
                            TextView textView3 = (TextView) view.findViewById(R.id.h2s_air_right_temp_add);
                            if (textView3 != null) {
                                i = R.id.h2s_air_right_temp_del;
                                TextView textView4 = (TextView) view.findViewById(R.id.h2s_air_right_temp_del);
                                if (textView4 != null) {
                                    i = R.id.h2s_btn_air_ac;
                                    TextView textView5 = (TextView) view.findViewById(R.id.h2s_btn_air_ac);
                                    if (textView5 != null) {
                                        i = R.id.h2s_btn_air_cycle_in;
                                        Button button = (Button) view.findViewById(R.id.h2s_btn_air_cycle_in);
                                        if (button != null) {
                                            i = R.id.h2s_btn_air_cycle_out;
                                            Button button2 = (Button) view.findViewById(R.id.h2s_btn_air_cycle_out);
                                            if (button2 != null) {
                                                i = R.id.h2s_btn_air_down_par_wind;
                                                TextView textView6 = (TextView) view.findViewById(R.id.h2s_btn_air_down_par_wind);
                                                if (textView6 != null) {
                                                    i = R.id.h2s_btn_air_down_up_wind;
                                                    TextView textView7 = (TextView) view.findViewById(R.id.h2s_btn_air_down_up_wind);
                                                    if (textView7 != null) {
                                                        i = R.id.h2s_btn_air_down_wind;
                                                        TextView textView8 = (TextView) view.findViewById(R.id.h2s_btn_air_down_wind);
                                                        if (textView8 != null) {
                                                            i = R.id.h2s_btn_air_front_deg;
                                                            Button button3 = (Button) view.findViewById(R.id.h2s_btn_air_front_deg);
                                                            if (button3 != null) {
                                                                i = R.id.h2s_btn_air_on_off;
                                                                TextView textView9 = (TextView) view.findViewById(R.id.h2s_btn_air_on_off);
                                                                if (textView9 != null) {
                                                                    i = R.id.h2s_btn_air_par_wind;
                                                                    TextView textView10 = (TextView) view.findViewById(R.id.h2s_btn_air_par_wind);
                                                                    if (textView10 != null) {
                                                                        i = R.id.h2s_btn_air_wind_add;
                                                                        TextView textView11 = (TextView) view.findViewById(R.id.h2s_btn_air_wind_add);
                                                                        if (textView11 != null) {
                                                                            i = R.id.h2s_btn_air_wind_del;
                                                                            TextView textView12 = (TextView) view.findViewById(R.id.h2s_btn_air_wind_del);
                                                                            if (textView12 != null) {
                                                                                i = R.id.h2s_seekbar_wind;
                                                                                FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.h2s_seekbar_wind);
                                                                                if (fuelSeekBar != null) {
                                                                                    i = R.id.h2s_tv_left_temp;
                                                                                    TextView textView13 = (TextView) view.findViewById(R.id.h2s_tv_left_temp);
                                                                                    if (textView13 != null) {
                                                                                        i = R.id.h2s_tv_right_temp;
                                                                                        TextView textView14 = (TextView) view.findViewById(R.id.h2s_tv_right_temp);
                                                                                        if (textView14 != null) {
                                                                                            return new H2sAirSetBinding((FrameLayout) view, relativeLayout, textView, textView2, linearLayout, linearLayout2, textView3, textView4, textView5, button, button2, textView6, textView7, textView8, button3, textView9, textView10, textView11, textView12, fuelSeekBar, textView13, textView14);
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
