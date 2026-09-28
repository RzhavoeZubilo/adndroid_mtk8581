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
public final class PsaAirSetBinding implements ViewBinding {
    public final TextView psaAirLeftTempAdd;
    public final TextView psaAirLeftTempDel;
    public final LinearLayout psaAirLlCtrl;
    public final LinearLayout psaAirLlCtrl1;
    public final LinearLayout psaAirLlCtrl2;
    public final LinearLayout psaAirLlWind;
    public final TextView psaAirRightTempAdd;
    public final TextView psaAirRightTempDel;
    public final TextView psaBtnAirAc;
    public final TextView psaBtnAirAcmax;
    public final Button psaBtnAirAqs;
    public final Button psaBtnAirAqs1;
    public final TextView psaBtnAirAuto;
    public final Button psaBtnAirCycleIn;
    public final Button psaBtnAirCycleOut;
    public final TextView psaBtnAirDownWind;
    public final TextView psaBtnAirDual;
    public final Button psaBtnAirFrontDeg;
    public final Button psaBtnAirOn;
    public final TextView psaBtnAirParWind;
    public final Button psaBtnAirRearDeg;
    public final TextView psaBtnAirUpWind;
    public final TextView psaBtnAirWind;
    public final TextView psaBtnAirWindAdd;
    public final TextView psaBtnAirWindDel;
    public final LinearLayout psaLlAirWind;
    public final FuelSeekBar psaSeekbarWind;
    public final TextView psaTvLeftTemp;
    public final TextView psaTvRightTemp;
    private final FrameLayout rootView;

