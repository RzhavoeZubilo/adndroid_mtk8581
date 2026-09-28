package com.can.activity.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.viewbinding.ViewBinding;
import com.can.activity.R;

/* JADX INFO: loaded from: classes.dex */
public final class RenaultMenuBinding implements ViewBinding {
    public final Button btnRenaultCarset;
    public final Button btnRenaultSos;
    public final Button btnRenaultTrip;
    private final RelativeLayout rootView;

    private RenaultMenuBinding(RelativeLayout relativeLayout, Button button, Button button2, Button button3) {
        this.rootView = relativeLayout;
        this.btnRenaultCarset = button;
        this.btnRenaultSos = button2;
        this.btnRenaultTrip = button3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static RenaultMenuBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RenaultMenuBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.renault_menu, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static RenaultMenuBinding bind(View view) {
        int i = R.id.btn_renault_carset;
        Button button = (Button) view.findViewById(R.id.btn_renault_carset);
        if (button != null) {
            i = R.id.btn_renault_sos;
            Button button2 = (Button) view.findViewById(R.id.btn_renault_sos);
            if (button2 != null) {
                i = R.id.btn_renault_trip;
                Button button3 = (Button) view.findViewById(R.id.btn_renault_trip);
                if (button3 != null) {
                    return new RenaultMenuBinding((RelativeLayout) view, button, button2, button3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
