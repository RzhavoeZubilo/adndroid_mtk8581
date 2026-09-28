package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.FuelSeekBar;

/* JADX INFO: loaded from: classes.dex */
public final class HdMondeoAirSetBinding implements ViewBinding {
    public final TextView mondeoAirLeftTempAdd;
    public final TextView mondeoAirLeftTempDel;
    public final LinearLayout mondeoAirLlSet1;
    public final LinearLayout mondeoAirLlWind;
    public final TextView mondeoAirRightTempAdd;
    public final TextView mondeoAirRightTempDel;
    public final TextView mondeoBtnAirAc;
    public final TextView mondeoBtnAirAuto;
    public final Button mondeoBtnAirCycleIn;
    public final Button mondeoBtnAirCycleOut;
    public final TextView mondeoBtnAirDownWind;
    public final TextView mondeoBtnAirDual;
    public final Button mondeoBtnAirFrontDeg;
    public final TextView mondeoBtnAirOnOff;
    public final TextView mondeoBtnAirParWind;
    public final TextView mondeoBtnAirUpWind;
    public final TextView mondeoBtnAirWindAdd;
    public final TextView mondeoBtnAirWindDel;
    public final FuelSeekBar mondeoSeekbarWind;
    public final TextView mondeoTvLeftTemp;
    public final TextView mondeoTvRightTemp;
    private final FrameLayout rootView;

    private HdMondeoAirSetBinding(FrameLayout frameLayout, TextView textView, TextView textView2, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, Button button, Button button2, TextView textView7, TextView textView8, Button button3, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13, FuelSeekBar fuelSeekBar, TextView textView14, TextView textView15) {
        this.rootView = frameLayout;
        this.mondeoAirLeftTempAdd = textView;
        this.mondeoAirLeftTempDel = textView2;
        this.mondeoAirLlSet1 = linearLayout;
        this.mondeoAirLlWind = linearLayout2;
        this.mondeoAirRightTempAdd = textView3;
        this.mondeoAirRightTempDel = textView4;
        this.mondeoBtnAirAc = textView5;
        this.mondeoBtnAirAuto = textView6;
        this.mondeoBtnAirCycleIn = button;
        this.mondeoBtnAirCycleOut = button2;
        this.mondeoBtnAirDownWind = textView7;
        this.mondeoBtnAirDual = textView8;
        this.mondeoBtnAirFrontDeg = button3;
        this.mondeoBtnAirOnOff = textView9;
        this.mondeoBtnAirParWind = textView10;
        this.mondeoBtnAirUpWind = textView11;
        this.mondeoBtnAirWindAdd = textView12;
        this.mondeoBtnAirWindDel = textView13;
        this.mondeoSeekbarWind = fuelSeekBar;
        this.mondeoTvLeftTemp = textView14;
        this.mondeoTvRightTemp = textView15;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static HdMondeoAirSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HdMondeoAirSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.hd_mondeo_air_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static HdMondeoAirSetBinding bind(View view) {
        int i = R.id.mondeo_air_left_temp_add;
        TextView textView = (TextView) view.findViewById(R.id.mondeo_air_left_temp_add);
        if (textView != null) {
            i = R.id.mondeo_air_left_temp_del;
            TextView textView2 = (TextView) view.findViewById(R.id.mondeo_air_left_temp_del);
            if (textView2 != null) {
                i = R.id.mondeo_air_ll_set1;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.mondeo_air_ll_set1);
                if (linearLayout != null) {
                    i = R.id.mondeo_air_ll_wind;
                    LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.mondeo_air_ll_wind);
                    if (linearLayout2 != null) {
                        i = R.id.mondeo_air_right_temp_add;
                        TextView textView3 = (TextView) view.findViewById(R.id.mondeo_air_right_temp_add);
                        if (textView3 != null) {
                            i = R.id.mondeo_air_right_temp_del;
                            TextView textView4 = (TextView) view.findViewById(R.id.mondeo_air_right_temp_del);
                            if (textView4 != null) {
                                i = R.id.mondeo_btn_air_ac;
                                TextView textView5 = (TextView) view.findViewById(R.id.mondeo_btn_air_ac);
                                if (textView5 != null) {
                                    i = R.id.mondeo_btn_air_auto;
                                    TextView textView6 = (TextView) view.findViewById(R.id.mondeo_btn_air_auto);
                                    if (textView6 != null) {
                                        i = R.id.mondeo_btn_air_cycle_in;
                                        Button button = (Button) view.findViewById(R.id.mondeo_btn_air_cycle_in);
                                        if (button != null) {
                                            i = R.id.mondeo_btn_air_cycle_out;
                                            Button button2 = (Button) view.findViewById(R.id.mondeo_btn_air_cycle_out);
                                            if (button2 != null) {
                                                i = R.id.mondeo_btn_air_down_wind;
                                                TextView textView7 = (TextView) view.findViewById(R.id.mondeo_btn_air_down_wind);
                                                if (textView7 != null) {
                                                    i = R.id.mondeo_btn_air_dual;
                                                    TextView textView8 = (TextView) view.findViewById(R.id.mondeo_btn_air_dual);
                                                    if (textView8 != null) {
                                                        i = R.id.mondeo_btn_air_front_deg;
                                                        Button button3 = (Button) view.findViewById(R.id.mondeo_btn_air_front_deg);
                                                        if (button3 != null) {
                                                            i = R.id.mondeo_btn_air_on_off;
                                                            TextView textView9 = (TextView) view.findViewById(R.id.mondeo_btn_air_on_off);
                                                            if (textView9 != null) {
                                                                i = R.id.mondeo_btn_air_par_wind;
                                                                TextView textView10 = (TextView) view.findViewById(R.id.mondeo_btn_air_par_wind);
                                                                if (textView10 != null) {
                                                                    i = R.id.mondeo_btn_air_up_wind;
                                                                    TextView textView11 = (TextView) view.findViewById(R.id.mondeo_btn_air_up_wind);
                                                                    if (textView11 != null) {
                                                                        i = R.id.mondeo_btn_air_wind_add;
                                                                        TextView textView12 = (TextView) view.findViewById(R.id.mondeo_btn_air_wind_add);
                                                                        if (textView12 != null) {
                                                                            i = R.id.mondeo_btn_air_wind_del;
                                                                            TextView textView13 = (TextView) view.findViewById(R.id.mondeo_btn_air_wind_del);
                                                                            if (textView13 != null) {
                                                                                i = R.id.mondeo_seekbar_wind;
                                                                                FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.mondeo_seekbar_wind);
                                                                                if (fuelSeekBar != null) {
                                                                                    i = R.id.mondeo_tv_left_temp;
                                                                                    TextView textView14 = (TextView) view.findViewById(R.id.mondeo_tv_left_temp);
                                                                                    if (textView14 != null) {
                                                                                        i = R.id.mondeo_tv_right_temp;
                                                                                        TextView textView15 = (TextView) view.findViewById(R.id.mondeo_tv_right_temp);
                                                                                        if (textView15 != null) {
                                                                                            return new HdMondeoAirSetBinding((FrameLayout) view, textView, textView2, linearLayout, linearLayout2, textView3, textView4, textView5, textView6, button, button2, textView7, textView8, button3, textView9, textView10, textView11, textView12, textView13, fuelSeekBar, textView14, textView15);
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
