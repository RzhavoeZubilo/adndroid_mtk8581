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
public final class GmAirSetBinding implements ViewBinding {
    public final Button gmAirLeftTempAdd;
    public final Button gmAirLeftTempDel;
    public final LinearLayout gmAirLl1;
    public final LinearLayout gmAirLlWind;
    public final Button gmAirRightTempAdd;
    public final Button gmAirRightTempDel;
    public final Button gmBtnAirAc;
    public final Button gmBtnAirAuto;
    public final Button gmBtnAirCycleIn;
    public final Button gmBtnAirCycleOut;
    public final Button gmBtnAirDownParWind;
    public final Button gmBtnAirDownUpWind;
    public final Button gmBtnAirDownWind;
    public final Button gmBtnAirDual;
    public final Button gmBtnAirFrontDeg;
    public final Button gmBtnAirParWind;
    public final Button gmBtnAirRearArea;
    public final Button gmBtnAirWindAdd;
    public final Button gmBtnAirWindDel;
    public final Button gmBtnRearAirAuto;
    public final RelativeLayout gmRlWind;
    public final FuelSeekBar gmSeekbarWind;
    public final TextView gmTvLeftTemp;
    public final TextView gmTvRightTemp;
    public final TextView gmTxtAutoWind;
    private final FrameLayout rootView;

