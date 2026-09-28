package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class PsaTripComBinding implements ViewBinding {
    public final LinearLayout psaLlPage0;
    public final LinearLayout psaLlPage1;
    public final TextView psaTvAccumulatedMiles;
    public final TextView psaTvDestinationMiles;
    public final TextView psaTvFuelAverage;
    public final TextView psaTvFuelConsumption;
    public final TextView psaTvOther;
    public final TextView psaTvPage0;
    public final TextView psaTvPage1;
    public final TextView psaTvPage2;
    public final TextView psaTvPageClear;
    public final TextView psaTvRechargeMileage;
    public final TextView psaTvSpeedAverage;
    public final TextView psaTvStartStopTiming;
    private final FrameLayout rootView;

    private PsaTripComBinding(FrameLayout frameLayout, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, TextView textView12) {
        this.rootView = frameLayout;
        this.psaLlPage0 = linearLayout;
        this.psaLlPage1 = linearLayout2;
        this.psaTvAccumulatedMiles = textView;
        this.psaTvDestinationMiles = textView2;
        this.psaTvFuelAverage = textView3;
        this.psaTvFuelConsumption = textView4;
        this.psaTvOther = textView5;
        this.psaTvPage0 = textView6;
        this.psaTvPage1 = textView7;
        this.psaTvPage2 = textView8;
        this.psaTvPageClear = textView9;
        this.psaTvRechargeMileage = textView10;
        this.psaTvSpeedAverage = textView11;
        this.psaTvStartStopTiming = textView12;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static PsaTripComBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static PsaTripComBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.psa_trip_com, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static PsaTripComBinding bind(View view) {
        int i = R.id.psa_ll_page0;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.psa_ll_page0);
        if (linearLayout != null) {
            i = R.id.psa_ll_page1;
            LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.psa_ll_page1);
            if (linearLayout2 != null) {
                i = R.id.psa_tv_accumulated_miles;
                TextView textView = (TextView) view.findViewById(R.id.psa_tv_accumulated_miles);
                if (textView != null) {
                    i = R.id.psa_tv_destination_miles;
                    TextView textView2 = (TextView) view.findViewById(R.id.psa_tv_destination_miles);
                    if (textView2 != null) {
                        i = R.id.psa_tv_fuel_average;
                        TextView textView3 = (TextView) view.findViewById(R.id.psa_tv_fuel_average);
                        if (textView3 != null) {
                            i = R.id.psa_tv_fuel_consumption;
                            TextView textView4 = (TextView) view.findViewById(R.id.psa_tv_fuel_consumption);
                            if (textView4 != null) {
                                i = R.id.psa_tv_other;
                                TextView textView5 = (TextView) view.findViewById(R.id.psa_tv_other);
                                if (textView5 != null) {
                                    i = R.id.psa_tv_page0;
                                    TextView textView6 = (TextView) view.findViewById(R.id.psa_tv_page0);
                                    if (textView6 != null) {
                                        i = R.id.psa_tv_page1;
                                        TextView textView7 = (TextView) view.findViewById(R.id.psa_tv_page1);
                                        if (textView7 != null) {
                                            i = R.id.psa_tv_page2;
                                            TextView textView8 = (TextView) view.findViewById(R.id.psa_tv_page2);
                                            if (textView8 != null) {
                                                i = R.id.psa_tv_page_clear;
                                                TextView textView9 = (TextView) view.findViewById(R.id.psa_tv_page_clear);
                                                if (textView9 != null) {
                                                    i = R.id.psa_tv_recharge_mileage;
                                                    TextView textView10 = (TextView) view.findViewById(R.id.psa_tv_recharge_mileage);
                                                    if (textView10 != null) {
                                                        i = R.id.psa_tv_speed_average;
                                                        TextView textView11 = (TextView) view.findViewById(R.id.psa_tv_speed_average);
                                                        if (textView11 != null) {
                                                            i = R.id.psa_tv_start_stop_timing;
                                                            TextView textView12 = (TextView) view.findViewById(R.id.psa_tv_start_stop_timing);
                                                            if (textView12 != null) {
                                                                return new PsaTripComBinding((FrameLayout) view, linearLayout, linearLayout2, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12);
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
