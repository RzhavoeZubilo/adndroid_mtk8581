package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;
import com.can.ui.draw.Windlv;

/* JADX INFO: loaded from: classes.dex */
public final class Ec180CarinfoBinding implements ViewBinding {
    public final Windlv ivElectricLv;
    private final LinearLayout rootView;
    public final TextView txCarstate;
    public final TextView txCurenergyuse;
    public final TextView txElectric;
    public final TextView txName;
    public final TextView txPlant;
    public final TextView txTotalMileage;

    private Ec180CarinfoBinding(LinearLayout linearLayout, Windlv windlv, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = linearLayout;
        this.ivElectricLv = windlv;
        this.txCarstate = textView;
        this.txCurenergyuse = textView2;
        this.txElectric = textView3;
        this.txName = textView4;
        this.txPlant = textView5;
        this.txTotalMileage = textView6;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static Ec180CarinfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static Ec180CarinfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.ec180_carinfo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static Ec180CarinfoBinding bind(View view) {
        int i = R.id.iv_electric_lv;
        Windlv windlv = (Windlv) view.findViewById(R.id.iv_electric_lv);
        if (windlv != null) {
            i = R.id.tx_carstate;
            TextView textView = (TextView) view.findViewById(R.id.tx_carstate);
            if (textView != null) {
                i = R.id.tx_curenergyuse;
                TextView textView2 = (TextView) view.findViewById(R.id.tx_curenergyuse);
                if (textView2 != null) {
                    i = R.id.tx_electric;
                    TextView textView3 = (TextView) view.findViewById(R.id.tx_electric);
                    if (textView3 != null) {
                        i = R.id.tx_name;
                        TextView textView4 = (TextView) view.findViewById(R.id.tx_name);
                        if (textView4 != null) {
                            i = R.id.tx_plant;
                            TextView textView5 = (TextView) view.findViewById(R.id.tx_plant);
                            if (textView5 != null) {
                                i = R.id.tx_TotalMileage;
                                TextView textView6 = (TextView) view.findViewById(R.id.tx_TotalMileage);
                                if (textView6 != null) {
                                    return new Ec180CarinfoBinding((LinearLayout) view, windlv, textView, textView2, textView3, textView4, textView5, textView6);
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
