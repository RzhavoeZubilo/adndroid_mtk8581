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
public final class DjGmAirSetBinding implements ViewBinding {
    public final Button gmAirLeftSeatCold;
    public final Button gmAirLeftSeatHot;
    public final Button gmAirLeftTempAdd;
    public final Button gmAirLeftTempDel;
    public final LinearLayout gmAirLl1;
    public final LinearLayout gmAirLlWind;
    public final Button gmAirRightSeatCold;
    public final Button gmAirRightSeatHot;
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
    public final Button gmBtnAirModeAdd;
    public final Button gmBtnAirModeSub;
    public final Button gmBtnAirOnOff;
    public final Button gmBtnAirParWind;
    public final Button gmBtnAirRearDeg;
    public final Button gmBtnAirSwitch;
    public final Button gmBtnAirWindAdd;
    public final Button gmBtnAirWindDel;
    public final LinearLayout gmLayoutLeftSeat;
    public final LinearLayout gmLayoutLeftTemp;
    public final LinearLayout gmLayoutRightSeat;
    public final LinearLayout gmLayoutRightTemp;
    public final RelativeLayout gmRlWind;
    public final FuelSeekBar gmSeekbarWind;
    public final TextView gmTvLeftSeat;
    public final TextView gmTvLeftTemp;
    public final TextView gmTvRightSeat;
    public final TextView gmTvRightTemp;
    public final TextView gmTxtAutoWind;
    private final FrameLayout rootView;

