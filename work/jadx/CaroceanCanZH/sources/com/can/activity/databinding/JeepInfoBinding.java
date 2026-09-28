package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class JeepInfoBinding implements ViewBinding {
    public final Button btnJeepMenuAirset;
    public final Button btnJeepMenuCarset;
    public final Button btnJeepMenuCdinfo;
    public final Button btnJeepMenuCompass;
    public final Button btnMenuDsp;
    private final RelativeLayout rootView;

    private JeepInfoBinding(RelativeLayout relativeLayout, Button button, Button button2, Button button3, Button button4, Button button5) {
        this.rootView = relativeLayout;
        this.btnJeepMenuAirset = button;
        this.btnJeepMenuCarset = button2;
        this.btnJeepMenuCdinfo = button3;
        this.btnJeepMenuCompass = button4;
        this.btnMenuDsp = button5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static JeepInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static JeepInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.jeep_info, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static JeepInfoBinding bind(View view) {
        int i = R.id.btn_jeep_menu_airset;
        Button button = (Button) view.findViewById(R.id.btn_jeep_menu_airset);
        if (button != null) {
            i = R.id.btn_jeep_menu_carset;
            Button button2 = (Button) view.findViewById(R.id.btn_jeep_menu_carset);
            if (button2 != null) {
                i = R.id.btn_jeep_menu_cdinfo;
                Button button3 = (Button) view.findViewById(R.id.btn_jeep_menu_cdinfo);
                if (button3 != null) {
                    i = R.id.btn_jeep_menu_compass;
                    Button button4 = (Button) view.findViewById(R.id.btn_jeep_menu_compass);
                    if (button4 != null) {
                        i = R.id.btn_menu_dsp;
                        Button button5 = (Button) view.findViewById(R.id.btn_menu_dsp);
                        if (button5 != null) {
                            return new JeepInfoBinding((RelativeLayout) view, button, button2, button3, button4, button5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
