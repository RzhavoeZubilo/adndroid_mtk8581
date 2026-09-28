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
public final class HimaAirsetBinding implements ViewBinding {
    public final LinearLayout himaAirAllState;
    public final Button himaAirLeftTempAdd;
    public final Button himaAirLeftTempDel;
    public final LinearLayout himaAirLlWind;
    public final Button himaAirRightTempAdd;
    public final Button himaAirRightTempDel;
    public final Button himaBtnAirAc;
    public final Button himaBtnAirAqs;
    public final Button himaBtnAirCycleIn;
    public final Button himaBtnAirCycleOut;
    public final Button himaBtnAirDownParWind;
    public final Button himaBtnAirDownUpWind;
    public final Button himaBtnAirDownWind;
    public final Button himaBtnAirFrontDeg;
    public final Button himaBtnAirOn;
    public final Button himaBtnAirParWind;
    public final Button himaBtnAirRearDeg;
    public final Button himaBtnAirWindAdd;
    public final Button himaBtnAirWindDel;
    public final FuelSeekBar himaSeekbarWind;
    public final TextView himaTvLeftTemp;
    public final TextView himaTvRightTemp;
    private final FrameLayout rootView;

    private HimaAirsetBinding(FrameLayout frameLayout, LinearLayout linearLayout, Button button, Button button2, LinearLayout linearLayout2, Button button3, Button button4, Button button5, Button button6, Button button7, Button button8, Button button9, Button button10, Button button11, Button button12, Button button13, Button button14, Button button15, Button button16, Button button17, FuelSeekBar fuelSeekBar, TextView textView, TextView textView2) {
        this.rootView = frameLayout;
        this.himaAirAllState = linearLayout;
        this.himaAirLeftTempAdd = button;
        this.himaAirLeftTempDel = button2;
        this.himaAirLlWind = linearLayout2;
        this.himaAirRightTempAdd = button3;
        this.himaAirRightTempDel = button4;
        this.himaBtnAirAc = button5;
        this.himaBtnAirAqs = button6;
        this.himaBtnAirCycleIn = button7;
        this.himaBtnAirCycleOut = button8;
        this.himaBtnAirDownParWind = button9;
        this.himaBtnAirDownUpWind = button10;
        this.himaBtnAirDownWind = button11;
        this.himaBtnAirFrontDeg = button12;
        this.himaBtnAirOn = button13;
        this.himaBtnAirParWind = button14;
        this.himaBtnAirRearDeg = button15;
        this.himaBtnAirWindAdd = button16;
        this.himaBtnAirWindDel = button17;
        this.himaSeekbarWind = fuelSeekBar;
        this.himaTvLeftTemp = textView;
        this.himaTvRightTemp = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static HimaAirsetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HimaAirsetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.hima_airset, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static HimaAirsetBinding bind(View view) {
        int i = R.id.hima_air_all_state;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.hima_air_all_state);
        if (linearLayout != null) {
            i = R.id.hima_air_left_temp_add;
            Button button = (Button) view.findViewById(R.id.hima_air_left_temp_add);
            if (button != null) {
                i = R.id.hima_air_left_temp_del;
                Button button2 = (Button) view.findViewById(R.id.hima_air_left_temp_del);
                if (button2 != null) {
                    i = R.id.hima_air_ll_wind;
                    LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.hima_air_ll_wind);
                    if (linearLayout2 != null) {
                        i = R.id.hima_air_right_temp_add;
                        Button button3 = (Button) view.findViewById(R.id.hima_air_right_temp_add);
                        if (button3 != null) {
                            i = R.id.hima_air_right_temp_del;
                            Button button4 = (Button) view.findViewById(R.id.hima_air_right_temp_del);
                            if (button4 != null) {
                                i = R.id.hima_btn_air_ac;
                                Button button5 = (Button) view.findViewById(R.id.hima_btn_air_ac);
                                if (button5 != null) {
                                    i = R.id.hima_btn_air_aqs;
                                    Button button6 = (Button) view.findViewById(R.id.hima_btn_air_aqs);
                                    if (button6 != null) {
                                        i = R.id.hima_btn_air_cycle_in;
                                        Button button7 = (Button) view.findViewById(R.id.hima_btn_air_cycle_in);
                                        if (button7 != null) {
                                            i = R.id.hima_btn_air_cycle_out;
                                            Button button8 = (Button) view.findViewById(R.id.hima_btn_air_cycle_out);
                                            if (button8 != null) {
                                                i = R.id.hima_btn_air_down_par_wind;
                                                Button button9 = (Button) view.findViewById(R.id.hima_btn_air_down_par_wind);
                                                if (button9 != null) {
                                                    i = R.id.hima_btn_air_down_up_wind;
                                                    Button button10 = (Button) view.findViewById(R.id.hima_btn_air_down_up_wind);
                                                    if (button10 != null) {
                                                        i = R.id.hima_btn_air_down_wind;
                                                        Button button11 = (Button) view.findViewById(R.id.hima_btn_air_down_wind);
                                                        if (button11 != null) {
                                                            i = R.id.hima_btn_air_front_deg;
                                                            Button button12 = (Button) view.findViewById(R.id.hima_btn_air_front_deg);
                                                            if (button12 != null) {
                                                                i = R.id.hima_btn_air_on;
                                                                Button button13 = (Button) view.findViewById(R.id.hima_btn_air_on);
                                                                if (button13 != null) {
                                                                    i = R.id.hima_btn_air_par_wind;
                                                                    Button button14 = (Button) view.findViewById(R.id.hima_btn_air_par_wind);
                                                                    if (button14 != null) {
                                                                        i = R.id.hima_btn_air_rear_deg;
                                                                        Button button15 = (Button) view.findViewById(R.id.hima_btn_air_rear_deg);
                                                                        if (button15 != null) {
                                                                            i = R.id.hima_btn_air_wind_add;
                                                                            Button button16 = (Button) view.findViewById(R.id.hima_btn_air_wind_add);
                                                                            if (button16 != null) {
                                                                                i = R.id.hima_btn_air_wind_del;
                                                                                Button button17 = (Button) view.findViewById(R.id.hima_btn_air_wind_del);
                                                                                if (button17 != null) {
                                                                                    i = R.id.hima_seekbar_wind;
                                                                                    FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.hima_seekbar_wind);
                                                                                    if (fuelSeekBar != null) {
                                                                                        i = R.id.hima_tv_left_temp;
                                                                                        TextView textView = (TextView) view.findViewById(R.id.hima_tv_left_temp);
                                                                                        if (textView != null) {
                                                                                            i = R.id.hima_tv_right_temp;
                                                                                            TextView textView2 = (TextView) view.findViewById(R.id.hima_tv_right_temp);
                                                                                            if (textView2 != null) {
                                                                                                return new HimaAirsetBinding((FrameLayout) view, linearLayout, button, button2, linearLayout2, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12, button13, button14, button15, button16, button17, fuelSeekBar, textView, textView2);
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
