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
public final class FrodBnrAirsetBinding implements ViewBinding {
    public final LinearLayout frodAirAllState;
    public final LinearLayout frodAirAllState1;
    public final LinearLayout frodAirAllState2;
    public final LinearLayout frodAirLeftTemp;
    public final Button frodAirLeftTempAdd;
    public final Button frodAirLeftTempDel;
    public final LinearLayout frodAirLlWind;
    public final Button frodAirRightTempAdd;
    public final Button frodAirRightTempDel;
    public final Button frodBtnAirAc;
    public final Button frodBtnAirAcmax;
    public final Button frodBtnAirAuto;
    public final Button frodBtnAirCycleIn;
    public final Button frodBtnAirCycleOut;
    public final Button frodBtnAirDownWind;
    public final Button frodBtnAirDual;
    public final Button frodBtnAirFrontDeg;
    public final Button frodBtnAirFrontDegMax;
    public final Button frodBtnAirLeftCool;
    public final Button frodBtnAirParWind;
    public final Button frodBtnAirRearDeg;
    public final Button frodBtnAirRearTempadd;
    public final Button frodBtnAirRearTempdel;
    public final Button frodBtnAirRearWindadd;
    public final Button frodBtnAirRearWinddel;
    public final Button frodBtnAirRightCool;
    public final Button frodBtnAirSwitch;
    public final Button frodBtnAirUpWind;
    public final Button frodBtnAirWindAdd;
    public final Button frodBtnAirWindDeg;
    public final Button frodBtnAirWindDel;
    public final FuelSeekBar frodSeekbarWind;
    public final TextView frodTvLeftTemp;
    public final TextView frodTvRightTemp;
    private final FrameLayout rootView;

