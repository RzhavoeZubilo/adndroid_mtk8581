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
public final class Dz7AirsetBinding implements ViewBinding {
    public final LinearLayout dz7AirAllState;
    public final LinearLayout dz7AirAllState1;
    public final FrameLayout dz7AirLayout;
    public final LinearLayout dz7AirLeftTemp;
    public final Button dz7AirLeftTempAdd;
    public final Button dz7AirLeftTempDel;
    public final LinearLayout dz7AirLlWind;
    public final Button dz7AirRightTempAdd;
    public final Button dz7AirRightTempDel;
    public final Button dz7BtnAirAc;
    public final Button dz7BtnAirAcmax;
    public final Button dz7BtnAirAqs;
    public final Button dz7BtnAirAuto;
    public final Button dz7BtnAirCycleIn;
    public final Button dz7BtnAirCycleOut;
    public final Button dz7BtnAirDownWind;
    public final Button dz7BtnAirFrontDeg;
    public final Button dz7BtnAirOn;
    public final Button dz7BtnAirParWind;
    public final Button dz7BtnAirProfile;
    public final Button dz7BtnAirRear;
    public final Button dz7BtnAirRearSwicth;
    public final Button dz7BtnAirSync;
    public final Button dz7BtnAirUpWind;
    public final Button dz7BtnAirWindAdd;
    public final Button dz7BtnAirWindDel;
    public final FuelSeekBar dz7SeekbarWind;
    public final TextView dz7TvLeftTemp;
    public final TextView dz7TvRightTemp;
    public final FrameLayout kodiaqAirLayout;
    public final LinearLayout kodiaqAirLeftTemp;
    public final Button kodiaqAirLeftTempAdd;
    public final Button kodiaqAirLeftTempDel;
    public final LinearLayout kodiaqAirLlWind;
    public final Button kodiaqAirRightTempAdd;
    public final Button kodiaqAirRightTempDel;
    public final TextView kodiaqBtnAirAuto;
    public final TextView kodiaqBtnAirDownWind;
    public final TextView kodiaqBtnAirFrontSwicth;
    public final TextView kodiaqBtnAirOn;
    public final TextView kodiaqBtnAirParWind;
    public final Button kodiaqBtnAirWindAdd;
    public final Button kodiaqBtnAirWindDel;
    public final TextView kodiaqBtnLeftHot;
    public final TextView kodiaqBtnRightHot;
    public final FuelSeekBar kodiaqSeekbarWind;
    public final TextView kodiaqTvLeftTemp;
    public final TextView kodiaqTvRightTemp;
    private final FrameLayout rootView;

