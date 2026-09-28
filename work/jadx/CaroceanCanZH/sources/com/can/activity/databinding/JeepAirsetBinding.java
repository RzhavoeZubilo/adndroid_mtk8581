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
public final class JeepAirsetBinding implements ViewBinding {
    public final LinearLayout jeepAirAllState;
    public final Button jeepAirLeftTempAdd;
    public final Button jeepAirLeftTempDel;
    public final LinearLayout jeepAirLlWind;
    public final Button jeepAirRightTempAdd;
    public final Button jeepAirRightTempDel;
    public final Button jeepBtnAirAc;
    public final Button jeepBtnAirAcmax;
    public final Button jeepBtnAirAuto;
    public final Button jeepBtnAirCycleAuto;
    public final Button jeepBtnAirCycleIn;
    public final Button jeepBtnAirCycleOut;
    public final Button jeepBtnAirDownParWind;
    public final Button jeepBtnAirDownUpWind;
    public final Button jeepBtnAirDownWind;
    public final Button jeepBtnAirFrontDeg;
    public final Button jeepBtnAirLhot;
    public final Button jeepBtnAirOn;
    public final Button jeepBtnAirParWind;
    public final Button jeepBtnAirRear;
    public final Button jeepBtnAirRhot;
    public final Button jeepBtnAirSync;
    public final Button jeepBtnAirWindAdd;
    public final Button jeepBtnAirWindDel;
    public final FuelSeekBar jeepSeekbarWind;
    public final TextView jeepTvLeftTemp;
    public final TextView jeepTvRightTemp;
    private final FrameLayout rootView;

