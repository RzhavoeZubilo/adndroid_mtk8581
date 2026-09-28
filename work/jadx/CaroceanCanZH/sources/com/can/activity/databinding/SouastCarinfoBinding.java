package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class SouastCarinfoBinding implements ViewBinding {
    public final Button btnMenuCarset;
    public final Button btnMenuCurfuel;
    public final Button btnMenuDsp;
    public final Button btnMenuHisfuel;
    public final Button btnMenuHybrid;
    public final Button btnMenuTpms;
    public final Button btnMenuTrip;
    private final RelativeLayout rootView;

    private SouastCarinfoBinding(RelativeLayout relativeLayout, Button button, Button button2, Button button3, Button button4, Button button5, Button button6, Button button7) {
        this.rootView = relativeLayout;
        this.btnMenuCarset = button;
        this.btnMenuCurfuel = button2;
        this.btnMenuDsp = button3;
        this.btnMenuHisfuel = button4;
        this.btnMenuHybrid = button5;
        this.btnMenuTpms = button6;
        this.btnMenuTrip = button7;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static SouastCarinfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SouastCarinfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.souast_carinfo, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static SouastCarinfoBinding bind(View view) {
        int i = R.id.btn_menu_carset;
        Button button = (Button) view.findViewById(R.id.btn_menu_carset);
        if (button != null) {
            i = R.id.btn_menu_curfuel;
            Button button2 = (Button) view.findViewById(R.id.btn_menu_curfuel);
            if (button2 != null) {
                i = R.id.btn_menu_dsp;
                Button button3 = (Button) view.findViewById(R.id.btn_menu_dsp);
                if (button3 != null) {
                    i = R.id.btn_menu_hisfuel;
                    Button button4 = (Button) view.findViewById(R.id.btn_menu_hisfuel);
                    if (button4 != null) {
                        i = R.id.btn_menu_hybrid;
                        Button button5 = (Button) view.findViewById(R.id.btn_menu_hybrid);
                        if (button5 != null) {
                            i = R.id.btn_menu_tpms;
                            Button button6 = (Button) view.findViewById(R.id.btn_menu_tpms);
                            if (button6 != null) {
                                i = R.id.btn_menu_trip;
                                Button button7 = (Button) view.findViewById(R.id.btn_menu_trip);
                                if (button7 != null) {
                                    return new SouastCarinfoBinding((RelativeLayout) view, button, button2, button3, button4, button5, button6, button7);
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
