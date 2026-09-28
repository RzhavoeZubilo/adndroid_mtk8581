package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class GmHdCarInfoBinding implements ViewBinding {
    public final Button gmBtnCarSet;
    public final Button gmBtnCompass;
    public final Button gmBtnOnStar;
    public final Button gmBtnTpms;
    private final RelativeLayout rootView;

    private GmHdCarInfoBinding(RelativeLayout relativeLayout, Button button, Button button2, Button button3, Button button4) {
        this.rootView = relativeLayout;
        this.gmBtnCarSet = button;
        this.gmBtnCompass = button2;
        this.gmBtnOnStar = button3;
        this.gmBtnTpms = button4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static GmHdCarInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static GmHdCarInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.gm_hd_car_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static GmHdCarInfoBinding bind(View view) {
        int i = R.id.gm_btn_car_set;
        Button button = (Button) view.findViewById(R.id.gm_btn_car_set);
        if (button != null) {
            i = R.id.gm_btn_compass;
            Button button2 = (Button) view.findViewById(R.id.gm_btn_compass);
            if (button2 != null) {
                i = R.id.gm_btn_on_star;
                Button button3 = (Button) view.findViewById(R.id.gm_btn_on_star);
                if (button3 != null) {
                    i = R.id.gm_btn_tpms;
                    Button button4 = (Button) view.findViewById(R.id.gm_btn_tpms);
                    if (button4 != null) {
                        return new GmHdCarInfoBinding((RelativeLayout) view, button, button2, button3, button4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
