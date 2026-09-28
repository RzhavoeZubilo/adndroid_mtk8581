package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.FuelSeekBar;

/* JADX INFO: loaded from: classes.dex */
public final class FamilyAirsetBinding implements ViewBinding {
    public final TextView familyAirLeftTempAdd;
    public final TextView familyAirLeftTempDel;
    public final LinearLayout familyAirLlSet1;
    public final LinearLayout familyAirLlWind;
    public final TextView familyAirMode;
    public final TextView familyAirRightTempAdd;
    public final TextView familyAirRightTempDel;
    public final TextView familyBtnAirAc;
    public final Button familyBtnAirCycleIn;
    public final Button familyBtnAirCycleOut;
    public final Button familyBtnAirFrontDeg;
    public final Button familyBtnAirRearDeg;
    public final TextView familyBtnAirState;
    public final TextView familyBtnAirWindAdd;
    public final TextView familyBtnAirWindDel;
    public final FuelSeekBar familySeekbarWind;
    public final TextView familyTvLeftTemp;
    public final TextView familyTvRightTemp;
    public final Button himaBtnAirDownParWind;
    public final Button himaBtnAirDownUpWind;
    public final Button himaBtnAirDownWind;
    public final Button himaBtnAirFrontDeg;
    public final Button himaBtnAirParWind;
    public final LinearLayout layoutMode;
    private final LinearLayout rootView;