    private JeepAirsetBinding(FrameLayout frameLayout, LinearLayout linearLayout, Button button, Button button2, LinearLayout linearLayout2, Button button3, Button button4, Button button5, Button button6, Button button7, Button button8, Button button9, Button button10, Button button11, Button button12, Button button13, Button button14, Button button15, Button button16, Button button17, Button button18, Button button19, Button button20, Button button21, Button button22, FuelSeekBar fuelSeekBar, TextView textView, TextView textView2) {
        this.rootView = frameLayout;
        this.jeepAirAllState = linearLayout;
        this.jeepAirLeftTempAdd = button;
        this.jeepAirLeftTempDel = button2;
        this.jeepAirLlWind = linearLayout2;
        this.jeepAirRightTempAdd = button3;
        this.jeepAirRightTempDel = button4;
        this.jeepBtnAirAc = button5;
        this.jeepBtnAirAcmax = button6;
        this.jeepBtnAirAuto = button7;
        this.jeepBtnAirCycleAuto = button8;
        this.jeepBtnAirCycleIn = button9;
        this.jeepBtnAirCycleOut = button10;
        this.jeepBtnAirDownParWind = button11;
        this.jeepBtnAirDownUpWind = button12;
        this.jeepBtnAirDownWind = button13;
        this.jeepBtnAirFrontDeg = button14;
        this.jeepBtnAirLhot = button15;
        this.jeepBtnAirOn = button16;
        this.jeepBtnAirParWind = button17;
        this.jeepBtnAirRear = button18;
        this.jeepBtnAirRhot = button19;
        this.jeepBtnAirSync = button20;
        this.jeepBtnAirWindAdd = button21;
        this.jeepBtnAirWindDel = button22;
        this.jeepSeekbarWind = fuelSeekBar;
        this.jeepTvLeftTemp = textView;
        this.jeepTvRightTemp = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static JeepAirsetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static JeepAirsetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.jeep_airset, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static JeepAirsetBinding bind(View view) {
        int i = R.id.jeep_air_all_state;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.jeep_air_all_state);
        if (linearLayout != null) {
            i = R.id.jeep_air_left_temp_add;
            Button button = (Button) view.findViewById(R.id.jeep_air_left_temp_add);
            if (button != null) {
                i = R.id.jeep_air_left_temp_del;
                Button button2 = (Button) view.findViewById(R.id.jeep_air_left_temp_del);
                if (button2 != null) {
                    i = R.id.jeep_air_ll_wind;
                    LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.jeep_air_ll_wind);
                    if (linearLayout2 != null) {
                        i = R.id.jeep_air_right_temp_add;
                        Button button3 = (Button) view.findViewById(R.id.jeep_air_right_temp_add);
                        if (button3 != null) {
                            i = R.id.jeep_air_right_temp_del;
                            Button button4 = (Button) view.findViewById(R.id.jeep_air_right_temp_del);
                            if (button4 != null) {
                                i = R.id.jeep_btn_air_ac;
                                Button button5 = (Button) view.findViewById(R.id.jeep_btn_air_ac);
                                if (button5 != null) {
                                    i = R.id.jeep_btn_air_acmax;
                                    Button button6 = (Button) view.findViewById(R.id.jeep_btn_air_acmax);
                                    if (button6 != null) {
                                        i = R.id.jeep_btn_air_auto;
                                        Button button7 = (Button) view.findViewById(R.id.jeep_btn_air_auto);
                                        if (button7 != null) {
                                            i = R.id.jeep_btn_air_cycle_auto;
                                            Button button8 = (Button) view.findViewById(R.id.jeep_btn_air_cycle_auto);
                                            if (button8 != null) {
                                                i = R.id.jeep_btn_air_cycle_in;
                                                Button button9 = (Button) view.findViewById(R.id.jeep_btn_air_cycle_in);
                                                if (button9 != null) {
                                                    i = R.id.jeep_btn_air_cycle_out;
                                                    Button button10 = (Button) view.findViewById(R.id.jeep_btn_air_cycle_out);
                                                    if (button10 != null) {
                                                        i = R.id.jeep_btn_air_down_par_wind;
                                                        Button button11 = (Button) view.findViewById(R.id.jeep_btn_air_down_par_wind);
                                                        if (button11 != null) {
                                                            i = R.id.jeep_btn_air_down_up_wind;
                                                            Button button12 = (Button) view.findViewById(R.id.jeep_btn_air_down_up_wind);
                                                            if (button12 != null) {
                                                                i = R.id.jeep_btn_air_down_wind;
                                                                Button button13 = (Button) view.findViewById(R.id.jeep_btn_air_down_wind);
                                                                if (button13 != null) {
                                                                    i = R.id.jeep_btn_air_front_deg;
                                                                    Button button14 = (Button) view.findViewById(R.id.jeep_btn_air_front_deg);
                                                                    if (button14 != null) {
                                                                        i = R.id.jeep_btn_air_lhot;
                                                                        Button button15 = (Button) view.findViewById(R.id.jeep_btn_air_lhot);
                                                                        if (button15 != null) {
                                                                            i = R.id.jeep_btn_air_on;
                                                                            Button button16 = (Button) view.findViewById(R.id.jeep_btn_air_on);
                                                                            if (button16 != null) {
                                                                                i = R.id.jeep_btn_air_par_wind;
                                                                                Button button17 = (Button) view.findViewById(R.id.jeep_btn_air_par_wind);
                                                                                if (button17 != null) {
                                                                                    i = R.id.jeep_btn_air_rear;
                                                                                    Button button18 = (Button) view.findViewById(R.id.jeep_btn_air_rear);
                                                                                    if (button18 != null) {
                                                                                        i = R.id.jeep_btn_air_rhot;
                                                                                        Button button19 = (Button) view.findViewById(R.id.jeep_btn_air_rhot);
                                                                                        if (button19 != null) {
                                                                                            i = R.id.jeep_btn_air_sync;
                                                                                            Button button20 = (Button) view.findViewById(R.id.jeep_btn_air_sync);
                                                                                            if (button20 != null) {
                                                                                                i = R.id.jeep_btn_air_wind_add;
                                                                                                Button button21 = (Button) view.findViewById(R.id.jeep_btn_air_wind_add);
                                                                                                if (button21 != null) {
                                                                                                    i = R.id.jeep_btn_air_wind_del;
                                                                                                    Button button22 = (Button) view.findViewById(R.id.jeep_btn_air_wind_del);
                                                                                                    if (button22 != null) {
                                                                                                        i = R.id.jeep_seekbar_wind;
                                                                                                        FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.jeep_seekbar_wind);
                                                                                                        if (fuelSeekBar != null) {
                                                                                                            i = R.id.jeep_tv_left_temp;
                                                                                                            TextView textView = (TextView) view.findViewById(R.id.jeep_tv_left_temp);
                                                                                                            if (textView != null) {
                                                                                                                i = R.id.jeep_tv_right_temp;
                                                                                                                TextView textView2 = (TextView) view.findViewById(R.id.jeep_tv_right_temp);
                                                                                                                if (textView2 != null) {
                                                                                                                    return new JeepAirsetBinding((FrameLayout) view, linearLayout, button, button2, linearLayout2, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12, button13, button14, button15, button16, button17, button18, button19, button20, button21, button22, fuelSeekBar, textView, textView2);
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
