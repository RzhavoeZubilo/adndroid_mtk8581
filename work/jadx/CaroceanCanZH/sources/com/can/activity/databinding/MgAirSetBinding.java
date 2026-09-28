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
public final class MgAirSetBinding implements ViewBinding {
    public final TextView mgAirLeftTempAdd;
    public final TextView mgAirLeftTempDel;
    public final LinearLayout mgAirLlSet1;
    public final LinearLayout mgAirLlWind;
    public final TextView mgAirRightTempAdd;
    public final TextView mgAirRightTempDel;
    public final TextView mgBtnAirAc;
    public final TextView mgBtnAirAuto;
    public final Button mgBtnAirCycleIn;
    public final Button mgBtnAirCycleOut;
    public final Button mgBtnAirFrontDeg;
    public final Button mgBtnAirRearDeg;
    public final TextView mgBtnAirState;
    public final TextView mgBtnAirWindAdd;
    public final TextView mgBtnAirWindDel;
    public final TextView mgBtnAirWindMode;
    public final FuelSeekBar mgSeekbarWind;
    public final TextView mgTvLeftTemp;
    public final TextView mgTvRightTemp;
    private final FrameLayout rootView;

    private MgAirSetBinding(FrameLayout frameLayout, TextView textView, TextView textView2, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, Button button, Button button2, Button button3, Button button4, TextView textView7, TextView textView8, TextView textView9, TextView textView10, FuelSeekBar fuelSeekBar, TextView textView11, TextView textView12) {
        this.rootView = frameLayout;
        this.mgAirLeftTempAdd = textView;
        this.mgAirLeftTempDel = textView2;
        this.mgAirLlSet1 = linearLayout;
        this.mgAirLlWind = linearLayout2;
        this.mgAirRightTempAdd = textView3;
        this.mgAirRightTempDel = textView4;
        this.mgBtnAirAc = textView5;
        this.mgBtnAirAuto = textView6;
        this.mgBtnAirCycleIn = button;
        this.mgBtnAirCycleOut = button2;
        this.mgBtnAirFrontDeg = button3;
        this.mgBtnAirRearDeg = button4;
        this.mgBtnAirState = textView7;
        this.mgBtnAirWindAdd = textView8;
        this.mgBtnAirWindDel = textView9;
        this.mgBtnAirWindMode = textView10;
        this.mgSeekbarWind = fuelSeekBar;
        this.mgTvLeftTemp = textView11;
        this.mgTvRightTemp = textView12;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static MgAirSetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static MgAirSetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.mg_air_set, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static MgAirSetBinding bind(View view) {
        int i = R.id.mg_air_left_temp_add;
        TextView textView = (TextView) view.findViewById(R.id.mg_air_left_temp_add);
        if (textView != null) {
            i = R.id.mg_air_left_temp_del;
            TextView textView2 = (TextView) view.findViewById(R.id.mg_air_left_temp_del);
            if (textView2 != null) {
                i = R.id.mg_air_ll_set1;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.mg_air_ll_set1);
                if (linearLayout != null) {
                    i = R.id.mg_air_ll_wind;
                    LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.mg_air_ll_wind);
                    if (linearLayout2 != null) {
                        i = R.id.mg_air_right_temp_add;
                        TextView textView3 = (TextView) view.findViewById(R.id.mg_air_right_temp_add);
                        if (textView3 != null) {
                            i = R.id.mg_air_right_temp_del;
                            TextView textView4 = (TextView) view.findViewById(R.id.mg_air_right_temp_del);
                            if (textView4 != null) {
                                i = R.id.mg_btn_air_ac;
                                TextView textView5 = (TextView) view.findViewById(R.id.mg_btn_air_ac);
                                if (textView5 != null) {
                                    i = R.id.mg_btn_air_auto;
                                    TextView textView6 = (TextView) view.findViewById(R.id.mg_btn_air_auto);
                                    if (textView6 != null) {
                                        i = R.id.mg_btn_air_cycle_in;
                                        Button button = (Button) view.findViewById(R.id.mg_btn_air_cycle_in);
                                        if (button != null) {
                                            i = R.id.mg_btn_air_cycle_out;
                                            Button button2 = (Button) view.findViewById(R.id.mg_btn_air_cycle_out);
                                            if (button2 != null) {
                                                i = R.id.mg_btn_air_front_deg;
                                                Button button3 = (Button) view.findViewById(R.id.mg_btn_air_front_deg);
                                                if (button3 != null) {
                                                    i = R.id.mg_btn_air_rear_deg;
                                                    Button button4 = (Button) view.findViewById(R.id.mg_btn_air_rear_deg);
                                                    if (button4 != null) {
                                                        i = R.id.mg_btn_air_state;
                                                        TextView textView7 = (TextView) view.findViewById(R.id.mg_btn_air_state);
                                                        if (textView7 != null) {
                                                            i = R.id.mg_btn_air_wind_add;
                                                            TextView textView8 = (TextView) view.findViewById(R.id.mg_btn_air_wind_add);
                                                            if (textView8 != null) {
                                                                i = R.id.mg_btn_air_wind_del;
                                                                TextView textView9 = (TextView) view.findViewById(R.id.mg_btn_air_wind_del);
                                                                if (textView9 != null) {
                                                                    i = R.id.mg_btn_air_wind_mode;
                                                                    TextView textView10 = (TextView) view.findViewById(R.id.mg_btn_air_wind_mode);
                                                                    if (textView10 != null) {
                                                                        i = R.id.mg_seekbar_wind;
                                                                        FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.mg_seekbar_wind);
                                                                        if (fuelSeekBar != null) {
                                                                            i = R.id.mg_tv_left_temp;
                                                                            TextView textView11 = (TextView) view.findViewById(R.id.mg_tv_left_temp);
                                                                            if (textView11 != null) {
                                                                                i = R.id.mg_tv_right_temp;
                                                                                TextView textView12 = (TextView) view.findViewById(R.id.mg_tv_right_temp);
                                                                                if (textView12 != null) {
                                                                                    return new MgAirSetBinding((FrameLayout) view, textView, textView2, linearLayout, linearLayout2, textView3, textView4, textView5, textView6, button, button2, button3, button4, textView7, textView8, textView9, textView10, fuelSeekBar, textView11, textView12);
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
