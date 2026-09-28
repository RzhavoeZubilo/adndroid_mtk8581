package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class HdH2sCarinfoBinding implements ViewBinding {
    public final TextView h2sTxtCoolantTemp;
    public final TextView h2sTxtOilTemp;
    public final TextView h2sTxtVehicleCorner;
    public final TextView h2sTxtVoltage;
    private final FrameLayout rootView;

    private HdH2sCarinfoBinding(FrameLayout frameLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = frameLayout;
        this.h2sTxtCoolantTemp = textView;
        this.h2sTxtOilTemp = textView2;
        this.h2sTxtVehicleCorner = textView3;
        this.h2sTxtVoltage = textView4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static HdH2sCarinfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static HdH2sCarinfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.hd_h2s_carinfo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static HdH2sCarinfoBinding bind(View view) {
        int i = R.id.h2s_txt_coolant_temp;
        TextView textView = (TextView) view.findViewById(R.id.h2s_txt_coolant_temp);
        if (textView != null) {
            i = R.id.h2s_txt_oil_temp;
            TextView textView2 = (TextView) view.findViewById(R.id.h2s_txt_oil_temp);
            if (textView2 != null) {
                i = R.id.h2s_txt_vehicle_corner;
                TextView textView3 = (TextView) view.findViewById(R.id.h2s_txt_vehicle_corner);
                if (textView3 != null) {
                    i = R.id.h2s_txt_voltage;
                    TextView textView4 = (TextView) view.findViewById(R.id.h2s_txt_voltage);
                    if (textView4 != null) {
                        return new HdH2sCarinfoBinding((FrameLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
