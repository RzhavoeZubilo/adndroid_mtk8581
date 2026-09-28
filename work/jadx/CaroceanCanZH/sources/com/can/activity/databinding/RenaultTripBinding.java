package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class RenaultTripBinding implements ViewBinding {
    public final Button btnRenaultTripClean;
    private final RelativeLayout rootView;
    public final TextView tvRenaultDistance;
    public final TextView tvRenaultOutdoorTemp;
    public final TextView txRenaultOil;
    public final TextView txRenaultSpeed;

    private RenaultTripBinding(RelativeLayout relativeLayout, Button button, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.rootView = relativeLayout;
        this.btnRenaultTripClean = button;
        this.tvRenaultDistance = textView;
        this.tvRenaultOutdoorTemp = textView2;
        this.txRenaultOil = textView3;
        this.txRenaultSpeed = textView4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static RenaultTripBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RenaultTripBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.renault_trip, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static RenaultTripBinding bind(View view) {
        int i = R.id.btn_renault_trip_clean;
        Button button = (Button) view.findViewById(R.id.btn_renault_trip_clean);
        if (button != null) {
            i = R.id.tv_renault_distance;
            TextView textView = (TextView) view.findViewById(R.id.tv_renault_distance);
            if (textView != null) {
                i = R.id.tv_renault_outdoor_temp;
                TextView textView2 = (TextView) view.findViewById(R.id.tv_renault_outdoor_temp);
                if (textView2 != null) {
                    i = R.id.tx_renault_oil;
                    TextView textView3 = (TextView) view.findViewById(R.id.tx_renault_oil);
                    if (textView3 != null) {
                        i = R.id.tx_renault_speed;
                        TextView textView4 = (TextView) view.findViewById(R.id.tx_renault_speed);
                        if (textView4 != null) {
                            return new RenaultTripBinding((RelativeLayout) view, button, textView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