    private FrodBnrAirsetBinding(FrameLayout frameLayout, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, Button button, Button button2, LinearLayout linearLayout5, Button button3, Button button4, Button button5, Button button6, Button button7, Button button8, Button button9, Button button10, Button button11, Button button12, Button button13, Button button14, Button button15, Button button16, Button button17, Button button18, Button button19, Button button20, Button button21, Button button22, Button button23, Button button24, Button button25, Button button26, FuelSeekBar fuelSeekBar, TextView textView, TextView textView2) {
        this.rootView = frameLayout;
        this.frodAirAllState = linearLayout;
        this.frodAirAllState1 = linearLayout2;
        this.frodAirAllState2 = linearLayout3;
        this.frodAirLeftTemp = linearLayout4;
        this.frodAirLeftTempAdd = button;
        this.frodAirLeftTempDel = button2;
        this.frodAirLlWind = linearLayout5;
        this.frodAirRightTempAdd = button3;
        this.frodAirRightTempDel = button4;
        this.frodBtnAirAc = button5;
        this.frodBtnAirAcmax = button6;
        this.frodBtnAirAuto = button7;
        this.frodBtnAirCycleIn = button8;
        this.frodBtnAirCycleOut = button9;
        this.frodBtnAirDownWind = button10;
        this.frodBtnAirDual = button11;
        this.frodBtnAirFrontDeg = button12;
        this.frodBtnAirFrontDegMax = button13;
        this.frodBtnAirLeftCool = button14;
        this.frodBtnAirParWind = button15;
        this.frodBtnAirRearDeg = button16;
        this.frodBtnAirRearTempadd = button17;
        this.frodBtnAirRearTempdel = button18;
        this.frodBtnAirRearWindadd = button19;
        this.frodBtnAirRearWinddel = button20;
        this.frodBtnAirRightCool = button21;
        this.frodBtnAirSwitch = button22;
        this.frodBtnAirUpWind = button23;
        this.frodBtnAirWindAdd = button24;
        this.frodBtnAirWindDeg = button25;
        this.frodBtnAirWindDel = button26;
        this.frodSeekbarWind = fuelSeekBar;
        this.frodTvLeftTemp = textView;
        this.frodTvRightTemp = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static FrodBnrAirsetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FrodBnrAirsetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.frod_bnr_airset, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FrodBnrAirsetBinding bind(View view) {
        int i = R.id.frod_air_all_state;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.frod_air_all_state);
        if (linearLayout != null) {
            i = R.id.frod_air_all_state1;
            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.frod_air_all_state1);
            if (linearLayout2 != null) {
                i = R.id.frod_air_all_state2;
                LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.frod_air_all_state2);
                if (linearLayout3 != null) {
                    i = R.id.frod_air_left_temp;
                    LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.frod_air_left_temp);
                    if (linearLayout4 != null) {
                        i = R.id.frod_air_left_temp_add;
                        Button button = (Button) view.findViewById(R.id.frod_air_left_temp_add);
                        if (button != null) {
                            i = R.id.frod_air_left_temp_del;
                            Button button2 = (Button) view.findViewById(R.id.frod_air_left_temp_del);
                            if (button2 != null) {
                                i = R.id.frod_air_ll_wind;
                                LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.frod_air_ll_wind);
                                if (linearLayout5 != null) {
                                    i = R.id.frod_air_right_temp_add;
                                    Button button3 = (Button) view.findViewById(R.id.frod_air_right_temp_add);
                                    if (button3 != null) {
                                        i = R.id.frod_air_right_temp_del;
                                        Button button4 = (Button) view.findViewById(R.id.frod_air_right_temp_del);
                                        if (button4 != null) {
                                            i = R.id.frod_btn_air_ac;
                                            Button button5 = (Button) view.findViewById(R.id.frod_btn_air_ac);
                                            if (button5 != null) {
                                                i = R.id.frod_btn_air_acmax;
                                                Button button6 = (Button) view.findViewById(R.id.frod_btn_air_acmax);
                                                if (button6 != null) {
                                                    i = R.id.frod_btn_air_auto;
                                                    Button button7 = (Button) view.findViewById(R.id.frod_btn_air_auto);
                                                    if (button7 != null) {
                                                        i = R.id.frod_btn_air_cycle_in;
                                                        Button button8 = (Button) view.findViewById(R.id.frod_btn_air_cycle_in);
                                                        if (button8 != null) {
                                                            i = R.id.frod_btn_air_cycle_out;
                                                            Button button9 = (Button) view.findViewById(R.id.frod_btn_air_cycle_out);
                                                            if (button9 != null) {
                                                                i = R.id.frod_btn_air_down_wind;
                                                                Button button10 = (Button) view.findViewById(R.id.frod_btn_air_down_wind);
                                                                if (button10 != null) {
                                                                    i = R.id.frod_btn_air_dual;
                                                                    Button button11 = (Button) view.findViewById(R.id.frod_btn_air_dual);
                                                                    if (button11 != null) {
                                                                        i = R.id.frod_btn_air_front_deg;
                                                                        Button button12 = (Button) view.findViewById(R.id.frod_btn_air_front_deg);
                                                                        if (button12 != null) {
                                                                            i = R.id.frod_btn_air_front_deg_max;
                                                                            Button button13 = (Button) view.findViewById(R.id.frod_btn_air_front_deg_max);
                                                                            if (button13 != null) {
                                                                                i = R.id.frod_btn_air_left_cool;
                                                                                Button button14 = (Button) view.findViewById(R.id.frod_btn_air_left_cool);
                                                                                if (button14 != null) {
                                                                                    i = R.id.frod_btn_air_par_wind;
                                                                                    Button button15 = (Button) view.findViewById(R.id.frod_btn_air_par_wind);
                                                                                    if (button15 != null) {
                                                                                        i = R.id.frod_btn_air_rear_deg;
                                                                                        Button button16 = (Button) view.findViewById(R.id.frod_btn_air_rear_deg);
                                                                                        if (button16 != null) {
                                                                                            i = R.id.frod_btn_air_rear_tempadd;
                                                                                            Button button17 = (Button) view.findViewById(R.id.frod_btn_air_rear_tempadd);
                                                                                            if (button17 != null) {
                                                                                                i = R.id.frod_btn_air_rear_tempdel;
                                                                                                Button button18 = (Button) view.findViewById(R.id.frod_btn_air_rear_tempdel);
                                                                                                if (button18 != null) {
                                                                                                    i = R.id.frod_btn_air_rear_windadd;
                                                                                                    Button button19 = (Button) view.findViewById(R.id.frod_btn_air_rear_windadd);
                                                                                                    if (button19 != null) {
                                                                                                        i = R.id.frod_btn_air_rear_winddel;
                                                                                                        Button button20 = (Button) view.findViewById(R.id.frod_btn_air_rear_winddel);
                                                                                                        if (button20 != null) {
                                                                                                            i = R.id.frod_btn_air_right_cool;
                                                                                                            Button button21 = (Button) view.findViewById(R.id.frod_btn_air_right_cool);
                                                                                                            if (button21 != null) {
                                                                                                                i = R.id.frod_btn_air_switch;
                                                                                                                Button button22 = (Button) view.findViewById(R.id.frod_btn_air_switch);
                                                                                                                if (button22 != null) {
                                                                                                                    i = R.id.frod_btn_air_up_wind;
                                                                                                                    Button button23 = (Button) view.findViewById(R.id.frod_btn_air_up_wind);
                                                                                                                    if (button23 != null) {
                                                                                                                        i = R.id.frod_btn_air_wind_add;
                                                                                                                        Button button24 = (Button) view.findViewById(R.id.frod_btn_air_wind_add);
                                                                                                                        if (button24 != null) {
                                                                                                                            i = R.id.frod_btn_air_wind_deg;
                                                                                                                            Button button25 = (Button) view.findViewById(R.id.frod_btn_air_wind_deg);
                                                                                                                            if (button25 != null) {
                                                                                                                                i = R.id.frod_btn_air_wind_del;
                                                                                                                                Button button26 = (Button) view.findViewById(R.id.frod_btn_air_wind_del);
                                                                                                                                if (button26 != null) {
                                                                                                                                    i = R.id.frod_seekbar_wind;
                                                                                                                                    FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.frod_seekbar_wind);
                                                                                                                                    if (fuelSeekBar != null) {
                                                                                                                                        i = R.id.frod_tv_left_temp;
                                                                                                                                        TextView textView = (TextView) view.findViewById(R.id.frod_tv_left_temp);
                                                                                                                                        if (textView != null) {
                                                                                                                                            i = R.id.frod_tv_right_temp;
                                                                                                                                            TextView textView2 = (TextView) view.findViewById(R.id.frod_tv_right_temp);
                                                                                                                                            if (textView2 != null) {
                                                                                                                                                return new FrodBnrAirsetBinding((FrameLayout) view, linearLayout, linearLayout2, linearLayout3, linearLayout4, button, button2, linearLayout5, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12, button13, button14, button15, button16, button17, button18, button19, button20, button21, button22, button23, button24, button25, button26, fuelSeekBar, textView, textView2);
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