    private FamilyAirsetBinding(LinearLayout linearLayout, TextView textView, TextView textView2, LinearLayout linearLayout2, LinearLayout linearLayout3, TextView textView3, TextView textView4, TextView textView5, TextView textView6, Button button, Button button2, Button button3, Button button4, TextView textView7, TextView textView8, TextView textView9, FuelSeekBar fuelSeekBar, TextView textView10, TextView textView11, Button button5, Button button6, Button button7, Button button8, Button button9, LinearLayout linearLayout4) {
        this.rootView = linearLayout;
        this.familyAirLeftTempAdd = textView;
        this.familyAirLeftTempDel = textView2;
        this.familyAirLlSet1 = linearLayout2;
        this.familyAirLlWind = linearLayout3;
        this.familyAirMode = textView3;
        this.familyAirRightTempAdd = textView4;
        this.familyAirRightTempDel = textView5;
        this.familyBtnAirAc = textView6;
        this.familyBtnAirCycleIn = button;
        this.familyBtnAirCycleOut = button2;
        this.familyBtnAirFrontDeg = button3;
        this.familyBtnAirRearDeg = button4;
        this.familyBtnAirState = textView7;
        this.familyBtnAirWindAdd = textView8;
        this.familyBtnAirWindDel = textView9;
        this.familySeekbarWind = fuelSeekBar;
        this.familyTvLeftTemp = textView10;
        this.familyTvRightTemp = textView11;
        this.himaBtnAirDownParWind = button5;
        this.himaBtnAirDownUpWind = button6;
        this.himaBtnAirDownWind = button7;
        this.himaBtnAirFrontDeg = button8;
        this.himaBtnAirParWind = button9;
        this.layoutMode = linearLayout4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FamilyAirsetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FamilyAirsetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.family_airset, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FamilyAirsetBinding bind(View view) {
        int i = R.id.family_air_left_temp_add;
        TextView textView = (TextView) view.findViewById(R.id.family_air_left_temp_add);
        if (textView != null) {
            i = R.id.family_air_left_temp_del;
            TextView textView2 = (TextView) view.findViewById(R.id.family_air_left_temp_del);
            if (textView2 != null) {
                i = R.id.family_air_ll_set1;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.family_air_ll_set1);
                if (linearLayout != null) {
                    i = R.id.family_air_ll_wind;
                    LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.family_air_ll_wind);
                    if (linearLayout2 != null) {
                        i = R.id.family_air_mode;
                        TextView textView3 = (TextView) view.findViewById(R.id.family_air_mode);
                        if (textView3 != null) {
                            i = R.id.family_air_right_temp_add;
                            TextView textView4 = (TextView) view.findViewById(R.id.family_air_right_temp_add);
                            if (textView4 != null) {
                                i = R.id.family_air_right_temp_del;
                                TextView textView5 = (TextView) view.findViewById(R.id.family_air_right_temp_del);
                                if (textView5 != null) {
                                    i = R.id.family_btn_air_ac;
                                    TextView textView6 = (TextView) view.findViewById(R.id.family_btn_air_ac);
                                    if (textView6 != null) {
                                        i = R.id.family_btn_air_cycle_in;
                                        Button button = (Button) view.findViewById(R.id.family_btn_air_cycle_in);
                                        if (button != null) {
                                            i = R.id.family_btn_air_cycle_out;
                                            Button button2 = (Button) view.findViewById(R.id.family_btn_air_cycle_out);
                                            if (button2 != null) {
                                                i = R.id.family_btn_air_front_deg;
                                                Button button3 = (Button) view.findViewById(R.id.family_btn_air_front_deg);
                                                if (button3 != null) {
                                                    i = R.id.family_btn_air_rear_deg;
                                                    Button button4 = (Button) view.findViewById(R.id.family_btn_air_rear_deg);
                                                    if (button4 != null) {
                                                        i = R.id.family_btn_air_state;
                                                        TextView textView7 = (TextView) view.findViewById(R.id.family_btn_air_state);
                                                        if (textView7 != null) {
                                                            i = R.id.family_btn_air_wind_add;
                                                            TextView textView8 = (TextView) view.findViewById(R.id.family_btn_air_wind_add);
                                                            if (textView8 != null) {
                                                                i = R.id.family_btn_air_wind_del;
                                                                TextView textView9 = (TextView) view.findViewById(R.id.family_btn_air_wind_del);
                                                                if (textView9 != null) {
                                                                    i = R.id.family_seekbar_wind;
                                                                    FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.family_seekbar_wind);
                                                                    if (fuelSeekBar != null) {
                                                                        i = R.id.family_tv_left_temp;
                                                                        TextView textView10 = (TextView) view.findViewById(R.id.family_tv_left_temp);
                                                                        if (textView10 != null) {
                                                                            i = R.id.family_tv_right_temp;
                                                                            TextView textView11 = (TextView) view.findViewById(R.id.family_tv_right_temp);
                                                                            if (textView11 != null) {
                                                                                i = R.id.hima_btn_air_down_par_wind;
                                                                                Button button5 = (Button) view.findViewById(R.id.hima_btn_air_down_par_wind);
                                                                                if (button5 != null) {
                                                                                    i = R.id.hima_btn_air_down_up_wind;
                                                                                    Button button6 = (Button) view.findViewById(R.id.hima_btn_air_down_up_wind);
                                                                                    if (button6 != null) {
                                                                                        i = R.id.hima_btn_air_down_wind;
                                                                                        Button button7 = (Button) view.findViewById(R.id.hima_btn_air_down_wind);
                                                                                        if (button7 != null) {
                                                                                            i = R.id.hima_btn_air_front_deg;
                                                                                            Button button8 = (Button) view.findViewById(R.id.hima_btn_air_front_deg);
                                                                                            if (button8 != null) {
                                                                                                i = R.id.hima_btn_air_par_wind;
                                                                                                Button button9 = (Button) view.findViewById(R.id.hima_btn_air_par_wind);
                                                                                                if (button9 != null) {
                                                                                                    i = R.id.layout_mode;
                                                                                                    LinearLayout linearLayout3 = (LinearLayout) view.findViewById(R.id.layout_mode);
                                                                                                    if (linearLayout3 != null) {
                                                                                                        return new FamilyAirsetBinding((LinearLayout) view, textView, textView2, linearLayout, linearLayout2, textView3, textView4, textView5, textView6, button, button2, button3, button4, textView7, textView8, textView9, fuelSeekBar, textView10, textView11, button5, button6, button7, button8, button9, linearLayout3);
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
