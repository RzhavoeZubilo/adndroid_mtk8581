package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class HondaInfoBinding implements ViewBinding {
    public final RelativeLayout hondaRelativeAirSet;
    public final RelativeLayout hondaRelativeCarSet;
    public final RelativeLayout hondaRelativeCompass;
    public final RelativeLayout hondaRelativeFuelMil;
    public final RelativeLayout hondaRelativeUsbIpod;
    private final LinearLayout rootView;
    public final TextView tvHondaAirSet;
    public final TextView tvHondaCarSet;
    public final TextView tvHondaCompass;
    public final TextView tvHondaFuelMil;
    public final TextView tvHondaUsbIpod;

    private HondaInfoBinding(LinearLayout linearLayout, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.hondaRelativeAirSet = relativeLayout;
        this.hondaRelativeCarSet = relativeLayout2;
        this.hondaRelativeCompass = relativeLayout3;
        this.hondaRelativeFuelMil = relativeLayout4;
        this.hondaRelativeUsbIpod = relativeLayout5;
        this.tvHondaAirSet = textView;
        this.tvHondaCarSet = textView2;
        this.tvHondaCompass = textView3;
        this.tvHondaFuelMil = textView4;
        this.tvHondaUsbIpod = textView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static HondaInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HondaInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.honda_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static HondaInfoBinding bind(View view) {
        int i = R.id.honda_relative_air_set;
        RelativeLayout relativeLayout = (RelativeLayout) view.findViewById(R.id.honda_relative_air_set);
        if (relativeLayout != null) {
            i = R.id.honda_relative_car_set;
            RelativeLayout relativeLayout2 = (RelativeLayout) view.findViewById(R.id.honda_relative_car_set);
            if (relativeLayout2 != null) {
                i = R.id.honda_relative_compass;
                RelativeLayout relativeLayout3 = (RelativeLayout) view.findViewById(R.id.honda_relative_compass);
                if (relativeLayout3 != null) {
                    i = R.id.honda_relative_fuel_mil;
                    RelativeLayout relativeLayout4 = (RelativeLayout) view.findViewById(R.id.honda_relative_fuel_mil);
                    if (relativeLayout4 != null) {
                        i = R.id.honda_relative_usb_ipod;
                        RelativeLayout relativeLayout5 = (RelativeLayout) view.findViewById(R.id.honda_relative_usb_ipod);
                        if (relativeLayout5 != null) {
                            i = R.id.tv_honda_air_set;
                            TextView textView = (TextView) view.findViewById(R.id.tv_honda_air_set);
                            if (textView != null) {
                                i = R.id.tv_honda_car_set;
                                TextView textView2 = (TextView) view.findViewById(R.id.tv_honda_car_set);
                                if (textView2 != null) {
                                    i = R.id.tv_honda_compass;
                                    TextView textView3 = (TextView) view.findViewById(R.id.tv_honda_compass);
                                    if (textView3 != null) {
                                        i = R.id.tv_honda_fuel_mil;
                                        TextView textView4 = (TextView) view.findViewById(R.id.tv_honda_fuel_mil);
                                        if (textView4 != null) {
                                            i = R.id.tv_honda_usb_ipod;
                                            TextView textView5 = (TextView) view.findViewById(R.id.tv_honda_usb_ipod);
                                            if (textView5 != null) {
                                                return new HondaInfoBinding((LinearLayout) view, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, relativeLayout5, textView, textView2, textView3, textView4, textView5);
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
