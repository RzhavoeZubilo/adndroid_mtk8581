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
public final class SouastFuelBinding implements ViewBinding {
    public final LinearLayout psaLlPage0;
    private final FrameLayout rootView;
    public final TextView souastLangset;
    public final LinearLayout souastLlSwitch;
    public final TextView souastTpms;
    public final TextView souastTvDestinationMiles;
    public final TextView souastTvFuelConsumption;
    public final TextView souastTvRechargeMileage;
    public final TextView souastTvStartStopTiming;

    private SouastFuelBinding(FrameLayout frameLayout, LinearLayout linearLayout, TextView textView, LinearLayout linearLayout2, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = frameLayout;
        this.psaLlPage0 = linearLayout;
        this.souastLangset = textView;
        this.souastLlSwitch = linearLayout2;
        this.souastTpms = textView2;
        this.souastTvDestinationMiles = textView3;
        this.souastTvFuelConsumption = textView4;
        this.souastTvRechargeMileage = textView5;
        this.souastTvStartStopTiming = textView6;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static SouastFuelBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SouastFuelBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.souast_fuel, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static SouastFuelBinding bind(View view) {
        int i = R.id.psa_ll_page0;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.psa_ll_page0);
        if (linearLayout != null) {
            i = R.id.souast_langset;
            TextView textView = (TextView) view.findViewById(R.id.souast_langset);
            if (textView != null) {
                i = R.id.souast_ll_switch;
                LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.souast_ll_switch);
                if (linearLayout2 != null) {
                    i = R.id.souast_tpms;
                    TextView textView2 = (TextView) view.findViewById(R.id.souast_tpms);
                    if (textView2 != null) {
                        i = R.id.souast_tv_destination_miles;
                        TextView textView3 = (TextView) view.findViewById(R.id.souast_tv_destination_miles);
                        if (textView3 != null) {
                            i = R.id.souast_tv_fuel_consumption;
                            TextView textView4 = (TextView) view.findViewById(R.id.souast_tv_fuel_consumption);
                            if (textView4 != null) {
                                i = R.id.souast_tv_recharge_mileage;
                                TextView textView5 = (TextView) view.findViewById(R.id.souast_tv_recharge_mileage);
                                if (textView5 != null) {
                                    i = R.id.souast_tv_start_stop_timing;
                                    TextView textView6 = (TextView) view.findViewById(R.id.souast_tv_start_stop_timing);
                                    if (textView6 != null) {
                                        return new SouastFuelBinding((FrameLayout) view, linearLayout, textView, linearLayout2, textView2, textView3, textView4, textView5, textView6);
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
