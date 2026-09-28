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
public final class T90AirsetBinding implements ViewBinding {
    public final LinearLayout familyAirLlSet1;
    public final RelativeLayout gmRlWind;
    private final FrameLayout rootView;
    public final LinearLayout t70AirLlWind;
    public final TextView t90AirLeftTempAdd;
    public final TextView t90AirLeftTempDel;
    public final TextView t90AirMode;
    public final TextView t90AirRightTempAdd;
    public final TextView t90AirRightTempDel;
    public final TextView t90BtnAirAc;
    public final Button t90BtnAirCycleIn;
    public final Button t90BtnAirCycleOut;
    public final TextView t90BtnAirDownParWind;
    public final TextView t90BtnAirDownUpWind;
    public final TextView t90BtnAirDownWind;
    public final TextView t90BtnAirOnOff;
    public final TextView t90BtnAirParWind;
    public final TextView t90BtnAirUpWind;
    public final TextView t90BtnAirWindAdd;
    public final TextView t90BtnAirWindDel;
    public final FuelSeekBar t90SeekbarWind;
    public final TextView t90TvLeftTemp;
    public final TextView t90TvRightTemp;

    private T90AirsetBinding(FrameLayout frameLayout, LinearLayout linearLayout, RelativeLayout relativeLayout, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, Button button, Button button2, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12, TextView textView13, TextView textView14, FuelSeekBar fuelSeekBar, TextView textView15, TextView textView16) {
        this.rootView = frameLayout;
        this.familyAirLlSet1 = linearLayout;
        this.gmRlWind = relativeLayout;
        this.t70AirLlWind = linearLayout2;
        this.t90AirLeftTempAdd = textView;
        this.t90AirLeftTempDel = textView2;
        this.t90AirMode = textView3;
        this.t90AirRightTempAdd = textView4;
        this.t90AirRightTempDel = textView5;
        this.t90BtnAirAc = textView6;
        this.t90BtnAirCycleIn = button;
        this.t90BtnAirCycleOut = button2;
        this.t90BtnAirDownParWind = textView7;
        this.t90BtnAirDownUpWind = textView8;
        this.t90BtnAirDownWind = textView9;
        this.t90BtnAirOnOff = textView10;
        this.t90BtnAirParWind = textView11;
        this.t90BtnAirUpWind = textView12;
        this.t90BtnAirWindAdd = textView13;
        this.t90BtnAirWindDel = textView14;
        this.t90SeekbarWind = fuelSeekBar;
        this.t90TvLeftTemp = textView15;
        this.t90TvRightTemp = textView16;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static T90AirsetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static T90AirsetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.t90_airset, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static T90AirsetBinding bind(View view) {
        int i = R.id.family_air_ll_set1;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.family_air_ll_set1);
        if (linearLayout != null) {
            i = R.id.gm_rl_wind;
            RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.gm_rl_wind);
            if (relativeLayout != null) {
                i = R.id.t70_air_ll_wind;
                LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.t70_air_ll_wind);
                if (linearLayout2 != null) {
                    i = R.id.t90_air_left_temp_add;
                    TextView textView = (TextView) view.findViewById(R.id.t90_air_left_temp_add);
                    if (textView != null) {
                        i = R.id.t90_air_left_temp_del;
                        TextView textView2 = (TextView) view.findViewById(R.id.t90_air_left_temp_del);
                        if (textView2 != null) {
                            i = R.id.t90_air_mode;
                            TextView textView3 = (TextView) view.findViewById(R.id.t90_air_mode);
                            if (textView3 != null) {
                                i = R.id.t90_air_right_temp_add;
                                TextView textView4 = (TextView) view.findViewById(R.id.t90_air_right_temp_add);
                                if (textView4 != null) {
                                    i = R.id.t90_air_right_temp_del;
                                    TextView textView5 = (TextView) view.findViewById(R.id.t90_air_right_temp_del);
                                    if (textView5 != null) {
                                        i = R.id.t90_btn_air_ac;
                                        TextView textView6 = (TextView) view.findViewById(R.id.t90_btn_air_ac);
                                        if (textView6 != null) {
                                            i = R.id.t90_btn_air_cycle_in;
                                            Button button = (Button) view.findViewById(R.id.t90_btn_air_cycle_in);
                                            if (button != null) {
                                                i = R.id.t90_btn_air_cycle_out;
                                                Button button2 = (Button) view.findViewById(R.id.t90_btn_air_cycle_out);
                                                if (button2 != null) {
                                                    i = R.id.t90_btn_air_down_par_wind;
                                                    TextView textView7 = (TextView) view.findViewById(R.id.t90_btn_air_down_par_wind);
                                                    if (textView7 != null) {
                                                        i = R.id.t90_btn_air_down_up_wind;
                                                        TextView textView8 = (TextView) view.findViewById(R.id.t90_btn_air_down_up_wind);
                                                        if (textView8 != null) {
                                                            i = R.id.t90_btn_air_down_wind;
                                                            TextView textView9 = (TextView) view.findViewById(R.id.t90_btn_air_down_wind);
                                                            if (textView9 != null) {
                                                                i = R.id.t90_btn_air_on_off;
                                                                TextView textView10 = (TextView) view.findViewById(R.id.t90_btn_air_on_off);
                                                                if (textView10 != null) {
                                                                    i = R.id.t90_btn_air_par_wind;
                                                                    TextView textView11 = (TextView) view.findViewById(R.id.t90_btn_air_par_wind);
                                                                    if (textView11 != null) {
                                                                        i = R.id.t90_btn_air_up_wind;
                                                                        TextView textView12 = (TextView) view.findViewById(R.id.t90_btn_air_up_wind);
                                                                        if (textView12 != null) {
                                                                            i = R.id.t90_btn_air_wind_add;
                                                                            TextView textView13 = (TextView) view.findViewById(R.id.t90_btn_air_wind_add);
                                                                            if (textView13 != null) {
                                                                                i = R.id.t90_btn_air_wind_del;
                                                                                TextView textView14 = (TextView) view.findViewById(R.id.t90_btn_air_wind_del);
                                                                                if (textView14 != null) {
                                                                                    i = R.id.t90_seekbar_wind;
                                                                                    FuelSeekBar fuelSeekBar = (FuelSeekBar) view.findViewById(R.id.t90_seekbar_wind);
                                                                                    if (fuelSeekBar != null) {
                                                                                        i = R.id.t90_tv_left_temp;
                                                                                        TextView textView15 = (TextView) view.findViewById(R.id.t90_tv_left_temp);
                                                                                        if (textView15 != null) {
                                                                                            i = R.id.t90_tv_right_temp;
                                                                                            TextView textView16 = (TextView) view.findViewById(R.id.t90_tv_right_temp);
                                                                                            if (textView16 != null) {
                                                                                                return new T90AirsetBinding((FrameLayout) view, linearLayout, relativeLayout, linearLayout2, textView, textView2, textView3, textView4, textView5, textView6, button, button2, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, fuelSeekBar, textView15, textView16);
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
