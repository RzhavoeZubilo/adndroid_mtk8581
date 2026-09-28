package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class Dz7ServicesBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final TextView txDz7ServicesDay;
    public final TextView txDz7ServicesDistance;
    public final TextView txDz7ServicesOilchangeday;
    public final TextView txDz7ServicesOilchangedis;
    public final TextView txDz7ServicesVehivcenum;

    private Dz7ServicesBinding(LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.rootView = linearLayout;
        this.txDz7ServicesDay = textView;
        this.txDz7ServicesDistance = textView2;
        this.txDz7ServicesOilchangeday = textView3;
        this.txDz7ServicesOilchangedis = textView4;
        this.txDz7ServicesVehivcenum = textView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static Dz7ServicesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static Dz7ServicesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.dz7_services, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static Dz7ServicesBinding bind(View view) {
        int i = R.id.tx_dz7_services_day;
        TextView textView = (TextView) view.findViewById(R.id.tx_dz7_services_day);
        if (textView != null) {
            i = R.id.tx_dz7_services_distance;
            TextView textView2 = (TextView) view.findViewById(R.id.tx_dz7_services_distance);
            if (textView2 != null) {
                i = R.id.tx_dz7_services_oilchangeday;
                TextView textView3 = (TextView) view.findViewById(R.id.tx_dz7_services_oilchangeday);
                if (textView3 != null) {
                    i = R.id.tx_dz7_services_oilchangedis;
                    TextView textView4 = (TextView) view.findViewById(R.id.tx_dz7_services_oilchangedis);
                    if (textView4 != null) {
                        i = R.id.tx_dz7_services_vehivcenum;
                        TextView textView5 = (TextView) view.findViewById(R.id.tx_dz7_services_vehivcenum);
                        if (textView5 != null) {
                            return new Dz7ServicesBinding((LinearLayout) view, textView, textView2, textView3, textView4, textView5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