    private Dz7AirsetBinding(FrameLayout frameLayout, LinearLayout linearLayout, LinearLayout linearLayout2, FrameLayout frameLayout2, LinearLayout linearLayout3, Button button, Button button2, LinearLayout linearLayout4, Button button3, Button button4, Button button5, Button button6, Button button7, Button button8, Button button9, Button button10, Button button11, Button button12, Button button13, Button button14, Button button15, Button button16, Button button17, Button button18, Button button19, Button button20, Button button21, FuelSeekBar fuelSeekBar, TextView textView, TextView textView2, FrameLayout frameLayout3, LinearLayout linearLayout5, Button button22, Button button23, LinearLayout linearLayout6, Button button24, Button button25, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, Button button26, Button button27, TextView textView8, TextView textView9, FuelSeekBar fuelSeekBar2, TextView textView10, TextView textView11) {
        this.rootView = frameLayout;
        this.dz7AirAllState = linearLayout;
        this.dz7AirAllState1 = linearLayout2;
        this.dz7AirLayout = frameLayout2;
        this.dz7AirLeftTemp = linearLayout3;
        this.dz7AirLeftTempAdd = button;
        this.dz7AirLeftTempDel = button2;
        this.dz7AirLlWind = linearLayout4;
        this.dz7AirRightTempAdd = button3;
        this.dz7AirRightTempDel = button4;
        this.dz7BtnAirAc = button5;
        this.dz7BtnAirAcmax = button6;
        this.dz7BtnAirAqs = button7;
        this.dz7BtnAirAuto = button8;
        this.dz7BtnAirCycleIn = button9;
        this.dz7BtnAirCycleOut = button10;
        this.dz7BtnAirDownWind = button11;
        this.dz7BtnAirFrontDeg = button12;
        this.dz7BtnAirOn = button13;
        this.dz7BtnAirParWind = button14;
        this.dz7BtnAirProfile = button15;
        this.dz7BtnAirRear = button16;
        this.dz7BtnAirRearSwicth = button17;
        this.dz7BtnAirSync = button18;
        this.dz7BtnAirUpWind = button19;
        this.dz7BtnAirWindAdd = button20;
        this.dz7BtnAirWindDel = button21;
        this.dz7SeekbarWind = fuelSeekBar;
        this.dz7TvLeftTemp = textView;
        this.dz7TvRightTemp = textView2;
        this.kodiaqAirLayout = frameLayout3;
        this.kodiaqAirLeftTemp = linearLayout5;
        this.kodiaqAirLeftTempAdd = button22;
        this.kodiaqAirLeftTempDel = button23;
        this.kodiaqAirLlWind = linearLayout6;
        this.kodiaqAirRightTempAdd = button24;
        this.kodiaqAirRightTempDel = button25;
        this.kodiaqBtnAirAuto = textView3;
        this.kodiaqBtnAirDownWind = textView4;
        this.kodiaqBtnAirFrontSwicth = textView5;
        this.kodiaqBtnAirOn = textView6;
        this.kodiaqBtnAirParWind = textView7;
        this.kodiaqBtnAirWindAdd = button26;
        this.kodiaqBtnAirWindDel = button27;
        this.kodiaqBtnLeftHot = textView8;
        this.kodiaqBtnRightHot = textView9;
        this.kodiaqSeekbarWind = fuelSeekBar2;
        this.kodiaqTvLeftTemp = textView10;
        this.kodiaqTvRightTemp = textView11;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static Dz7AirsetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static Dz7AirsetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dz7_airset, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static Dz7AirsetBinding bind(View view) {
        int i = R.id.dz7_air_all_state;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.dz7_air_all_state);
        if (linearLayout != null) {
            i = R.id.dz7_air_all_state1;
            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.dz7_air_all_state1);
            if (linearLayout2 != null) {
                i = R.id.dz7_air_layout;
                FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.dz7_air_layout);
                if (frameLayout != null) {
                    i = R.id.dz7_air_left_temp;
                    LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.dz7_air_left_temp);
                    if (linearLayout3 != null) {
                        i = R.id.dz7_air_left_temp_add;
                        Button button = (Button) view.findViewById(R.id.dz7_air_left_temp_add);
                        if (button != null) {
                            i = R.id.dz7_air_left_temp_del;
                            Button button2 = (Button) view.findViewById(R.id.dz7_air_left_temp_del);
                            if (button2 != null) {
                                i = R.id.dz7_air_ll_wind;
                                LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.dz7_air_ll_wind);
                                if (linearLayout4 != null) {
                                    i = R.id.dz7_air_right_temp_add;
                                    Button button3 = (Button) view.findViewById(R.id.dz7_air_right_temp_add);
                                    if (button3 != null) {
                                        i = R.id.dz7_air_right_temp_del;
                                        Button button4 = (Button) view.findViewById(R.id.dz7_air_right_temp_del);
                                        if (button4 != null) {
                                            i = R.id.dz7_btn_air_ac;
                                            Button button5 = (Button) view.findViewById(R.id.dz7_btn_air_ac);
                                            if (button5 != null) {
                                                i = R.id.dz7_btn_air_acmax;
                                                Button button6 = (Button) view.findViewById(R.id.dz7_btn_air_acmax);
                                                if (button6 != null) {
                                                    i = R.id.dz7_btn_air_aqs;
                                                    Button button7 = (Button) view.findViewById(R.id.dz7_btn_air_aqs);
                                                    if (button7 != null) {
                                                        i = R.id.dz7_btn_air_auto;
                                                        Button button8 = (Button) view.findViewById(R.id.dz7_btn_air_auto);
                                                        if (button8 != null) {
                                                            i = R.id.dz7_btn_air_cycle_in;
                                                            Button button9 = (Button) view.findViewById(R.id.dz7_btn_air_cycle_in);
                                                            if (button9 != null) {
                                                                i = R.id.dz7_btn_air_cycle_out;
                                                                Button button10 = (Button) view.findViewById(R.id.dz7_btn_air_cycle_out);
                                                                if (button10 != null) {
                                                                    i = R.id.dz7_btn_air_down_wind;
                                                                    Button button11 = (Button) view.findViewById(R.id.dz7_btn_air_down_wind);
                                                                    if (button11 != null) {
                                                                        i = R.id.dz7_btn_air_front_deg;
                                                                        Button button12 = (Button) view.findViewById(R.id.dz7_btn_air_front_deg);
                                                                        if (button12 != null) {
                                                                            i = R.id.dz7_btn_air_on;
                                                                            Button button13 = (Button) view.findViewById(R.id.dz7_btn_air_on);
                                                                            if (button13 != null) {
                                                                                i = R.id.dz7_btn_air_par_wind;
                                                                                Button button14 = (Button) view.findViewById(R.id.dz7_btn_air_par_wind);
                                                                                if (button14 != null) {
                                                                                    i = R.id.dz7_btn_air_profile;
                                                                                    Button button15 = (Button) view.findViewById(R.id.dz7_btn_air_profile);
                                                                                    if (button15 != null) {
                                                                                        i = R.id.dz7_btn_air_rear;
                                                                                        Button button16 = (Button) view.findViewById(R.id.dz7_btn_air_rear);
                                                                                        if (button16 != null) {
                                                                                            i = R.id.dz7_btn_air_rear_swicth;
                                                                                            Button button17 = (Button) view.findViewById(R.id.dz7_btn_air_rear_swicth);
                                                                                            if (button17 != null) {
                                                                                                i = R.id.dz7_btn_air_sync;
                                                                                                Button button18 = (Button) view.findViewById(R.id.dz7_btn_air_sync);
                                                                                                if (button18 != null) {
                                                                                                    i = R.id.dz7_btn_air_up_wind;
                                                                                                    Button button19 = (Button) view.findViewById(R.id.dz7_btn_air_up_wind);
                                                                                                    if (button19 != null) {
                                                                                                        i = R.id.dz7_btn_air_wind_add;
                                                                                                        Button button20 = (Button) view.findViewById(R.id.dz7_btn_air_wind_add);
                                                                                                        if (button20 != null) {
                                                                                                            i = R.id.dz7_btn_air_wind_del;
                                                                                                            Button button21 = (Button) view.findViewById(R.id.dz7_btn_air_wind_del);
                                                                                                            if (button21 != null) {
                                                                                                                i = R.id.dz7_seekbar_wind;
                                                                                                                FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.dz7_seekbar_wind);
                                                                                                                if (fuelSeekBar != null) {
                                                                                                                    i = R.id.dz7_tv_left_temp;
                                                                                                                    TextView textView = (TextView) view.findViewById(R.id.dz7_tv_left_temp);
                                                                                                                    if (textView != null) {
                                                                                                                        i = R.id.dz7_tv_right_temp;
                                                                                                                        TextView textView2 = (TextView) view.findViewById(R.id.dz7_tv_right_temp);
                                                                                                                        if (textView2 != null) {
                                                                                                                            i = R.id.kodiaq_air_layout;
                                                                                                                            FrameLayout frameLayout2 = (FrameLayout) view.findViewById(R.id.kodiaq_air_layout);
                                                                                                                            if (frameLayout2 != null) {
                                                                                                                                i = R.id.kodiaq_air_left_temp;
                                                                                                                                LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.kodiaq_air_left_temp);
                                                                                                                                if (linearLayout5 != null) {
                                                                                                                                    i = R.id.kodiaq_air_left_temp_add;
                                                                                                                                    Button button22 = (Button) view.findViewById(R.id.kodiaq_air_left_temp_add);
                                                                                                                                    if (button22 != null) {
                                                                                                                                        i = R.id.kodiaq_air_left_temp_del;
                                                                                                                                        Button button23 = (Button) view.findViewById(R.id.kodiaq_air_left_temp_del);
                                                                                                                                        if (button23 != null) {
                                                                                                                                            i = R.id.kodiaq_air_ll_wind;
                                                                                                                                            LinearLayout linearLayout6 = (LinearLayout) view.findViewById(R.id.kodiaq_air_ll_wind);
                                                                                                                                            if (linearLayout6 != null) {
                                                                                                                                                i = R.id.kodiaq_air_right_temp_add;
                                                                                                                                                Button button24 = (Button) view.findViewById(R.id.kodiaq_air_right_temp_add);
                                                                                                                                                if (button24 != null) {
                                                                                                                                                    i = R.id.kodiaq_air_right_temp_del;
                                                                                                                                                    Button button25 = (Button) view.findViewById(R.id.kodiaq_air_right_temp_del);
                                                                                                                                                    if (button25 != null) {
                                                                                                                                                        i = R.id.kodiaq_btn_air_auto;
                                                                                                                                                        TextView textView3 = (TextView) view.findViewById(R.id.kodiaq_btn_air_auto);
                                                                                                                                                        if (textView3 != null) {
                                                                                                                                                            i = R.id.kodiaq_btn_air_down_wind;
                                                                                                                                                            TextView textView4 = (TextView) view.findViewById(R.id.kodiaq_btn_air_down_wind);
                                                                                                                                                            if (textView4 != null) {
                                                                                                                                                                i = R.id.kodiaq_btn_air_front_swicth;
                                                                                                                                                                TextView textView5 = (TextView) view.findViewById(R.id.kodiaq_btn_air_front_swicth);
                                                                                                                                                                if (textView5 != null) {
                                                                                                                                                                    i = R.id.kodiaq_btn_air_on;
                                                                                                                                                                    TextView textView6 = (TextView) view.findViewById(R.id.kodiaq_btn_air_on);
                                                                                                                                                                    if (textView6 != null) {
                                                                                                                                                                        i = R.id.kodiaq_btn_air_par_wind;
                                                                                                                                                                        TextView textView7 = (TextView) view.findViewById(R.id.kodiaq_btn_air_par_wind);
                                                                                                                                                                        if (textView7 != null) {
                                                                                                                                                                            i = R.id.kodiaq_btn_air_wind_add;
                                                                                                                                                                            Button button26 = (Button) view.findViewById(R.id.kodiaq_btn_air_wind_add);
                                                                                                                                                                            if (button26 != null) {
                                                                                                                                                                                i = R.id.kodiaq_btn_air_wind_del;
                                                                                                                                                                                Button button27 = (Button) view.findViewById(R.id.kodiaq_btn_air_wind_del);
                                                                                                                                                                                if (button27 != null) {
                                                                                                                                                                                    i = R.id.kodiaq_btn_left_hot;
                                                                                                                                                                                    TextView textView8 = (TextView) view.findViewById(R.id.kodiaq_btn_left_hot);
                                                                                                                                                                                    if (textView8 != null) {
                                                                                                                                                                                        i = R.id.kodiaq_btn_right_hot;
                                                                                                                                                                                        TextView textView9 = (TextView) view.findViewById(R.id.kodiaq_btn_right_hot);
                                                                                                                                                                                        if (textView9 != null) {
                                                                                                                                                                                            i = R.id.kodiaq_seekbar_wind;
                                                                                                                                                                                            FuelSeekBar fuelSeekBar2 = (FuelSeekBar) view.findViewById(R.id.kodiaq_seekbar_wind);
                                                                                                                                                                                            if (fuelSeekBar2 != null) {
                                                                                                                                                                                                i = R.id.kodiaq_tv_left_temp;
                                                                                                                                                                                                TextView textView10 = (TextView) view.findViewById(R.id.kodiaq_tv_left_temp);
                                                                                                                                                                                                if (textView10 != null) {
                                                                                                                                                                                                    i = R.id.kodiaq_tv_right_temp;
                                                                                                                                                                                                    TextView textView11 = (TextView) view.findViewById(R.id.kodiaq_tv_right_temp);
                                                                                                                                                                                                    if (textView11 != null) {
                                                                                                                                                                                                        return new Dz7AirsetBinding((FrameLayout) view, linearLayout, linearLayout2, frameLayout, linearLayout3, button, button2, linearLayout4, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12, button13, button14, button15, button16, button17, button18, button19, button20, button21, fuelSeekBar, textView, textView2, frameLayout2, linearLayout5, button22, button23, linearLayout6, button24, button25, textView3, textView4, textView5, textView6, textView7, button26, button27, textView8, textView9, fuelSeekBar2, textView10, textView11);
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