    private PsaAirSetBinding(FrameLayout frameLayout, TextView textView, TextView textView2, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, TextView textView3, TextView textView4, TextView textView5, TextView textView6, Button button, Button button2, TextView textView7, Button button3, Button button4, TextView textView8, TextView textView9, Button button5, Button button6, TextView textView10, Button button7, TextView textView11, TextView textView12, TextView textView13, TextView textView14, LinearLayout linearLayout5, FuelSeekBar fuelSeekBar, TextView textView15, TextView textView16) {
        this.rootView = frameLayout;
        this.psaAirLeftTempAdd = textView;
        this.psaAirLeftTempDel = textView2;
        this.psaAirLlCtrl = linearLayout;
        this.psaAirLlCtrl1 = linearLayout2;
        this.psaAirLlCtrl2 = linearLayout3;
        this.psaAirLlWind = linearLayout4;
        this.psaAirRightTempAdd = textView3;
        this.psaAirRightTempDel = textView4;
        this.psaBtnAirAc = textView5;
        this.psaBtnAirAcmax = textView6;
        this.psaBtnAirAqs = button;
        this.psaBtnAirAqs1 = button2;
        this.psaBtnAirAuto = textView7;
        this.psaBtnAirCycleIn = button3;
        this.psaBtnAirCycleOut = button4;
        this.psaBtnAirDownWind = textView8;
        this.psaBtnAirDual = textView9;
        this.psaBtnAirFrontDeg = button5;
        this.psaBtnAirOn = button6;
        this.psaBtnAirParWind = textView10;
        this.psaBtnAirRearDeg = button7;
        this.psaBtnAirUpWind = textView11;
        this.psaBtnAirWind = textView12;
        this.psaBtnAirWindAdd = textView13;
        this.psaBtnAirWindDel = textView14;
        this.psaLlAirWind = linearLayout5;
        this.psaSeekbarWind = fuelSeekBar;
        this.psaTvLeftTemp = textView15;
        this.psaTvRightTemp = textView16;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static PsaAirSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PsaAirSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.psa_air_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PsaAirSetBinding bind(View view) {
        int i = R.id.psa_air_left_temp_add;
        TextView textView = (TextView) view.findViewById(R.id.psa_air_left_temp_add);
        if (textView != null) {
            i = R.id.psa_air_left_temp_del;
            TextView textView2 = (TextView) view.findViewById(R.id.psa_air_left_temp_del);
            if (textView2 != null) {
                i = R.id.psa_air_ll_ctrl;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.psa_air_ll_ctrl);
                if (linearLayout != null) {
                    i = R.id.psa_air_ll_ctrl1;
                    LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.psa_air_ll_ctrl1);
                    if (linearLayout2 != null) {
                        i = R.id.psa_air_ll_ctrl2;
                        LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.psa_air_ll_ctrl2);
                        if (linearLayout3 != null) {
                            i = R.id.psa_air_ll_wind;
                            LinearLayout linearLayout4 = (LinearLayout) view.findViewById(R.id.psa_air_ll_wind);
                            if (linearLayout4 != null) {
                                i = R.id.psa_air_right_temp_add;
                                TextView textView3 = (TextView) view.findViewById(R.id.psa_air_right_temp_add);
                                if (textView3 != null) {
                                    i = R.id.psa_air_right_temp_del;
                                    TextView textView4 = (TextView) view.findViewById(R.id.psa_air_right_temp_del);
                                    if (textView4 != null) {
                                        i = R.id.psa_btn_air_ac;
                                        TextView textView5 = (TextView) view.findViewById(R.id.psa_btn_air_ac);
                                        if (textView5 != null) {
                                            i = R.id.psa_btn_air_acmax;
                                            TextView textView6 = (TextView) view.findViewById(R.id.psa_btn_air_acmax);
                                            if (textView6 != null) {
                                                i = R.id.psa_btn_air_aqs;
                                                Button button = (Button) view.findViewById(R.id.psa_btn_air_aqs);
                                                if (button != null) {
                                                    i = R.id.psa_btn_air_aqs1;
                                                    Button button2 = (Button) view.findViewById(R.id.psa_btn_air_aqs1);
                                                    if (button2 != null) {
                                                        i = R.id.psa_btn_air_auto;
                                                        TextView textView7 = (TextView) view.findViewById(R.id.psa_btn_air_auto);
                                                        if (textView7 != null) {
                                                            i = R.id.psa_btn_air_cycle_in;
                                                            Button button3 = (Button) view.findViewById(R.id.psa_btn_air_cycle_in);
                                                            if (button3 != null) {
                                                                i = R.id.psa_btn_air_cycle_out;
                                                                Button button4 = (Button) view.findViewById(R.id.psa_btn_air_cycle_out);
                                                                if (button4 != null) {
                                                                    i = R.id.psa_btn_air_down_wind;
                                                                    TextView textView8 = (TextView) view.findViewById(R.id.psa_btn_air_down_wind);
                                                                    if (textView8 != null) {
                                                                        i = R.id.psa_btn_air_dual;
                                                                        TextView textView9 = (TextView) view.findViewById(R.id.psa_btn_air_dual);
                                                                        if (textView9 != null) {
                                                                            i = R.id.psa_btn_air_front_deg;
                                                                            Button button5 = (Button) view.findViewById(R.id.psa_btn_air_front_deg);
                                                                            if (button5 != null) {
                                                                                i = R.id.psa_btn_air_on;
                                                                                Button button6 = (Button) view.findViewById(R.id.psa_btn_air_on);
                                                                                if (button6 != null) {
                                                                                    i = R.id.psa_btn_air_par_wind;
                                                                                    TextView textView10 = (TextView) view.findViewById(R.id.psa_btn_air_par_wind);
                                                                                    if (textView10 != null) {
                                                                                        i = R.id.psa_btn_air_rear_deg;
                                                                                        Button button7 = (Button) view.findViewById(R.id.psa_btn_air_rear_deg);
                                                                                        if (button7 != null) {
                                                                                            i = R.id.psa_btn_air_up_wind;
                                                                                            TextView textView11 = (TextView) view.findViewById(R.id.psa_btn_air_up_wind);
                                                                                            if (textView11 != null) {
                                                                                                i = R.id.psa_btn_air_wind;
                                                                                                TextView textView12 = (TextView) view.findViewById(R.id.psa_btn_air_wind);
                                                                                                if (textView12 != null) {
                                                                                                    i = R.id.psa_btn_air_wind_add;
                                                                                                    TextView textView13 = (TextView) view.findViewById(R.id.psa_btn_air_wind_add);
                                                                                                    if (textView13 != null) {
                                                                                                        i = R.id.psa_btn_air_wind_del;
                                                                                                        TextView textView14 = (TextView) view.findViewById(R.id.psa_btn_air_wind_del);
                                                                                                        if (textView14 != null) {
                                                                                                            i = R.id.psa_ll_air_wind;
                                                                                                            LinearLayout linearLayout5 = (LinearLayout) view.findViewById(R.id.psa_ll_air_wind);
                                                                                                            if (linearLayout5 != null) {
                                                                                                                i = R.id.psa_seekbar_wind;
                                                                                                                FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.psa_seekbar_wind);
                                                                                                                if (fuelSeekBar != null) {
                                                                                                                    i = R.id.psa_tv_left_temp;
                                                                                                                    TextView textView15 = (TextView) view.findViewById(R.id.psa_tv_left_temp);
                                                                                                                    if (textView15 != null) {
                                                                                                                        i = R.id.psa_tv_right_temp;
                                                                                                                        TextView textView16 = (TextView) view.findViewById(R.id.psa_tv_right_temp);
                                                                                                                        if (textView16 != null) {
                                                                                                                            return new PsaAirSetBinding((FrameLayout) view, textView, textView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView3, textView4, textView5, textView6, button, button2, textView7, button3, button4, textView8, textView9, button5, button6, textView10, button7, textView11, textView12, textView13, textView14, linearLayout5, fuelSeekBar, textView15, textView16);
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
