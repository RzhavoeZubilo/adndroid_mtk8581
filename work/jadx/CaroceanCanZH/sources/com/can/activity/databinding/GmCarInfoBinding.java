package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class GmCarInfoBinding implements ViewBinding {
    public final Button gmBtnAirSet;
    public final Button gmBtnCarSet;
    public final Button gmBtnOnStar;
    private final RelativeLayout rootView;

    private GmCarInfoBinding(RelativeLayout relativeLayout, Button button, Button button2, Button button3) {
        this.rootView = relativeLayout;
        this.gmBtnAirSet = button;
        this.gmBtnCarSet = button2;
        this.gmBtnOnStar = button3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static GmCarInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static GmCarInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.gm_car_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static GmCarInfoBinding bind(View view) {
        int i = R.id.gm_btn_air_set;
        Button button = (Button) view.findViewById(R.id.gm_btn_air_set);
        if (button != null) {
            i = R.id.gm_btn_car_set;
            Button button2 = (Button) view.findViewById(R.id.gm_btn_car_set);
            if (button2 != null) {
                i = R.id.gm_btn_on_star;
                Button button3 = (Button) view.findViewById(R.id.gm_btn_on_star);
                if (button3 != null) {
                    return new GmCarInfoBinding((RelativeLayout) view, button, button2, button3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