    private DjGmAirSetBinding(FrameLayout frameLayout, Button button, Button button2, Button button3, Button button4, LinearLayout linearLayout, LinearLayout linearLayout2, Button button5, Button button6, Button button7, Button button8, Button button9, Button button10, Button button11, Button button12, Button button13, Button button14, Button button15, Button button16, Button button17, Button button18, Button button19, Button button20, Button button21, Button button22, Button button23, Button button24, Button button25, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, RelativeLayout relativeLayout, FuelSeekBar fuelSeekBar, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = frameLayout;
        this.gmAirLeftSeatCold = button;
        this.gmAirLeftSeatHot = button2;
        this.gmAirLeftTempAdd = button3;
        this.gmAirLeftTempDel = button4;
        this.gmAirLl1 = linearLayout;
        this.gmAirLlWind = linearLayout2;
        this.gmAirRightSeatCold = button5;
        this.gmAirRightSeatHot = button6;
        this.gmAirRightTempAdd = button7;
        this.gmAirRightTempDel = button8;
        this.gmBtnAirAc = button9;
        this.gmBtnAirAuto = button10;
        this.gmBtnAirCycleIn = button11;
        this.gmBtnAirCycleOut = button12;
        this.gmBtnAirDownParWind = button13;
        this.gmBtnAirDownUpWind = button14;
        this.gmBtnAirDownWind = button15;
        this.gmBtnAirDual = button16;
        this.gmBtnAirFrontDeg = button17;
        this.gmBtnAirModeAdd = button18;
        this.gmBtnAirModeSub = button19;
        this.gmBtnAirOnOff = button20;
        this.gmBtnAirParWind = button21;
        this.gmBtnAirRearDeg = button22;
        this.gmBtnAirSwitch = button23;
        this.gmBtnAirWindAdd = button24;
        this.gmBtnAirWindDel = button25;
        this.gmLayoutLeftSeat = linearLayout3;
        this.gmLayoutLeftTemp = linearLayout4;
        this.gmLayoutRightSeat = linearLayout5;
        this.gmLayoutRightTemp = linearLayout6;
        this.gmRlWind = relativeLayout;
        this.gmSeekbarWind = fuelSeekBar;
        this.gmTvLeftSeat = textView;
        this.gmTvLeftTemp = textView2;
        this.gmTvRightSeat = textView3;
        this.gmTvRightTemp = textView4;
        this.gmTxtAutoWind = textView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static DjGmAirSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static DjGmAirSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dj_gm_air_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DjGmAirSetBinding bind(View view) {
        int i = R.id.gm_air_left_seat_cold;
        Button button = (Button) view.findViewById(R.id.gm_air_left_seat_cold);
        if (button != null) {
            i = R.id.gm_air_left_seat_hot;
            Button button2 = (Button) view.findViewById(R.id.gm_air_left_seat_hot);
            if (button2 != null) {
                i = R.id.gm_air_left_temp_add;
                Button button3 = (Button) view.findViewById(R.id.gm_air_left_temp_add);
                if (button3 != null) {
                    i = R.id.gm_air_left_temp_del;
                    Button button4 = (Button) view.findViewById(R.id.gm_air_left_temp_del);
                    if (button4 != null) {
                        i = R.id.gm_air_ll1;
                        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.gm_air_ll1);
                        if (linearLayout != null) {
                            i = R.id.gm_air_ll_wind;
                            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.gm_air_ll_wind);
                            if (linearLayout2 != null) {
                                i = R.id.gm_air_right_seat_cold;
                                Button button5 = (Button) view.findViewById(R.id.gm_air_right_seat_cold);
                                if (button5 != null) {
                                    i = R.id.gm_air_right_seat_hot;
                                    Button button6 = (Button) view.findViewById(R.id.gm_air_right_seat_hot);
                                    if (button6 != null) {
                                        i = R.id.gm_air_right_temp_add;
                                        Button button7 = (Button) view.findViewById(R.id.gm_air_right_temp_add);
                                        if (button7 != null) {
                                            i = R.id.gm_air_right_temp_del;
                                            Button button8 = (Button) view.findViewById(R.id.gm_air_right_temp_del);
                                            if (button8 != null) {
                                                i = R.id.gm_btn_air_ac;
                                                Button button9 = (Button) view.findViewById(R.id.gm_btn_air_ac);
                                                if (button9 != null) {
                                                    i = R.id.gm_btn_air_auto;
                                                    Button button10 = (Button) view.findViewById(R.id.gm_btn_air_auto);
                                                    if (button10 != null) {
                                                        i = R.id.gm_btn_air_cycle_in;
                                                        Button button11 = (Button) view.findViewById(R.id.gm_btn_air_cycle_in);
                                                        if (button11 != null) {
                                                            i = R.id.gm_btn_air_cycle_out;
                                                            Button button12 = (Button) view.findViewById(R.id.gm_btn_air_cycle_out);
                                                            if (button12 != null) {
                                                                i = R.id.gm_btn_air_down_par_wind;
                                                                Button button13 = (Button) view.findViewById(R.id.gm_btn_air_down_par_wind);
                                                                if (button13 != null) {
                                                                    i = R.id.gm_btn_air_down_up_wind;
                                                                    Button button14 = (Button) view.findViewById(R.id.gm_btn_air_down_up_wind);
                                                                    if (button14 != null) {
                                                                        i = R.id.gm_btn_air_down_wind;
                                                                        Button button15 = (Button) view.findViewById(R.id.gm_btn_air_down_wind);
                                                                        if (button15 != null) {
                                                                            i = R.id.gm_btn_air_dual;
                                                                            Button button16 = (Button) view.findViewById(R.id.gm_btn_air_dual);
                                                                            if (button16 != null) {
                                                                                i = R.id.gm_btn_air_front_deg;
                                                                                Button button17 = (Button) view.findViewById(R.id.gm_btn_air_front_deg);
                                                                                if (button17 != null) {
                                                                                    i = R.id.gm_btn_air_mode_add;
                                                                                    Button button18 = (Button) view.findViewById(R.id.gm_btn_air_mode_add);
                                                                                    if (button18 != null) {
                                                                                        i = R.id.gm_btn_air_mode_sub;
                                                                                        Button button19 = (Button) view.findViewById(R.id.gm_btn_air_mode_sub);
                                                                                        if (button19 != null) {
                                                                                            i = R.id.gm_btn_air_on_off;
                                                                                            Button button20 = (Button) view.findViewById(R.id.gm_btn_air_on_off);
                                                                                            if (button20 != null) {
                                                                                                i = R.id.gm_btn_air_par_wind;
                                                                                                Button button21 = (Button) view.findViewById(R.id.gm_btn_air_par_wind);
                                                                                                if (button21 != null) {
                                                                                                    i = R.id.gm_btn_air_rear_deg;
                                                                                                    Button button22 = (Button) view.findViewById(R.id.gm_btn_air_rear_deg);
                                                                                                    if (button22 != null) {
                                                                                                        i = R.id.gm_btn_air_switch;
                                                                                                        Button button23 = (Button) view.findViewById(R.id.gm_btn_air_switch);
                                                                                                        if (button23 != null) {
                                                                                                            i = R.id.gm_btn_air_wind_add;
                                                                                                            Button button24 = (Button) view.findViewById(R.id.gm_btn_air_wind_add);
                                                                                                            if (button24 != null) {
                                                                                                                i = R.id.gm_btn_air_wind_del;
                                                                                                                Button button25 = (Button) view.findViewById(R.id.gm_btn_air_wind_del);
                                                                                                                if (button25 != null) {
                                                                                                                    i = R.id.gm_layout_left_seat;
                                                                                                                    LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.gm_layout_left_seat);
                                                                                                                    if (linearLayout3 != null) {
                                                                                                                        i = R.id.gm_layout_left_temp;
                                                                                                                        LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.gm_layout_left_temp);
                                                                                                                        if (linearLayout4 != null) {
                                                                                                                            i = R.id.gm_layout_right_seat;
                                                                                                                            LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.gm_layout_right_seat);
                                                                                                                            if (linearLayout5 != null) {
                                                                                                                                i = R.id.gm_layout_right_temp;
                                                                                                                                LinearLayout linearLayout6 = (LinearLayout) view.findViewById(R.id.gm_layout_right_temp);
                                                                                                                                if (linearLayout6 != null) {
                                                                                                                                    i = R.id.gm_rl_wind;
                                                                                                                                    RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.gm_rl_wind);
                                                                                                                                    if (relativeLayout != null) {
                                                                                                                                        i = R.id.gm_seekbar_wind;
                                                                                                                                        FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.gm_seekbar_wind);
                                                                                                                                        if (fuelSeekBar != null) {
                                                                                                                                            i = R.id.gm_tv_left_seat;
                                                                                                                                            TextView textView = (TextView) view.findViewById(R.id.gm_tv_left_seat);
                                                                                                                                            if (textView != null) {
                                                                                                                                                i = R.id.gm_tv_left_temp;
                                                                                                                                                TextView textView2 = (TextView) view.findViewById(R.id.gm_tv_left_temp);
                                                                                                                                                if (textView2 != null) {
                                                                                                                                                    i = R.id.gm_tv_right_seat;
                                                                                                                                                    TextView textView3 = (TextView) view.findViewById(R.id.gm_tv_right_seat);
                                                                                                                                                    if (textView3 != null) {
                                                                                                                                                        i = R.id.gm_tv_right_temp;
                                                                                                                                                        TextView textView4 = (TextView) view.findViewById(R.id.gm_tv_right_temp);
                                                                                                                                                        if (textView4 != null) {
                                                                                                                                                            i = R.id.gm_txt_auto_wind;
                                                                                                                                                            TextView textView5 = (TextView) view.findViewById(R.id.gm_txt_auto_wind);
                                                                                                                                                            if (textView5 != null) {
                                                                                                                                                                return new DjGmAirSetBinding((FrameLayout) view, button, button2, button3, button4, linearLayout, linearLayout2, button5, button6, button7, button8, button9, button10, button11, button12, button13, button14, button15, button16, button17, button18, button19, button20, button21, button22, button23, button24, button25, linearLayout3, linearLayout4, linearLayout5, linearLayout6, relativeLayout, fuelSeekBar, textView, textView2, textView3, textView4, textView5);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