    private GmAirSetBinding(FrameLayout frameLayout, Button button, Button button2, LinearLayout linearLayout, LinearLayout linearLayout2, Button button3, Button button4, Button button5, Button button6, Button button7, Button button8, Button button9, Button button10, Button button11, Button button12, Button button13, Button button14, Button button15, Button button16, Button button17, Button button18, RelativeLayout relativeLayout, FuelSeekBar fuelSeekBar, TextView textView, TextView textView2, TextView textView3) {
        this.rootView = frameLayout;
        this.gmAirLeftTempAdd = button;
        this.gmAirLeftTempDel = button2;
        this.gmAirLl1 = linearLayout;
        this.gmAirLlWind = linearLayout2;
        this.gmAirRightTempAdd = button3;
        this.gmAirRightTempDel = button4;
        this.gmBtnAirAc = button5;
        this.gmBtnAirAuto = button6;
        this.gmBtnAirCycleIn = button7;
        this.gmBtnAirCycleOut = button8;
        this.gmBtnAirDownParWind = button9;
        this.gmBtnAirDownUpWind = button10;
        this.gmBtnAirDownWind = button11;
        this.gmBtnAirDual = button12;
        this.gmBtnAirFrontDeg = button13;
        this.gmBtnAirParWind = button14;
        this.gmBtnAirRearArea = button15;
        this.gmBtnAirWindAdd = button16;
        this.gmBtnAirWindDel = button17;
        this.gmBtnRearAirAuto = button18;
        this.gmRlWind = relativeLayout;
        this.gmSeekbarWind = fuelSeekBar;
        this.gmTvLeftTemp = textView;
        this.gmTvRightTemp = textView2;
        this.gmTxtAutoWind = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static GmAirSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static GmAirSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.gm_air_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static GmAirSetBinding bind(View view) {
        int i = R.id.gm_air_left_temp_add;
        Button button = (Button) view.findViewById(R.id.gm_air_left_temp_add);
        if (button != null) {
            i = R.id.gm_air_left_temp_del;
            Button button2 = (Button) view.findViewById(R.id.gm_air_left_temp_del);
            if (button2 != null) {
                i = R.id.gm_air_ll1;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.gm_air_ll1);
                if (linearLayout != null) {
                    i = R.id.gm_air_ll_wind;
                    LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.gm_air_ll_wind);
                    if (linearLayout2 != null) {
                        i = R.id.gm_air_right_temp_add;
                        Button button3 = (Button) view.findViewById(R.id.gm_air_right_temp_add);
                        if (button3 != null) {
                            i = R.id.gm_air_right_temp_del;
                            Button button4 = (Button) view.findViewById(R.id.gm_air_right_temp_del);
                            if (button4 != null) {
                                i = R.id.gm_btn_air_ac;
                                Button button5 = (Button) view.findViewById(R.id.gm_btn_air_ac);
                                if (button5 != null) {
                                    i = R.id.gm_btn_air_auto;
                                    Button button6 = (Button) view.findViewById(R.id.gm_btn_air_auto);
                                    if (button6 != null) {
                                        i = R.id.gm_btn_air_cycle_in;
                                        Button button7 = (Button) view.findViewById(R.id.gm_btn_air_cycle_in);
                                        if (button7 != null) {
                                            i = R.id.gm_btn_air_cycle_out;
                                            Button button8 = (Button) view.findViewById(R.id.gm_btn_air_cycle_out);
                                            if (button8 != null) {
                                                i = R.id.gm_btn_air_down_par_wind;
                                                Button button9 = (Button) view.findViewById(R.id.gm_btn_air_down_par_wind);
                                                if (button9 != null) {
                                                    i = R.id.gm_btn_air_down_up_wind;
                                                    Button button10 = (Button) view.findViewById(R.id.gm_btn_air_down_up_wind);
                                                    if (button10 != null) {
                                                        i = R.id.gm_btn_air_down_wind;
                                                        Button button11 = (Button) view.findViewById(R.id.gm_btn_air_down_wind);
                                                        if (button11 != null) {
                                                            i = R.id.gm_btn_air_dual;
                                                            Button button12 = (Button) view.findViewById(R.id.gm_btn_air_dual);
                                                            if (button12 != null) {
                                                                i = R.id.gm_btn_air_front_deg;
                                                                Button button13 = (Button) view.findViewById(R.id.gm_btn_air_front_deg);
                                                                if (button13 != null) {
                                                                    i = R.id.gm_btn_air_par_wind;
                                                                    Button button14 = (Button) view.findViewById(R.id.gm_btn_air_par_wind);
                                                                    if (button14 != null) {
                                                                        i = R.id.gm_btn_air_rear_area;
                                                                        Button button15 = (Button) view.findViewById(R.id.gm_btn_air_rear_area);
                                                                        if (button15 != null) {
                                                                            i = R.id.gm_btn_air_wind_add;
                                                                            Button button16 = (Button) view.findViewById(R.id.gm_btn_air_wind_add);
                                                                            if (button16 != null) {
                                                                                i = R.id.gm_btn_air_wind_del;
                                                                                Button button17 = (Button) view.findViewById(R.id.gm_btn_air_wind_del);
                                                                                if (button17 != null) {
                                                                                    i = R.id.gm_btn_rear_air_auto;
                                                                                    Button button18 = (Button) view.findViewById(R.id.gm_btn_rear_air_auto);
                                                                                    if (button18 != null) {
                                                                                        i = R.id.gm_rl_wind;
                                                                                        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.gm_rl_wind);
                                                                                        if (relativeLayout != null) {
                                                                                            i = R.id.gm_seekbar_wind;
                                                                                            FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.gm_seekbar_wind);
                                                                                            if (fuelSeekBar != null) {
                                                                                                i = R.id.gm_tv_left_temp;
                                                                                                TextView textView = (TextView) view.findViewById(R.id.gm_tv_left_temp);
                                                                                                if (textView != null) {
                                                                                                    i = R.id.gm_tv_right_temp;
                                                                                                    TextView textView2 = (TextView) view.findViewById(R.id.gm_tv_right_temp);
                                                                                                    if (textView2 != null) {
                                                                                                        i = R.id.gm_txt_auto_wind;
                                                                                                        TextView textView3 = (TextView) view.findViewById(R.id.gm_txt_auto_wind);
                                                                                                        if (textView3 != null) {
                                                                                                            return new GmAirSetBinding((FrameLayout) view, button, button2, linearLayout, linearLayout2, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12, button13, button14, button15, button16, button17, button18, relativeLayout, fuelSeekBar, textView, textView2, textView3);
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
