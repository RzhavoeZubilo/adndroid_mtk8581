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
public final class CheryAirSetBinding implements ViewBinding {
    public final Button cheryAirLeftTempAdd;
    public final Button cheryAirLeftTempDel;
    public final LinearLayout cheryAirLl1;
    public final LinearLayout cheryAirLlWind;
    public final Button cheryAirRightTempAdd;
    public final Button cheryAirRightTempDel;
    public final Button cheryBtnAirAc;
    public final Button cheryBtnAirAuto;
    public final Button cheryBtnAirCycleIn;
    public final Button cheryBtnAirCycleOut;
    public final Button cheryBtnAirDownParWind;
    public final Button cheryBtnAirDownUpWind;
    public final Button cheryBtnAirDownWind;
    public final Button cheryBtnAirDual;
    public final Button cheryBtnAirParWind;
    public final Button cheryBtnAirState;
    public final Button cheryBtnAirUpWind;
    public final Button cheryBtnAirWindAdd;
    public final Button cheryBtnAirWindDel;
    public final RelativeLayout cheryRlWind;
    public final FuelSeekBar cherySeekbarWind;
    public final TextView cheryTvLeftTemp;
    public final TextView cheryTvRightTemp;
    private final FrameLayout rootView;

    private CheryAirSetBinding(FrameLayout frameLayout, Button button, Button button2, LinearLayout linearLayout, LinearLayout linearLayout2, Button button3, Button button4, Button button5, Button button6, Button button7, Button button8, Button button9, Button button10, Button button11, Button button12, Button button13, Button button14, Button button15, Button button16, Button button17, RelativeLayout relativeLayout, FuelSeekBar fuelSeekBar, TextView textView, TextView textView2) {
        this.rootView = frameLayout;
        this.cheryAirLeftTempAdd = button;
        this.cheryAirLeftTempDel = button2;
        this.cheryAirLl1 = linearLayout;
        this.cheryAirLlWind = linearLayout2;
        this.cheryAirRightTempAdd = button3;
        this.cheryAirRightTempDel = button4;
        this.cheryBtnAirAc = button5;
        this.cheryBtnAirAuto = button6;
        this.cheryBtnAirCycleIn = button7;
        this.cheryBtnAirCycleOut = button8;
        this.cheryBtnAirDownParWind = button9;
        this.cheryBtnAirDownUpWind = button10;
        this.cheryBtnAirDownWind = button11;
        this.cheryBtnAirDual = button12;
        this.cheryBtnAirParWind = button13;
        this.cheryBtnAirState = button14;
        this.cheryBtnAirUpWind = button15;
        this.cheryBtnAirWindAdd = button16;
        this.cheryBtnAirWindDel = button17;
        this.cheryRlWind = relativeLayout;
        this.cherySeekbarWind = fuelSeekBar;
        this.cheryTvLeftTemp = textView;
        this.cheryTvRightTemp = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static CheryAirSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CheryAirSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.chery_air_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static CheryAirSetBinding bind(View view) {
        int i = R.id.chery_air_left_temp_add;
        Button button = (Button) view.findViewById(R.id.chery_air_left_temp_add);
        if (button != null) {
            i = R.id.chery_air_left_temp_del;
            Button button2 = (Button) view.findViewById(R.id.chery_air_left_temp_del);
            if (button2 != null) {
                i = R.id.chery_air_ll1;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.chery_air_ll1);
                if (linearLayout != null) {
                    i = R.id.chery_air_ll_wind;
                    LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.chery_air_ll_wind);
                    if (linearLayout2 != null) {
                        i = R.id.chery_air_right_temp_add;
                        Button button3 = (Button) view.findViewById(R.id.chery_air_right_temp_add);
                        if (button3 != null) {
                            i = R.id.chery_air_right_temp_del;
                            Button button4 = (Button) view.findViewById(R.id.chery_air_right_temp_del);
                            if (button4 != null) {
                                i = R.id.chery_btn_air_ac;
                                Button button5 = (Button) view.findViewById(R.id.chery_btn_air_ac);
                                if (button5 != null) {
                                    i = R.id.chery_btn_air_auto;
                                    Button button6 = (Button) view.findViewById(R.id.chery_btn_air_auto);
                                    if (button6 != null) {
                                        i = R.id.chery_btn_air_cycle_in;
                                        Button button7 = (Button) view.findViewById(R.id.chery_btn_air_cycle_in);
                                        if (button7 != null) {
                                            i = R.id.chery_btn_air_cycle_out;
                                            Button button8 = (Button) view.findViewById(R.id.chery_btn_air_cycle_out);
                                            if (button8 != null) {
                                                i = R.id.chery_btn_air_down_par_wind;
                                                Button button9 = (Button) view.findViewById(R.id.chery_btn_air_down_par_wind);
                                                if (button9 != null) {
                                                    i = R.id.chery_btn_air_down_up_wind;
                                                    Button button10 = (Button) view.findViewById(R.id.chery_btn_air_down_up_wind);
                                                    if (button10 != null) {
                                                        i = R.id.chery_btn_air_down_wind;
                                                        Button button11 = (Button) view.findViewById(R.id.chery_btn_air_down_wind);
                                                        if (button11 != null) {
                                                            i = R.id.chery_btn_air_dual;
                                                            Button button12 = (Button) view.findViewById(R.id.chery_btn_air_dual);
                                                            if (button12 != null) {
                                                                i = R.id.chery_btn_air_par_wind;
                                                                Button button13 = (Button) view.findViewById(R.id.chery_btn_air_par_wind);
                                                                if (button13 != null) {
                                                                    i = R.id.chery_btn_air_state;
                                                                    Button button14 = (Button) view.findViewById(R.id.chery_btn_air_state);
                                                                    if (button14 != null) {
                                                                        i = R.id.chery_btn_air_up_wind;
                                                                        Button button15 = (Button) view.findViewById(R.id.chery_btn_air_up_wind);
                                                                        if (button15 != null) {
                                                                            i = R.id.chery_btn_air_wind_add;
                                                                            Button button16 = (Button) view.findViewById(R.id.chery_btn_air_wind_add);
                                                                            if (button16 != null) {
                                                                                i = R.id.chery_btn_air_wind_del;
                                                                                Button button17 = (Button) view.findViewById(R.id.chery_btn_air_wind_del);
                                                                                if (button17 != null) {
                                                                                    i = R.id.chery_rl_wind;
                                                                                    RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.chery_rl_wind);
                                                                                    if (relativeLayout != null) {
                                                                                        i = R.id.chery_seekbar_wind;
                                                                                        FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.chery_seekbar_wind);
                                                                                        if (fuelSeekBar != null) {
                                                                                            i = R.id.chery_tv_left_temp;
                                                                                            TextView textView = (TextView) view.findViewById(R.id.chery_tv_left_temp);
                                                                                            if (textView != null) {
                                                                                                i = R.id.chery_tv_right_temp;
                                                                                                TextView textView2 = (TextView) view.findViewById(R.id.chery_tv_right_temp);
                                                                                                if (textView2 != null) {
                                                                                                    return new CheryAirSetBinding((FrameLayout) view, button, button2, linearLayout, linearLayout2, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12, button13, button14, button15, button16, button17, relativeLayout, fuelSeekBar, textView, textView2);
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
