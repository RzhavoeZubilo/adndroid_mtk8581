package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class GmSpCarInfoBinding implements ViewBinding {
    public final Button btnSpMenuCompass;
    public final Button gmBtnAirSet;
    public final Button gmBtnCarSet;
    public final Button gmBtnOnStar;
    private final RelativeLayout rootView;

    private GmSpCarInfoBinding(RelativeLayout relativeLayout, Button button, Button button2, Button button3, Button button4) {
        this.rootView = relativeLayout;
        this.btnSpMenuCompass = button;
        this.gmBtnAirSet = button2;
        this.gmBtnCarSet = button3;
        this.gmBtnOnStar = button4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static GmSpCarInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static GmSpCarInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.gm_sp_car_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static GmSpCarInfoBinding bind(View view) {
        int i = R.id.btn_sp_menu_compass;
        Button button = (Button) view.findViewById(R.id.btn_sp_menu_compass);
        if (button != null) {
            i = R.id.gm_btn_air_set;
            Button button2 = (Button) view.findViewById(R.id.gm_btn_air_set);
            if (button2 != null) {
                i = R.id.gm_btn_car_set;
                Button button3 = (Button) view.findViewById(R.id.gm_btn_car_set);
                if (button3 != null) {
                    i = R.id.gm_btn_on_star;
                    Button button4 = (Button) view.findViewById(R.id.gm_btn_on_star);
                    if (button4 != null) {
                        return new GmSpCarInfoBinding((RelativeLayout) view, button, button2, button3, button4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
